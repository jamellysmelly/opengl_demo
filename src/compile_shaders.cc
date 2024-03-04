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

#include "includes.hh"

uint32_t common_get_shader_program(const char *vertex_shader_source,
                                   const char *fragment_shader_source) {

    // Allocate enough memory (2 KiB) for long length logs from complicated
    // shader source errors.
    auto log = std::make_unique<char[]>(2048);

    int32_t log_length = 0, success = false;
    uint32_t fragment_shader, shader_program, vertex_shader;

    // Compile vertex shader.
    vertex_shader = glCreateShader(GL_VERTEX_SHADER);
    glShaderSource(vertex_shader, 1, &vertex_shader_source, NULL);
    glCompileShader(vertex_shader);
    glGetShaderiv(vertex_shader, GL_COMPILE_STATUS, &success);
    glGetShaderiv(vertex_shader, GL_INFO_LOG_LENGTH, &log_length);

    if (log_length > 0) {
        glGetShaderInfoLog(vertex_shader, log_length, NULL, log.get());
        std::cout << "vertex shader log:\n\n" << log.get() << std::endl;
    }
    if (!success) {
        throw std::runtime_error("vertex shader compile error\n");
    }

    // Compile fragment shader.
    fragment_shader = glCreateShader(GL_FRAGMENT_SHADER);
    glShaderSource(fragment_shader, 1, &fragment_shader_source, NULL);
    glCompileShader(fragment_shader);
    glGetShaderiv(fragment_shader, GL_COMPILE_STATUS, &success);
    glGetShaderiv(fragment_shader, GL_INFO_LOG_LENGTH, &log_length);

    if (log_length > 0) {
        glGetShaderInfoLog(fragment_shader, log_length, NULL, log.get());
        std::cout << "fragment shader log:\n\n" << log.get() << std::endl;
    }
    if (!success) {
        throw std::runtime_error("fragment shader compile error\n");
    }

    // Link shaders
    shader_program = glCreateProgram();
    glAttachShader(shader_program, vertex_shader);
    glAttachShader(shader_program, fragment_shader);
    glLinkProgram(shader_program);
    glGetProgramiv(shader_program, GL_LINK_STATUS, &success);
    glGetProgramiv(shader_program, GL_INFO_LOG_LENGTH, &log_length);

    if (log_length > 0) {
        glGetProgramInfoLog(shader_program, log_length, NULL, log.get());
        std::cout << "shader link log:\n\n" << log.get() << std::endl;
    }
    if (!success) {
        throw std::runtime_error("shader link error");
    }

    // Cleanup.
    glDeleteShader(vertex_shader);
    glDeleteShader(fragment_shader);
    return shader_program; // log deletes here.
}
