; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"Welcome to the network queuing simulator\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to init interface\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to init packet generator\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Failed to initialize queues\0A\00", align 1
@wall_clock = external global double, align 8
@max_wall_clock = external global double, align 8

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @puts(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i32 0, i32 0))
  %2 = call i32 @InitInterface()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %0
  call void @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0))
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:5:                                      ; preds = %0
  %6 = call i32 @InitReceive()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5
  call void @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0))
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:9:                                      ; preds = %5
  %10 = call i32 @InitQueues()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %9
  call void @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:13:                                     ; preds = %9
  br label %14

; <label>:14:                                     ; preds = %13, %23
  %15 = call i32 @RX()
  %16 = call i32 @TX()
  %17 = load double, double* @wall_clock, align 8
  %18 = fadd double %17, 1.000000e-05
  store double %18, double* @wall_clock, align 8
  %19 = load double, double* @wall_clock, align 8
  %20 = load double, double* @max_wall_clock, align 8
  %21 = fcmp ogt double %19, %20
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %14
  br label %24

; <label>:23:                                     ; preds = %14
  br label %14

; <label>:24:                                     ; preds = %22
  call void @PrintStats()
  %25 = call i32 @DestroyQueues()
  call void @_terminate(i32 0) #3
  unreachable
                                                  ; No predecessors!
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare void @puts(i8*) #1

declare i32 @InitInterface() #1

; Function Attrs: noreturn
declare void @_terminate(i32) #2

declare i32 @InitReceive() #1

declare i32 @InitQueues() #1

declare i32 @RX() #1

declare i32 @TX() #1

declare void @PrintStats() #1

declare i32 @DestroyQueues() #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
