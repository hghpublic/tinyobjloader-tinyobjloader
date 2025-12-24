
set(target obj_sticher)
add_executable(${target})
target_sources(${target} PRIVATE
    obj_sticher.cc
    obj_writer.cc
)
target_link_libraries(${target} PRIVATE tinyobjloader)
target_compile_features(${target} PRIVATE cxx_std_26)
set_target_properties(${target} PROPERTIES
    FOLDER "examples"
)
