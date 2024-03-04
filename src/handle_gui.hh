/*
 * Copyright (C) 2022-2024 Jamal Royce Smith <smellyjamelly@shaw.ca>
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

class Engine;

class ImGuiHandler {
  public:
    bool show_demo_window = false;
    bool show_colour_window = false;
    bool show_polygon_window = false;
    bool show_camera_window = false;
    bool show_shader_window = false;
    bool show_close_game_popup = false;

    bool toggle_auto_rotate = true;

    glm::vec4 background_colour = glm::vec4(0.00f, 0.00f, 0.00f, 1.00f);

    ImGuiHandler();
    ImGuiHandler(Engine *engine);
    ~ImGuiHandler();

    void present_imgui(Engine *engine);

  private:
    void present_close_game_popup(Engine *engine);
    void present_colour_window(Engine *engine);
    void present_camera_window(Engine *engine);
    void present_polygon_window(Engine *engine);
    void present_shader_window(Engine *engine);
    void present_main_window(Engine *engine);
};
