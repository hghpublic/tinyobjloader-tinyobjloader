set(target lfpAlloc)
add_library(${target} INTERFACE)
target_include_directories(${target} INTERFACE ${PROJECT_SOURCE_DIR})
