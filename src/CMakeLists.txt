project(GoogleTest_Example VERSION 1.0.0 LANGUAGES C CXX)



add_library(MyLibExample cpp/simple_lib.cpp cpp/simple_lib.hpp)



if (EXISTS main.cpp)
# Add test cpp file
  add_executable(${PROJECT_NAME}
    cpp/main.cpp
)

set_target_properties(${PROJECT_NAME} PROPERTIES CXX_STANDARD 11 CXX_STANDARD_REQUIRED YES CXX_EXTENSIONS ON)

include(CheckIPOSupported)
check_ipo_supported(RESULT result)
if(result)
  set_target_properties(${PROJECT_NAME} PROPERTIES INTERPROCEDURAL_OPTIMIZATION TRUE)
endif()

target_link_libraries(${PROJECT_NAME} PRIVATE MyLibExample)


config_bin_output()

endif()

