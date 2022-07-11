# llvm_clang_instrument_example
A simple example of instrumentation for C++ using LLVM and Clang 13.
*LLVM Pass* is used to implement the instrumentation.

## description
Static binary instrumentation(SBI) belongs to dynamic analysis. We traverse the LLVM IR to instrument code and then **run the executable file**.

In this project, we use multiplication in replace of addition.
For example, the code in `test/demo.cpp` is as follows:

```c++
int num;
std::cin >> num;
std::cout << num + 10 << std::endl;
```

If we input a number `a`, then it will output `a + 10`.
But if we instrument code, then it will output `a * 10`.

## dependencies

Before we run the example, we have to make sure that `LLVM` and `Clang` and any other necessities are built correctly.

The following are my tools and corresponding version.

| tool | version | 
| ------ | ------ | 
| CMake | 3.23.2 | 
| LLVM+Clang | 13.0.0 | 
| Ubuntu | 18.04.1 |
| gcc | 7.5.0 |

## RUN it!

Run the shell script `run.sh`.

```bash
chmod +x ./run.sh
./run.sh
```

And then we input a number `a`, the out put will be `10 * a`.
My output is as follows:

```bash
$ ./run.sh
-- The C compiler identification is GNU 7.5.0
-- The CXX compiler identification is GNU 7.5.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
-- Found ZLIB: /usr/lib/x86_64-linux-gnu/libz.so (found version "1.2.11") 
-- Configuring done
-- Generating done
-- Build files have been written to: /home/fdse/luorong/LLVM/test/llvm_clang_instrument_example/build
[ 50%] Building CXX object instrumentation/CMakeFiles/InstrumentPass.dir/instrument.cpp.o
[100%] Linking CXX shared library libInstrumentPass.so
[100%] Built target InstrumentPass
12
120
```

## reference

- https://github.com/sampsyo/llvm-pass-skeleton
- https://github.com/banach-space/llvm-tutor
