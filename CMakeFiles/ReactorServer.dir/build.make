# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/cmake/bin/cmake

# The command to remove a file.
RM = /usr/local/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yyt/mycode/Reactor

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yyt/mycode/Reactor

# Include any dependencies generated for this target.
include CMakeFiles/ReactorServer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ReactorServer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ReactorServer.dir/flags.make

CMakeFiles/ReactorServer.dir/test.cpp.o: CMakeFiles/ReactorServer.dir/flags.make
CMakeFiles/ReactorServer.dir/test.cpp.o: test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyt/mycode/Reactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ReactorServer.dir/test.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ReactorServer.dir/test.cpp.o -c /home/yyt/mycode/Reactor/test.cpp

CMakeFiles/ReactorServer.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ReactorServer.dir/test.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyt/mycode/Reactor/test.cpp > CMakeFiles/ReactorServer.dir/test.cpp.i

CMakeFiles/ReactorServer.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ReactorServer.dir/test.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyt/mycode/Reactor/test.cpp -o CMakeFiles/ReactorServer.dir/test.cpp.s

CMakeFiles/ReactorServer.dir/Epoll.cpp.o: CMakeFiles/ReactorServer.dir/flags.make
CMakeFiles/ReactorServer.dir/Epoll.cpp.o: Epoll.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyt/mycode/Reactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ReactorServer.dir/Epoll.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ReactorServer.dir/Epoll.cpp.o -c /home/yyt/mycode/Reactor/Epoll.cpp

CMakeFiles/ReactorServer.dir/Epoll.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ReactorServer.dir/Epoll.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyt/mycode/Reactor/Epoll.cpp > CMakeFiles/ReactorServer.dir/Epoll.cpp.i

CMakeFiles/ReactorServer.dir/Epoll.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ReactorServer.dir/Epoll.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyt/mycode/Reactor/Epoll.cpp -o CMakeFiles/ReactorServer.dir/Epoll.cpp.s

CMakeFiles/ReactorServer.dir/Channel.cpp.o: CMakeFiles/ReactorServer.dir/flags.make
CMakeFiles/ReactorServer.dir/Channel.cpp.o: Channel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyt/mycode/Reactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/ReactorServer.dir/Channel.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ReactorServer.dir/Channel.cpp.o -c /home/yyt/mycode/Reactor/Channel.cpp

CMakeFiles/ReactorServer.dir/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ReactorServer.dir/Channel.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyt/mycode/Reactor/Channel.cpp > CMakeFiles/ReactorServer.dir/Channel.cpp.i

CMakeFiles/ReactorServer.dir/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ReactorServer.dir/Channel.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyt/mycode/Reactor/Channel.cpp -o CMakeFiles/ReactorServer.dir/Channel.cpp.s

CMakeFiles/ReactorServer.dir/InetAddress.cpp.o: CMakeFiles/ReactorServer.dir/flags.make
CMakeFiles/ReactorServer.dir/InetAddress.cpp.o: InetAddress.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyt/mycode/Reactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/ReactorServer.dir/InetAddress.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ReactorServer.dir/InetAddress.cpp.o -c /home/yyt/mycode/Reactor/InetAddress.cpp

CMakeFiles/ReactorServer.dir/InetAddress.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ReactorServer.dir/InetAddress.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyt/mycode/Reactor/InetAddress.cpp > CMakeFiles/ReactorServer.dir/InetAddress.cpp.i

CMakeFiles/ReactorServer.dir/InetAddress.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ReactorServer.dir/InetAddress.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyt/mycode/Reactor/InetAddress.cpp -o CMakeFiles/ReactorServer.dir/InetAddress.cpp.s

CMakeFiles/ReactorServer.dir/Socket.cpp.o: CMakeFiles/ReactorServer.dir/flags.make
CMakeFiles/ReactorServer.dir/Socket.cpp.o: Socket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyt/mycode/Reactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/ReactorServer.dir/Socket.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ReactorServer.dir/Socket.cpp.o -c /home/yyt/mycode/Reactor/Socket.cpp

CMakeFiles/ReactorServer.dir/Socket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ReactorServer.dir/Socket.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyt/mycode/Reactor/Socket.cpp > CMakeFiles/ReactorServer.dir/Socket.cpp.i

