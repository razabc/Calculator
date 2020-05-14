cmake_minimum_required(VERSION 3.16)
project(calculator)

set(CMAKE_CXX_STANDARD 14)

include_directories(.)

add_executable(calculator
        source/Calculator.cpp
        include/Calculator.h
        source/main.cpp source/tester.cpp)

add_subdirectory(google_tests)
include_directories(google_tests/googletest/include)
include_directories(google_tests/googlemock/include)
target_link_libraries(calculator gtest gtest_main)
target_link_libraries(calculator gmock gmock_main)
