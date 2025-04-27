; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hackman_state = type { void ()*, {}*, [20 x i8], [20 x i8], i32 }

@.str = private unnamed_addr constant [28 x i8] c"     Sh41l w3 p14y a g4m3?\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"###### Good Work! ######\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"# Leave your comment!! #\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"########################\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Comment: \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"You wrote: %s\0A\00", align 1
@total = internal global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"\0A@ @ @ @ @  New Challenge  @ @ @ @ @\0A\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Seed? \00", align 1
@words = internal global [20 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.34, i32 0, i32 0)], align 16
@.str.9 = private unnamed_addr constant [63 x i8] c"\0A * * * * Thank you for playing! You've won %d times! * * * *\0A\00", align 1
@win = internal global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"[[[ Your challenge: %s ]]]\0A\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Guess a letter: \00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"\0A^^^^^ RESET ^^^^^\0A\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c">>> You got it!! \22%s\22 (%d tries) <<<\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\0AWelcome to HackMan v13.37\0A\0A\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"leonite\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"drawdown\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"conuzor\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"franklin\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"married\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"excircle\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"solidness\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"aneuria\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"constablery\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"infractible\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"speedingly\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"scantlinged\00", align 1
@.str.27 = private unnamed_addr constant [12 x i8] c"presphenoid\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c"diphyozooid\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"twistiways\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"didrachma\00", align 1
@.str.31 = private unnamed_addr constant [3 x i8] c"fa\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"gyte\00", align 1
@.str.33 = private unnamed_addr constant [11 x i8] c"emblazonry\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"insulize\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @read_until(i32, i8*, i64, i8 signext) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  store i64 0, i64* %9, align 8
  br label %13

; <label>:13:                                     ; preds = %36, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %39

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @receive(i32 %18, i8* %19, i64 1, i64* %11)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

; <label>:22:                                     ; preds = %17
  %23 = load i64, i64* %11, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %22, %17
  br label %39

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %8, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %26
  br label %39

; <label>:35:                                     ; preds = %26
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  br label %13

; <label>:39:                                     ; preds = %34, %25, %13
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 -1
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  ret i32 %47
}

declare i32 @receive(i32, i8*, i64, i64*) #1

; Function Attrs: noinline nounwind uwtable
define signext i8 @parse_input(i8*) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %4 = load i8*, i8** %3, align 8
  %5 = call i32 @read_until(i32 0, i8* %4, i64 128, i8 signext 10)
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %31

; <label>:7:                                      ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 0
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %15 [
    i32 43, label %12
    i32 47, label %13
    i32 63, label %14
  ]

; <label>:12:                                     ; preds = %7
  store i8 0, i8* %2, align 1
  br label %33

; <label>:13:                                     ; preds = %7
  store i8 2, i8* %2, align 1
  br label %33

; <label>:14:                                     ; preds = %7
  store i8 1, i8* %2, align 1
  br label %33

; <label>:15:                                     ; preds = %7
  %16 = load i8*, i8** %3, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = call i32 @isalpha(i32 %19) #5
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

; <label>:22:                                     ; preds = %15
  %23 = load i8*, i8** %3, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = call i32 @tolower(i32 %26) #5
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %2, align 1
  br label %33

; <label>:29:                                     ; preds = %15
  br label %30

; <label>:30:                                     ; preds = %29
  br label %32

; <label>:31:                                     ; preds = %1
  call void @exit(i32 0)
  br label %32

; <label>:32:                                     ; preds = %31, %30
  store i8 9, i8* %2, align 1
  br label %33

; <label>:33:                                     ; preds = %32, %22, %14, %13, %12
  %34 = load i8, i8* %2, align 1
  ret i8 %34
}

; Function Attrs: nounwind readonly
declare i32 @isalpha(i32) #2

