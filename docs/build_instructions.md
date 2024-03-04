### Dropped in external build dependencies:
* GLEW v2.2.0 (Provided via modified source in deps/glew.) 
(https://github.com/nigels-com/glew/)
* SDL2 v2.26.0 (Provided via modified source in deps/SDL2.) 
( https://github.com/libsdl-org/SDL/)
* GLM v0.9.9.8 (Provided via modified source in deps/glm/.) 
( https://github.com/g-truc/glm/)
* Dear ImGui v1.88 (Provided via modified source in deps/imgui/.) 
( https://github.com/ocornut/imgui/)

## Make sure to install the following dependencies.
### Cross platform build dependencies:
* CMake >=v3.20.2 (https://cmake.org/)
* OpenGL >=v4.3.0 (Provided via graphics drivers.)
* Python >=v3.9.10 (Used in cmake script to compile dependencies.) 
( https://python.org/.)


### Linux specific build dependencies:
* GNU Make >=v4.2
* C/C++ Compiler (>=GNU GCC 11.1.1, or >= LLVM Clang 13.0.0)
*
* Please see [deps/glew/README.md](../deps/glew/README.md) and
[deps/SDL2/doscs/README-linux.md](../deps/SDL2/docs/README-linux.md) for
additional development packages.

### Windows specific build dependencies:
* Ninja >=1.10.0
* C/C++ Compiler (>=MinGW-W64 GNU GCC 11.1.1, or >=MinGW-W64 LLVM Clang 13.0.0)
*
* Optionally, you can install __scoop__ (An open source powershell package manager 
for Windows) from (https://scoop.sh/.) 
* Then you can use scoop to install __mingw-winlibs-llvm-ucrt__, 
 __cmake__, and __python__ to aquire all above mentioned dependencies.

## Linux build instructions:
* export CC="gcc" or export CC="clang"
* export CXX="g++" or export CXX="clang++"
* mkdir build && cd build
* cmake -DCMAKE_BUILD_TYPE=Release .. && make -j4

## Windows build instructions:
* $env:CC="gcc" or $env:CC=="clang"
* $env:CXX="g++" or $env:CXX="clang++"
* mkdir build
* cd build
* cmake -S ../ -B ./ -G "Ninja" -DCMAKE_BUILD_TYPE=Release
* ninja
