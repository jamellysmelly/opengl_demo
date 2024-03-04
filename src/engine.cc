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

#include "engine.hh"

Engine::Engine() {

    std::cout << "Initializing Engine...\n" << std::endl;

    // Init SDL and create window.
    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_GAMECONTROLLER) != 0) {
        throw std::runtime_error(SDL_GetError());
    }

    this->window = SDL_CreateWindow(
        demo_version.c_str(), SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED,
        this->win_w, this->win_h, window_flags);

    if (this->window == NULL) {
        throw std::runtime_error(SDL_GetError());
    }

    // Set current gl core profile, version and swap interval
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK,
                        SDL_GL_CONTEXT_PROFILE_CORE);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, OPENGL_MAJOR_VERSION);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, OPENGL_MINOR_VERSION);
    SDL_GL_SetSwapInterval(true); // Enable vsync

    // Create gl context
    this->gl_context_background = SDL_GL_CreateContext(this->window);

    if (gl_context_background == NULL) {
        throw std::runtime_error(SDL_GetError());
    }

    // set gl context to the created window
    SDL_GL_MakeCurrent(this->window, this->gl_context_background);

    // Initialize glew context
    glewInit();
    glEnable(GL_DEPTH_TEST);
    glDepthFunc(GL_LESS);

    // Compile and set shaders.
    this->tri_colour_shader_program =
        common_get_shader_program(tri_colour_vertex_shader_source.c_str(),
                                  tri_colour_fragment_shader_source.c_str());

    this->solid_colour_shader_program =
        common_get_shader_program(solid_colour_vertex_shader_source.c_str(),
                                  solid_colour_fragment_shader_source.c_str());

    this->current_shader_program = this->tri_colour_shader_program;

    // Generate buffers.
    glGenVertexArrays(1, &this->vao);
    glGenBuffers(1, &this->vbo);

    // Init ImGUI
    this->imgui_handler = ImGuiHandler(this);

    // Allocate Camera object.
    this->camera = Camera();

    // Allocate all polygon objects.
    this->polygon = Polygon();

    // Get the current system platform.
    // Get current opengl and driver version string.
    this->opengl_version = glGetString(GL_VERSION);
    this->system_platform = SDL_GetPlatform();
}

Engine::~Engine() {
    std::cout << "Quitting..." << std::endl;

    // ImGui Cleanup
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplSDL2_Shutdown();
    ImGui::DestroyContext();

    // SDL2 Cleanup
    SDL_GL_DeleteContext(this->gl_context_background);
    SDL_DestroyWindow(this->window);
    SDL_Quit();
}

static void trigger_full_screen(Engine *engine) {
    if (engine->toggle_full_screen == true) {
        SDL_SetWindowFullscreen(engine->window, SDL_WINDOW_FULLSCREEN_DESKTOP);
        engine->toggle_full_screen = false;
    } else {
        SDL_SetWindowFullscreen(engine->window, 0);
        engine->toggle_full_screen = true;
    }
}

void Engine::poll_events() {
    while (SDL_PollEvent(&this->event) == (uint32_t) true) {
        ImGui_ImplSDL2_ProcessEvent(&this->event);
        switch (this->event.type) {
        case SDL_QUIT:
            this->should_run = false;
            break;
        case SDL_KEYDOWN:
            switch (this->event.key.keysym.sym) {
            case SDLK_ESCAPE:
                this->imgui_handler.show_close_game_popup = true;
                break;
            case SDLK_F11:
                trigger_full_screen(this);
                break;
            default:
                break;
            }
            break;
        case SDL_MOUSEBUTTONDOWN:
            break;
        case SDL_WINDOWEVENT_SIZE_CHANGED:
            break;
        default:
            continue;
        }
    }
}

void Engine::update_engine() {
    
    // Cap Frame rate.
    std::this_thread::sleep_for(1ms);

    // Update window when resized.
    SDL_GL_GetDrawableSize(this->window, &this->win_w, &this->win_h);

    // Set the viewport to the current window size.
    glViewport(0, 0, this->win_w, this->win_h);

    // Clear depth buffer bits for each frame.
    glClear(GL_DEPTH_BUFFER_BIT);

    // Swap imgui buffer data to screen.
    ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());

    // Swap vertex buffer object data to screen.
    SDL_GL_SwapWindow(this->window);
}
