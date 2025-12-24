# cmake -S . -B build && cmake --build build && build/app

# cmake -S . -B build -G "Ninja" && cmake --build build && build/app
# cmake -S . -B build -G "CodeBlocks - Ninja" && cmake --build build && build/app
# cmake -S . -B build -G "Visual Studio 17 2022" && cmake --build build && build/app

cmake_minimum_required(VERSION 4.2)
project( app VERSION 0.1 )

set(target app)
add_executable(${target} ${SOURCE_FILES})
target_sources(${target} PRIVATE
    trackball.cc
    viewer.cc
)
target_compile_features(${target} PRIVATE cxx_std_26)
set_target_properties(${target} PROPERTIES
    FOLDER "examples"
)

find_package( OpenGL REQUIRED )
find_package( glfw3 CONFIG REQUIRED )
find_package( glew REQUIRED )

set(ADDITIONAL_LIBRARIES "")
if(WIN32)
set(ADDITIONAL_LIBRARIES winmm)
endif()

target_link_libraries(${target} OpenGL::GL OpenGL::GLU)
target_link_libraries(${target} glfw)
target_link_libraries(${target} GLEW::GLEW)


