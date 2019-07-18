
cmake_minimum_required(VERSION 3.13)

option(DO_GTEST "Use google tests to perform bunch of tests..." ON)

option(DO_TARGET "Build targets from src dir..." ON)


macro(config_bin_output)
				set(RUNTIME_DIR "${CMAKE_SOURCE_DIR}/bin/target")
        set_target_properties( ${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY                "${RUNTIME_DIR}" )
				set_target_properties( ${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY_DEBUG          "${RUNTIME_DIR}/debug" )
        set_target_properties( ${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY_RELEASE        "${RUNTIME_DIR}/release" )
        set_target_properties( ${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO "${RUNTIME_DIR}/relwithdebinfo" )
        set_target_properties( ${PROJECT_NAME} PROPERTIES RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL     "${RUNTIME_DIR}/minsizerel" )
endmacro(config_bin_output)

macro(config_test_output target)
				set(RUNTIME_DIR "${CMAKE_SOURCE_DIR}/bin/test")
        set_target_properties( ${target} PROPERTIES RUNTIME_OUTPUT_DIRECTORY                "${RUNTIME_DIR}" )
				set_target_properties( ${target} PROPERTIES RUNTIME_OUTPUT_DIRECTORY_DEBUG          "${RUNTIME_DIR}/debug" )
        set_target_properties( ${target} PROPERTIES RUNTIME_OUTPUT_DIRECTORY_RELEASE        "${RUNTIME_DIR}/release" )
        set_target_properties( ${target} PROPERTIES RUNTIME_OUTPUT_DIRECTORY_RELWITHDEBINFO "${RUNTIME_DIR}/relwithdebinfo" )
        set_target_properties( ${target} PROPERTIES RUNTIME_OUTPUT_DIRECTORY_MINSIZEREL     "${RUNTIME_DIR}/minsizerel" )
endmacro(config_test_output)


set(EXTERN_DIRS "${CMAKE_SOURCE_DIR}/extern")

set_property(GLOBAL PROPERTY USE_FOLDERS ON)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED TRUE)

set ( CMAKE_EXPORT_COMPILE_COMMANDS ON )
set ( CMAKE_BUILD_TYPE DEBUG )


#Default build type

set(default_build_type "Release")
if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
  message(STATUS "Setting build type to '${default_build_type}' as none was specified.")
  set(CMAKE_BUILD_TYPE "${default_build_type}" CACHE
      STRING "Choose the type of build." FORCE)
  # Set the possible values of build type for cmake-gui
  set_property(CACHE CMAKE_BUILD_TYPE PROPERTY STRINGS
    "Debug" "Release" "MinSizeRel" "RelWithDebInfo")
endif()

# Setup Target

if(DO_TARGET)
  message("DO_TARGET is set...")
add_subdirectory(src)
else(DO_TARGET)
  message("DO_TARGET not set...")

endif(DO_TARGET)


# Setup testing

if(DO_GTEST)
  message("DO_GTEST is set...")
	add_subdirectory(extern/GoogleTest)
  add_subdirectory(test)
else(DO_GTEST)
  message("DO_GTEST not set...")

endif(DO_GTEST)

unset(DO_GTEST CACHE)

#NEVER SET ROOT, it will remove all paths to ./cmake
#set(CMAKE_ROOT ${CMAKE_SOURCE_DIR})


#list(APPEND CMAKE_PREFIX_PATH "${CMAKE_SOURCE_DIR}/external/embree2")
#list(APPEND CMAKE_PREFIX_PATH "${CMAKE_SOURCE_DIR}/external/sdl2")
#list(APPEND CMAKE_PREFIX_PATH "${CMAKE_SOURCE_DIR}/external/glew")
#list(APPEND CMAKE_PREFIX_PATH "${CMAKE_SOURCE_DIR}/external/glm")





