; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TGrid = external global double*, align 8
@HGrid = external global double*, align 8
@X = external global i32, align 4
@Y = external global i32, align 4
@Z = external global i32, align 4
@.str = private unnamed_addr constant [20 x i8] c"At 0.00000 seconds\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store double* null, double** @TGrid, align 8
  store double* null, double** @HGrid, align 8
  store i32 0, i32* @X, align 4
  store i32 0, i32* @Y, align 4
  store i32 0, i32* @Z, align 4
  %2 = call i32 @InitMaterial()
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %5

; <label>:4:                                      ; preds = %0
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:5:                                      ; preds = %0
  %6 = call i32 @GetSimLength()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %5
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:9:                                      ; preds = %5
  %10 = load double*, double** @TGrid, align 8
  %11 = call i32 @GraphTemps(double* %10)
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0))
  %13 = call i32 @kbhit()
  %14 = call i32 @RunSim()
  %15 = load double*, double** @TGrid, align 8
  %16 = call i32 @GraphTemps(double* %15)
  ret i32 0
}

declare i32 @InitMaterial() #1

; Function Attrs: noreturn
declare void @_terminate(i32) #2

declare i32 @GetSimLength() #1

declare i32 @GraphTemps(double*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @kbhit() #1

declare i32 @RunSim() #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
