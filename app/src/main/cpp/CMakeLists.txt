cmake_minimum_required(VERSION 3.22.1)
project("voicetype_audio")

# Build the native audio processing library
add_library(
    voicetype_audio
    SHARED
    audio_processor.cpp
)

# Find Android log library
find_library(log-lib log)

# Link libraries
target_link_libraries(voicetype_audio ${log-lib})

# Set C++ standard
target_compile_features(voicetype_audio PRIVATE cxx_std_17)

# Optimizations for arm64-v8a
target_compile_options(voicetype_audio PRIVATE -O2 -ffast-math)
