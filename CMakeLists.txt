cmake_minimum_required(VERSION 3.12)
project(xls2txt C)

set(CMAKE_C_STANDARD 11)

add_executable(xls2txt xls2txt.c ole.c cp.c ummap.c ieee754.c)

# On macOS, libm is part of libSystem and does not need explicit linking
if (NOT APPLE)
    target_link_libraries(xls2txt m)
endif()

install(TARGETS xls2txt DESTINATION bin)
