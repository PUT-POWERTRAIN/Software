### This file is automatically generated by Qt Design Studio.
### Do not change

add_subdirectory(Generated)
add_subdirectory(PowerTestBenchContent)
add_subdirectory(PowerTestBench)
add_subdirectory(App)

target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE
	Generated_QtQuick3D_Dron_V4__1_plugin
	PowerTestBenchContentplugin
	PowerTestBenchplugin)