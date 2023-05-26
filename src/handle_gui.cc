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

ImGuiHandler::ImGuiHandler() {}
ImGuiHandler::~ImGuiHandler() {}

ImGuiHandler::ImGuiHandler(Engine *engine) {
    // Setup Dear ImGui context
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();

    // Setup Dear ImGui style
    ImGui::StyleColorsDark();
    // ImGui::StyleColorsClassic();

    // Setup Platform/Renderer backends
    ImGui_ImplSDL2_InitForOpenGL(engine->window, engine->gl_context_background);
    ImGui_ImplOpenGL3_Init(glsl_version_string.c_str());

    // Setup keyboard support.
    //ImGuiIO& io = ImGui::GetIO(); (void)io;
    //io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;
    //io.ConfigFlags |= ImGuiConfigFlags_NavEnableGamepad;
}

void ImGuiHandler::present_close_game_popup(Engine *engine) {
    // Display close game popup window
    ImGui::OpenPopup("Close game?");
    // Always center this window when appearing
    ImVec2 center = ImGui::GetMainViewport()->GetCenter();
    ImGui::SetNextWindowPos(center, ImGuiCond_Appearing, ImVec2(0.5f, 0.5f));

    if (ImGui::BeginPopupModal("Close game?", NULL,
                               ImGuiWindowFlags_AlwaysAutoResize)) {
        ImGui::Text("All those beautiful files will be deleted.\nThis "
                    "operation cannot be undone!\n\n");
        ImGui::Separator();

        if (ImGui::Button("OK", ImVec2(120, 0))) {
            engine->should_run = false;
            ImGui::CloseCurrentPopup();
        }
        ImGui::SetItemDefaultFocus();
        ImGui::SameLine();
        if (ImGui::Button("Cancel", ImVec2(120, 0))) {
            engine->should_run = true;
            this->show_close_game_popup = false;
            ImGui::CloseCurrentPopup();
        }
        ImGui::EndPopup();
    }
}

void ImGuiHandler::present_colour_window(Engine *engine) {
    // Create a window.
    ImGui::Begin("Colour window");
    ImGui::Text("Manipulate the colours and more.");

    // Edit background colour.
    ImGui::ColorEdit3("background colour", (float *)&this->background_colour);

    if (engine->current_shader_program == engine->solid_colour_shader_program) {
        // Edit triangle colour
        ImGui::ColorEdit3("polygon colour",
                          (float *)&engine->polygon.solid_colour);

        // Click button to get random triangle colour.
        if (ImGui::Button("Random polygon colour.")) {
            engine->polygon.rand_colour();
        }
        // Display current solid triangle colour as hex.
        ImGui::SameLine();
        ImGui::Text("= #%02X%02X%02X",
                    (int)(engine->polygon.solid_colour.x * 255.f),
                    (int)(engine->polygon.solid_colour.y * 255.f),
                    (int)(engine->polygon.solid_colour.z * 255.f));
    }
    ImGui::End();
}

