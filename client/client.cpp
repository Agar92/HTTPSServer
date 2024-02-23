#include <cstdlib>
#include <iostream>
#include <fstream>
#include <string>
#include <memory>
#include <chrono>
#include <thread>
#include <boost/bind.hpp>
#include <boost/asio.hpp>
#include <boost/asio/ssl.hpp>

enum { max_length = 8192 };

using namespace std::literals::chrono_literals;

typedef void(*HTTPRequestDataReceived)(char*, size_t);
typedef void(*HTTPRequestComplete)();

std::vector<char> g_data;

void OnDataReceived(char* data, size_t dataLen)
{
 // store data in vector for sake of demo...
 std::cout<<"dataLen="<<dataLen<<std::endl;
 unsigned int oldSize = g_data.size();
 g_data.resize(oldSize + dataLen);
 memcpy(&g_data[oldSize], data, dataLen);
}

void OnRequestCompleted()
{
 // print contents of data we received back...
 g_data.push_back('\0');
 printf(&g_data[0]);
 
}

class client
{
public:
  client(boost::asio::io_context& io_context,
      boost::asio::ssl::context& context,
      boost::asio::ip::tcp::resolver::iterator endpoint_iterator,
      std::string host,
      HTTPRequestDataReceived receivedCB,
      HTTPRequestComplete completeCB)
    : m_io_context(io_context), socket_(io_context, context), m_host(host),
      m_receivedCB(receivedCB), m_completeCB(completeCB)
  {
    socket_.set_verify_mode(boost::asio::ssl::verify_peer);
    socket_.set_verify_callback(
        boost::bind(&client::verify_certificate, this, _1, _2));

    boost::asio::async_connect(socket_.lowest_layer(), endpoint_iterator,
        boost::bind(&client::handle_connect, this,
          boost::asio::placeholders::error));
  }

  bool verify_certificate(bool preverified,
      boost::asio::ssl::verify_context& ctx)
  {
    // The verify callback can be used to check whether the certificate that is
    // being presented is valid for the peer. For example, RFC 2818 describes
    // the steps involved in doing this for HTTPS. Consult the OpenSSL
    // documentation for more details. Note that the callback is called once
    // for each certificate in the certificate chain, starting from the root
    // certificate authority.

    // In this example we will simply print the certificate's subject name.
    char subject_name[256];
    X509* cert = X509_STORE_CTX_get_current_cert(ctx.native_handle());
    X509_NAME_oneline(X509_get_subject_name(cert), subject_name, 256);
    std::cout << "Verifying " << subject_name << "\n";

    return preverified;
  }

  void handle_connect(const boost::system::error_code& error)
  {
    if (!error)
    {
      socket_.async_handshake(boost::asio::ssl::stream_base::client,
          boost::bind(&client::handle_handshake, this,
            boost::asio::placeholders::error));
    }
    else
    {
      std::cout << "Connect failed: " << error.message() << "\n";
    }
  }

  void handle_handshake(const boost::system::error_code& error)
  {
    if (!error)
    {
      std::cout << "Enter URI: ";
      getline(std::cin, m_relativeURL);
      size_t m_relativeURL_length = strlen(m_relativeURL.c_str());
      // Determine the file extension.
      std::size_t last_slash_pos = m_relativeURL.find_last_of("/");
      std::size_t last_dot_pos = m_relativeURL.find_last_of(".");
      if (last_slash_pos != std::string::npos &&
          last_dot_pos != std::string::npos   &&
          last_dot_pos > last_slash_pos)
          requested_file_extension = m_relativeURL.substr(last_dot_pos + 1);
      else requested_file_extension=".dat";
      std::cout<<"requested_file_extension="<<requested_file_extension<<std::endl;

      std::ostream request_stream(&m_request);
      request_stream << "GET " << m_relativeURL << " HTTP/1.1\r\n";
      request_stream << "Host: " << m_host << "\r\n";
      request_stream << "Accept: */*\r\n";
      request_stream << "Connection: close\r\n\r\n";

      boost::asio::async_write(socket_, m_request,
        [this](boost::system::error_code ec, std::size_t /*length*/)
      {
        boost::asio::async_read_until(socket_, m_response, "\r\n\r\n",
          [this](boost::system::error_code ec, std::size_t bytes_transferred)
        {
          std::cout<<"@#@ bytes_transferred="<<bytes_transferred<<std::endl;
          std::cout<<"m_response="<<boost::asio::buffer_cast<const char*>(m_response.data())<<std::endl;
          ReadData();
        });
      });
      m_io_context.run();
      /*
      boost::asio::async_write(socket_,
          boost::asio::buffer(request_, request_length),
          boost::bind(&client::handle_write, this,
            boost::asio::placeholders::error,
            boost::asio::placeholders::bytes_transferred));
      */
    }
    else
    {
      std::cout << "Handshake failed: " << error.message() << "\n";
    }
  }




