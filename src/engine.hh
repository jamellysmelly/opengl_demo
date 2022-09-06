/*
 * Copyright (C) 2022 Jamal Royce Smith <smellyjamelly@shaw.ca>
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

#include "includes.hh"

#include "camera.hh"
#include "compile_shaders.hh"
#include "handle_gui.hh"
#include "polygon.hh"

class Engine {
  public:
    const char *system_platform;
    const unsigned char *opengl_version;

    uint32_t tri_colour_shader_program, solid_colour_shader_program,
        current_shader_program, vbo, vao;

    int32_t win_w = 800, win_h = 600;

    bool should_run = true;
    bool toggle_full_screen = true;

    SDL_Window *window = NULL;
    SDL_GLContext gl_context_background = NULL;

    Polygon polygon;
    Camera camera;
    ImGuiHandler imgui_handler;

    Engine();
    ~Engine();

    void poll_events();
    void update_engine();

  private:
    SDL_Event event;
};

static constexpr uint32_t window_flags =
    (SDL_WindowFlags)(SDL_WINDOW_OPENGL | SDL_WINDOW_ALLOW_HIGHDPI |
                      SDL_WINDOW_RESIZABLE);
