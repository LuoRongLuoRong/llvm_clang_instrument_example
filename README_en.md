# llvm_clang_instrument_example

<details>
  <summary>选择语言（Choose your language）</summary>
  <ul>
    <li><a href="README_en.md">English</a></li>
    <li><a href="README.md">中文</a></li>
  </ul>
</details>

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
But if we instrument code, then it will output different results.

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


I have provided two examples:

- The first one is to transform all BinaryOperators into multiplication.
- The second one is to change the first operand of a BinaryOperator into a constant 1.
### Transform BinaryOperators into Multiplication

Before running run.sh, you need to call the **changeFromAddToMul** function when iterating through BinaryOperator statements.

```c++
if (auto *op = dyn_cast<BinaryOperator>(&I))
{
    changeFromAddToMul(op);
    // replaceNum(op, Ctx);
}
```

If successful, after running run.sh and inputting 10, you will get the following result:

```sh
$ run.sh
-- The C compiler identification is GNU 8.4.0
-- The CXX compiler identification is GNU 8.4.0
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
-- Configuring done (0.5s)
-- Generating done (0.0s)
-- Build files have been written to: ~/llvm_clang_instrument_example/build
[ 33%] Building CXX object rtlib/CMakeFiles/Rtlib.dir/rtlib.cpp.o
[ 33%] Built target Rtlib
[ 66%] Building CXX object instrumentation/CMakeFiles/InstrumentPass.dir/instrument.cpp.o
[100%] Linking CXX shared library libInstrumentPass.so
[100%] Built target InstrumentPass
10
num is 10
100
```

Explanation: The BinaryOperator in demo.cpp contains only num + 10. Originally, when num = 10 was inputted, num + 10 should have been equal to 20. However, since we transformed the addition into multiplication, the result becomes num * 10 = 100.

### Change the first operand of a BinaryOperator into a constant.

Before running run.sh, you need to call the **ReplaceNum** function when iterating through BinaryOperator statements.
```c++
if (auto *op = dyn_cast<BinaryOperator>(&I))
{
    // changeFromAddToMul(op);
    replaceNum(op, Ctx);
}
```

如果成功的话，运行 run.sh 并输入 10 后，会得到如下结果：

```sh
$ run.sh
-- The C compiler identification is GNU 8.4.0
-- The CXX compiler identification is GNU 8.4.0
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
-- Configuring done (0.5s)
-- Generating done (0.0s)
-- Build files have been written to: ~/llvm_clang_instrument_example/build
[ 33%] Building CXX object rtlib/CMakeFiles/Rtlib.dir/rtlib.cpp.o
[ 33%] Built target Rtlib
[ 66%] Building CXX object instrumentation/CMakeFiles/InstrumentPass.dir/instrument.cpp.o
[100%] Linking CXX shared library libInstrumentPass.so
[100%] Built target InstrumentPass
10
num is 1
11
```

Explanation: The BinaryOperator in demo.cpp contains only num + 10. Originally, when num = 10 was inputted, num + 10 should have been equal to 20. However, as we changed the first operand into 1, the result becomes num * 10 = 11.


## reference

- https://github.com/sampsyo/llvm-pass-skeleton
- https://github.com/banach-space/llvm-tutor
