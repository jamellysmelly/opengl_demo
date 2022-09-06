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

Triangle::Triangle() {}
Triangle::~Triangle() {}

Square::Square() {}
Square::~Square() {}

Cube::Cube() {}
Cube::~Cube() {}

Polygon::Polygon() {
    this->triangle = Triangle{};
    this->square = Square{};
    this->cube = Cube{};
}
Polygon::~Polygon() {}

void Polygon::present_current_polygon(Engine *engine) {
    // Bind the Vertex Array Object first, then bind and set the
    // Vertex Buffer Object, and then configure vertex attribute.
    glBindVertexArray(engine->vao);
    glBindBuffer(GL_ARRAY_BUFFER, engine->vbo);

    // Load the current polygons verticies to the array object.
    switch (this->current_polygon) {
    case Polygons::Triangle:
        glBufferData(GL_ARRAY_BUFFER, sizeof(this->triangle.main_vertices),
                     this->triangle.main_vertices, GL_STATIC_DRAW);
        break;
    case Polygons::Square:
        glBufferData(GL_ARRAY_BUFFER, sizeof(this->square.main_vertices),
                     this->square.main_vertices, GL_STATIC_DRAW);
        break;
    case Polygons::Cube:
        glBufferData(GL_ARRAY_BUFFER, sizeof(this->cube.main_vertices),
                     this->cube.main_vertices, GL_STATIC_DRAW);
        break;
    }

    // Enable position attribute.
    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float),
                          (void *)0);
    glEnableVertexAttribArray(0);
    // Enable color attribute.
    glVertexAttribPointer(1, 3, GL_FLOAT, GL_FALSE, 6 * sizeof(float),
                          (void *)(3 * sizeof(float)));
    glEnableVertexAttribArray(1);

    // Pass solid_colour vec to solid_colour_shader_program.
    glUseProgram(engine->current_shader_program);
    if (engine->current_shader_program == engine->solid_colour_shader_program) {
        glUniform1f(
            glGetUniformLocation(engine->current_shader_program, "in_r"),
            (engine->polygon.solid_colour.x));
        glUniform1f(
            glGetUniformLocation(engine->current_shader_program, "in_g"),
            (engine->polygon.solid_colour.y));
        glUniform1f(
            glGetUniformLocation(engine->current_shader_program, "in_b"),
            (engine->polygon.solid_colour.z));
    }

    // Load verticiecs to the buffer object.
    switch (this->current_polygon) {
    case Polygons::Triangle:
        glDrawArrays(GL_TRIANGLES, 0, 3);
        break;
    case Polygons::Square:
        glDrawArrays(GL_TRIANGLES, 0, 2 * 3);
        break;
    case Polygons::Cube:
        glDrawArrays(GL_TRIANGLES, 0, 12 * 3);
        break;
    }

    // Unbind buffers for future use.
    glBindBuffer(GL_ARRAY_BUFFER, 0);
    glBindVertexArray(0);
}

// Change solid colour to random bits from 0 to 0xffffff
void Polygon::rand_colour() {
    auto now = std::chrono::steady_clock::now().time_since_epoch().count();
    srand(now);
    // solid_colour stores 3 floats from 0.0f to 1.0f
    this->solid_colour.x = (rand() % 0xff + 1) / 255.f;
    this->solid_colour.y = (rand() % 0xff + 1) / 255.f;
    this->solid_colour.z = (rand() % 0xff + 1) / 255.f;
}