void ImGuiHandler::present_camera_window(Engine *engine) {
    // Create a window.
    ImGui::Begin("Camera window");
    ImGui::Text("Manipulate the camera angles and more.");

    // Click button to select rotation axis.
    if (ImGui::Button("Rotate camera on X-axis.")) {
        engine->camera.current_rotate_axis = CameraRotateAxis::X;
    }
    if (ImGui::Button("Rotate camera on Y-axis.")) {
        engine->camera.current_rotate_axis = CameraRotateAxis::Y;
    }
    if (ImGui::Button("Rotate camera on Z-axis.")) {
        engine->camera.current_rotate_axis = CameraRotateAxis::Z;
    }

    if (engine->camera.current_rotate_axis == CameraRotateAxis::X) {
        ImGui::Text("Current rotate axis: X");
    } else if (engine->camera.current_rotate_axis == CameraRotateAxis::Y) {
        ImGui::Text("Current rotate axis: Y");
    } else if (engine->camera.current_rotate_axis == CameraRotateAxis::Z) {
        ImGui::Text("Current rotate axis: Z");
    }

    // Click button to reset rotation axis.
    if (ImGui::Button("Reset rotation.")) {
        engine->camera.current_rotate_axis = CameraRotateAxis::Y;
        engine->camera.current_rotate_angle = rotate_angle_min;
    }

    // Click button toggle auto rotate.
    if (ImGui::Button("Toggle auto rotate.")) {
        if (this->toggle_auto_rotate == true) {
            this->toggle_auto_rotate = false;
        } else if (this->toggle_auto_rotate == false) {
            this->toggle_auto_rotate = true;
        }
    }

    ImGui::Text("Current rotation angle in radians.");
    // ImGui::SliderFloat("", &engine->camera.current_rotate_angle,
    //                   rotate_angle_min, rotate_angle_max);

    // Convert radians to degrees.
    ImGui::Text("degrees: %f",
                glm::degrees(engine->camera.current_rotate_angle));

    // Sliders for curret camera position.
    ImGui::Text("Current position.");
    // ImGui::SliderFloat("x", &engine->camera.current_trans_vec.x, -4.3f, 4.3f);
    // ImGui::SliderFloat("y", &engine->camera.current_trans_vec.y, -2.0f, 2.0f);
    // ImGui::SliderFloat("z", &engine->camera.current_trans_vec.z, -6.0f, 0.0f);

    // Click button to reset camera position.
    if (ImGui::Button("Reset position")) {
        engine->camera.current_trans_vec = glm::vec3(0.0f, 0.0f, -2.0f);
    }

    ImGui::End();
}

void ImGuiHandler::present_polygon_window(Engine *engine) {
    // Create a window.
    ImGui::Begin("Polygon window");
    ImGui::Text("Manipulate the polygon type and more.");

    if (ImGui::Button("Triangle")) {
        engine->polygon.current_polygon = Polygons::Triangle;
    }
    if (ImGui::Button("Square")) {
        engine->polygon.current_polygon = Polygons::Square;
    }
    if (ImGui::Button("Cube")) {
        engine->polygon.current_polygon = Polygons::Cube;
    }

    ImGui::End();
}

void ImGuiHandler::present_shader_window(Engine *engine) {
    // Create a window.
    ImGui::Begin("Shader window");
    ImGui::Text("Manipulate the shaders and more.");

    // Click button to get random triangle colour.
    if (ImGui::Button("Solid colour shaders")) {
        engine->current_shader_program = engine->solid_colour_shader_program;
    }
    // Click button to get random triangle colour.
    if (ImGui::Button("Tri colour shaders")) {
        engine->current_shader_program = engine->tri_colour_shader_program;
    }

    ImGui::End();
}

void ImGuiHandler::present_main_window(Engine *engine) {
    // Create a window.
    ImGui::Begin("Main window");

    // Check boxes that toggle window display state.
    ImGui::Checkbox("Colour Window", &this->show_colour_window);
    ImGui::Checkbox("Camera Window", &this->show_camera_window);
    ImGui::Checkbox("Shader Window", &this->show_shader_window);
    ImGui::Checkbox("Polygon Window", &this->show_polygon_window);

    // Display current opengl version and drivers.
    ImGui::Text("OpenGL version: %s", engine->opengl_version);

    // Display the current FPS.
    ImGui::Text("Application average %.3f ms/frame (%.3f FPS)",
                1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);

    ImGui::End();
}

void ImGuiHandler::present_imgui(Engine *engine) {

    // Start the Dear ImGui frame
    ImGui_ImplOpenGL3_NewFrame();
    ImGui_ImplSDL2_NewFrame();
    ImGui::NewFrame();

    if (this->show_colour_window) {
        this->present_colour_window(engine);
    }
    if (this->show_camera_window) {
        this->present_camera_window(engine);
    }
    if (this->show_shader_window) {
        this->present_shader_window(engine);
    }
    if (this->show_polygon_window) {
        this->present_polygon_window(engine);
    }
    if (this->show_close_game_popup) {
        this->present_close_game_popup(engine);
    }

    // present gui custom main window
    this->present_main_window(engine);

    // load gui data to buffer
    ImGui::Render();

    // present background colour
    glClearColor(this->background_colour.x * this->background_colour.w,
                 this->background_colour.y * this->background_colour.w,
                 this->background_colour.z * this->background_colour.w,
                 this->background_colour.w);
    glClear(GL_COLOR_BUFFER_BIT);
}