CMakeFiles/ReactorServer.dir/Socket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ReactorServer.dir/Socket.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyt/mycode/Reactor/Socket.cpp -o CMakeFiles/ReactorServer.dir/Socket.cpp.s

CMakeFiles/ReactorServer.dir/EventLoop.cpp.o: CMakeFiles/ReactorServer.dir/flags.make
CMakeFiles/ReactorServer.dir/EventLoop.cpp.o: EventLoop.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyt/mycode/Reactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/ReactorServer.dir/EventLoop.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ReactorServer.dir/EventLoop.cpp.o -c /home/yyt/mycode/Reactor/EventLoop.cpp

CMakeFiles/ReactorServer.dir/EventLoop.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ReactorServer.dir/EventLoop.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyt/mycode/Reactor/EventLoop.cpp > CMakeFiles/ReactorServer.dir/EventLoop.cpp.i

CMakeFiles/ReactorServer.dir/EventLoop.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ReactorServer.dir/EventLoop.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyt/mycode/Reactor/EventLoop.cpp -o CMakeFiles/ReactorServer.dir/EventLoop.cpp.s

CMakeFiles/ReactorServer.dir/TcpServer.cpp.o: CMakeFiles/ReactorServer.dir/flags.make
CMakeFiles/ReactorServer.dir/TcpServer.cpp.o: TcpServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyt/mycode/Reactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/ReactorServer.dir/TcpServer.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ReactorServer.dir/TcpServer.cpp.o -c /home/yyt/mycode/Reactor/TcpServer.cpp

CMakeFiles/ReactorServer.dir/TcpServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ReactorServer.dir/TcpServer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/yyt/mycode/Reactor/TcpServer.cpp > CMakeFiles/ReactorServer.dir/TcpServer.cpp.i

CMakeFiles/ReactorServer.dir/TcpServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ReactorServer.dir/TcpServer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/yyt/mycode/Reactor/TcpServer.cpp -o CMakeFiles/ReactorServer.dir/TcpServer.cpp.s

# Object files for target ReactorServer
ReactorServer_OBJECTS = \
"CMakeFiles/ReactorServer.dir/test.cpp.o" \
"CMakeFiles/ReactorServer.dir/Epoll.cpp.o" \
"CMakeFiles/ReactorServer.dir/Channel.cpp.o" \
"CMakeFiles/ReactorServer.dir/InetAddress.cpp.o" \
"CMakeFiles/ReactorServer.dir/Socket.cpp.o" \
"CMakeFiles/ReactorServer.dir/EventLoop.cpp.o" \
"CMakeFiles/ReactorServer.dir/TcpServer.cpp.o"

# External object files for target ReactorServer
ReactorServer_EXTERNAL_OBJECTS =

bin/ReactorServer: CMakeFiles/ReactorServer.dir/test.cpp.o
bin/ReactorServer: CMakeFiles/ReactorServer.dir/Epoll.cpp.o
bin/ReactorServer: CMakeFiles/ReactorServer.dir/Channel.cpp.o
bin/ReactorServer: CMakeFiles/ReactorServer.dir/InetAddress.cpp.o
bin/ReactorServer: CMakeFiles/ReactorServer.dir/Socket.cpp.o
bin/ReactorServer: CMakeFiles/ReactorServer.dir/EventLoop.cpp.o
bin/ReactorServer: CMakeFiles/ReactorServer.dir/TcpServer.cpp.o
bin/ReactorServer: CMakeFiles/ReactorServer.dir/build.make
bin/ReactorServer: CMakeFiles/ReactorServer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yyt/mycode/Reactor/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX executable bin/ReactorServer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ReactorServer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ReactorServer.dir/build: bin/ReactorServer

.PHONY : CMakeFiles/ReactorServer.dir/build

CMakeFiles/ReactorServer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ReactorServer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ReactorServer.dir/clean

CMakeFiles/ReactorServer.dir/depend:
	cd /home/yyt/mycode/Reactor && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yyt/mycode/Reactor /home/yyt/mycode/Reactor /home/yyt/mycode/Reactor /home/yyt/mycode/Reactor /home/yyt/mycode/Reactor/CMakeFiles/ReactorServer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ReactorServer.dir/depend