; Function Attrs: nounwind readonly
declare i32 @tolower(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal void @exit(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @_terminate(i32 %3) #6
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @banner() #0 {
  %1 = alloca [2048 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 2048, i32 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %36, %0
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %39

; <label>:9:                                      ; preds = %6
  store i32 0, i32* %2, align 4
  br label %10

; <label>:10:                                     ; preds = %28, %9
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 33
  br i1 %12, label %13, label %31

; <label>:13:                                     ; preds = %10
  %14 = load i32, i32* %2, align 4
  %15 = srem i32 %14, 2
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %4, align 4
  %20 = sext i32 %18 to i64
  %21 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 %20
  store i8 45, i8* %21, align 1
  br label %27

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %4, align 4
  %25 = sext i32 %23 to i64
  %26 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 %25
  store i8 95, i8* %26, align 1
  br label %27

; <label>:27:                                     ; preds = %22, %17
  br label %28

; <label>:28:                                     ; preds = %27
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %10

; <label>:31:                                     ; preds = %10
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 %34
  store i8 10, i8* %35, align 1
  br label %36

; <label>:36:                                     ; preds = %31
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %6

; <label>:39:                                     ; preds = %6
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 %41
  %43 = call i8* @strcpy(i8* %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i32 0, i32 0))
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 27
  store i32 %45, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %46

; <label>:46:                                     ; preds = %76, %39
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %79

; <label>:49:                                     ; preds = %46
  store i32 0, i32* %2, align 4
  br label %50

; <label>:50:                                     ; preds = %68, %49
  %51 = load i32, i32* %2, align 4
  %52 = icmp slt i32 %51, 33
  br i1 %52, label %53, label %71

; <label>:53:                                     ; preds = %50
  %54 = load i32, i32* %2, align 4
  %55 = srem i32 %54, 2
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

; <label>:57:                                     ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 %60
  store i8 45, i8* %61, align 1
  br label %67

; <label>:62:                                     ; preds = %53
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 %65
  store i8 95, i8* %66, align 1
  br label %67

; <label>:67:                                     ; preds = %62, %57
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %2, align 4
  br label %50

; <label>:71:                                     ; preds = %50
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %4, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 %74
  store i8 10, i8* %75, align 1
  br label %76

; <label>:76:                                     ; preds = %71
  %77 = load i32, i32* %3, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %3, align 4
  br label %46

; <label>:79:                                     ; preds = %46
  %80 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i32 0, i32 0
  %81 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %80)
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

declare i8* @strcpy(i8*, i8*) #1

declare i32 @fdprintf(i32, i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define void @record_winner() #0 {
  %1 = alloca [2048 x i8], align 16
  %2 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0))
  %3 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  %4 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  %5 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  %6 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i32 0, i32 0
  %7 = call i32 @read_until(i32 0, i8* %6, i64 2048, i8 signext 10)
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %13

; <label>:9:                                      ; preds = %0
  %10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 2047
  store i8 0, i8* %10, align 1
  %11 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i32 0, i32 0
  %12 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i32 0, i32 0), i8* %11)
  br label %14

; <label>:13:                                     ; preds = %0
  call void @exit(i32 0)
  br label %14

; <label>:14:                                     ; preds = %13, %9
  %15 = load i32, i32* @total, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @total, align 4
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @new_challenge(%struct.hackman_state*) #0 {
  %2 = alloca %struct.hackman_state*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca [32 x i8], align 16
  store %struct.hackman_state* %0, %struct.hackman_state** %2, align 8
  %6 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i32 0, i32 0))
  %7 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %8 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0
  %9 = call i32 @read_until(i32 0, i8* %8, i64 32, i8 signext 10)
  %10 = icmp sle i32 %9, 0
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  call void @exit(i32 0)
  br label %12

; <label>:12:                                     ; preds = %11, %1
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i32 0, i32 0
  %14 = call i64 @strtoul(i8* %13, i8** null, i32 10)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 16711680
  %18 = lshr i32 %17, 16
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, 255
  %21 = shl i32 %20, 8
  %22 = or i32 %18, %21
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %3, align 2
  %24 = load i16, i16* %3, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %12
  store i16 -21279, i16* %3, align 2
  br label %28

