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

Camera::Camera() {}

Camera::~Camera() {}

void Camera::update_view(Engine *engine) {

    // Apply projection transformation.
    this->projection = glm::perspective(
        glm::radians(45.f), (float)engine->win_w / (float)engine->win_h, 0.1f,
        10.f);

    // Apply current translation.
    this->translation = glm::translate(this->identity, this->current_trans_vec);

    // Apply current rotation.
    this->rotation = glm::rotate(this->translation, this->current_rotate_angle,
                                 this->current_rotate_axis);

    // Don't rotate past 360 degrees.
    if (this->current_rotate_angle > rotate_angle_max) {
        this->current_rotate_angle = rotate_angle_min;
    }

    // Apply model view projection.
    this->MVP = this->projection * this->rotation;

    // pass MVP as uniform into shader
    int mvpShaderIndex =
        glGetUniformLocation(engine->current_shader_program, "MVP");
    glUniformMatrix4fv(mvpShaderIndex, 1, GL_FALSE, glm::value_ptr(this->MVP));

    // Check auto rotate toggle.
    if (engine->imgui_handler.toggle_auto_rotate == true) {
        this->current_rotate_angle += 0.01f;
    }
}
