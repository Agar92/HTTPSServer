cmake_minimum_required(VERSION 3.15)

project(HTTPClient_example CXX)

file(GLOB HEADERS "*.hpp")
file(GLOB SOURCES "*.cpp")
list(REMOVE_ITEM SOURCES "/home/andrey/Desktop/HTTPServer/http/main.cpp")

add_executable(http-client client.cpp ${SOURCES} ${HEADERS})

find_package (Boost REQUIRED)
find_package (OpenSSL REQUIRED)
target_include_directories(http-client PRIVATE
	${Boost_INCLUDE_DIR}
)

target_link_libraries(http-client PRIVATE
    ${Boost_LIBRARIES}
    OpenSSL::SSL
    OpenSSL::Crypto
)

add_compile_options(-g)


find_program(CLANG_FORMAT_APP clang-format)
###message("CLANG_FORMAT_APP=${CLANG_FORMAT_APP}")
include(ClangFormat.cmake)
file(GLOB_RECURSE ALL_SOURCE_FILES *.cpp *.cxx *.h *.hpp)
add_custom_target(
        clangformat
        COMMAND ${CLANG_FORMAT_APP}
        -style=file
        -i
        ${ALL_SOURCE_FILES}
)