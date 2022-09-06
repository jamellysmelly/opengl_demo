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

class Triangle {
  public:
    Triangle();
    ~Triangle();

    float main_vertices[18] = {
        // Position         // Colour
        0.5f,  0.5f,  0.0f, 1.0f, 0.0f, 0.0f, // Top right
        -0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.0f, // Top Left
        -0.5f, 0.5f,  0.0f, 0.0f, 0.0f, 1.0f, // Bottom left
    };
};

class Square {
  public:
    Square();
    ~Square();

    float main_vertices[36] = {
        // Position         // Colour
        0.5f, 0.5f, 0.0f, 1.0f, 0.0f, 0.0f,   // // Top right
        -0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.0f, // // Top Left
        -0.5f, 0.5f, 0.0f, 0.0f, 0.0f, 1.0f,  // // Bottom left
                                              //
        0.5f, 0.5f, 0.0f, 1.0f, 0.0f, 0.0f,   // // Top right
        -0.5f, -0.5f, 0.0f, 0.0f, 1.0f, 0.0f, // // Top Left
        0.5f, -0.5f, 0.0f, 0.0f, 0.0f, 1.0f,  // // Bottom left
    };
};

class Cube {
  public:
    Cube();
    ~Cube();

    float main_vertices[216] = {
        // Position          // Colour
        -0.5f, -0.5f, -0.5f, 1.0f, 0.0f, 0.0f, // // Top right
        -0.5f, -0.5f, 0.5f, 0.0f, 1.0f, 0.0f,  // // Top Left
        -0.5f, 0.5f, 0.5f, 0.0f, 0.0f, 1.0f,   // // Bottom left
                                               //
        0.5f, 0.5f, -0.5f, 1.0f, 0.0f, 0.0f,   // // Top right
        -0.5f, -0.5f, -0.5f, 0.0f, 1.0f, 0.0f, // // Top Left
        -0.5f, 0.5f, -0.5f, 0.0f, 0.0f, 1.0f,  // // Bottom left
                                               //
        0.5f, -0.5f, 0.5f, 1.0f, 0.0f, 0.0f,   // // Top right
        -0.5f, -0.5f, -0.5f, 1.0f, 1.0f, 0.0f, // // Top Left
        0.5f, -0.5f, -0.5f, 0.0f, 0.0f, 1.0f,  // // Bottom left
                                               //
        0.5f, 0.5f, -0.5f, 1.0f, 0.0f, 0.0f,   // // Top right
        0.5f, -0.5f, -0.5f, 0.0f, 1.0f, 0.0f,  // // Top Left
        -0.5f, -0.5f, -0.5f, 0.0f, 0.0f, 1.0f, // // Bottom left
                                               //
        -0.5f, -0.5f, -0.5f, 1.0f, 0.0f, 0.0f, // // Top right
        -0.5f, 0.5f, 0.5f, 0.0f, 1.0f, 0.0f,   // // Top Left
        -0.5f, 0.5f, -0.5f, 0.0f, 0.0f, 1.0f,  // // Bottom left
                                               //
        0.5f, -0.5f, 0.5f, 1.0f, 0.0f, 0.0f,   // // Top right
        -0.5f, -0.5f, 0.5f, 0.0f, 1.0f, 0.0f,  // // Top Left
        -0.5f, -0.5f, -0.5f, 0.0f, 0.0f, 1.0f, // // Bottom left
                                               //
        -0.5f, 0.5f, 0.5f, 1.0f, 0.0f, 0.0f,   // // Top right
        -0.5f, -0.5f, 0.5f, 0.0f, 1.0f, 0.0f,  // // Top Left
        0.5f, -0.5f, 0.5f, 0.0f, 0.0f, 1.0f,   // // Bottom left
                                               //
        0.5f, 0.5f, 0.5f, 1.0f, 0.0f, 0.0f,    // // Top right
        0.5f, -0.5f, -0.5f, 0.0f, 1.0f, 0.0f,  // // Top Left
        0.5f, 0.5f, -0.5f, 0.0f, 0.0f, 1.0f,   // // Bottom left
                                               //
        0.5f, -0.5f, -0.5f, 1.0f, 0.0f, 0.0f,  // // Top right
        0.5f, 0.5f, 0.5f, 0.0f, 1.0f, 0.0f,    // // Top Left
        0.5f, -0.5f, 0.5f, 0.0f, 0.0f, 1.0f,   // // Bottom left
                                               //
        0.5f, 0.5f, 0.5f, 1.0f, 0.0f, 0.0f,    // // Top right
        0.5f, 0.5f, -0.5f, 0.0f, 1.0f, 0.0f,   // // Top Left
        -0.5f, 0.5f, -0.5f, 0.0f, 0.0f, 1.0f,  // // Bottom left
                                               //
        0.5f, 0.5f, 0.5f, 1.0f, 0.0f, 0.0f,    // // Top right
        -0.5f, 0.5f, -0.5f, 0.0f, 1.0f, 0.0f,  // // Top Left
        -0.5f, 0.5f, 0.5f, 0.0f, 0.0f, 1.0f,   // // Bottom left
                                               //
        0.5f, 0.5f, 0.5f, 1.0f, 0.0f, 0.0f,    // // Top right
        -0.5f, 0.5f, 0.5f, 0.0f, 1.0f, 0.0f,   // // Top Left
        0.5f, -0.5f, 0.5f, 0.0f, 0.0f, 1.0f    // // Bottom left
    };
};

class Engine;

namespace Polygons {
static const uint32_t Triangle = 0;
static const uint32_t Square = 1;
static const uint32_t Cube = 2;
}; // namespace Polygons

class Polygon {
  public:
    glm::vec4 solid_colour = glm::vec4(1.00f, 0.00f, 0.00f, 1.00f);

    uint32_t current_polygon = Polygons::Cube;

    Polygon();
    ~Polygon();

    void present_current_polygon(Engine *engine);

    void rand_colour();

  private:
    Triangle triangle;
    Square square;
    Cube cube;
};
