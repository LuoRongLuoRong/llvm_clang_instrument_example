add_definitions("-fPIC")

add_library(Rtlib OBJECT
     rtlib.cpp
)    # 静态库

# Use C++14 to compile our pass (i.e., supply -std=c++11).
target_compile_features(Rtlib PRIVATE cxx_range_for cxx_auto_type)

# LLVM is (typically) built with no C++ RTTI. We need to match that;
# otherwise, we'll get linker errors about missing RTTI data.
set_target_properties(Rtlib PROPERTIES
        COMPILE_FLAGS "-fno-rtti"
        )
