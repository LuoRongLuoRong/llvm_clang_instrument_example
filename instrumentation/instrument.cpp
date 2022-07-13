#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/InstrTypes.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/ValueSymbolTable.h"
#include "llvm/ADT/StringMap.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/DerivedTypes.h"

using namespace llvm;

class Skeleton : public PassInfoMixin<Skeleton>
{
public:
    /* core function */
    bool runImpl(Function &F);

    void logValue();
};
/* core function */

// 将 LLVM Pass 的 runOnFunction 解构到这个函数中，
// 目的是减少成员变量的无效赋值，以提高项目效率。
bool Skeleton::runImpl(Function &F)
{
    // Get the function to call from our runtime library.
    LLVMContext &Ctx = F.getContext();

    for (auto &B : F)
    {
        for (auto &I : B)
        {
            if (auto *op = dyn_cast<BinaryOperator>(&I))
            {
                // Insert at the point where the instruction `op` appears.
                IRBuilder<> builder(op);

                // Make a multiply with the same operands as `op`.
                Value *lhs = op->getOperand(0);
                Value *rhs = op->getOperand(1);
                Value *mul = builder.CreateMul(lhs, rhs);

                // Everywhere the old instruction was used as an operand, use our
                // new multiply instruction instead.
                for (auto &U : op->uses())
                {
                    User *user = U.getUser(); // A User is anything with operands.
                    // here we change from plus to multiply
                    user->setOperand(U.getOperandNo(), mul);
                }
            }

            if (auto *op = dyn_cast<LoadInst>(&I)) {
                // %0 = load i32, i32* %num, align 4, !dbg !862
                IRBuilder<> builder(op);
                builder.SetInsertPoint(&B, ++builder.GetInsertPoint());

                Value *arg = op->getOperand(0); 
                std::string var_name = arg->getName().str();

                /* create a function in rtlib */
                Value *args[] = {builder.CreateGlobalString(var_name), dyn_cast_or_null<Value>(op)};

                // 函数参数：
                std::vector<Type *> paramTypes = {
                    Type::getInt8PtrTy(Ctx), // filename
                    Type::getInt32Ty(Ctx),   // value
                };
                // 函数返回值：
                Type *retType = Type::getVoidTy(Ctx);
                // 函数类型：
                FunctionType *logFuncType = FunctionType::get(retType, paramTypes, false);
                // 根据函数的名字获取该函数：
                FunctionCallee logFunc = F.getParent()->getOrInsertFunction("log_int", logFuncType);

                builder.CreateCall(logFunc, args);
            }
        }
    }

    // 对源码进行了修改返回 true
    return false;
}

/********************************  pass 的主体  *******************************/

namespace
{
    // 继承自 FunctionPass
    struct InstrumentPass : public FunctionPass
    {
        static char ID;
        InstrumentPass() : FunctionPass(ID) {}

        virtual bool runOnFunction(Function &F)
        {
            // return false;
            if (F.isIntrinsic())
            {
                return false;
            }
            return Impl.runImpl(F);
        }

    private:
        Skeleton Impl;
    };
}

/********************************  pass 的注册  *******************************/
// // 注册 pass 并且自启动
char InstrumentPass::ID = 0;

// Automatically enable the pass.
// http://adriansampson.net/blog/clangpass.html
static void registerInstrumentPass(const PassManagerBuilder &, legacy::PassManagerBase &PM)
{
    PM.add(new InstrumentPass());
}
static RegisterStandardPasses RegisterMyPass(PassManagerBuilder::EP_EarlyAsPossible, registerInstrumentPass);

/********************************  new register for opt  *******************************/
// cannot generate an executable file.

// char InstrumentPass::ID = 0;
// static RegisterPass<InstrumentPass> X("instrument", "Instrument Pass",
//                              false /* Only looks at CFG */,
//                              false /* Analysis Pass */);

// static RegisterStandardPasses Y(
//     PassManagerBuilder::EP_EarlyAsPossible,
//     [](const PassManagerBuilder &Builder,
//        legacy::PassManagerBase &PM) { PM.add(new InstrumentPass()); });
