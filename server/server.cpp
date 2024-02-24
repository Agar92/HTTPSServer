#include <cstdlib>
#include <iostream>
#include <boost/bind.hpp>
#include <boost/asio.hpp>
#include <boost/asio/ssl.hpp>

#include "reply.hpp"
#include "request.hpp"
#include "request_handler.hpp"
#include "request_parser.hpp"

typedef boost::asio::ssl::stream<boost::asio::ip::tcp::socket> ssl_socket;

using namespace http::server;

class session
{
public:
  session(boost::asio::io_context& io_context,
      boost::asio::ssl::context& context,
      request_handler& handler)
    : m_io_context(io_context),
      socket_(io_context, context),
      request_handler_(handler) {}

  ssl_socket::lowest_layer_type& socket()
  {
    return socket_.lowest_layer();
  }

  void start()
  {
    socket_.async_handshake(boost::asio::ssl::stream_base::server,
        boost::bind(&session::handle_handshake, this,
          boost::asio::placeholders::error));
  }

  void handle_handshake(const boost::system::error_code& error)
  {
    if (!error)
    {
      do_read();
    }
    else
    {
      delete this;
    }
  }

  void handle_read(const boost::system::error_code& error,
      size_t bytes_transferred)
  {
    if (!error)
    {
      boost::asio::async_write(socket_,
          boost::asio::buffer(data_, bytes_transferred),
          boost::bind(&session::handle_write, this,
            boost::asio::placeholders::error));
    }
    else
    {
      delete this;
    }
  }


  void do_read()
  {
    socket_.async_read_some(boost::asio::buffer(data_),
        [this](boost::system::error_code ec, std::size_t bytes_transferred)
        {
          if (!ec)
          {
            request_parser::result_type result;
            std::tie(result, std::ignore) = request_parser_.parse(
                request_, data_, data_ + bytes_transferred);

            if (result == request_parser::good)
            {
              request_handler_.handle_request(request_, reply_);
              do_write();
            }
            else if (result == request_parser::bad)
            {
              reply_ = reply::stock_reply(reply::bad_request);
              do_write();
            }
            else if (result == request_parser::shutdown)
            {
              // Initiate graceful connection closure.
              // server::do_await_stop() is waiting for it:
              std::raise(SIGINT);//or std::raise(SIGINT);
            }
            else
            {
              do_read();
            }
          }
        });
  }


  void do_write()
  {
    boost::asio::async_write(socket_, reply_.to_buffers(),
        [this](boost::system::error_code ec, std::size_t bytes_transferred)
        {
          if (!ec)
          {
            do_read();
            /*
            // Initiate graceful connection closure.
            boost::system::error_code ignored_ec;
            socket_.shutdown(boost::asio::ip::tcp::socket::shutdown_both,
              ignored_ec);
            */
          }
          else
            std::cout<<"ERROR! "<<ec.message()<<std::endl;
        });
  }


  void handle_write(const boost::system::error_code& error)
  {
    if (!error)
    {
      socket_.async_read_some(boost::asio::buffer(data_, max_length),
          boost::bind(&session::handle_read, this,
            boost::asio::placeholders::error,
            boost::asio::placeholders::bytes_transferred));
    }
    else delete this;
  }

private:
  boost::asio::io_context& m_io_context;
  ssl_socket socket_;
  enum { max_length = 8192 };
  char data_[max_length];
  /// The handler used to process the incoming request.
  request_handler& request_handler_;
  /// Buffer for incoming data.
  std::array<char, 8192> buffer_;
  /// The incoming request.
  request request_;
  /// The parser for the incoming request.
  request_parser request_parser_;
  /// The reply to be sent back to the client.
  reply reply_;
};

class server
{
public:
  server(boost::asio::io_context& io_context, unsigned short port,
         const std::string& doc_root)
    : io_context(io_context),
      acceptor_(io_context, boost::asio::ip::tcp::endpoint(boost::asio::ip::tcp::v4(), port)),
      context_(boost::asio::ssl::context::sslv23),
      request_handler_(doc_root)
  {
    context_.set_options(
        boost::asio::ssl::context::default_workarounds
        | boost::asio::ssl::context::no_sslv2
        | boost::asio::ssl::context::single_dh_use);
    context_.set_password_callback(boost::bind(&server::get_password, this));
    context_.use_certificate_chain_file("server.crt");
    context_.use_private_key_file("server.key", boost::asio::ssl::context::pem);
    context_.use_tmp_dh_file("dh2048.pem");

    start_accept();
  }

  std::string get_password() const {return "test";}

  void start_accept()
  {
    session* new_session = new session(io_context, context_, request_handler_);
    acceptor_.async_accept(new_session->socket(),
        boost::bind(&server::handle_accept, this, new_session,
          boost::asio::placeholders::error));
  }

  void handle_accept(session* new_session,
      const boost::system::error_code& error)
  {
    if (!error)
    {
      new_session->start();
    }
    else
    {
      delete new_session;
    }
    start_accept();
  }

private:
  boost::asio::io_context& io_context;
  boost::asio::ip::tcp::acceptor acceptor_;
  boost::asio::ssl::context context_;
  /// The handler for all incoming requests.
  request_handler request_handler_;
};

int main(int argc, char* argv[])
{
  try
  {
    if (argc != 2)
    {
      std::cerr << "Usage: server <port>\n";
      return 1;
    }
    boost::asio::io_context io_context;
    using namespace std; // For atoi.
    server s(io_context, atoi(argv[1]), ".");
    io_context.run();
  }
  catch (std::exception& e)
  {
    std::cerr << "Exception: " << e.what() << "\n";
  }

  return 0;
}