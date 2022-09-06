"""
Copyright (c) 2022 Jamal Royce Smith <smellyjamelly@shaw.ca>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
"""

import sys
import os

main_dir = os.getcwd()
glew_build_dir = "build/glew/"
sdl2_build_dir = "build/SDL2/build/"
glew_done = "GLEW is already built."
sdl2_done = "SDL2 is already built."

def build_linux_deps():
    linux_copy_glew = "cp -ar deps/glew build/glew"
    linux_copy_sdl2 = "cp -ar deps/SDL2 build/SDL2"
    
    cmake_command = "cmake -S ../ -B ./ -DCMAKE_BUILD_TYPE=Release"
    make_command = "make -j{}".format(os.cpu_count())
    
    if os.path.isdir(glew_build_dir) == False:
        try:
            ## Copy glew to build
            os.system(linux_copy_glew)
            
            ## Change directory to glew/build
            os.chdir(glew_build_dir)
            
            ## Run the cmake build script and build it with the makefile output 
            os.system(make_command)
        except Exception as e: 
            print(repr(e))
    else:
        print(glew_done)

    ## Change back to the main folder. 
    os.chdir(main_dir)
    if os.path.isdir(sdl2_build_dir) == False:
        try:
            ## Copy SDL2 to build.
            os.system(linux_copy_sdl2)
            
            ## Create and change directoy to SDL2/build
            os.mkdir(sdl2_build_dir)
            os.chdir(sdl2_build_dir)
            
            ## Run the cmake build script and build it with the makefile output
            os.system(cmake_command)
            os.system(make_command)
        except Exception as e: 
            print(repr(e))
    else:
        print(sdl2_done)
             
def main():
    print("Python version: " + (sys.version))
    if sys.platform == "linux" or sys.platform == "linux2":
        build_linux_deps()

main()
