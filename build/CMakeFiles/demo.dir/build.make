# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jamalrs/Hacking/opengl_demo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jamalrs/Hacking/opengl_demo/build

# Include any dependencies generated for this target.
include CMakeFiles/demo.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/demo.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/demo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/demo.dir/flags.make

CMakeFiles/demo.dir/src/main.cc.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/src/main.cc.o: /home/jamalrs/Hacking/opengl_demo/src/main.cc
CMakeFiles/demo.dir/src/main.cc.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/demo.dir/src/main.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/src/main.cc.o -MF CMakeFiles/demo.dir/src/main.cc.o.d -o CMakeFiles/demo.dir/src/main.cc.o -c /home/jamalrs/Hacking/opengl_demo/src/main.cc

CMakeFiles/demo.dir/src/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/src/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamalrs/Hacking/opengl_demo/src/main.cc > CMakeFiles/demo.dir/src/main.cc.i

CMakeFiles/demo.dir/src/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/src/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamalrs/Hacking/opengl_demo/src/main.cc -o CMakeFiles/demo.dir/src/main.cc.s

CMakeFiles/demo.dir/src/compile_shaders.cc.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/src/compile_shaders.cc.o: /home/jamalrs/Hacking/opengl_demo/src/compile_shaders.cc
CMakeFiles/demo.dir/src/compile_shaders.cc.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/demo.dir/src/compile_shaders.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/src/compile_shaders.cc.o -MF CMakeFiles/demo.dir/src/compile_shaders.cc.o.d -o CMakeFiles/demo.dir/src/compile_shaders.cc.o -c /home/jamalrs/Hacking/opengl_demo/src/compile_shaders.cc

CMakeFiles/demo.dir/src/compile_shaders.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/src/compile_shaders.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamalrs/Hacking/opengl_demo/src/compile_shaders.cc > CMakeFiles/demo.dir/src/compile_shaders.cc.i

CMakeFiles/demo.dir/src/compile_shaders.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/src/compile_shaders.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamalrs/Hacking/opengl_demo/src/compile_shaders.cc -o CMakeFiles/demo.dir/src/compile_shaders.cc.s

CMakeFiles/demo.dir/src/camera.cc.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/src/camera.cc.o: /home/jamalrs/Hacking/opengl_demo/src/camera.cc
CMakeFiles/demo.dir/src/camera.cc.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/demo.dir/src/camera.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/src/camera.cc.o -MF CMakeFiles/demo.dir/src/camera.cc.o.d -o CMakeFiles/demo.dir/src/camera.cc.o -c /home/jamalrs/Hacking/opengl_demo/src/camera.cc

CMakeFiles/demo.dir/src/camera.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/src/camera.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamalrs/Hacking/opengl_demo/src/camera.cc > CMakeFiles/demo.dir/src/camera.cc.i

CMakeFiles/demo.dir/src/camera.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/src/camera.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamalrs/Hacking/opengl_demo/src/camera.cc -o CMakeFiles/demo.dir/src/camera.cc.s

CMakeFiles/demo.dir/src/polygon.cc.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/src/polygon.cc.o: /home/jamalrs/Hacking/opengl_demo/src/polygon.cc
CMakeFiles/demo.dir/src/polygon.cc.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/demo.dir/src/polygon.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/src/polygon.cc.o -MF CMakeFiles/demo.dir/src/polygon.cc.o.d -o CMakeFiles/demo.dir/src/polygon.cc.o -c /home/jamalrs/Hacking/opengl_demo/src/polygon.cc

CMakeFiles/demo.dir/src/polygon.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/src/polygon.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamalrs/Hacking/opengl_demo/src/polygon.cc > CMakeFiles/demo.dir/src/polygon.cc.i

CMakeFiles/demo.dir/src/polygon.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/src/polygon.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamalrs/Hacking/opengl_demo/src/polygon.cc -o CMakeFiles/demo.dir/src/polygon.cc.s

CMakeFiles/demo.dir/src/handle_gui.cc.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/src/handle_gui.cc.o: /home/jamalrs/Hacking/opengl_demo/src/handle_gui.cc
CMakeFiles/demo.dir/src/handle_gui.cc.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/demo.dir/src/handle_gui.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/src/handle_gui.cc.o -MF CMakeFiles/demo.dir/src/handle_gui.cc.o.d -o CMakeFiles/demo.dir/src/handle_gui.cc.o -c /home/jamalrs/Hacking/opengl_demo/src/handle_gui.cc

CMakeFiles/demo.dir/src/handle_gui.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/src/handle_gui.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamalrs/Hacking/opengl_demo/src/handle_gui.cc > CMakeFiles/demo.dir/src/handle_gui.cc.i

CMakeFiles/demo.dir/src/handle_gui.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/src/handle_gui.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamalrs/Hacking/opengl_demo/src/handle_gui.cc -o CMakeFiles/demo.dir/src/handle_gui.cc.s

CMakeFiles/demo.dir/src/engine.cc.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/src/engine.cc.o: /home/jamalrs/Hacking/opengl_demo/src/engine.cc
CMakeFiles/demo.dir/src/engine.cc.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/demo.dir/src/engine.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/src/engine.cc.o -MF CMakeFiles/demo.dir/src/engine.cc.o.d -o CMakeFiles/demo.dir/src/engine.cc.o -c /home/jamalrs/Hacking/opengl_demo/src/engine.cc

