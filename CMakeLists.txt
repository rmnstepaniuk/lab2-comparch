cmake_minimum_required(VERSION 3.10)
set(CMAKE_CXX_STANDARD 14)

project(lab2-comparch)

add_library(pythagoras
	include/pythagoras.h
	src/pythagoras.cpp
)


target_include_directories(
	pythagoras
	PUBLIC
		"include"
)

add_executable(run
  src/main.cpp
)

target_link_libraries(run pythagoras)