  void ReadData()
  {
    std::cout<<"HTTPGetRequest::ReadData(...)"<<std::endl;
    boost::asio::async_read(socket_, m_response, boost::asio::transfer_at_least(1),
        [this](boost::system::error_code ec, std::size_t)
    {
        std::cout<<"HTTPGetRequest::ReadData(...) START"<<std::endl;
        static int THIS_FUNCTION_CALLS_COUNTER=0;
        THIS_FUNCTION_CALLS_COUNTER++;
        /*
        std::string s( (std::istreambuf_iterator<char>(&m_response)), std::istreambuf_iterator<char>() );
        size_t index=s.find("\r\n\r\n");
        std::cout<<"index="<<index<<std::endl;
        for(int i=index+4; i<s.length(); ++i) std::cout<<s[i];
        std::cout<<std::endl;
        const size_t shift=index+4;
        */
        size_t size = m_response.size();
        std::cout<<"APPROACHING WRITE received.dat size="<<size
                 <<" THIS_FUNCTION_CALLS_COUNTER="<<THIS_FUNCTION_CALLS_COUNTER
                 <<std::endl;
        if (size > 0)
        {
            std::cout<<"BEGIN WRITE received."<<requested_file_extension<<std::endl;
            std::unique_ptr<char> buf(new char[size]);
            m_response.sgetn(buf.get(), size);
            size_t shift=0;
            if(THIS_FUNCTION_CALLS_COUNTER == 1)
            {
                std::string s( buf.get(), size );
                size_t index=s.find("\r\n\r\n");
                std::cout<<"START CHECK THE REPLY"<<std::endl;
                ///std::cout<<"index="<<index<<std::endl;
                for(int i=0; i<s.length(); ++i) std::cout<<s[i];
                std::cout<<std::endl;
                std::cout<<"FINISH CHECK THE REPLY"<<std::endl;
                shift=index+4;
            }
            std::cout<<"STEP #6"<<std::endl;
            file_contents.append( buf.get() + shift, size - shift);
            m_response.consume(size);
            std::cout<<"STEP #7"<<std::endl;
            file_size += size - shift;
            std::cout<<"STEP #8"<<std::endl;
            std::cout<<"size="<<size<<" buf=";
            for(int i=0; i<size; ++i) std::cout<<(buf.get())[i];
            std::cout<<std::endl;
            std::cout<<"END OF READING"<<std::endl;
            m_receivedCB(buf.get(), size);
            ///std::this_thread::sleep_for(1000ms);
            std::cout<<"STEP #9"<<std::endl;
        }
        std::ofstream out("received." + requested_file_extension, std::ios::out | std::ios::binary);
        out.write( file_contents.data(), file_size);
        out.close();
        std::cout<<"END WRITE received."<<requested_file_extension<<std::endl;
        if (ec != boost::asio::error::eof)
        {
            ReadData();
            return;
        }
        file_contents.clear();
        file_size=0;
        ///////////socket_.close();
        m_completeCB();
    });
  }



  

  void handle_write(const boost::system::error_code& error,
      size_t bytes_transferred)
  {
    if (!error)
    {
      boost::asio::async_read(socket_,
          boost::asio::buffer(reply_, bytes_transferred),
          boost::bind(&client::handle_read, this,
            boost::asio::placeholders::error,
            boost::asio::placeholders::bytes_transferred));
    }
    else
    {
      std::cout << "Write failed: " << error.message() << "\n";
    }
  }

  void handle_read(const boost::system::error_code& error,
      size_t bytes_transferred)
  {
    if (!error)
    {
      std::cout << "Reply: ";
      std::cout.write(reply_, bytes_transferred);
      std::cout << "\n";
    }
    else
    {
      std::cout << "Read failed: " << error.message() << "\n";
    }
  }

private:
  boost::asio::io_context& m_io_context;
  boost::asio::ssl::stream<boost::asio::ip::tcp::socket> socket_;
  char request_[max_length];
  char reply_[max_length];


  std::string m_host;
  std::string m_relativeURL;
  boost::asio::streambuf m_request;
  boost::asio::streambuf m_response;
  std::string file_contents;
  size_t file_size=0;
  //extension of the file requested in m_relativeURL:
  std::string requested_file_extension="";
  HTTPRequestDataReceived m_receivedCB;
  HTTPRequestComplete m_completeCB;
};

int main(int argc, char* argv[])
{
  try
  {
    if (argc != 3)
    {
      std::cerr << "Usage: client <host> <port>\n";
      return 1;
    }

    boost::asio::io_context io_context;

    boost::asio::ip::tcp::resolver resolver(io_context);
    boost::asio::ip::tcp::resolver::query query(argv[1], argv[2]);
    boost::asio::ip::tcp::resolver::iterator iterator = resolver.resolve(query);

    boost::asio::ssl::context ctx(boost::asio::ssl::context::sslv23);
    ctx.load_verify_file("server.crt");

    client c(io_context, ctx, iterator,
             std::string(argv[1]),
             OnDataReceived,
             OnRequestCompleted);
    g_data.clear();

    io_context.run();
  }
  catch (std::exception& e)
  {
    std::cerr << "Exception: " << e.what() << "\n";
  }

  return 0;
}