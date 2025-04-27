; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"Accel:-$ \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Error clearing cell\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Error assigning cell. Valid Cells: A0-ZZ99\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"Error showing data. Try SHOW TABLE or SHOW [A0-ZZ99]\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Bad input\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Success.\0A\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Exiting...\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"Unknown Input\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Unsupported signal. Exiting...\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"SHOW \00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"REPR \00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"CLEAR \00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"EXIT\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"TABLE\00", align 1
@.str.15 = private unnamed_addr constant [15 x i8] c"Cell Repr: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Cell Value: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"=\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [512 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call i32 (...) @init_sheet()
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %32, %0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  %9 = call i32 @readline(i32 0, i8* %8, i64 512)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %6
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %32

; <label>:14:                                     ; preds = %6
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  %16 = call i32 @parse_line(i8* %15)
  switch i32 %16, label %29 [
    i32 -8, label %17
    i32 -4, label %19
    i32 -2, label %21
    i32 -1, label %23
    i32 0, label %25
    i32 1, label %27
  ]

; <label>:17:                                     ; preds = %14
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i32 0, i32 0))
  br label %31

; <label>:19:                                     ; preds = %14
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0))
  br label %31

; <label>:21:                                     ; preds = %14
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i32 0, i32 0))
  br label %31

; <label>:23:                                     ; preds = %14
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0))
  br label %31

; <label>:25:                                     ; preds = %14
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  br label %31

; <label>:27:                                     ; preds = %14
  store i32 1, i32* %3, align 4
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %38

; <label>:29:                                     ; preds = %14
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i32 0, i32 0))
  br label %31

; <label>:31:                                     ; preds = %29, %25, %23, %21, %19, %17
  br label %32

; <label>:32:                                     ; preds = %31, %12
  %33 = load i32, i32* %3, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  br i1 %35, label %6, label %36

; <label>:36:                                     ; preds = %32
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %38

; <label>:38:                                     ; preds = %36, %27
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare i32 @init_sheet(...) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @readline(i32, i8*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

; <label>:10:                                     ; preds = %32, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %35

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @receive(i32 %15, i8* %16, i64 1, i64* %9)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

; <label>:19:                                     ; preds = %14
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19, %14
  call void @exit(i32 0)
  br label %23

; <label>:23:                                     ; preds = %22, %19
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %23
  br label %35

; <label>:29:                                     ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  br label %32

; <label>:32:                                     ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %10

; <label>:35:                                     ; preds = %28, %10
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 10
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %55

; <label>:45:                                     ; preds = %39, %35
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 10
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %45
  store i32 1, i32* %4, align 4
  br label %55

; <label>:51:                                     ; preds = %45
  %52 = load i8*, i8** %6, align 8
  store i8 0, i8* %52, align 1
  br label %53

; <label>:53:                                     ; preds = %51
  br label %54

; <label>:54:                                     ; preds = %53
  store i32 0, i32* %4, align 4
  br label %55

; <label>:55:                                     ; preds = %54, %50, %44
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_line(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [512 x i8], align 16
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @strtrim(i8* %10, i64 512, i32 1)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %177

; <label>:14:                                     ; preds = %1
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %16 = load i8*, i8** %3, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %15, i8* %16, i64 5, i32 1, i1 false)
  store i64 0, i64* %5, align 8
  br label %17

; <label>:17:                                     ; preds = %29, %14
  %18 = load i64, i64* %5, align 8
  %19 = icmp ult i64 %18, 5
  br i1 %19, label %20, label %32

; <label>:20:                                     ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = call i32 @toupper(i32 %24) #5
  %26 = trunc i32 %25 to i8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %27
  store i8 %26, i8* %28, align 1
  br label %29

; <label>:29:                                     ; preds = %20
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %17

; <label>:32:                                     ; preds = %17
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %34 = call i32 @memcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), i64 5)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

