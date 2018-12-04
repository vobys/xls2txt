cmake_minimum_required(VERSION 3.12)
project(xls2txt C)

set(CMAKE_C_STANDARD 11)

add_executable(xls2txt xls2txt.c ole.c cp.c ummap.c ieee754.c)

target_link_libraries(xls2txt m)
