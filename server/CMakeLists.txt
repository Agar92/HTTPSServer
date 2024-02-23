cmake_minimum_required(VERSION 3.15)

project(HTTPSServer_example CXX)

file(GLOB HEADERS "helper/*.hpp")
file(GLOB SOURCES "helper/*.cpp")
list(REMOVE_ITEM SOURCES "helper/main.cpp")

add_executable(http-server server.cpp ${SOURCES} ${HEADERS})

find_package (Boost REQUIRED)
find_package(OpenSSL REQUIRED)
target_include_directories(http-server PRIVATE
	${Boost_INCLUDE_DIR}
	helper/
)

target_link_libraries(http-server PRIVATE
    ${Boost_LIBRARIES}
    OpenSSL::SSL
    OpenSSL::Crypto
)

add_compile_options(-g)
