rm -rf build
mkdir build
cd build
cmake ..
make
clang++ -flegacy-pass-manager -g -fno-discard-value-names -Xclang -load -Xclang ./instrumentation/libInstrumentPass.so -c ../test/demo.cpp
g++ -c ../rtlib/rtlib.cpp
g++ demo.o rtlib.o 
./a.out
