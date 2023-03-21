cmake_minimum_required(VERSION 3.22)
project("OnlineGreenHellMap")

find_package(CURL REQUIRED)
add_executable (OGHM src/main.c)
include_directories(${CURL_INCLUDE_DIR})
target_link_libraries(OGHM ${CURL_LIBRARIES})