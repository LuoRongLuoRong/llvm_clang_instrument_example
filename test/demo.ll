; ModuleID = 'demo.cpp'
source_filename = "demo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::basic_istream" = type { i32 (...)**, i64, %"class.std::basic_ios" }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1, !dbg !0
@__dso_handle = external hidden global i8
@_ZSt4cout = external dso_local global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@_ZSt3cin = external dso_local global %"class.std::basic_istream", align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"larger than 10\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"less than 10\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_demo.cpp, i8* null }]

; Function Attrs: noinline uwtable
define internal void @__cxx_global_var_init() #0 section ".text.startup" !dbg !853 {
entry:
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1) @_ZStL8__ioinit), !dbg !854
  %0 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i32 0, i32 0), i8* @__dso_handle) #3, !dbg !856
  ret void, !dbg !854
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) #3

; Function Attrs: mustprogress noinline optnone uwtable
define dso_local void @_Z8my_printNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* %info, i32 %value) #4 !dbg !857 {
entry:
  %value.addr = alloca i32, align 4
  call void @llvm.dbg.declare(metadata %"class.std::__cxx11::basic_string"* %info, metadata !865, metadata !DIExpression()), !dbg !866
  store i32 %value, i32* %value.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %value.addr, metadata !867, metadata !DIExpression()), !dbg !868
  %call = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) @_ZSt4cout, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %info), !dbg !869
  %call1 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !870
  %0 = load i32, i32* %value.addr, align 4, !dbg !871
  %call2 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call1, i32 %0), !dbg !872
  %call3 = call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call2, %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_), !dbg !873
  ret void, !dbg !874
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i32) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEPFRSoS_E(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), %"class.std::basic_ostream"* (%"class.std::basic_ostream"*)*) #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8)) #1

; Function Attrs: mustprogress noinline norecurse optnone uwtable
define dso_local i32 @main() #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) !dbg !875 {
entry:
  %retval = alloca i32, align 4
  %num = alloca i32, align 4
  %agg.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp = alloca %"class.std::allocator", align 1
  %exn.slot = alloca i8*, align 8
  %ehselector.slot = alloca i32, align 4
  %agg.tmp3 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp4 = alloca %"class.std::allocator", align 1
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %num, metadata !876, metadata !DIExpression()), !dbg !877
  %call = call nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* nonnull align 8 dereferenceable(16) @_ZSt3cin, i32* nonnull align 4 dereferenceable(4) %num), !dbg !878
  %0 = load i32, i32* %num, align 4, !dbg !879
  %cmp = icmp sge i32 %0, 10, !dbg !881
  br i1 %cmp, label %if.then, label %if.else, !dbg !882

if.then:                                          ; preds = %entry
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %ref.tmp) #3, !dbg !883
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %agg.tmp, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %ref.tmp)
          to label %invoke.cont unwind label %lpad, !dbg !883

invoke.cont:                                      ; preds = %if.then
  %1 = load i32, i32* %num, align 4, !dbg !885
  invoke void @_Z8my_printNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* %agg.tmp, i32 %1)
          to label %invoke.cont2 unwind label %lpad1, !dbg !886

invoke.cont2:                                     ; preds = %invoke.cont
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %agg.tmp) #3, !dbg !886
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %ref.tmp) #3, !dbg !886
  br label %if.end, !dbg !887

lpad:                                             ; preds = %if.then
  %2 = landingpad { i8*, i32 }
          cleanup, !dbg !888
  %3 = extractvalue { i8*, i32 } %2, 0, !dbg !888
  store i8* %3, i8** %exn.slot, align 8, !dbg !888
  %4 = extractvalue { i8*, i32 } %2, 1, !dbg !888
  store i32 %4, i32* %ehselector.slot, align 4, !dbg !888
  br label %ehcleanup, !dbg !888

lpad1:                                            ; preds = %invoke.cont
  %5 = landingpad { i8*, i32 }
          cleanup, !dbg !888
  %6 = extractvalue { i8*, i32 } %5, 0, !dbg !888
  store i8* %6, i8** %exn.slot, align 8, !dbg !888
  %7 = extractvalue { i8*, i32 } %5, 1, !dbg !888
  store i32 %7, i32* %ehselector.slot, align 4, !dbg !888
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %agg.tmp) #3, !dbg !886
  br label %ehcleanup, !dbg !886

ehcleanup:                                        ; preds = %lpad1, %lpad
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %ref.tmp) #3, !dbg !886
  br label %eh.resume, !dbg !886

if.else:                                          ; preds = %entry
  call void @_ZNSaIcEC1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %ref.tmp4) #3, !dbg !889
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %agg.tmp3, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %"class.std::allocator"* nonnull align 1 dereferenceable(1) %ref.tmp4)
          to label %invoke.cont6 unwind label %lpad5, !dbg !889

invoke.cont6:                                     ; preds = %if.else
  %8 = load i32, i32* %num, align 4, !dbg !891
  invoke void @_Z8my_printNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(%"class.std::__cxx11::basic_string"* %agg.tmp3, i32 %8)
          to label %invoke.cont8 unwind label %lpad7, !dbg !892

invoke.cont8:                                     ; preds = %invoke.cont6
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %agg.tmp3) #3, !dbg !892
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %ref.tmp4) #3, !dbg !892
  br label %if.end

lpad5:                                            ; preds = %if.else
  %9 = landingpad { i8*, i32 }
          cleanup, !dbg !893
  %10 = extractvalue { i8*, i32 } %9, 0, !dbg !893
  store i8* %10, i8** %exn.slot, align 8, !dbg !893
  %11 = extractvalue { i8*, i32 } %9, 1, !dbg !893
  store i32 %11, i32* %ehselector.slot, align 4, !dbg !893
  br label %ehcleanup10, !dbg !893

lpad7:                                            ; preds = %invoke.cont6
  %12 = landingpad { i8*, i32 }
          cleanup, !dbg !893
  %13 = extractvalue { i8*, i32 } %12, 0, !dbg !893
  store i8* %13, i8** %exn.slot, align 8, !dbg !893
  %14 = extractvalue { i8*, i32 } %12, 1, !dbg !893
  store i32 %14, i32* %ehselector.slot, align 4, !dbg !893
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %agg.tmp3) #3, !dbg !892
  br label %ehcleanup10, !dbg !892

ehcleanup10:                                      ; preds = %lpad7, %lpad5
  call void @_ZNSaIcED1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1) %ref.tmp4) #3, !dbg !892
  br label %eh.resume, !dbg !892

if.end:                                           ; preds = %invoke.cont8, %invoke.cont2
  ret i32 0, !dbg !894

eh.resume:                                        ; preds = %ehcleanup10, %ehcleanup
  %exn = load i8*, i8** %exn.slot, align 8, !dbg !886
  %sel = load i32, i32* %ehselector.slot, align 4, !dbg !886
  %lpad.val = insertvalue { i8*, i32 } undef, i8* %exn, 0, !dbg !886
  %lpad.val11 = insertvalue { i8*, i32 } %lpad.val, i32 %sel, 1, !dbg !886
  resume { i8*, i32 } %lpad.val11, !dbg !886
}

declare dso_local nonnull align 8 dereferenceable(16) %"class.std::basic_istream"* @_ZNSirsERi(%"class.std::basic_istream"* nonnull align 8 dereferenceable(16), i32* nonnull align 4 dereferenceable(4)) #1

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcEC1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1)) unnamed_addr #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32), i8*, %"class.std::allocator"* nonnull align 1 dereferenceable(1)) unnamed_addr #1

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @_ZNSaIcED1Ev(%"class.std::allocator"* nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: noinline uwtable
define internal void @_GLOBAL__sub_I_demo.cpp() #0 section ".text.startup" !dbg !895 {
entry:
  call void @__cxx_global_var_init(), !dbg !897
  ret void
}

