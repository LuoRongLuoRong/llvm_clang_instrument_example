# llvm_clang_instrument_example

<details>
  <summary>选择语言（Choose your language）</summary>
  <ul>
    <li><a href="en/README.md">English</a></li>
    <li><a href="zh/README.md">中文</a></li>
  </ul>
</details>

本仓库是使用 LLVM 和 Clang 13 对 C++ 进行插装的一个简单示例，基于 LLVM Pass 实现。

## 简单描述

静态二进制插桩（SBI）属于动态分析。我们遍历 LLVM IR 来插装代码，然后运行可执行文件。

在这个项目中，我们用乘法代替加法，或者改变操作数的值。
例如，`test/demo.cpp` 中的代码如下所示：

```c++
int num;
std::cin >> num;
std::cout << num + 10 << std::endl;
```

如果我们输入一个数 a，那么它将输出 a + 10。

但是如果我们插装了代码，那么它将有不同的输出。

## 依赖


在运行示例之前，我们必须确保 LLVM 和 Clang 以及其他必要的工具已正确安装。

以下是我使用的工具及其对应的版本。

| tool | version | 
| ------ | ------ | 
| CMake | 3.23.2 | 
| LLVM+Clang | 13.0.0 | 
| Ubuntu | 18.04.1 |
| gcc | 7.5.0 |

## 运行！

运行脚本 `run.sh`.

```bash
chmod +x ./run.sh
./run.sh
```

我提供了两个示例：
- 第一个是将所有 BinaryOperator 转变为乘法，
- 第二个是 BinaryOperator 的第一个操作数变成常量 1。
### BinaryOperator 转变为乘法

在运行 run.sh 前需要在遍历 BinaryOperator 语句的时候调用 changeFromAddToMul 函数。

```c++
if (auto *op = dyn_cast<BinaryOperator>(&I))
{
    changeFromAddToMul(op);
    // replaceNum(op, Ctx);
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
num is 10
100
```

解释：`demo.cpp` 中的 `BinaryOperator` 有且仅有 `num + 10`。原本输入 `num = 10` 之后，得到的 `num + 10` 应该是 `20`，但是由于我们将该加法变成了乘法，所以结果是 `num * 10 = 100`。

### BinaryOperator 的第一个操作数变成常量 1

在运行 run.sh 前需要在遍历 BinaryOperator 语句的时候调用 ReplaceNum 函数。

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

解释：`demo.cpp` 中的 `BinaryOperator` 有且仅有 `num + 10`。原本输入 `num = 10` 之后，得到的 `num + 10` 应该是 `20`，但是由于我们将第一个操作数变成了 `1`，所以结果是 `num * 10 = 11`。

## reference

- https://github.com/sampsyo/llvm-pass-skeleton
- https://github.com/banach-space/llvm-tutor
