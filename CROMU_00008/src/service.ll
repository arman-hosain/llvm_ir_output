; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._USER_STATE_STRUCT = type { i32 }
%struct.EXCEPTION_FRAME_STRUCT = type { [1 x %struct.anon] }
%struct.anon = type { [8 x i64] }

@.str = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Connection failed. Exiting.\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Enter test function\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"Got 1\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Blah\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Exit test function\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @run_parser() #0 {
  %1 = alloca i8, align 1
  %2 = alloca [513 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca %struct._USER_STATE_STRUCT, align 4
  store i8 0, i8* %1, align 1
  call void @init_user(%struct._USER_STATE_STRUCT* %4)
  br label %5

; <label>:5:                                      ; preds = %17, %0
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0))
  %7 = getelementptr inbounds [513 x i8], [513 x i8]* %2, i32 0, i32 0
  %8 = call i32 @readLine(i32 0, i8* %7, i64 512)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

; <label>:11:                                     ; preds = %5
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  store i8 1, i8* %1, align 1
  br label %16

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds [513 x i8], [513 x i8]* %2, i32 0, i32 0
  %15 = call signext i8 @parse_command(i8* %14, %struct._USER_STATE_STRUCT* %4)
  br label %16

; <label>:16:                                     ; preds = %13, %11
  br label %17

; <label>:17:                                     ; preds = %16
  %18 = load i8, i8* %1, align 1
  %19 = icmp ne i8 %18, 0
  %20 = xor i1 %19, true
  br i1 %20, label %5, label %21

; <label>:21:                                     ; preds = %17
  ret void
}

declare void @init_user(%struct._USER_STATE_STRUCT*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @readLine(i32, i8*, i64) #1

declare signext i8 @parse_command(i8*, %struct._USER_STATE_STRUCT*) #1

; Function Attrs: noinline nounwind uwtable
define void @test() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  %2 = call %struct.EXCEPTION_FRAME_STRUCT* @get_next_exception_frame()
  %3 = getelementptr inbounds %struct.EXCEPTION_FRAME_STRUCT, %struct.EXCEPTION_FRAME_STRUCT* %2, i32 0, i32 0
  %4 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* %3, i32 0, i32 0
  %5 = call i32 @setjmp(%struct.anon* %4) #4
  switch i32 %5, label %16 [
    i32 0, label %6
    i32 1, label %11
  ]

; <label>:6:                                      ; preds = %0
  br label %7

; <label>:7:                                      ; preds = %6
  %8 = call %struct.EXCEPTION_FRAME_STRUCT* @get_current_exception_frame()
  %9 = getelementptr inbounds %struct.EXCEPTION_FRAME_STRUCT, %struct.EXCEPTION_FRAME_STRUCT* %8, i32 0, i32 0
  %10 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* %9, i32 0, i32 0
  call void @longjmp(%struct.anon* %10, i32 1) #5
  unreachable

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  %13 = call %struct.EXCEPTION_FRAME_STRUCT* @get_current_exception_frame()
  %14 = getelementptr inbounds %struct.EXCEPTION_FRAME_STRUCT, %struct.EXCEPTION_FRAME_STRUCT* %13, i32 0, i32 0
  %15 = getelementptr inbounds [1 x %struct.anon], [1 x %struct.anon]* %14, i32 0, i32 0
  call void @longjmp(%struct.anon* %15, i32 1) #5
  unreachable

; <label>:16:                                     ; preds = %0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  %18 = call %struct.EXCEPTION_FRAME_STRUCT* @pop_exception_frame()
  br label %19

; <label>:19:                                     ; preds = %16
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

; Function Attrs: returns_twice
declare i32 @setjmp(%struct.anon*) #2

declare %struct.EXCEPTION_FRAME_STRUCT* @get_next_exception_frame() #1

; Function Attrs: noreturn
declare void @longjmp(%struct.anon*, i32) #3

declare %struct.EXCEPTION_FRAME_STRUCT* @get_current_exception_frame() #1

declare %struct.EXCEPTION_FRAME_STRUCT* @pop_exception_frame() #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @init_exception_handler()
  call void @init_database()
  call void @run_parser()
  ret i32 0
}

declare void @init_exception_handler() #1

declare void @init_database() #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { returns_twice }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
