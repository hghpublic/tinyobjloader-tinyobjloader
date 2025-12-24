
set(target voxelize)
add_executable(${target})
target_sources(${target} PRIVATE
    main.cc
)
target_link_libraries(${target} PRIVATE tinyobjloader)
target_compile_features(${target} PRIVATE cxx_std_26)
set_target_properties(${target} PROPERTIES
    FOLDER "examples"
)
