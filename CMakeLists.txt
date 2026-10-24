cmake_minimum_required(VERSION 3.16)
project(SystolicArrayAccelerator VERSION 1.0.0 LANGUAGES C)

set(CMAKE_C_STANDARD 99)
set(CMAKE_C_STANDARD_REQUIRED ON)

enable_testing()

add_subdirectory(c_code_simulation)
