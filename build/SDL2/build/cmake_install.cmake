# Install script for directory: /home/jamalrs/Hacking/opengl_demo/build/SDL2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/libSDL2-2.0.so.0.2600.5"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/libSDL2-2.0.so.0"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libSDL2-2.0.so.0.2600.5"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libSDL2-2.0.so.0"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE SHARED_LIBRARY FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/libSDL2-2.0.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libSDL2-2.0.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libSDL2-2.0.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/libSDL2-2.0.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/libSDL2main.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/libSDL2.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE STATIC_LIBRARY FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/libSDL2_test.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2Targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2Targets.cmake"
         "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2Targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2Targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2Targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2Targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2Targets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2mainTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2mainTargets.cmake"
         "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2mainTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2mainTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2mainTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2mainTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2mainTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2staticTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2staticTargets.cmake"
         "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2staticTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2staticTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2staticTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2staticTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2staticTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2testTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2testTargets.cmake"
         "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2testTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2testTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2/SDL2testTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2testTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/CMakeFiles/Export/abc38d28bd2238ac71bf477c5e568b12/SDL2testTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Devel" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/cmake/SDL2" TYPE FILE FILES
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/SDL2Config.cmake"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/SDL2ConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL2" TYPE FILE FILES
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_assert.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_atomic.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_audio.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_bits.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_blendmode.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_clipboard.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_copying.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_cpuinfo.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_egl.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_endian.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_error.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_events.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_filesystem.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_gamecontroller.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_gesture.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_guid.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_haptic.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_hidapi.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_hints.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_joystick.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_keyboard.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_keycode.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_loadso.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_locale.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_log.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_main.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_messagebox.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_metal.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_misc.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_mouse.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_mutex.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_name.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_opengl.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_opengl_glext.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_opengles.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_opengles2.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_opengles2_gl2.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_opengles2_gl2ext.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_opengles2_gl2platform.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_opengles2_khrplatform.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_pixels.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_platform.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_power.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_quit.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_rect.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_render.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_rwops.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_scancode.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_sensor.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_shape.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_stdinc.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_surface.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_system.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_syswm.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test_assert.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test_common.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test_compare.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test_crc32.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test_font.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test_fuzzer.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test_harness.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test_images.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test_log.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test_md5.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test_memory.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_test_random.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_thread.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_timer.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_touch.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_types.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_version.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_video.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/SDL_vulkan.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/begin_code.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/include/close_code.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/include/SDL_revision.h"
    "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/include-config-release/SDL_config.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL2" TYPE FILE FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/LICENSE.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64/pkgconfig" TYPE FILE FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/sdl2.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  
            execute_process(COMMAND /usr/bin/cmake -E create_symlink
              "libSDL2-2.0.so" "libSDL2.so"
              WORKING_DIRECTORY "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib64" TYPE FILE FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/libSDL2.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE PROGRAM FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/sdl2-config")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aclocal" TYPE FILE FILES "/home/jamalrs/Hacking/opengl_demo/build/SDL2/sdl2.m4")
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/jamalrs/Hacking/opengl_demo/build/SDL2/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
