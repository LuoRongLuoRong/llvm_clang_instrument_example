cd test
clang++ -emit-llvm -O0 -g -fno-discard-value-names -S -c demo.cpp -o demo.ll