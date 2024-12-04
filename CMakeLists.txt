cmake_minimum_required(VERSION 3.16)
project(ReactorServer)

set(CMAKE_CXX_STANDARD 11)
set(OUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin)
set(EXECUTABLE_OUTPUT_PATH ${OUT_PATH})


include_directories(${CMAKE_CURRENT_SOURCE_DIR}/include)

add_executable(ReactorServer 
                test.cpp 
                Epoll.cpp
                Channel.cpp
                InetAddress.cpp
                Socket.cpp
                EventLoop.cpp
                TcpServer.cpp
)

target_link_libraries(ReactorServer pthread)