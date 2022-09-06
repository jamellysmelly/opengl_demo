### Dropped in external build dependencies:
* GLEW v2.2.0 (Provided via modified source in deps/glew.) 
(https://github.com/nigels-com/glew/)
* SDL2 v2.24.0 (Provided via modified source in deps/SDL2.) 
( https://github.com/libsdl-org/SDL/)
* GLM v0.9.9.8 (Provided via modified source in deps/glm/.) 
( https://github.com/g-truc/glm/)
* Dear ImGui v1.88 (Provided via modified source in deps/imgui/.) 
( https://github.com/ocornut/imgui/)

### External build dependencies:
* GNU Make >=v4.2
* C/C++ Compiler (>=GNU GCC 11.1.1, or >= LLVM Clang 13.0.0)
* CMake >=v3.20.2 (https://cmake.org/)
* OpenGL >=v4.3.0 (Provided via graphics drivers.)
* Python >=v3.9.10 (Used in cmake script to pre compile some dependencies.)
( https://python.org/.)
* Please see [deps/glew/README.md](../deps/glew/README.md) and
[deps/SDL2/doscs/README-linux.md](../deps/SDL2/docs/README-linux.md) for
additional development packages.

## Build instructions:
* mkdir build && cd build
* cmake -DCMAKE_BUILD_TYPE=Release .. && make -j4