; <label>:36:                                     ; preds = %32
  br label %107

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %39 = load i8*, i8** %3, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %38, i8* %39, i64 5, i32 1, i1 false)
  store i64 0, i64* %5, align 8
  br label %40

; <label>:40:                                     ; preds = %52, %37
  %41 = load i64, i64* %5, align 8
  %42 = icmp ult i64 %41, 5
  br i1 %42, label %43, label %55

; <label>:43:                                     ; preds = %40
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = call i32 @toupper(i32 %47) #5
  %49 = trunc i32 %48 to i8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %50
  store i8 %49, i8* %51, align 1
  br label %52

; <label>:52:                                     ; preds = %43
  %53 = load i64, i64* %5, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %5, align 8
  br label %40

; <label>:55:                                     ; preds = %40
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %57 = call i32 @memcmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), i64 5)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

; <label>:59:                                     ; preds = %55
  store i32 1, i32* %4, align 4
  br label %107

; <label>:60:                                     ; preds = %55
  %61 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %62 = load i8*, i8** %3, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %61, i8* %62, i64 6, i32 1, i1 false)
  store i64 0, i64* %5, align 8
  br label %63

; <label>:63:                                     ; preds = %75, %60
  %64 = load i64, i64* %5, align 8
  %65 = icmp ult i64 %64, 6
  br i1 %65, label %66, label %78

; <label>:66:                                     ; preds = %63
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = call i32 @toupper(i32 %70) #5
  %72 = trunc i32 %71 to i8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %73
  store i8 %72, i8* %74, align 1
  br label %75

; <label>:75:                                     ; preds = %66
  %76 = load i64, i64* %5, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %5, align 8
  br label %63

; <label>:78:                                     ; preds = %63
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %80 = call i32 @memcmp(i8* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i64 6)
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %83

; <label>:82:                                     ; preds = %78
  br label %154

; <label>:83:                                     ; preds = %78
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %85 = load i8*, i8** %3, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %84, i8* %85, i64 5, i32 1, i1 false)
  store i64 0, i64* %5, align 8
  br label %86

; <label>:86:                                     ; preds = %98, %83
  %87 = load i64, i64* %5, align 8
  %88 = icmp ult i64 %87, 5
  br i1 %88, label %89, label %101

; <label>:89:                                     ; preds = %86
  %90 = load i64, i64* %5, align 8
  %91 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %90
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = call i32 @toupper(i32 %93) #5
  %95 = trunc i32 %94 to i8
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %96
  store i8 %95, i8* %97, align 1
  br label %98

; <label>:98:                                     ; preds = %89
  %99 = load i64, i64* %5, align 8
  %100 = add i64 %99, 1
  store i64 %100, i64* %5, align 8
  br label %86

; <label>:101:                                    ; preds = %86
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %103 = call i32 @memcmp(i8* %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i64 5)
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %101
  br label %176

; <label>:106:                                    ; preds = %101
  br label %161

; <label>:107:                                    ; preds = %59, %36
  %108 = load i8*, i8** %3, align 8
  %109 = call i32 @strtrim(i8* %108, i64 512, i32 2)
  %110 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 5
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %110, i8* %112, i64 6, i32 1, i1 false)
  store i64 0, i64* %5, align 8
  br label %113

; <label>:113:                                    ; preds = %125, %107
  %114 = load i64, i64* %5, align 8
  %115 = icmp ult i64 %114, 6
  br i1 %115, label %116, label %128

; <label>:116:                                    ; preds = %113
  %117 = load i64, i64* %5, align 8
  %118 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = sext i8 %119 to i32
  %121 = call i32 @toupper(i32 %120) #5
  %122 = trunc i32 %121 to i8
  %123 = load i64, i64* %5, align 8
  %124 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 %123
  store i8 %122, i8* %124, align 1
  br label %125

; <label>:125:                                    ; preds = %116
  %126 = load i64, i64* %5, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %5, align 8
  br label %113

