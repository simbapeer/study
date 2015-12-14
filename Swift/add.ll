; ModuleID = '-'
target datalayout = "e-m:o-p:32:32-f64:32:64-v64:32:64-v128:32:128-a:0:32-n32-S32"
target triple = "armv7-apple-ios9.0"

define hidden i8 @_TF3add13addTwoNumbersFTVSs5UInt86secondS0__S0_(i8, i8) #0 {
entry:
  %2 = call { i8, i1 } @llvm.uadd.with.overflow.i8(i8 %0, i8 %1)
  %3 = extractvalue { i8, i1 } %2, 0
  %4 = extractvalue { i8, i1 } %2, 1
  br i1 %4, label %6, label %5

; <label>:5                                       ; preds = %entry
  ret i8 %3

; <label>:6                                       ; preds = %entry
  call void @llvm.trap()
  unreachable
}

; Function Attrs: nounwind readnone
declare { i8, i1 } @llvm.uadd.with.overflow.i8(i8, i8) #1

; Function Attrs: noreturn nounwind
declare void @llvm.trap() #2

attributes #0 = { "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "target-cpu"="cortex-a8" "target-features"="+neon,+vfp3" }
attributes #1 = { nounwind readnone }
attributes #2 = { noreturn nounwind }


