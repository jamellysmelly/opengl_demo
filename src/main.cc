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

int main(int argc, char *args[]) {

    std::cout << demo_version << "\n" << std::endl;
    std::cout << disclaimer << std::endl;

    try {

        // Allocate the rendering engine.
        auto demo = std::make_unique<Engine>();

        // Send intro text to terminal.
        std::cout << "Running "
                  << "on " << demo->system_platform << "...\n"
                  << std::endl;

        // Main loop.
        while (demo->should_run == true) {

            demo->poll_events();

            demo->imgui_handler.present_imgui(demo.get());

            demo->polygon.present_current_polygon(demo.get());

            demo->camera.update_view(demo.get());

            demo->update_engine();
        }

        // Print all uncaught exceptions to help with debuging.
    } catch (std::exception &e) {
        std::cout << "Exception caught: " << e.what() << std::endl;
        return -1;
    }
    return 0;
}
