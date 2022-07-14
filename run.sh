rm -rf build
mkdir build
cd build
cmake ..
make
clang++ -flegacy-pass-manager -g -fno-discard-value-names -Xclang -load -Xclang ./instrumentation/libInstrumentPass.so ../test/demo.cpp
./a.out
