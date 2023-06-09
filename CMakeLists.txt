# Copy glew and sdl2 to the build folder and compile from source.
execute_process(COMMAND python deps/build_deps.py
	WORKING_DIRECTORY ${CMAKE_CURRENT_LIST_DIR})

cmake_minimum_required(VERSION 3.20.2)

# Set the project name.
project(demo VERSION 0.0.5)

set(GLEW_LIBRARIES 
	${CMAKE_SOURCE_DIR}/build/glew/build/cmake/build/lib/)
set(SDL2_LIBRARIES ${CMAKE_SOURCE_DIR}/build/SDL2/build/)

set(GLEW_BIN_DIR
	${CMAKE_SOURCE_DIR}/build/glew/build/cmake/build/bin/)

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
    	deps/imgui/imgui_impl_sdl2.cpp
    	deps/imgui/imgui_impl_opengl3.cpp)

target_link_libraries(demo ${OPENGL_LIBRARIES} pthread)

if( CMAKE_SYSTEM_NAME STREQUAL "Windows")

  target_link_libraries(demo mingw32)

  target_link_libraries(demo
	${GLEW_LIBRARIES}libglew32.dll.a
  	${GLEW_LIBRARIES}libglew32.a)

  target_link_libraries(demo
	${SDL2_LIBRARIES}libSDL2main.a
  	${SDL2_LIBRARIES}libSDL2.dll.a
  	${SDL2_LIBRARIES}libSDL2.a)

# Copy over .dll files to build folder.
  add_custom_command(
	TARGET demo POST_BUILD
	COMMAND ${CMAKE_COMMAND} -E copy
	${SDL2_LIBRARIES}/SDL2.dll
	${CMAKE_CURRENT_BINARY_DIR}/SDL2.dll) 
  add_custom_command(
	TARGET demo POST_BUILD
	COMMAND ${CMAKE_COMMAND} -E copy
	${GLEW_BIN_DIR}/glew32.dll
	${CMAKE_CURRENT_BINARY_DIR}/glew32.dll)

elseif( CMAKE_SYSTEM_NAME STREQUAL "Linux" )

  set(CMAKE_CXX_FLAGS "-flto")

  target_link_libraries(demo ${GLEW_LIBRARIES}libGLEW.a)
  target_link_libraries(demo ${SDL2_LIBRARIES}libSDL2.a)

endif()