; <label>:28:                                     ; preds = %27, %12
  %29 = load i16, i16* %3, align 2
  %30 = zext i16 %29 to i32
  %31 = ashr i32 %30, 0
  %32 = load i16, i16* %3, align 2
  %33 = zext i16 %32 to i32
  %34 = ashr i32 %33, 2
  %35 = xor i32 %31, %34
  %36 = load i16, i16* %3, align 2
  %37 = zext i16 %36 to i32
  %38 = ashr i32 %37, 3
  %39 = xor i32 %35, %38
  %40 = load i16, i16* %3, align 2
  %41 = zext i16 %40 to i32
  %42 = ashr i32 %41, 5
  %43 = xor i32 %39, %42
  %44 = and i32 %43, 1
  store i32 %44, i32* %4, align 4
  %45 = load i16, i16* %3, align 2
  %46 = zext i16 %45 to i32
  %47 = ashr i32 %46, 1
  %48 = load i32, i32* %4, align 4
  %49 = shl i32 %48, 15
  %50 = or i32 %47, %49
  store i32 %50, i32* %4, align 4
  %51 = load %struct.hackman_state*, %struct.hackman_state** %2, align 8
  %52 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %51, i32 0, i32 2
  %53 = getelementptr inbounds [20 x i8], [20 x i8]* %52, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %53, i8 0, i64 20, i32 8, i1 false)
  %54 = load %struct.hackman_state*, %struct.hackman_state** %2, align 8
  %55 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %54, i32 0, i32 3
  %56 = getelementptr inbounds [20 x i8], [20 x i8]* %55, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %56, i8 0, i64 20, i32 4, i1 false)
  %57 = load %struct.hackman_state*, %struct.hackman_state** %2, align 8
  %58 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %57, i32 0, i32 2
  %59 = getelementptr inbounds [20 x i8], [20 x i8]* %58, i32 0, i32 0
  %60 = load i32, i32* %4, align 4
  %61 = urem i32 %60, 20
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [20 x i8*], [20 x i8*]* @words, i64 0, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = call i8* @strcpy(i8* %59, i8* %64)
  %66 = load %struct.hackman_state*, %struct.hackman_state** %2, align 8
  %67 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %66, i32 0, i32 3
  %68 = getelementptr inbounds [20 x i8], [20 x i8]* %67, i32 0, i32 0
  %69 = load i32, i32* %4, align 4
  %70 = urem i32 %69, 20
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds [20 x i8*], [20 x i8*]* @words, i64 0, i64 %71
  %73 = load i8*, i8** %72, align 8
  %74 = call i64 @strlen(i8* %73)
  call void @llvm.memset.p0i8.i64(i8* %68, i8 95, i64 %74, i32 4, i1 false)
  %75 = load %struct.hackman_state*, %struct.hackman_state** %2, align 8
  %76 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %75, i32 0, i32 4
  store i32 0, i32* %76, align 8
  ret void
}

declare i64 @strtoul(i8*, i8**, i32) #1

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @quit_game() #0 {
  %1 = load i32, i32* @total, align 4
  %2 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i32 0, i32 0), i32 %1)
  call void @exit(i32 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @play_game() #0 {
  %1 = alloca %struct.hackman_state, align 8
  %2 = alloca [128 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  br label %6

; <label>:6:                                      ; preds = %0, %38, %42, %132
  store i32 0, i32* %5, align 4
  %7 = load i32, i32* @win, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 2
  %11 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i32 0, i32 0
  %12 = call i64 @strlen(i8* %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %9, %6
  br label %24

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 3
  %17 = getelementptr inbounds [20 x i8], [20 x i8]* %16, i32 0, i32 0
  %18 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i32 0, i32 0), i8* %17)
  %19 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i32 0, i32 0))
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i32 0, i32 0
  %21 = call signext i8 @parse_input(i8* %20)
  %22 = sext i8 %21 to i32
  switch i32 %22, label %60 [
    i32 0, label %23
    i32 1, label %42
    i32 2, label %50
    i32 9, label %59
  ]

; <label>:23:                                     ; preds = %15
  br label %24

; <label>:24:                                     ; preds = %23, %14
  %25 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 1
  %26 = bitcast {}** %25 to void (%struct.hackman_state*)**
  %27 = load void (%struct.hackman_state*)*, void (%struct.hackman_state*)** %26, align 8
  %28 = icmp eq void (%struct.hackman_state*)* %27, null
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 1
  %31 = bitcast {}** %30 to void (%struct.hackman_state*)**
  store void (%struct.hackman_state*)* @new_challenge, void (%struct.hackman_state*)** %31, align 8
  br label %32

; <label>:32:                                     ; preds = %29, %24
  %33 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 0
  %34 = load void ()*, void ()** %33, align 8
  %35 = icmp eq void ()* %34, null
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 0
  store void ()* @quit_game, void ()** %37, align 8
  br label %38

; <label>:38:                                     ; preds = %36, %32
  %39 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 1
  %40 = bitcast {}** %39 to void (%struct.hackman_state*)**
  %41 = load void (%struct.hackman_state*)*, void (%struct.hackman_state*)** %40, align 8
  call void %41(%struct.hackman_state* %1)
  store i32 0, i32* @win, align 4
  br label %6

