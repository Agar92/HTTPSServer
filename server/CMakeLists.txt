cmake_minimum_required(VERSION 3.15)

project(HTTPSServer_example CXX)

file(GLOB HEADERS "helper/*.hpp")
file(GLOB SOURCES "helper/*.cpp")
list(REMOVE_ITEM SOURCES "helper/main.cpp")

set(TARGET "https-server")
add_executable(${TARGET} server.cpp ${SOURCES} ${HEADERS})

find_package(Boost REQUIRED)
find_package(OpenSSL REQUIRED)
target_include_directories(${TARGET} PRIVATE
	${Boost_INCLUDE_DIR}
	helper/
)

target_link_libraries(${TARGET} PRIVATE
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
