cmake_minimum_required(VERSION 4.2)

project( objview VERSION 0.1 )

set(target view)
add_executable(${target} ${SOURCE_FILES})
target_sources(${target} PRIVATE
    viewer.cc
    trackball.cc
)
# target_compile_features(${target} PRIVATE cxx_std_26)
target_compile_features(${target} PRIVATE cxx_std_17)
set_target_properties(${target} PROPERTIES
    FOLDER "experimental"
)

find_package( OpenGL REQUIRED )
find_package( glfw3 CONFIG REQUIRED )
find_package( glew REQUIRED )

add_subdirectory(lfpAlloc)

# target_link_libraries(${target} PRIVATE tinyobjloader)
target_link_libraries(${target} PRIVATE OpenGL::GL OpenGL::GLU)
target_link_libraries(${target} PRIVATE glfw)
target_link_libraries(${target} PRIVATE GLEW::GLEW)
target_link_libraries(${target} PRIVATE lfpAlloc)
# target_link_libraries(${target} PRIVATE drm)
