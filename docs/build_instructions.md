### Dropped in external build dependencies:
* GLM v0.9.9.8 (Provided via modified source in deps/glm/.) 
( https://github.com/g-truc/glm/)
* Dear ImGui v1.88 (Provided via modified source in deps/imgui/.) 
( https://github.com/ocornut/imgui/)

### External build dependencies:
* GNU Make >=v4.2
* C/C++ Compiler (>=GNU GCC 11.1.1, or >= LLVM Clang 13.0.0)
* CMake >=v3.20.2 (https://cmake.org/)
* OpenGL >=v4.3.0 (Provided via graphics drivers.)
* GLEW >= v2.0.0 (https://github.com/nigels-com/glew/)
* SDL2 >=v2.0.10 ( https://github.com/libsdl-org/SDL/)
* Mesa-libGLU >=9.0.1 (https://mesa3d.org/)

## Build instructions:
* mkdir build && cd build
* cmake -DCMAKE_BUILD_TYPE=Release .. && make -j4