attributes #0 = { noinline uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }
attributes #4 = { mustprogress noinline optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress noinline norecurse optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!847, !848, !849, !850, !851}
!llvm.ident = !{!852}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__ioinit", linkageName: "_ZStL8__ioinit", scope: !2, file: !3, line: 74, type: !4, isLocal: true, isDefinition: true)
!2 = !DINamespace(name: "std", scope: null)
!3 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/iostream", directory: "")
!4 = !DICompositeType(tag: DW_TAG_class_type, name: "Init", scope: !6, file: !5, line: 601, size: 8, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt8ios_base4InitE")
!5 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/ios_base.h", directory: "")
!6 = !DICompositeType(tag: DW_TAG_class_type, name: "ios_base", scope: !2, file: !5, line: 228, size: 1728, flags: DIFlagFwdDecl | DIFlagNonTrivial)
!7 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !8, producer: "clang version 13.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, globals: !10, imports: !11, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "demo.cpp", directory: "/home/fdse/luorong/LLVM/test/llvm_clang_instrument_example/test")
!9 = !{}
!10 = !{!0}
!11 = !{!12, !32, !35, !40, !48, !56, !60, !67, !71, !75, !77, !79, !83, !95, !99, !105, !111, !113, !117, !121, !125, !129, !141, !143, !147, !151, !155, !157, !163, !167, !171, !173, !175, !179, !187, !191, !195, !199, !201, !207, !209, !216, !221, !225, !230, !234, !238, !242, !244, !246, !250, !254, !258, !260, !264, !268, !270, !272, !276, !282, !287, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !306, !310, !314, !321, !325, !328, !331, !334, !336, !338, !340, !342, !344, !346, !348, !351, !353, !358, !362, !365, !368, !370, !372, !374, !376, !378, !380, !382, !384, !387, !389, !393, !397, !402, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !438, !440, !444, !448, !454, !458, !463, !465, !469, !473, !477, !487, !491, !495, !499, !503, !507, !511, !515, !519, !523, !527, !531, !535, !537, !541, !545, !549, !555, !559, !563, !565, !569, !573, !579, !581, !585, !589, !593, !597, !601, !605, !609, !610, !611, !612, !614, !615, !616, !617, !618, !619, !620, !624, !630, !635, !639, !641, !643, !645, !647, !654, !658, !662, !666, !670, !674, !679, !683, !685, !689, !695, !699, !704, !706, !708, !712, !716, !718, !720, !722, !724, !728, !730, !732, !736, !740, !744, !748, !752, !756, !758, !762, !766, !770, !774, !776, !778, !782, !786, !787, !788, !789, !790, !791, !797, !800, !801, !803, !805, !807, !809, !813, !815, !817, !819, !821, !823, !825, !827, !829, !833, !837, !839, !843}
!12 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !13, file: !31, line: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !14, line: 6, baseType: !15)
!14 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h", directory: "")
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !16, line: 21, baseType: !17)
!16 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h", directory: "")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !16, line: 13, size: 64, flags: DIFlagTypePassByValue, elements: !18, identifier: "_ZTS11__mbstate_t")
!18 = !{!19, !21}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !17, file: !16, line: 15, baseType: !20, size: 32)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !17, file: !16, line: 20, baseType: !22, size: 32, offset: 32)
!22 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !17, file: !16, line: 16, size: 32, flags: DIFlagTypePassByValue, elements: !23, identifier: "_ZTSN11__mbstate_tUt_E")
!23 = !{!24, !26}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !22, file: !16, line: 18, baseType: !25, size: 32)
!25 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !22, file: !16, line: 19, baseType: !27, size: 32)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !29)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30}
!30 = !DISubrange(count: 4)
!31 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cwchar", directory: "")
!32 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !33, file: !31, line: 139)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !34, line: 20, baseType: !25)
!34 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/wint_t.h", directory: "")
!35 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !36, file: !31, line: 141)
!36 = !DISubprogram(name: "btowc", scope: !37, file: !37, line: 284, type: !38, flags: DIFlagPrototyped, spFlags: 0)
!37 = !DIFile(filename: "/usr/include/wchar.h", directory: "")
!38 = !DISubroutineType(types: !39)
!39 = !{!33, !20}
!40 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !41, file: !31, line: 142)
!41 = !DISubprogram(name: "fgetwc", scope: !37, file: !37, line: 727, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!42 = !DISubroutineType(types: !43)
!43 = !{!33, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !46, line: 5, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h", directory: "")
!47 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !46, line: 4, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS8_IO_FILE")
!48 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !49, file: !31, line: 143)
!49 = !DISubprogram(name: "fgetws", scope: !37, file: !37, line: 756, type: !50, flags: DIFlagPrototyped, spFlags: 0)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !54, !20, !55}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!54 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!55 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!56 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !57, file: !31, line: 144)
!57 = !DISubprogram(name: "fputwc", scope: !37, file: !37, line: 741, type: !58, flags: DIFlagPrototyped, spFlags: 0)
!58 = !DISubroutineType(types: !59)
!59 = !{!33, !53, !44}
!60 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !61, file: !31, line: 145)
!61 = !DISubprogram(name: "fputws", scope: !37, file: !37, line: 763, type: !62, flags: DIFlagPrototyped, spFlags: 0)
!62 = !DISubroutineType(types: !63)
!63 = !{!20, !64, !55}
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!67 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !68, file: !31, line: 146)
!68 = !DISubprogram(name: "fwide", scope: !37, file: !37, line: 573, type: !69, flags: DIFlagPrototyped, spFlags: 0)
!69 = !DISubroutineType(types: !70)
!70 = !{!20, !44, !20}
!71 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !72, file: !31, line: 147)
!72 = !DISubprogram(name: "fwprintf", scope: !37, file: !37, line: 580, type: !73, flags: DIFlagPrototyped, spFlags: 0)
!73 = !DISubroutineType(types: !74)
!74 = !{!20, !55, !64, null}
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !76, file: !31, line: 148)
!76 = !DISubprogram(name: "fwscanf", scope: !37, file: !37, line: 621, type: !73, flags: DIFlagPrototyped, spFlags: 0)
!77 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !78, file: !31, line: 149)
!78 = !DISubprogram(name: "getwc", scope: !37, file: !37, line: 728, type: !42, flags: DIFlagPrototyped, spFlags: 0)
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !80, file: !31, line: 150)
!80 = !DISubprogram(name: "getwchar", scope: !37, file: !37, line: 734, type: !81, flags: DIFlagPrototyped, spFlags: 0)
!81 = !DISubroutineType(types: !82)
!82 = !{!33}
!83 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !84, file: !31, line: 151)
!84 = !DISubprogram(name: "mbrlen", scope: !37, file: !37, line: 307, type: !85, flags: DIFlagPrototyped, spFlags: 0)
!85 = !DISubroutineType(types: !86)
!86 = !{!87, !90, !87, !93}
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !88, line: 46, baseType: !89)
!88 = !DIFile(filename: "node_modules/llvm-13.0.0.obj/lib/clang/13.0.0/include/stddef.h", directory: "/home/fdse")
!89 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!90 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !91)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!93 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !96, file: !31, line: 152)
!96 = !DISubprogram(name: "mbrtowc", scope: !37, file: !37, line: 296, type: !97, flags: DIFlagPrototyped, spFlags: 0)
!97 = !DISubroutineType(types: !98)
!98 = !{!87, !54, !90, !87, !93}
!99 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !100, file: !31, line: 153)
!100 = !DISubprogram(name: "mbsinit", scope: !37, file: !37, line: 292, type: !101, flags: DIFlagPrototyped, spFlags: 0)
!101 = !DISubroutineType(types: !102)
!102 = !{!20, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !106, file: !31, line: 154)
!106 = !DISubprogram(name: "mbsrtowcs", scope: !37, file: !37, line: 337, type: !107, flags: DIFlagPrototyped, spFlags: 0)
!107 = !DISubroutineType(types: !108)
!108 = !{!87, !54, !109, !87, !93}
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!111 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !112, file: !31, line: 155)
!112 = !DISubprogram(name: "putwc", scope: !37, file: !37, line: 742, type: !58, flags: DIFlagPrototyped, spFlags: 0)
!113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !114, file: !31, line: 156)
!114 = !DISubprogram(name: "putwchar", scope: !37, file: !37, line: 748, type: !115, flags: DIFlagPrototyped, spFlags: 0)
!115 = !DISubroutineType(types: !116)
!116 = !{!33, !53}
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !118, file: !31, line: 158)
!118 = !DISubprogram(name: "swprintf", scope: !37, file: !37, line: 590, type: !119, flags: DIFlagPrototyped, spFlags: 0)
!119 = !DISubroutineType(types: !120)
!120 = !{!20, !54, !87, !64, null}
!121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !122, file: !31, line: 160)
!122 = !DISubprogram(name: "swscanf", scope: !37, file: !37, line: 631, type: !123, flags: DIFlagPrototyped, spFlags: 0)
!123 = !DISubroutineType(types: !124)
!124 = !{!20, !64, !64, null}
!125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !126, file: !31, line: 161)
!126 = !DISubprogram(name: "ungetwc", scope: !37, file: !37, line: 771, type: !127, flags: DIFlagPrototyped, spFlags: 0)
!127 = !DISubroutineType(types: !128)
!128 = !{!33, !33, !44}
!129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !130, file: !31, line: 162)
!130 = !DISubprogram(name: "vfwprintf", scope: !37, file: !37, line: 598, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!131 = !DISubroutineType(types: !132)
!132 = !{!20, !55, !64, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, flags: DIFlagTypePassByValue, elements: !135, identifier: "_ZTS13__va_list_tag")
!135 = !{!136, !137, !138, !140}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !134, file: !8, baseType: !25, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !134, file: !8, baseType: !25, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !134, file: !8, baseType: !139, size: 64, offset: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !134, file: !8, baseType: !139, size: 64, offset: 128)
!141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !142, file: !31, line: 164)
!142 = !DISubprogram(name: "vfwscanf", scope: !37, file: !37, line: 673, type: !131, flags: DIFlagPrototyped, spFlags: 0)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !144, file: !31, line: 167)
!144 = !DISubprogram(name: "vswprintf", scope: !37, file: !37, line: 611, type: !145, flags: DIFlagPrototyped, spFlags: 0)
!145 = !DISubroutineType(types: !146)
!146 = !{!20, !54, !87, !64, !133}
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !148, file: !31, line: 170)
!148 = !DISubprogram(name: "vswscanf", scope: !37, file: !37, line: 685, type: !149, flags: DIFlagPrototyped, spFlags: 0)
!149 = !DISubroutineType(types: !150)
!150 = !{!20, !64, !64, !133}
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !152, file: !31, line: 172)
!152 = !DISubprogram(name: "vwprintf", scope: !37, file: !37, line: 606, type: !153, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DISubroutineType(types: !154)
!154 = !{!20, !64, !133}
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !156, file: !31, line: 174)
!156 = !DISubprogram(name: "vwscanf", scope: !37, file: !37, line: 681, type: !153, flags: DIFlagPrototyped, spFlags: 0)
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !158, file: !31, line: 176)
!158 = !DISubprogram(name: "wcrtomb", scope: !37, file: !37, line: 301, type: !159, flags: DIFlagPrototyped, spFlags: 0)
!159 = !DISubroutineType(types: !160)
!160 = !{!87, !161, !53, !93}
!161 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !164, file: !31, line: 177)
!164 = !DISubprogram(name: "wcscat", scope: !37, file: !37, line: 97, type: !165, flags: DIFlagPrototyped, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{!52, !54, !64}
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !168, file: !31, line: 178)
!168 = !DISubprogram(name: "wcscmp", scope: !37, file: !37, line: 106, type: !169, flags: DIFlagPrototyped, spFlags: 0)
!169 = !DISubroutineType(types: !170)
!170 = !{!20, !65, !65}
!171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !172, file: !31, line: 179)
!172 = !DISubprogram(name: "wcscoll", scope: !37, file: !37, line: 131, type: !169, flags: DIFlagPrototyped, spFlags: 0)
!173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !174, file: !31, line: 180)
!174 = !DISubprogram(name: "wcscpy", scope: !37, file: !37, line: 87, type: !165, flags: DIFlagPrototyped, spFlags: 0)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !176, file: !31, line: 181)
!176 = !DISubprogram(name: "wcscspn", scope: !37, file: !37, line: 187, type: !177, flags: DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!87, !65, !65}
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !180, file: !31, line: 182)
!180 = !DISubprogram(name: "wcsftime", scope: !37, file: !37, line: 835, type: !181, flags: DIFlagPrototyped, spFlags: 0)
!181 = !DISubroutineType(types: !182)
!182 = !{!87, !54, !87, !64, !183}
!183 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !186)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !37, line: 83, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTS2tm")
!187 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !188, file: !31, line: 183)
!188 = !DISubprogram(name: "wcslen", scope: !37, file: !37, line: 222, type: !189, flags: DIFlagPrototyped, spFlags: 0)
!189 = !DISubroutineType(types: !190)
!190 = !{!87, !65}
!191 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !192, file: !31, line: 184)
!192 = !DISubprogram(name: "wcsncat", scope: !37, file: !37, line: 101, type: !193, flags: DIFlagPrototyped, spFlags: 0)
!193 = !DISubroutineType(types: !194)
!194 = !{!52, !54, !64, !87}
!195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !196, file: !31, line: 185)
!196 = !DISubprogram(name: "wcsncmp", scope: !37, file: !37, line: 109, type: !197, flags: DIFlagPrototyped, spFlags: 0)
!197 = !DISubroutineType(types: !198)
!198 = !{!20, !65, !65, !87}
!199 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !200, file: !31, line: 186)
!200 = !DISubprogram(name: "wcsncpy", scope: !37, file: !37, line: 92, type: !193, flags: DIFlagPrototyped, spFlags: 0)
!201 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !202, file: !31, line: 187)
!202 = !DISubprogram(name: "wcsrtombs", scope: !37, file: !37, line: 343, type: !203, flags: DIFlagPrototyped, spFlags: 0)
!203 = !DISubroutineType(types: !204)
!204 = !{!87, !161, !205, !87, !93}
!205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !208, file: !31, line: 188)
!208 = !DISubprogram(name: "wcsspn", scope: !37, file: !37, line: 191, type: !177, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !210, file: !31, line: 189)
!210 = !DISubprogram(name: "wcstod", scope: !37, file: !37, line: 377, type: !211, flags: DIFlagPrototyped, spFlags: 0)
!211 = !DISubroutineType(types: !212)
!212 = !{!213, !64, !214}
!213 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!214 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !217, file: !31, line: 191)
!217 = !DISubprogram(name: "wcstof", scope: !37, file: !37, line: 382, type: !218, flags: DIFlagPrototyped, spFlags: 0)
!218 = !DISubroutineType(types: !219)
!219 = !{!220, !64, !214}
!220 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !222, file: !31, line: 193)
!222 = !DISubprogram(name: "wcstok", scope: !37, file: !37, line: 217, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DISubroutineType(types: !224)
!224 = !{!52, !54, !64, !214}
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !226, file: !31, line: 194)
!226 = !DISubprogram(name: "wcstol", scope: !37, file: !37, line: 428, type: !227, flags: DIFlagPrototyped, spFlags: 0)
!227 = !DISubroutineType(types: !228)
!228 = !{!229, !64, !214, !20}
!229 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!230 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !231, file: !31, line: 195)
!231 = !DISubprogram(name: "wcstoul", scope: !37, file: !37, line: 433, type: !232, flags: DIFlagPrototyped, spFlags: 0)
!232 = !DISubroutineType(types: !233)
!233 = !{!89, !64, !214, !20}
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !235, file: !31, line: 196)
!235 = !DISubprogram(name: "wcsxfrm", scope: !37, file: !37, line: 135, type: !236, flags: DIFlagPrototyped, spFlags: 0)
!236 = !DISubroutineType(types: !237)
!237 = !{!87, !54, !64, !87}
!238 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !239, file: !31, line: 197)
!239 = !DISubprogram(name: "wctob", scope: !37, file: !37, line: 288, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!240 = !DISubroutineType(types: !241)
!241 = !{!20, !33}
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !243, file: !31, line: 198)
!243 = !DISubprogram(name: "wmemcmp", scope: !37, file: !37, line: 258, type: !197, flags: DIFlagPrototyped, spFlags: 0)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !245, file: !31, line: 199)
!245 = !DISubprogram(name: "wmemcpy", scope: !37, file: !37, line: 262, type: !193, flags: DIFlagPrototyped, spFlags: 0)
!246 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !247, file: !31, line: 200)
!247 = !DISubprogram(name: "wmemmove", scope: !37, file: !37, line: 267, type: !248, flags: DIFlagPrototyped, spFlags: 0)
!248 = !DISubroutineType(types: !249)
!249 = !{!52, !52, !65, !87}
!250 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !251, file: !31, line: 201)
!251 = !DISubprogram(name: "wmemset", scope: !37, file: !37, line: 271, type: !252, flags: DIFlagPrototyped, spFlags: 0)
!252 = !DISubroutineType(types: !253)
!253 = !{!52, !52, !53, !87}
!254 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !255, file: !31, line: 202)
!255 = !DISubprogram(name: "wprintf", scope: !37, file: !37, line: 587, type: !256, flags: DIFlagPrototyped, spFlags: 0)
!256 = !DISubroutineType(types: !257)
!257 = !{!20, !64, null}
!258 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !259, file: !31, line: 203)
!259 = !DISubprogram(name: "wscanf", scope: !37, file: !37, line: 628, type: !256, flags: DIFlagPrototyped, spFlags: 0)
!260 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !261, file: !31, line: 204)
!261 = !DISubprogram(name: "wcschr", scope: !37, file: !37, line: 164, type: !262, flags: DIFlagPrototyped, spFlags: 0)
!262 = !DISubroutineType(types: !263)
!263 = !{!52, !65, !53}
!264 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !265, file: !31, line: 205)
!265 = !DISubprogram(name: "wcspbrk", scope: !37, file: !37, line: 201, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!266 = !DISubroutineType(types: !267)
!267 = !{!52, !65, !65}
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !269, file: !31, line: 206)
!269 = !DISubprogram(name: "wcsrchr", scope: !37, file: !37, line: 174, type: !262, flags: DIFlagPrototyped, spFlags: 0)
!270 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !271, file: !31, line: 207)
!271 = !DISubprogram(name: "wcsstr", scope: !37, file: !37, line: 212, type: !266, flags: DIFlagPrototyped, spFlags: 0)
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !273, file: !31, line: 208)
!273 = !DISubprogram(name: "wmemchr", scope: !37, file: !37, line: 253, type: !274, flags: DIFlagPrototyped, spFlags: 0)
!274 = !DISubroutineType(types: !275)
!275 = !{!52, !65, !53, !87}
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !278, file: !31, line: 248)
!277 = !DINamespace(name: "__gnu_cxx", scope: null)
!278 = !DISubprogram(name: "wcstold", scope: !37, file: !37, line: 384, type: !279, flags: DIFlagPrototyped, spFlags: 0)
!279 = !DISubroutineType(types: !280)
!280 = !{!281, !64, !214}
!281 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!282 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !283, file: !31, line: 257)
!283 = !DISubprogram(name: "wcstoll", scope: !37, file: !37, line: 441, type: !284, flags: DIFlagPrototyped, spFlags: 0)
!284 = !DISubroutineType(types: !285)
!285 = !{!286, !64, !214, !20}
!286 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !288, file: !31, line: 258)
!288 = !DISubprogram(name: "wcstoull", scope: !37, file: !37, line: 448, type: !289, flags: DIFlagPrototyped, spFlags: 0)
!289 = !DISubroutineType(types: !290)
!290 = !{!291, !64, !214, !20}
!291 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !278, file: !31, line: 264)
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !283, file: !31, line: 265)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !288, file: !31, line: 266)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !217, file: !31, line: 280)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !142, file: !31, line: 283)
!297 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !148, file: !31, line: 286)
!298 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !156, file: !31, line: 289)
!299 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !278, file: !31, line: 293)
!300 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !283, file: !31, line: 294)
!301 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !288, file: !31, line: 295)
!302 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !303, file: !304, line: 57)
!303 = !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !305, file: !304, line: 79, size: 64, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!304 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/exception_ptr.h", directory: "")
!305 = !DINamespace(name: "__exception_ptr", scope: !2)
!306 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !305, entity: !307, file: !304, line: 73)
!307 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !2, file: !304, line: 69, type: !308, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !303}
!310 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !311, entity: !312, file: !313, line: 58)
!311 = !DINamespace(name: "__gnu_debug", scope: null)
!312 = !DINamespace(name: "__debug", scope: !2)
!313 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/debug/debug.h", directory: "")
!314 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !315, file: !320, line: 48)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !316, line: 24, baseType: !317)
!316 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "")
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !318, line: 36, baseType: !319)
!318 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!319 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!320 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cstdint", directory: "")
!321 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !322, file: !320, line: 49)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !316, line: 25, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !318, line: 38, baseType: !324)
!324 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!325 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !326, file: !320, line: 50)
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !316, line: 26, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !318, line: 40, baseType: !20)
!328 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !329, file: !320, line: 51)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !316, line: 27, baseType: !330)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !318, line: 43, baseType: !229)
!331 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !332, file: !320, line: 53)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !333, line: 68, baseType: !319)
!333 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!334 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !335, file: !320, line: 54)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !333, line: 70, baseType: !229)
!336 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !337, file: !320, line: 55)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !333, line: 71, baseType: !229)
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !339, file: !320, line: 56)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !333, line: 72, baseType: !229)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !341, file: !320, line: 58)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !333, line: 43, baseType: !319)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !343, file: !320, line: 59)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !333, line: 44, baseType: !324)
!344 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !345, file: !320, line: 60)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !333, line: 45, baseType: !20)
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !347, file: !320, line: 61)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !333, line: 47, baseType: !229)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !349, file: !320, line: 63)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !333, line: 111, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !318, line: 61, baseType: !229)
!351 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !352, file: !320, line: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !333, line: 97, baseType: !229)
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !354, file: !320, line: 66)
!354 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !355, line: 24, baseType: !356)
!355 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "")
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !318, line: 37, baseType: !357)
!357 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !359, file: !320, line: 67)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !355, line: 25, baseType: !360)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !318, line: 39, baseType: !361)
!361 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!362 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !363, file: !320, line: 68)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !355, line: 26, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !318, line: 41, baseType: !25)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !366, file: !320, line: 69)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !355, line: 27, baseType: !367)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !318, line: 44, baseType: !89)
!368 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !369, file: !320, line: 71)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !333, line: 81, baseType: !357)
!370 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !371, file: !320, line: 72)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !333, line: 83, baseType: !89)
!372 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !373, file: !320, line: 73)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !333, line: 84, baseType: !89)
!374 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !375, file: !320, line: 74)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !333, line: 85, baseType: !89)
!376 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !377, file: !320, line: 76)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !333, line: 54, baseType: !357)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !379, file: !320, line: 77)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !333, line: 55, baseType: !361)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !381, file: !320, line: 78)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !333, line: 56, baseType: !25)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !383, file: !320, line: 79)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !333, line: 58, baseType: !89)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !385, file: !320, line: 81)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !333, line: 112, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !318, line: 62, baseType: !89)
!387 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !388, file: !320, line: 82)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !333, line: 100, baseType: !89)
!389 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !390, file: !392, line: 53)
!390 = !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !391, line: 51, size: 768, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!391 = !DIFile(filename: "/usr/include/locale.h", directory: "")
!392 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/clocale", directory: "")
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !394, file: !392, line: 54)
!394 = !DISubprogram(name: "setlocale", scope: !391, file: !391, line: 122, type: !395, flags: DIFlagPrototyped, spFlags: 0)
!395 = !DISubroutineType(types: !396)
!396 = !{!162, !20, !91}
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !398, file: !392, line: 55)
!398 = !DISubprogram(name: "localeconv", scope: !391, file: !391, line: 125, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DISubroutineType(types: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!402 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !403, file: !407, line: 64)
!403 = !DISubprogram(name: "isalnum", scope: !404, file: !404, line: 108, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!404 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!405 = !DISubroutineType(types: !406)
!406 = !{!20, !20}
!407 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cctype", directory: "")
!408 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !409, file: !407, line: 65)
!409 = !DISubprogram(name: "isalpha", scope: !404, file: !404, line: 109, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !411, file: !407, line: 66)
!411 = !DISubprogram(name: "iscntrl", scope: !404, file: !404, line: 110, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !413, file: !407, line: 67)
!413 = !DISubprogram(name: "isdigit", scope: !404, file: !404, line: 111, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !415, file: !407, line: 68)
!415 = !DISubprogram(name: "isgraph", scope: !404, file: !404, line: 113, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !417, file: !407, line: 69)
!417 = !DISubprogram(name: "islower", scope: !404, file: !404, line: 112, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !419, file: !407, line: 70)
!419 = !DISubprogram(name: "isprint", scope: !404, file: !404, line: 114, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !421, file: !407, line: 71)
!421 = !DISubprogram(name: "ispunct", scope: !404, file: !404, line: 115, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !423, file: !407, line: 72)
!423 = !DISubprogram(name: "isspace", scope: !404, file: !404, line: 116, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !425, file: !407, line: 73)
!425 = !DISubprogram(name: "isupper", scope: !404, file: !404, line: 117, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !427, file: !407, line: 74)
!427 = !DISubprogram(name: "isxdigit", scope: !404, file: !404, line: 118, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !429, file: !407, line: 75)
!429 = !DISubprogram(name: "tolower", scope: !404, file: !404, line: 122, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !431, file: !407, line: 76)
!431 = !DISubprogram(name: "toupper", scope: !404, file: !404, line: 125, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !433, file: !407, line: 87)
!433 = !DISubprogram(name: "isblank", scope: !404, file: !404, line: 130, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !435, file: !437, line: 44)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !2, file: !436, line: 231, baseType: !89)
!436 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/x86_64-linux-gnu/c++/7.5.0/bits/c++config.h", directory: "")
!437 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/ext/new_allocator.h", directory: "")
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !439, file: !437, line: 45)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !2, file: !436, line: 232, baseType: !229)
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !441, file: !443, line: 52)
!441 = !DISubprogram(name: "abs", scope: !442, file: !442, line: 837, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!442 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!443 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/std_abs.h", directory: "")
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !445, file: !447, line: 127)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !442, line: 62, baseType: !446)
!446 = !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 58, size: 64, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!447 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cstdlib", directory: "")
!448 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !449, file: !447, line: 128)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !442, line: 70, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 66, size: 128, flags: DIFlagTypePassByValue, elements: !451, identifier: "_ZTS6ldiv_t")
!451 = !{!452, !453}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !450, file: !442, line: 68, baseType: !229, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !450, file: !442, line: 69, baseType: !229, size: 64, offset: 64)
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !455, file: !447, line: 130)
!455 = !DISubprogram(name: "abort", scope: !442, file: !442, line: 588, type: !456, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!456 = !DISubroutineType(types: !457)
!457 = !{null}
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !459, file: !447, line: 134)
!459 = !DISubprogram(name: "atexit", scope: !442, file: !442, line: 592, type: !460, flags: DIFlagPrototyped, spFlags: 0)
!460 = !DISubroutineType(types: !461)
!461 = !{!20, !462}
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !464, file: !447, line: 137)
!464 = !DISubprogram(name: "at_quick_exit", scope: !442, file: !442, line: 597, type: !460, flags: DIFlagPrototyped, spFlags: 0)
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !466, file: !447, line: 140)
!466 = !DISubprogram(name: "atof", scope: !442, file: !442, line: 101, type: !467, flags: DIFlagPrototyped, spFlags: 0)
!467 = !DISubroutineType(types: !468)
!468 = !{!213, !91}
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !470, file: !447, line: 141)
!470 = !DISubprogram(name: "atoi", scope: !442, file: !442, line: 104, type: !471, flags: DIFlagPrototyped, spFlags: 0)
!471 = !DISubroutineType(types: !472)
!472 = !{!20, !91}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !474, file: !447, line: 142)
!474 = !DISubprogram(name: "atol", scope: !442, file: !442, line: 107, type: !475, flags: DIFlagPrototyped, spFlags: 0)
!475 = !DISubroutineType(types: !476)
!476 = !{!229, !91}
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !478, file: !447, line: 143)
!478 = !DISubprogram(name: "bsearch", scope: !442, file: !442, line: 817, type: !479, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DISubroutineType(types: !480)
!480 = !{!139, !481, !481, !87, !87, !483}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !442, line: 805, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!20, !481, !481}
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !488, file: !447, line: 144)
!488 = !DISubprogram(name: "calloc", scope: !442, file: !442, line: 541, type: !489, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DISubroutineType(types: !490)
!490 = !{!139, !87, !87}
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !492, file: !447, line: 145)
!492 = !DISubprogram(name: "div", scope: !442, file: !442, line: 849, type: !493, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DISubroutineType(types: !494)
!494 = !{!445, !20, !20}
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !496, file: !447, line: 146)
!496 = !DISubprogram(name: "exit", scope: !442, file: !442, line: 614, type: !497, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!497 = !DISubroutineType(types: !498)
!498 = !{null, !20}
!499 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !500, file: !447, line: 147)
!500 = !DISubprogram(name: "free", scope: !442, file: !442, line: 563, type: !501, flags: DIFlagPrototyped, spFlags: 0)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !139}
!503 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !504, file: !447, line: 148)
!504 = !DISubprogram(name: "getenv", scope: !442, file: !442, line: 631, type: !505, flags: DIFlagPrototyped, spFlags: 0)
!505 = !DISubroutineType(types: !506)
!506 = !{!162, !91}
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !508, file: !447, line: 149)
!508 = !DISubprogram(name: "labs", scope: !442, file: !442, line: 838, type: !509, flags: DIFlagPrototyped, spFlags: 0)
!509 = !DISubroutineType(types: !510)
!510 = !{!229, !229}
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !512, file: !447, line: 150)
!512 = !DISubprogram(name: "ldiv", scope: !442, file: !442, line: 851, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!449, !229, !229}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !516, file: !447, line: 151)
!516 = !DISubprogram(name: "malloc", scope: !442, file: !442, line: 539, type: !517, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{!139, !87}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !520, file: !447, line: 153)
!520 = !DISubprogram(name: "mblen", scope: !442, file: !442, line: 919, type: !521, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!20, !91, !87}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !524, file: !447, line: 154)
!524 = !DISubprogram(name: "mbstowcs", scope: !442, file: !442, line: 930, type: !525, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DISubroutineType(types: !526)
!526 = !{!87, !54, !90, !87}
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !528, file: !447, line: 155)
!528 = !DISubprogram(name: "mbtowc", scope: !442, file: !442, line: 922, type: !529, flags: DIFlagPrototyped, spFlags: 0)
!529 = !DISubroutineType(types: !530)
!530 = !{!20, !54, !90, !87}
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !532, file: !447, line: 157)
!532 = !DISubprogram(name: "qsort", scope: !442, file: !442, line: 827, type: !533, flags: DIFlagPrototyped, spFlags: 0)
!533 = !DISubroutineType(types: !534)
!534 = !{null, !139, !87, !87, !483}
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !536, file: !447, line: 160)
!536 = !DISubprogram(name: "quick_exit", scope: !442, file: !442, line: 620, type: !497, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !538, file: !447, line: 163)
!538 = !DISubprogram(name: "rand", scope: !442, file: !442, line: 453, type: !539, flags: DIFlagPrototyped, spFlags: 0)
!539 = !DISubroutineType(types: !540)
!540 = !{!20}
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !542, file: !447, line: 164)
!542 = !DISubprogram(name: "realloc", scope: !442, file: !442, line: 549, type: !543, flags: DIFlagPrototyped, spFlags: 0)
!543 = !DISubroutineType(types: !544)
!544 = !{!139, !139, !87}
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !546, file: !447, line: 165)
!546 = !DISubprogram(name: "srand", scope: !442, file: !442, line: 455, type: !547, flags: DIFlagPrototyped, spFlags: 0)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !25}
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !550, file: !447, line: 166)
!550 = !DISubprogram(name: "strtod", scope: !442, file: !442, line: 117, type: !551, flags: DIFlagPrototyped, spFlags: 0)
!551 = !DISubroutineType(types: !552)
!552 = !{!213, !90, !553}
!553 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !556, file: !447, line: 167)
!556 = !DISubprogram(name: "strtol", scope: !442, file: !442, line: 176, type: !557, flags: DIFlagPrototyped, spFlags: 0)
!557 = !DISubroutineType(types: !558)
!558 = !{!229, !90, !553, !20}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !560, file: !447, line: 168)
!560 = !DISubprogram(name: "strtoul", scope: !442, file: !442, line: 180, type: !561, flags: DIFlagPrototyped, spFlags: 0)
!561 = !DISubroutineType(types: !562)
!562 = !{!89, !90, !553, !20}
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !564, file: !447, line: 169)
!564 = !DISubprogram(name: "system", scope: !442, file: !442, line: 781, type: !471, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !566, file: !447, line: 171)
!566 = !DISubprogram(name: "wcstombs", scope: !442, file: !442, line: 933, type: !567, flags: DIFlagPrototyped, spFlags: 0)
!567 = !DISubroutineType(types: !568)
!568 = !{!87, !161, !64, !87}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !570, file: !447, line: 172)
!570 = !DISubprogram(name: "wctomb", scope: !442, file: !442, line: 926, type: !571, flags: DIFlagPrototyped, spFlags: 0)
!571 = !DISubroutineType(types: !572)
!572 = !{!20, !162, !53}
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !574, file: !447, line: 200)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !442, line: 80, baseType: !575)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !442, line: 76, size: 128, flags: DIFlagTypePassByValue, elements: !576, identifier: "_ZTS7lldiv_t")
!576 = !{!577, !578}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !575, file: !442, line: 78, baseType: !286, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !575, file: !442, line: 79, baseType: !286, size: 64, offset: 64)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !580, file: !447, line: 206)
!580 = !DISubprogram(name: "_Exit", scope: !442, file: !442, line: 626, type: !497, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !582, file: !447, line: 210)
!582 = !DISubprogram(name: "llabs", scope: !442, file: !442, line: 841, type: !583, flags: DIFlagPrototyped, spFlags: 0)
!583 = !DISubroutineType(types: !584)
!584 = !{!286, !286}
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !586, file: !447, line: 216)
!586 = !DISubprogram(name: "lldiv", scope: !442, file: !442, line: 855, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!587 = !DISubroutineType(types: !588)
!588 = !{!574, !286, !286}
!589 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !590, file: !447, line: 227)
!590 = !DISubprogram(name: "atoll", scope: !442, file: !442, line: 112, type: !591, flags: DIFlagPrototyped, spFlags: 0)
!591 = !DISubroutineType(types: !592)
!592 = !{!286, !91}
!593 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !594, file: !447, line: 228)
!594 = !DISubprogram(name: "strtoll", scope: !442, file: !442, line: 200, type: !595, flags: DIFlagPrototyped, spFlags: 0)
!595 = !DISubroutineType(types: !596)
!596 = !{!286, !90, !553, !20}
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !598, file: !447, line: 229)
!598 = !DISubprogram(name: "strtoull", scope: !442, file: !442, line: 205, type: !599, flags: DIFlagPrototyped, spFlags: 0)
!599 = !DISubroutineType(types: !600)
!600 = !{!291, !90, !553, !20}
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !602, file: !447, line: 231)
!602 = !DISubprogram(name: "strtof", scope: !442, file: !442, line: 123, type: !603, flags: DIFlagPrototyped, spFlags: 0)
!603 = !DISubroutineType(types: !604)
!604 = !{!220, !90, !553}
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !606, file: !447, line: 232)
!606 = !DISubprogram(name: "strtold", scope: !442, file: !442, line: 126, type: !607, flags: DIFlagPrototyped, spFlags: 0)
!607 = !DISubroutineType(types: !608)
!608 = !{!281, !90, !553}
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !574, file: !447, line: 240)
!610 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !580, file: !447, line: 242)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !582, file: !447, line: 244)
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !613, file: !447, line: 245)
!613 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !277, file: !447, line: 213, type: !587, flags: DIFlagPrototyped, spFlags: 0)
!614 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !586, file: !447, line: 246)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !590, file: !447, line: 248)
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !602, file: !447, line: 249)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !594, file: !447, line: 250)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !598, file: !447, line: 251)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !606, file: !447, line: 252)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !621, file: !623, line: 98)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !622, line: 7, baseType: !47)
!622 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!623 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cstdio", directory: "")
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !625, file: !623, line: 99)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !626, line: 78, baseType: !627)
!626 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !628, line: 30, baseType: !629)
!628 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/_G_config.h", directory: "")
!629 = !DICompositeType(tag: DW_TAG_structure_type, file: !628, line: 26, size: 128, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!630 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !631, file: !623, line: 101)
!631 = !DISubprogram(name: "clearerr", scope: !626, file: !626, line: 757, type: !632, flags: DIFlagPrototyped, spFlags: 0)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !634}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !636, file: !623, line: 102)
!636 = !DISubprogram(name: "fclose", scope: !626, file: !626, line: 199, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!20, !634}
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !640, file: !623, line: 103)
!640 = !DISubprogram(name: "feof", scope: !626, file: !626, line: 759, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !642, file: !623, line: 104)
!642 = !DISubprogram(name: "ferror", scope: !626, file: !626, line: 761, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !644, file: !623, line: 105)
!644 = !DISubprogram(name: "fflush", scope: !626, file: !626, line: 204, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !646, file: !623, line: 106)
!646 = !DISubprogram(name: "fgetc", scope: !626, file: !626, line: 477, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !648, file: !623, line: 107)
!648 = !DISubprogram(name: "fgetpos", scope: !626, file: !626, line: 731, type: !649, flags: DIFlagPrototyped, spFlags: 0)
!649 = !DISubroutineType(types: !650)
!650 = !{!20, !651, !652}
!651 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !634)
!652 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!654 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !655, file: !623, line: 108)
!655 = !DISubprogram(name: "fgets", scope: !626, file: !626, line: 564, type: !656, flags: DIFlagPrototyped, spFlags: 0)
!656 = !DISubroutineType(types: !657)
!657 = !{!162, !161, !20, !651}
!658 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !659, file: !623, line: 109)
!659 = !DISubprogram(name: "fopen", scope: !626, file: !626, line: 232, type: !660, flags: DIFlagPrototyped, spFlags: 0)
!660 = !DISubroutineType(types: !661)
!661 = !{!634, !90, !90}
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !663, file: !623, line: 110)
!663 = !DISubprogram(name: "fprintf", scope: !626, file: !626, line: 312, type: !664, flags: DIFlagPrototyped, spFlags: 0)
!664 = !DISubroutineType(types: !665)
!665 = !{!20, !651, !90, null}
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !667, file: !623, line: 111)
!667 = !DISubprogram(name: "fputc", scope: !626, file: !626, line: 517, type: !668, flags: DIFlagPrototyped, spFlags: 0)
!668 = !DISubroutineType(types: !669)
!669 = !{!20, !20, !634}
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !671, file: !623, line: 112)
!671 = !DISubprogram(name: "fputs", scope: !626, file: !626, line: 626, type: !672, flags: DIFlagPrototyped, spFlags: 0)
!672 = !DISubroutineType(types: !673)
!673 = !{!20, !90, !651}
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !675, file: !623, line: 113)
!675 = !DISubprogram(name: "fread", scope: !626, file: !626, line: 646, type: !676, flags: DIFlagPrototyped, spFlags: 0)
!676 = !DISubroutineType(types: !677)
!677 = !{!87, !678, !87, !87, !651}
!678 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !139)
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !680, file: !623, line: 114)
!680 = !DISubprogram(name: "freopen", scope: !626, file: !626, line: 238, type: !681, flags: DIFlagPrototyped, spFlags: 0)
!681 = !DISubroutineType(types: !682)
!682 = !{!634, !90, !90, !651}
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !684, file: !623, line: 115)
!684 = !DISubprogram(name: "fscanf", scope: !626, file: !626, line: 377, type: !664, flags: DIFlagPrototyped, spFlags: 0)
!685 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !686, file: !623, line: 116)
!686 = !DISubprogram(name: "fseek", scope: !626, file: !626, line: 684, type: !687, flags: DIFlagPrototyped, spFlags: 0)
!687 = !DISubroutineType(types: !688)
!688 = !{!20, !634, !229, !20}
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !690, file: !623, line: 117)
!690 = !DISubprogram(name: "fsetpos", scope: !626, file: !626, line: 736, type: !691, flags: DIFlagPrototyped, spFlags: 0)
!691 = !DISubroutineType(types: !692)
!692 = !{!20, !634, !693}
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !696, file: !623, line: 118)
!696 = !DISubprogram(name: "ftell", scope: !626, file: !626, line: 689, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{!229, !634}
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !700, file: !623, line: 119)
!700 = !DISubprogram(name: "fwrite", scope: !626, file: !626, line: 652, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!87, !703, !87, !87, !651}
!703 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !481)
!704 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !705, file: !623, line: 120)
!705 = !DISubprogram(name: "getc", scope: !626, file: !626, line: 478, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!706 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !707, file: !623, line: 121)
!707 = !DISubprogram(name: "getchar", scope: !626, file: !626, line: 484, type: !539, flags: DIFlagPrototyped, spFlags: 0)
!708 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !709, file: !623, line: 126)
!709 = !DISubprogram(name: "perror", scope: !626, file: !626, line: 775, type: !710, flags: DIFlagPrototyped, spFlags: 0)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !91}
!712 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !713, file: !623, line: 127)
!713 = !DISubprogram(name: "printf", scope: !626, file: !626, line: 318, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!714 = !DISubroutineType(types: !715)
!715 = !{!20, !90, null}
!716 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !717, file: !623, line: 128)
!717 = !DISubprogram(name: "putc", scope: !626, file: !626, line: 518, type: !668, flags: DIFlagPrototyped, spFlags: 0)
!718 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !719, file: !623, line: 129)
!719 = !DISubprogram(name: "putchar", scope: !626, file: !626, line: 524, type: !405, flags: DIFlagPrototyped, spFlags: 0)
!720 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !721, file: !623, line: 130)
!721 = !DISubprogram(name: "puts", scope: !626, file: !626, line: 632, type: !471, flags: DIFlagPrototyped, spFlags: 0)
!722 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !723, file: !623, line: 131)
!723 = !DISubprogram(name: "remove", scope: !626, file: !626, line: 144, type: !471, flags: DIFlagPrototyped, spFlags: 0)
!724 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !725, file: !623, line: 132)
!725 = !DISubprogram(name: "rename", scope: !626, file: !626, line: 146, type: !726, flags: DIFlagPrototyped, spFlags: 0)
!726 = !DISubroutineType(types: !727)
!727 = !{!20, !91, !91}
!728 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !729, file: !623, line: 133)
!729 = !DISubprogram(name: "rewind", scope: !626, file: !626, line: 694, type: !632, flags: DIFlagPrototyped, spFlags: 0)
!730 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !731, file: !623, line: 134)
!731 = !DISubprogram(name: "scanf", scope: !626, file: !626, line: 383, type: !714, flags: DIFlagPrototyped, spFlags: 0)
!732 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !733, file: !623, line: 135)
!733 = !DISubprogram(name: "setbuf", scope: !626, file: !626, line: 290, type: !734, flags: DIFlagPrototyped, spFlags: 0)
!734 = !DISubroutineType(types: !735)
!735 = !{null, !651, !161}
!736 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !737, file: !623, line: 136)
!737 = !DISubprogram(name: "setvbuf", scope: !626, file: !626, line: 294, type: !738, flags: DIFlagPrototyped, spFlags: 0)
!738 = !DISubroutineType(types: !739)
!739 = !{!20, !651, !161, !20, !87}
!740 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !741, file: !623, line: 137)
!741 = !DISubprogram(name: "sprintf", scope: !626, file: !626, line: 320, type: !742, flags: DIFlagPrototyped, spFlags: 0)
!742 = !DISubroutineType(types: !743)
!743 = !{!20, !161, !90, null}
!744 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !745, file: !623, line: 138)
!745 = !DISubprogram(name: "sscanf", scope: !626, file: !626, line: 385, type: !746, flags: DIFlagPrototyped, spFlags: 0)
!746 = !DISubroutineType(types: !747)
!747 = !{!20, !90, !90, null}
!748 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !749, file: !623, line: 139)
!749 = !DISubprogram(name: "tmpfile", scope: !626, file: !626, line: 159, type: !750, flags: DIFlagPrototyped, spFlags: 0)
!750 = !DISubroutineType(types: !751)
!751 = !{!634}
!752 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !753, file: !623, line: 141)
!753 = !DISubprogram(name: "tmpnam", scope: !626, file: !626, line: 173, type: !754, flags: DIFlagPrototyped, spFlags: 0)
!754 = !DISubroutineType(types: !755)
!755 = !{!162, !162}
!756 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !757, file: !623, line: 143)
!757 = !DISubprogram(name: "ungetc", scope: !626, file: !626, line: 639, type: !668, flags: DIFlagPrototyped, spFlags: 0)
!758 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !759, file: !623, line: 144)
!759 = !DISubprogram(name: "vfprintf", scope: !626, file: !626, line: 327, type: !760, flags: DIFlagPrototyped, spFlags: 0)
!760 = !DISubroutineType(types: !761)
!761 = !{!20, !651, !90, !133}
!762 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !763, file: !623, line: 145)
!763 = !DISubprogram(name: "vprintf", scope: !626, file: !626, line: 333, type: !764, flags: DIFlagPrototyped, spFlags: 0)
!764 = !DISubroutineType(types: !765)
!765 = !{!20, !90, !133}
!766 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !767, file: !623, line: 146)
!767 = !DISubprogram(name: "vsprintf", scope: !626, file: !626, line: 335, type: !768, flags: DIFlagPrototyped, spFlags: 0)
!768 = !DISubroutineType(types: !769)
!769 = !{!20, !161, !90, !133}
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !771, file: !623, line: 175)
!771 = !DISubprogram(name: "snprintf", scope: !626, file: !626, line: 340, type: !772, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DISubroutineType(types: !773)
!773 = !{!20, !161, !87, !90, null}
!774 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !775, file: !623, line: 176)
!775 = !DISubprogram(name: "vfscanf", scope: !626, file: !626, line: 420, type: !760, flags: DIFlagPrototyped, spFlags: 0)
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !777, file: !623, line: 177)
!777 = !DISubprogram(name: "vscanf", scope: !626, file: !626, line: 428, type: !764, flags: DIFlagPrototyped, spFlags: 0)
!778 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !779, file: !623, line: 178)
!779 = !DISubprogram(name: "vsnprintf", scope: !626, file: !626, line: 344, type: !780, flags: DIFlagPrototyped, spFlags: 0)
!780 = !DISubroutineType(types: !781)
!781 = !{!20, !161, !87, !90, !133}
!782 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !277, entity: !783, file: !623, line: 179)
!783 = !DISubprogram(name: "vsscanf", scope: !626, file: !626, line: 432, type: !784, flags: DIFlagPrototyped, spFlags: 0)
!784 = !DISubroutineType(types: !785)
!785 = !{!20, !90, !90, !133}
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !771, file: !623, line: 185)
!787 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !775, file: !623, line: 186)
!788 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !777, file: !623, line: 187)
!789 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !779, file: !623, line: 188)
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !783, file: !623, line: 189)
!791 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !792, file: !796, line: 82)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctrans_t", file: !793, line: 48, baseType: !794)
!793 = !DIFile(filename: "/usr/include/wctype.h", directory: "")
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!796 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/cwctype", directory: "")
!797 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !798, file: !796, line: 83)
!798 = !DIDerivedType(tag: DW_TAG_typedef, name: "wctype_t", file: !799, line: 38, baseType: !89)
!799 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/wctype-wchar.h", directory: "")
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !33, file: !796, line: 84)
!801 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !802, file: !796, line: 86)
!802 = !DISubprogram(name: "iswalnum", scope: !799, file: !799, line: 95, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!803 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !804, file: !796, line: 87)
!804 = !DISubprogram(name: "iswalpha", scope: !799, file: !799, line: 101, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!805 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !806, file: !796, line: 89)
!806 = !DISubprogram(name: "iswblank", scope: !799, file: !799, line: 146, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!807 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !808, file: !796, line: 91)
!808 = !DISubprogram(name: "iswcntrl", scope: !799, file: !799, line: 104, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!809 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !810, file: !796, line: 92)
!810 = !DISubprogram(name: "iswctype", scope: !799, file: !799, line: 159, type: !811, flags: DIFlagPrototyped, spFlags: 0)
!811 = !DISubroutineType(types: !812)
!812 = !{!20, !33, !798}
!813 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !814, file: !796, line: 93)
!814 = !DISubprogram(name: "iswdigit", scope: !799, file: !799, line: 108, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!815 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !816, file: !796, line: 94)
!816 = !DISubprogram(name: "iswgraph", scope: !799, file: !799, line: 112, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!817 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !818, file: !796, line: 95)
!818 = !DISubprogram(name: "iswlower", scope: !799, file: !799, line: 117, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!819 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !820, file: !796, line: 96)
!820 = !DISubprogram(name: "iswprint", scope: !799, file: !799, line: 120, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!821 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !822, file: !796, line: 97)
!822 = !DISubprogram(name: "iswpunct", scope: !799, file: !799, line: 125, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!823 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !824, file: !796, line: 98)
!824 = !DISubprogram(name: "iswspace", scope: !799, file: !799, line: 130, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!825 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !826, file: !796, line: 99)
!826 = !DISubprogram(name: "iswupper", scope: !799, file: !799, line: 135, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!827 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !828, file: !796, line: 100)
!828 = !DISubprogram(name: "iswxdigit", scope: !799, file: !799, line: 140, type: !240, flags: DIFlagPrototyped, spFlags: 0)
!829 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !830, file: !796, line: 101)
!830 = !DISubprogram(name: "towctrans", scope: !793, file: !793, line: 55, type: !831, flags: DIFlagPrototyped, spFlags: 0)
!831 = !DISubroutineType(types: !832)
!832 = !{!33, !33, !792}
!833 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !834, file: !796, line: 102)
!834 = !DISubprogram(name: "towlower", scope: !799, file: !799, line: 166, type: !835, flags: DIFlagPrototyped, spFlags: 0)
!835 = !DISubroutineType(types: !836)
!836 = !{!33, !33}
!837 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !838, file: !796, line: 103)
!838 = !DISubprogram(name: "towupper", scope: !799, file: !799, line: 169, type: !835, flags: DIFlagPrototyped, spFlags: 0)
!839 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !840, file: !796, line: 104)
!840 = !DISubprogram(name: "wctrans", scope: !793, file: !793, line: 52, type: !841, flags: DIFlagPrototyped, spFlags: 0)
!841 = !DISubroutineType(types: !842)
!842 = !{!792, !91}
!843 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !2, entity: !844, file: !796, line: 105)
!844 = !DISubprogram(name: "wctype", scope: !799, file: !799, line: 155, type: !845, flags: DIFlagPrototyped, spFlags: 0)
!845 = !DISubroutineType(types: !846)
!846 = !{!798, !91}
!847 = !{i32 7, !"Dwarf Version", i32 4}
!848 = !{i32 2, !"Debug Info Version", i32 3}
!849 = !{i32 1, !"wchar_size", i32 4}
!850 = !{i32 7, !"uwtable", i32 1}
!851 = !{i32 7, !"frame-pointer", i32 2}
!852 = !{!"clang version 13.0.0"}
!853 = distinct !DISubprogram(name: "__cxx_global_var_init", scope: !8, file: !8, type: !456, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !9)
!854 = !DILocation(line: 74, column: 25, scope: !855)
!855 = !DILexicalBlockFile(scope: !853, file: !3, discriminator: 0)
!856 = !DILocation(line: 0, scope: !853)
!857 = distinct !DISubprogram(name: "my_print", linkageName: "_Z8my_printNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi", scope: !8, file: !8, line: 8, type: !858, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!858 = !DISubroutineType(types: !859)
!859 = !{null, !860, !20}
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "string", scope: !862, file: !861, line: 74, baseType: !863)
!861 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/stringfwd.h", directory: "")
!862 = !DINamespace(name: "__cxx11", scope: !2, exportSymbols: true)
!863 = !DICompositeType(tag: DW_TAG_class_type, name: "basic_string<char, std::char_traits<char>, std::allocator<char> >", scope: !862, file: !864, line: 1607, size: 256, flags: DIFlagFwdDecl | DIFlagNonTrivial, identifier: "_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE")
!864 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/7.5.0/../../../../include/c++/7.5.0/bits/basic_string.tcc", directory: "")
!865 = !DILocalVariable(name: "info", arg: 1, scope: !857, file: !8, line: 8, type: !860)
!866 = !DILocation(line: 8, column: 27, scope: !857)
!867 = !DILocalVariable(name: "value", arg: 2, scope: !857, file: !8, line: 8, type: !20)
!868 = !DILocation(line: 8, column: 37, scope: !857)
!869 = !DILocation(line: 10, column: 15, scope: !857)
!870 = !DILocation(line: 10, column: 23, scope: !857)
!871 = !DILocation(line: 10, column: 33, scope: !857)
!872 = !DILocation(line: 10, column: 30, scope: !857)
!873 = !DILocation(line: 10, column: 39, scope: !857)
!874 = !DILocation(line: 11, column: 1, scope: !857)
!875 = distinct !DISubprogram(name: "main", scope: !8, file: !8, line: 13, type: !539, scopeLine: 14, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !9)
!876 = !DILocalVariable(name: "num", scope: !875, file: !8, line: 15, type: !20)
!877 = !DILocation(line: 15, column: 9, scope: !875)
!878 = !DILocation(line: 16, column: 14, scope: !875)
!879 = !DILocation(line: 18, column: 9, scope: !880)
!880 = distinct !DILexicalBlock(scope: !875, file: !8, line: 18, column: 9)
!881 = !DILocation(line: 18, column: 13, scope: !880)
!882 = !DILocation(line: 18, column: 9, scope: !875)
!883 = !DILocation(line: 21, column: 18, scope: !884)
!884 = distinct !DILexicalBlock(scope: !880, file: !8, line: 19, column: 5)
!885 = !DILocation(line: 21, column: 36, scope: !884)
!886 = !DILocation(line: 21, column: 9, scope: !884)
!887 = !DILocation(line: 22, column: 5, scope: !884)
!888 = !DILocation(line: 28, column: 1, scope: !884)
!889 = !DILocation(line: 25, column: 18, scope: !890)
!890 = distinct !DILexicalBlock(scope: !880, file: !8, line: 24, column: 5)
!891 = !DILocation(line: 25, column: 34, scope: !890)
!892 = !DILocation(line: 25, column: 9, scope: !890)
!893 = !DILocation(line: 28, column: 1, scope: !890)
!894 = !DILocation(line: 27, column: 5, scope: !875)
!895 = distinct !DISubprogram(linkageName: "_GLOBAL__sub_I_demo.cpp", scope: !8, file: !8, type: !896, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !9)
!896 = !DISubroutineType(types: !9)
!897 = !DILocation(line: 0, scope: !895)
