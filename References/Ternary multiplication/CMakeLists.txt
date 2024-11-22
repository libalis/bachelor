cmake_minimum_required(VERSION 3.23)
project(mul)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fsanitize=address")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -fsanitize=address")


include_directories(/opt/homebrew/include)

link_directories(/opt/homebrew/lib)

add_executable(mul test.cpp fa.cpp addsub.h exor.h exor.cpp mul.h reg.h reg.cpp reg_2ndOp.h reg_2ndOp.cpp reg_B.h reg_prod.h reg_prod.cpp testbench.cpp testbench.h)

target_link_libraries(mul systemc)