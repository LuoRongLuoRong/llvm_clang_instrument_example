rm -rf build
mkdir build
cd build
cmake ..
make
clang++ -flegacy-pass-manager -g -Xclang -load -Xclang ./instrumentation/libInstrumentPass.so ../test/demo.cpp
./a.out
