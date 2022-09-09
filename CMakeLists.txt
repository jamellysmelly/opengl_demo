cmake_minimum_required(VERSION 3.20.2)

project(demo VERSION 0.0.3)

find_package(OpenGL REQUIRED)
include_directories (${OPENGL_INCLUDE_DIR})

find_package(GLEW REQUIRED)
include_directories(${GLEW_INCLUDE_DIRS})

find_package(SDL2 REQUIRED)
include_directories(demo ${SDL2_INCLUDE_DIRS})

set(CMAKE_CXX_FLAGS "-pipe -std=c++20 -Wall -Wextra -flto")

# Add the executable.
add_executable(demo src/main.cc
	src/compile_shaders.cc
    	src/camera.cc
    	src/polygon.cc
    	src/handle_gui.cc
    	src/engine.cc
    	deps/imgui/imgui.cpp
    	deps/imgui/imgui_draw.cpp
    	deps/imgui/imgui_tables.cpp
    	deps/imgui/imgui_widgets.cpp
    	deps/imgui/imgui_impl_sdl.cpp
    	deps/imgui/imgui_impl_opengl3.cpp)

target_link_libraries(demo ${OPENGL_LIBRARIES} GLEW SDL2 pthread)

