#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"

#include "llvm/Analysis/AliasAnalysis.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Analysis/MemoryDependenceAnalysis.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/IR/ValueSymbolTable.h"
#include "llvm/IR/Instruction.h"

#include "llvm/IR/IRBuilder.h"

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

namespace
{
    struct Hello : public ModulePass
    {
        static char ID;
        Hello() : ModulePass(ID) {}

        bool runOnModule(Module &M) override
        {
            // function name in IR file.
            std::string MY_PRINT = "_Z8my_printNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi";
            // doesn't work
            for (auto &F : M)
            {
                if (F.isIntrinsic())
                {
                    return false;
                }

                if (F.getName() == MY_PRINT)
                {
                    continue;
                }

                for (auto &B : F)
                {
                    for (auto &I : B)
                    {
                        if (auto *op = dyn_cast<BinaryOperator>(&I))
                        {
                            // just for test
                            IRBuilder<> builder(op);
                            builder.SetInsertPoint(&B, ++builder.GetInsertPoint());

                            Function *logFunc = M.getFunction(MY_PRINT);

                            Value *arg = op->getOperand(0);
                            std::string info = "some info based on the condition. ";

                            /* true args in print function */
                            Value *args[] = {builder.CreateGlobalString(info), dyn_cast_or_null<Value>(op)};
                            builder.CreateInvoke(logFunc, &B, &B, args);
                        }
                    }
                }
            }
            return false;
        }
    }; // end of struct Hello
} // end of anonymous namespace

char Hello::ID = 0;
static RegisterPass<Hello> X("hello", "Hello World Pass",
                             false /* Only looks at CFG */,
                             false /* Analysis Pass */);

static RegisterStandardPasses Y(
    PassManagerBuilder::EP_EarlyAsPossible,
    [](const PassManagerBuilder &Builder,
       legacy::PassManagerBase &PM)
    { PM.add(new Hello()); });
