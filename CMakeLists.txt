cmake_minimum_required(VERSION 3.20.2)

# Set the project name.
project(demo VERSION 0.0.3)

set(GLEW_LIBRARIES 
	${CMAKE_SOURCE_DIR}/build/glew/lib/)
set(SDL2_LIBRARIES ${CMAKE_SOURCE_DIR}/build/SDL2/build/)

set(GLEW_BIN_DIR
	${CMAKE_SOURCE_DIR}/build/glew/bin/)
	
find_package(OpenGL REQUIRED)
include_directories (${OPENGL_INCLUDE_DIR})

set(CMAKE_CXX_FLAGS "-pipe -std=c++20 -Wall -Wextra")

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

target_link_libraries(demo ${OPENGL_LIBRARIES} pthread)

if( CMAKE_SYSTEM_NAME STREQUAL "Linux" )

  set(CMAKE_CXX_FLAGS "-flto")

  target_link_libraries(demo GLEW)
  target_link_libraries(demo SDL2)

endif()
