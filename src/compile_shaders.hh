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

static const std::string tri_colour_vertex_shader_source = //
    glsl_version_string +                                  //
    "layout (location = 0) in vec3 pos;\n"                 //
    "layout (location = 1) in vec3 color;\n"               //
    "uniform mat4x4 MVP;\n"                                //
    "out vec3 vertexColor;\n"                              //
    "void main() {\n"                                      //
    "    vertexColor = color;\n"                           //
    "    gl_Position = MVP * vec4(pos, 1.00f);\n"          //
    "}\n";                                                 //

static const std::string tri_colour_fragment_shader_source = //
    glsl_version_string +                                    //
    "in vec3 vertexColor;\n"                                 //
    "out vec4 out_color;\n"                                  //
    "void main() {\n"                                        //
    "    out_color = vec4(vertexColor, 1.00f);\n"            //
    "}\n";                                                   //

static const std::string solid_colour_vertex_shader_source = //
    glsl_version_string +                                    //
    "layout (location = 0) in vec3 pos;\n"                   //
    "uniform mat4x4 MVP;\n"                                  //
    "uniform float in_r, in_g, in_b;\n"                      //
    "out vec3 color;\n"                                      //
    "void main() {\n"                                        //
    "    color = vec3(in_r, in_g, in_b);\n"                  //
    "    gl_Position = MVP * vec4(pos, 1.00f);\n"            //
    "}\n";                                                   //

static const std::string solid_colour_fragment_shader_source =   //
    glsl_version_string +                                        //
    "in vec3 color;\n"                                           //
    "out vec4 out_color;\n"                                      //
    "void main() {\n"                                            //
    "    out_color = vec4(color[0], color[1], color[2], 1.0);\n" //
    "}\n";                                                       //

uint32_t common_get_shader_program(const char *vertex_shader_source,
                                   const char *fragment_shader_source);