; <label>:128:                                    ; preds = %113
  %129 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %130 = call i32 @memcmp(i8* %129, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i32 0, i32 0), i64 6)
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %133

; <label>:132:                                    ; preds = %128
  call void @print_table()
  store i32 0, i32* %2, align 4
  br label %177

; <label>:133:                                    ; preds = %128
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 5
  %136 = call i32 @valid_cell_id(i8* %135)
  %137 = icmp ne i32 %136, -1
  br i1 %137, label %138, label %153

; <label>:138:                                    ; preds = %133
  %139 = load i8*, i8** %3, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 5
  %141 = load i32, i32* %4, align 4
  %142 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i32 0, i32 0
  %143 = call i8* @show_cell(i8* %140, i32 %141, i8* %142, i64 512)
  store i8* %143, i8** %9, align 8
  %144 = load i32, i32* %4, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

; <label>:146:                                    ; preds = %138
  %147 = load i8*, i8** %9, align 8
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.15, i32 0, i32 0), i8* %147)
  br label %152

; <label>:149:                                    ; preds = %138
  %150 = load i8*, i8** %9, align 8
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0), i8* %150)
  br label %152

; <label>:152:                                    ; preds = %149, %146
  store i32 0, i32* %2, align 4
  br label %177

; <label>:153:                                    ; preds = %133
  store i32 -2, i32* %2, align 4
  br label %177

; <label>:154:                                    ; preds = %82
  %155 = load i8*, i8** %3, align 8
  %156 = getelementptr inbounds i8, i8* %155, i64 6
  %157 = call i32 @clear_cell(i8* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

; <label>:159:                                    ; preds = %154
  store i32 -8, i32* %2, align 4
  br label %177

; <label>:160:                                    ; preds = %154
  store i32 0, i32* %2, align 4
  br label %177

; <label>:161:                                    ; preds = %106
  %162 = call i8* @strsep(i8** %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0))
  store i8* %162, i8** %7, align 8
  %163 = load i8*, i8** %7, align 8
  %164 = icmp eq i8* %163, null
  br i1 %164, label %168, label %165

; <label>:165:                                    ; preds = %161
  %166 = load i8*, i8** %3, align 8
  %167 = icmp eq i8* %166, null
  br i1 %167, label %168, label %169

; <label>:168:                                    ; preds = %165, %161
  store i32 -1, i32* %2, align 4
  br label %177

; <label>:169:                                    ; preds = %165
  %170 = load i8*, i8** %7, align 8
  %171 = load i8*, i8** %3, align 8
  %172 = call i32 @set_cell(i8* %170, i8* %171, i64 512)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

; <label>:174:                                    ; preds = %169
  store i32 -4, i32* %2, align 4
  br label %177

; <label>:175:                                    ; preds = %169
  store i32 0, i32* %2, align 4
  br label %177

; <label>:176:                                    ; preds = %105
  store i32 1, i32* %2, align 4
  br label %177

; <label>:177:                                    ; preds = %176, %175, %174, %168, %160, %159, %153, %152, %132, %13
  %178 = load i32, i32* %2, align 4
  ret i32 %178
}

declare i32 @receive(i32, i8*, i64, i64*) #1

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

; Function Attrs: noreturn
declare void @_terminate(i32) #2

declare i32 @strtrim(i8*, i64, i32) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #3

; Function Attrs: nounwind readonly
declare i32 @toupper(i32) #4

declare i32 @memcmp(i8*, i8*, i64) #1

declare i32 @valid_cell_id(i8*) #1

declare i8* @show_cell(i8*, i32, i8*, i64) #1

declare i32 @clear_cell(i8*) #1

declare i8* @strsep(i8**, i8*) #1

declare i32 @set_cell(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define internal void @print_table() #0 {
  call void (...) @print_assigned_cells()
  ret void
}

declare void @print_assigned_cells(...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
