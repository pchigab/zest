cmake_minimum_required (VERSION 3.0.2)

project(Zest)
set(THE_PROJECT_PREFIX "Zest")

set(VERSION_MAJOR 0)
set(VERSION_MINOR 1)
set(VERSION_PATCH 1)

set(CMAKE_ROOT_DIR "${CMAKE_CURRENT_LIST_DIR}")


include(${CMAKE_ROOT_DIR}/BuildScript/CMake/Build.cmake)

# enable project folders
set_property(GLOBAL PROPERTY USE_FOLDERS ON)
set_property(GLOBAL PROPERTY PREDEFINED_TARGETS_FOLDER "CMake")

add_subdirectory("src/Blizzard")
add_subdirectory("src/KeSPA")
add_subdirectory("src/KT")
add_subdirectory("src/JinAir")