CMakeFiles/demo.dir/src/engine.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/src/engine.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamalrs/Hacking/opengl_demo/src/engine.cc > CMakeFiles/demo.dir/src/engine.cc.i

CMakeFiles/demo.dir/src/engine.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/src/engine.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamalrs/Hacking/opengl_demo/src/engine.cc -o CMakeFiles/demo.dir/src/engine.cc.s

CMakeFiles/demo.dir/deps/imgui/imgui.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/deps/imgui/imgui.cpp.o: /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui.cpp
CMakeFiles/demo.dir/deps/imgui/imgui.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/demo.dir/deps/imgui/imgui.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/deps/imgui/imgui.cpp.o -MF CMakeFiles/demo.dir/deps/imgui/imgui.cpp.o.d -o CMakeFiles/demo.dir/deps/imgui/imgui.cpp.o -c /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui.cpp

CMakeFiles/demo.dir/deps/imgui/imgui.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/deps/imgui/imgui.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui.cpp > CMakeFiles/demo.dir/deps/imgui/imgui.cpp.i

CMakeFiles/demo.dir/deps/imgui/imgui.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/deps/imgui/imgui.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui.cpp -o CMakeFiles/demo.dir/deps/imgui/imgui.cpp.s

CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.o: /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_draw.cpp
CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.o -MF CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.o.d -o CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.o -c /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_draw.cpp

CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_draw.cpp > CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.i

CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_draw.cpp -o CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.s

CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.o: /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_tables.cpp
CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.o -MF CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.o.d -o CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.o -c /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_tables.cpp

CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_tables.cpp > CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.i

CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_tables.cpp -o CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.s

CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.o: /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_widgets.cpp
CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.o -MF CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.o.d -o CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.o -c /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_widgets.cpp

CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_widgets.cpp > CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.i

CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_widgets.cpp -o CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.s

CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.o: /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_impl_sdl2.cpp
CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.o -MF CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.o.d -o CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.o -c /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_impl_sdl2.cpp

CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_impl_sdl2.cpp > CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.i

CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_impl_sdl2.cpp -o CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.s

CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/demo.dir/flags.make
CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.o: /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_impl_opengl3.cpp
CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.o: CMakeFiles/demo.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.o -MF CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.o.d -o CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.o -c /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_impl_opengl3.cpp

CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_impl_opengl3.cpp > CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.i

CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jamalrs/Hacking/opengl_demo/deps/imgui/imgui_impl_opengl3.cpp -o CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.s

# Object files for target demo
demo_OBJECTS = \
"CMakeFiles/demo.dir/src/main.cc.o" \
"CMakeFiles/demo.dir/src/compile_shaders.cc.o" \
"CMakeFiles/demo.dir/src/camera.cc.o" \
"CMakeFiles/demo.dir/src/polygon.cc.o" \
"CMakeFiles/demo.dir/src/handle_gui.cc.o" \
"CMakeFiles/demo.dir/src/engine.cc.o" \
"CMakeFiles/demo.dir/deps/imgui/imgui.cpp.o" \
"CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.o" \
"CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.o" \
"CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.o" \
"CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.o" \
"CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.o"

# External object files for target demo
demo_EXTERNAL_OBJECTS =

demo: CMakeFiles/demo.dir/src/main.cc.o
demo: CMakeFiles/demo.dir/src/compile_shaders.cc.o
demo: CMakeFiles/demo.dir/src/camera.cc.o
demo: CMakeFiles/demo.dir/src/polygon.cc.o
demo: CMakeFiles/demo.dir/src/handle_gui.cc.o
demo: CMakeFiles/demo.dir/src/engine.cc.o
demo: CMakeFiles/demo.dir/deps/imgui/imgui.cpp.o
demo: CMakeFiles/demo.dir/deps/imgui/imgui_draw.cpp.o
demo: CMakeFiles/demo.dir/deps/imgui/imgui_tables.cpp.o
demo: CMakeFiles/demo.dir/deps/imgui/imgui_widgets.cpp.o
demo: CMakeFiles/demo.dir/deps/imgui/imgui_impl_sdl2.cpp.o
demo: CMakeFiles/demo.dir/deps/imgui/imgui_impl_opengl3.cpp.o
demo: CMakeFiles/demo.dir/build.make
demo: /usr/lib64/libOpenGL.so
demo: /usr/lib64/libGLX.so
demo: /usr/lib64/libGLU.so
demo: glew/build/cmake/build/lib/libGLEW.a
demo: SDL2/build/libSDL2.a
demo: CMakeFiles/demo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jamalrs/Hacking/opengl_demo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Linking CXX executable demo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/demo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/demo.dir/build: demo
.PHONY : CMakeFiles/demo.dir/build

CMakeFiles/demo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/demo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/demo.dir/clean

CMakeFiles/demo.dir/depend:
	cd /home/jamalrs/Hacking/opengl_demo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jamalrs/Hacking/opengl_demo /home/jamalrs/Hacking/opengl_demo /home/jamalrs/Hacking/opengl_demo/build /home/jamalrs/Hacking/opengl_demo/build /home/jamalrs/Hacking/opengl_demo/build/CMakeFiles/demo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/demo.dir/depend

