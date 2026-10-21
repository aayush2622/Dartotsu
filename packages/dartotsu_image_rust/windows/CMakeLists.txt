cmake_minimum_required(VERSION 3.14)

set(PROJECT_NAME "dartotsu_image_rust")
project(${PROJECT_NAME} LANGUAGES CXX)

include("../cargokit/cmake/cargokit.cmake")
apply_cargokit(${PROJECT_NAME} ../rust dartotsu_image_rust "")

set(dartotsu_image_rust_bundled_libraries
  "${${PROJECT_NAME}_cargokit_lib}"
  PARENT_SCOPE
)
