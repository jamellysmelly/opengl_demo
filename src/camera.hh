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

class Engine;

namespace CameraRotateAxis {
static const glm::vec3 X = glm::vec3(0.5f, 0.0f, 0.0f);
static const glm::vec3 Y = glm::vec3(0.0f, 0.5f, 0.0f);
static const glm::vec3 Z = glm::vec3(0.0f, 0.0f, 0.5f);
}; // namespace CameraRotateAxis

static constexpr auto rotate_angle_min = glm::radians(0.0f);
static constexpr auto rotate_angle_max = glm::radians(360.0f);

class Camera {
  public:
    float current_rotate_angle = rotate_angle_min;
    glm::vec3 current_rotate_axis = CameraRotateAxis::Y;
    glm::vec3 current_trans_vec = glm::vec3(0.0f, 0.0f, -2.0f);

    Camera();
    ~Camera();

    void auto_rotate();
    void update_view(Engine *engine);

  private:
    glm::mat4 projection =
        glm::perspective(glm::radians(45.f), 4.f / 3.f, 0.99f, 10.f);
    glm::mat4 identity = glm::mat4(1.0f);
    glm::mat4 translation =
        glm::translate(this->identity, this->current_trans_vec);
    glm::mat4 rotation =
        glm::rotate(this->translation, this->current_rotate_angle,
                    this->current_rotate_axis);
    glm::mat4 MVP = this->projection * this->rotation;
};