; <label>:42:                                     ; preds = %15
  %43 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 4
  store i32 0, i32* %43, align 8
  %44 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 3
  %45 = getelementptr inbounds [20 x i8], [20 x i8]* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 2
  %47 = getelementptr inbounds [20 x i8], [20 x i8]* %46, i32 0, i32 0
  %48 = call i64 @strlen(i8* %47)
  call void @llvm.memset.p0i8.i64(i8* %45, i8 95, i64 %48, i32 4, i1 false)
  %49 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0))
  br label %6

; <label>:50:                                     ; preds = %15
  %51 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 0
  %52 = load void ()*, void ()** %51, align 8
  %53 = icmp eq void ()* %52, null
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %50
  %55 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 0
  store void ()* @quit_game, void ()** %55, align 8
  br label %56

; <label>:56:                                     ; preds = %54, %50
  %57 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 0
  %58 = load void ()*, void ()** %57, align 8
  call void %58()
  br label %64

; <label>:59:                                     ; preds = %15
  store i32 1, i32* %5, align 4
  br label %64

; <label>:60:                                     ; preds = %15
  %61 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = add i32 %62, 1
  store i32 %63, i32* %61, align 8
  br label %64

; <label>:64:                                     ; preds = %60, %59, %56
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %132, label %67

; <label>:67:                                     ; preds = %64
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %68

; <label>:68:                                     ; preds = %94, %67
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 2
  %72 = getelementptr inbounds [20 x i8], [20 x i8]* %71, i32 0, i32 0
  %73 = call i64 @strlen(i8* %72)
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %97

; <label>:75:                                     ; preds = %68
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %77 = load i8, i8* %76, align 16
  %78 = sext i8 %77 to i32
  %79 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 2
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [20 x i8], [20 x i8]* %79, i64 0, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %78, %84
  br i1 %85, label %86, label %93

; <label>:86:                                     ; preds = %75
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %2, i64 0, i64 0
  %88 = load i8, i8* %87, align 16
  %89 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 3
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [20 x i8], [20 x i8]* %89, i64 0, i64 %91
  store i8 %88, i8* %92, align 1
  store i32 1, i32* %4, align 4
  br label %93

; <label>:93:                                     ; preds = %86, %75
  br label %94

; <label>:94:                                     ; preds = %93
  %95 = load i32, i32* %3, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %3, align 4
  br label %68

; <label>:97:                                     ; preds = %68
  %98 = load i32, i32* %4, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %131

; <label>:100:                                    ; preds = %97
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %101

; <label>:101:                                    ; preds = %118, %100
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 3
  %105 = getelementptr inbounds [20 x i8], [20 x i8]* %104, i32 0, i32 0
  %106 = call i64 @strlen(i8* %105)
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %121

; <label>:108:                                    ; preds = %101
  %109 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 3
  %110 = load i32, i32* %3, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [20 x i8], [20 x i8]* %109, i64 0, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 95
  br i1 %115, label %116, label %117

; <label>:116:                                    ; preds = %108
  store i32 1, i32* %4, align 4
  br label %117

; <label>:117:                                    ; preds = %116, %108
  br label %118

; <label>:118:                                    ; preds = %117
  %119 = load i32, i32* %3, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %3, align 4
  br label %101

; <label>:121:                                    ; preds = %101
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

; <label>:124:                                    ; preds = %121
  %125 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 2
  %126 = getelementptr inbounds [20 x i8], [20 x i8]* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.hackman_state, %struct.hackman_state* %1, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i32 0, i32 0), i8* %126, i32 %128)
  store i32 1, i32* @win, align 4
  br label %133

; <label>:130:                                    ; preds = %121
  br label %131

; <label>:131:                                    ; preds = %130, %97
  br label %132

; <label>:132:                                    ; preds = %131, %64
  br label %6

; <label>:133:                                    ; preds = %124
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [128 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %4

; <label>:4:                                      ; preds = %0, %9
  %5 = load i32, i32* @win, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %4
  call void @record_winner()
  br label %9

; <label>:8:                                      ; preds = %4
  call void @banner()
  br label %9

; <label>:9:                                      ; preds = %8, %7
  call void @play_game()
  br label %4
                                                  ; No predecessors!
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

; Function Attrs: noreturn
declare void @_terminate(i32) #4

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
