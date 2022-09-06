/*
 * Copyright (C) 2022 Jamal Royce Smith <jamalsmith95.bc@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <https://www.gnu.org/licenses/>.
 */

#include "../deps/glew/include/GL/glew.h" // Include before OpenGL.

#include "../deps/SDL2/include/SDL.h"
#include "../deps/SDL2/include/SDL_opengl.h"

#include "../deps/imgui/imgui.h"
#include "../deps/imgui/imgui_impl_opengl3.h"
#include "../deps/imgui/imgui_impl_sdl.h"

#include "../deps/glm/glm/gtc/matrix_transform.hpp"
#include "../deps/glm/glm/gtc/type_ptr.hpp" // glm::value_ptr
#include "../deps/glm/glm/mat4x4.hpp"       // glm::mat4
#include "../deps/glm/glm/vec3.hpp"         // glm::vec3
#include "../deps/glm/glm/vec4.hpp"         // glm::vec4, glm::ivec4

#include <chrono>                               // std::steady_clock
using namespace std::literals::chrono_literals; // ms
#include <iostream>                             // std::cout
#include <memory>                               // std::unique_ptr
#include <thread>                               // std::this_thread::sleep_for

// demo v0.0.2
static const std::string demo_version = "OpenGL Demo v0.0.3";

// Disclaimer.
static const std::string disclaimer =
    "Copyright (C) 2022 Jamal Royce Smith \n"
    "This program comes with ABSOLUTELY NO WARRANTY.\n"
    "This is free software, and you are welcome\n"
    "to redistribute it under certain conditions.\n\n"
    "My free and open source projects can be found at \n"
    "https://gitlab.com/jamalsmith95.bc including \n"
    "this one!\n";

// Use core profile version 4.3.0 as a minimum because
// nouveau linux drivers does not support higher than this,
// and we don't use any features beyond this.
static const std::string glsl_version_string = "#version 430\n";
static constexpr uint8_t OPENGL_MAJOR_VERSION = 4;
static constexpr uint8_t OPENGL_MINOR_VERSION = 3;
