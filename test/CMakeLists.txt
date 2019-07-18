
if(DO_GTEST)

# Setup testing


cmake_minimum_required(VERSION 3.13)
project(Tests VERSION 1.0.0 LANGUAGES C CXX)

# External libraries which need to be built.
#add_subdirectory ( ${CMAKE_SOURCE_DIR}/extern/GoogleTest extern/GoogleTest )
#set_target_properties(gtest PROPERTIES FOLDER extern)
#set_target_properties(gtest_main PROPERTIES FOLDER extern)
#set_target_properties(gmock PROPERTIES FOLDER extern)
#set_target_properties(gmock_main PROPERTIES FOLDER extern)

macro(package_add_test TESTNAME)
    add_executable(${TESTNAME} ${ARGN})
    target_link_libraries(${TESTNAME} gtest gmock gtest_main)
    add_test(NAME ${TESTNAME} COMMAND ${TESTNAME})
    set_target_properties(${TESTNAME} PROPERTIES FOLDER tests COMPILE_DEFINITIONS DO_GTEST=1)
    config_test_output(${TESTNAME})
endmacro()


message("CURRENT PROJECT = ${PROJECT_NAME}")
message("CMAKE_CURRENT_BINARY_DIR = ${CMAKE_CURRENT_BINARY_DIR}")

#set(CMAKE_CURRENT_BINARY_DIR ${CMAKE_CURRENT_BINARY_DIR}/cmake-build)
#set(CMAKE_)
#set(CMAKE_CXX_STANDARD 11)
#set(CMAKE_CXX_STANDARD_REQUIRED TRUE)




enable_testing()

package_add_test(${PROJECT_NAME}_test_gtest test_gtest.cpp)


endif(DO_GTEST)

