; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURR_PLAYER = common global [6 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [6 x i8] c"WHITE\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"good game\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"BLACK\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"OK\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca [8 x [8 x i8]], align 16
  store i32 0, i32* %1, align 4
  %7 = getelementptr inbounds [8 x [8 x i8]], [8 x [8 x i8]]* %6, i32 0, i32 0
  call void @InitBoard([8 x i8]* %7)
  %8 = call i8* @strcpy(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @CURR_PLAYER, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  %9 = getelementptr inbounds [8 x [8 x i8]], [8 x [8 x i8]]* %6, i32 0, i32 0
  call void @PrintBoard([8 x i8]* %9)
  br label %10

; <label>:10:                                     ; preds = %0, %23, %36
  %11 = getelementptr inbounds [8 x [8 x i8]], [8 x [8 x i8]]* %6, i32 0, i32 0
  %12 = call i32 @AcceptMove([8 x i8]* %11, i8* %2, i8* %3, i8* %4, i8* %5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %10
  call void @puts(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  ret i32 0

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds [8 x [8 x i8]], [8 x [8 x i8]]* %6, i32 0, i32 0
  %17 = load i8, i8* %2, align 1
  %18 = load i8, i8* %3, align 1
  %19 = load i8, i8* %4, align 1
  %20 = load i8, i8* %5, align 1
  %21 = call i32 @IsValidMove([8 x i8]* %16, i8 signext %17, i8 signext %18, i8 signext %19, i8 signext %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %15
  call void @puts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %10

; <label>:24:                                     ; preds = %15
  %25 = getelementptr inbounds [8 x [8 x i8]], [8 x [8 x i8]]* %6, i32 0, i32 0
  %26 = load i8, i8* %2, align 1
  %27 = load i8, i8* %3, align 1
  %28 = load i8, i8* %4, align 1
  %29 = load i8, i8* %5, align 1
  call void @MakeMove([8 x i8]* %25, i8 signext %26, i8 signext %27, i8 signext %28, i8 signext %29)
  %30 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @CURR_PLAYER, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

; <label>:32:                                     ; preds = %24
  %33 = call i8* @strcpy(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @CURR_PLAYER, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0))
  br label %36

; <label>:34:                                     ; preds = %24
  %35 = call i8* @strcpy(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @CURR_PLAYER, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0))
  br label %36

; <label>:36:                                     ; preds = %34, %32
  call void @puts(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0))
  br label %10
}

declare void @InitBoard([8 x i8]*) #1

declare i8* @strcpy(i8*, i8*) #1

declare void @PrintBoard([8 x i8]*) #1

declare i32 @AcceptMove([8 x i8]*, i8*, i8*, i8*, i8*) #1

declare void @puts(i8*) #1

declare i32 @IsValidMove([8 x i8]*, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare void @MakeMove([8 x i8]*, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
