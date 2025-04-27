; ModuleID = '/home/ahossain4@cs.utep.edu/neurips_workspace_2025/cgc-cbs/cqe-challenges/CROMU_00004/src/service.c'
source_filename = "/home/ahossain4@cs.utep.edu/neurips_workspace_2025/cgc-cbs/cqe-challenges/CROMU_00004/src/service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.language = type { i8, [7 x i8], %struct.language*, %struct.language* }
%struct.time_bucket = type { i16, i32, i32, i8, i8 }
%struct.pcm_header = type { i32, i32, i32 }

@lh = external global %struct.language, align 8
@.str = private unnamed_addr constant [18 x i8] c"message too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"unknown character\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"invalid symbol\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"Read error\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"Invalid PCM format\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Invalid PCM length\0A\00", align 1
@Bucket = common global [4 x %struct.time_bucket] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [24 x i8] c"Couldn't find a bucket\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"Too much variance in symbol times\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Insufficient symbol diversity\0A\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @ParseCode(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.language*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.language* @lh, %struct.language** %7, align 8
  br label %8

; <label>:8:                                      ; preds = %90, %2
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %9, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %93

; <label>:16:                                     ; preds = %8
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 1023
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16
  call void @puts(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i32 0, i32 0))
  call void @_terminate(i32 6) #4
  unreachable

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %89 [
    i32 124, label %27
    i32 32, label %41
    i32 46, label %70
    i32 45, label %79
    i32 10, label %88
  ]

; <label>:27:                                     ; preds = %20
  %28 = load %struct.language*, %struct.language** %7, align 8
  %29 = icmp ne %struct.language* %28, null
  br i1 %29, label %30, label %39

; <label>:30:                                     ; preds = %27
  %31 = load %struct.language*, %struct.language** %7, align 8
  %32 = getelementptr inbounds %struct.language, %struct.language* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  store i8 %33, i8* %38, align 1
  store %struct.language* @lh, %struct.language** %7, align 8
  br label %40

; <label>:39:                                     ; preds = %27
  call void @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  call void @_terminate(i32 6) #4
  unreachable

; <label>:40:                                     ; preds = %30
  br label %90

; <label>:41:                                     ; preds = %20
  %42 = load %struct.language*, %struct.language** %7, align 8
  %43 = icmp eq %struct.language* %42, @lh
  br i1 %43, label %44, label %50

; <label>:44:                                     ; preds = %41
  %45 = load i8*, i8** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  store i8 32, i8* %49, align 1
  br label %69

; <label>:50:                                     ; preds = %41
  %51 = load %struct.language*, %struct.language** %7, align 8
  %52 = icmp ne %struct.language* %51, null
  br i1 %52, label %53, label %67

; <label>:53:                                     ; preds = %50
  %54 = load %struct.language*, %struct.language** %7, align 8
  %55 = getelementptr inbounds %struct.language, %struct.language* %54, i32 0, i32 0
  %56 = load i8, i8* %55, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  store i8 %56, i8* %61, align 1
  store %struct.language* @lh, %struct.language** %7, align 8
  %62 = load i8*, i8** %4, align 8
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 32, i8* %66, align 1
  br label %68

; <label>:67:                                     ; preds = %50
  call void @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  call void @_terminate(i32 6) #4
  unreachable

; <label>:68:                                     ; preds = %53
  br label %69

; <label>:69:                                     ; preds = %68, %44
  br label %90

; <label>:70:                                     ; preds = %20
  %71 = load %struct.language*, %struct.language** %7, align 8
  %72 = icmp ne %struct.language* %71, null
  br i1 %72, label %73, label %77

; <label>:73:                                     ; preds = %70
  %74 = load %struct.language*, %struct.language** %7, align 8
  %75 = getelementptr inbounds %struct.language, %struct.language* %74, i32 0, i32 2
  %76 = load %struct.language*, %struct.language** %75, align 8
  store %struct.language* %76, %struct.language** %7, align 8
  br label %78

; <label>:77:                                     ; preds = %70
  call void @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  call void @_terminate(i32 6) #4
  unreachable

; <label>:78:                                     ; preds = %73
  br label %90

; <label>:79:                                     ; preds = %20
  %80 = load %struct.language*, %struct.language** %7, align 8
  %81 = icmp ne %struct.language* %80, null
  br i1 %81, label %82, label %86

; <label>:82:                                     ; preds = %79
  %83 = load %struct.language*, %struct.language** %7, align 8
  %84 = getelementptr inbounds %struct.language, %struct.language* %83, i32 0, i32 3
  %85 = load %struct.language*, %struct.language** %84, align 8
  store %struct.language* %85, %struct.language** %7, align 8
  br label %87

; <label>:86:                                     ; preds = %79
  call void @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  call void @_terminate(i32 6) #4
  unreachable

; <label>:87:                                     ; preds = %82
  br label %90

; <label>:88:                                     ; preds = %20
  br label %90

; <label>:89:                                     ; preds = %20
  call void @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  call void @_terminate(i32 6) #4
  unreachable

; <label>:90:                                     ; preds = %88, %87, %78, %69, %40
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  br label %8

; <label>:93:                                     ; preds = %8
  %94 = load %struct.language*, %struct.language** %7, align 8
  %95 = icmp ne %struct.language* %94, null
  br i1 %95, label %96, label %105

; <label>:96:                                     ; preds = %93
  %97 = load %struct.language*, %struct.language** %7, align 8
  %98 = getelementptr inbounds %struct.language, %struct.language* %97, i32 0, i32 0
  %99 = load i8, i8* %98, align 8
  %100 = load i8*, i8** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %100, i64 %103
  store i8 %99, i8* %104, align 1
  store %struct.language* @lh, %struct.language** %7, align 8
  br label %106

; <label>:105:                                    ; preds = %93
  call void @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i32 0, i32 0))
  call void @_terminate(i32 6) #4
  unreachable

; <label>:106:                                    ; preds = %96
  ret void
}

declare void @puts(i8*) #1

; Function Attrs: noreturn
declare void @_terminate(i32) #2

; Function Attrs: noinline nounwind uwtable
define i32 @recv(i32, i8*, i64, i64*) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %10, align 8
  br label %13

; <label>:13:                                     ; preds = %31, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %34

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr i8, i8* %19, i64 %20
  %22 = call i32 @receive(i32 %18, i8* %21, i64 1, i64* %11)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %17
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %37

; <label>:27:                                     ; preds = %17
  %28 = load i64, i64* %11, align 8
  %29 = icmp ne i64 %28, 1
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %37

; <label>:31:                                     ; preds = %27
  %32 = load i64, i64* %10, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %10, align 8
  br label %13

; <label>:34:                                     ; preds = %13
  %35 = load i64, i64* %10, align 8
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  store i32 0, i32* %5, align 4
  br label %37

; <label>:37:                                     ; preds = %34, %30, %25
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare i32 @receive(i32, i8*, i64, i64*) #1

; Function Attrs: noinline nounwind uwtable
define i8* @ReadWav(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcm_header*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @recv(i32 0, i8* %6, i64 12, i64* %3)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  call void @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void @_terminate(i32 1) #4
  unreachable

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.pcm_header*
  store %struct.pcm_header* %12, %struct.pcm_header** %5, align 8
  %13 = load %struct.pcm_header*, %struct.pcm_header** %5, align 8
  %14 = getelementptr inbounds %struct.pcm_header, %struct.pcm_header* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 541934416
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %10
  call void @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  call void @_terminate(i32 4) #4
  unreachable

; <label>:18:                                     ; preds = %10
  %19 = load %struct.pcm_header*, %struct.pcm_header** %5, align 8
  %20 = getelementptr inbounds %struct.pcm_header, %struct.pcm_header* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ugt i32 %21, 524282
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %18
  call void @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  call void @_terminate(i32 2) #4
  unreachable

; <label>:24:                                     ; preds = %18
  %25 = load %struct.pcm_header*, %struct.pcm_header** %5, align 8
  %26 = getelementptr inbounds %struct.pcm_header, %struct.pcm_header* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %24
  call void @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  call void @_terminate(i32 4) #4
  unreachable

; <label>:30:                                     ; preds = %24
  %31 = load %struct.pcm_header*, %struct.pcm_header** %5, align 8
  %32 = getelementptr inbounds %struct.pcm_header, %struct.pcm_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul i32 %33, 8
  %35 = load %struct.pcm_header*, %struct.pcm_header** %5, align 8
  %36 = getelementptr inbounds %struct.pcm_header, %struct.pcm_header* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = udiv i32 %34, %37
  %39 = icmp ne i32 %38, 16
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %30
  call void @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i32 0, i32 0))
  call void @_terminate(i32 2) #4
  unreachable

; <label>:41:                                     ; preds = %30
  store i32 0, i32* %4, align 4
  br label %42

; <label>:42:                                     ; preds = %67, %41
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.pcm_header*, %struct.pcm_header** %5, align 8
  %45 = getelementptr inbounds %struct.pcm_header, %struct.pcm_header* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %73

; <label>:48:                                     ; preds = %42
  %49 = load i8*, i8** %2, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 12
  %51 = load i32, i32* %4, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load %struct.pcm_header*, %struct.pcm_header** %5, align 8
  %55 = getelementptr inbounds %struct.pcm_header, %struct.pcm_header* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %4, align 4
  %58 = sub i32 %56, %57
  %59 = zext i32 %58 to i64
  %60 = call i32 @receive(i32 0, i8* %53, i64 %59, i64* %3)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %48
  call void @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void @_terminate(i32 1) #4
  unreachable

; <label>:63:                                     ; preds = %48
  %64 = load i64, i64* %3, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %63
  call void @puts(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i32 0, i32 0))
  call void @_terminate(i32 1) #4
  unreachable

; <label>:67:                                     ; preds = %63
  %68 = load i64, i64* %3, align 8
  %69 = load i32, i32* %4, align 4
  %70 = zext i32 %69 to i64
  %71 = add i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %4, align 4
  br label %42

; <label>:73:                                     ; preds = %42
  %74 = load i8*, i8** %2, align 8
  ret i8* %74
}

; Function Attrs: noinline nounwind uwtable
define i32 @AssignToBucket(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 1, i32* %4, align 4
  br label %5

; <label>:5:                                      ; preds = %47, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %50

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %10
  %12 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 16
  %14 = icmp ne i16 %13, 0
  br i1 %14, label %15, label %46

; <label>:15:                                     ; preds = %8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %17
  %19 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = uitofp i32 %20 to double
  %22 = load i32, i32* %3, align 4
  %23 = uitofp i32 %22 to double
  %24 = fmul double %23, 9.000000e-01
  %25 = fcmp ogt double %21, %24
  br i1 %25, label %26, label %45

; <label>:26:                                     ; preds = %15
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = uitofp i32 %31 to double
  %33 = load i32, i32* %3, align 4
  %34 = uitofp i32 %33 to double
  %35 = fmul double %34, 1.100000e+00
  %36 = fcmp olt double %32, %35
  br i1 %36, label %37, label %45

; <label>:37:                                     ; preds = %26
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %39
  %41 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = add i32 %42, 1
  store i32 %43, i32* %41, align 8
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %82

; <label>:45:                                     ; preds = %26, %15
  br label %46

; <label>:46:                                     ; preds = %45, %8
  br label %47

; <label>:47:                                     ; preds = %46
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %5

; <label>:50:                                     ; preds = %5
  store i32 1, i32* %4, align 4
  br label %51

; <label>:51:                                     ; preds = %78, %50
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 4
  br i1 %53, label %54, label %81

; <label>:54:                                     ; preds = %51
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %57, i32 0, i32 0
  %59 = load i16, i16* %58, align 16
  %60 = sext i16 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %77

; <label>:62:                                     ; preds = %54
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %64
  %66 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %65, i32 0, i32 0
  store i16 1, i16* %66, align 16
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %69
  %71 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %70, i32 0, i32 1
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %73
  %75 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %82

; <label>:77:                                     ; preds = %54
  br label %78

; <label>:78:                                     ; preds = %77
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %51

; <label>:81:                                     ; preds = %51
  call void @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i32 0, i32 0))
  call void @_terminate(i32 6) #4
  unreachable

; <label>:82:                                     ; preds = %62, %37
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

; Function Attrs: noinline nounwind uwtable
define void @CheckLimits(i32, i32, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %8
  %10 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = uitofp i32 %11 to double
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %14
  %16 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul i32 %17, 3
  %19 = uitofp i32 %18 to double
  %20 = fmul double %19, 9.000000e-01
  %21 = fcmp olt double %12, %20
  br i1 %21, label %38, label %22

; <label>:22:                                     ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %24
  %26 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = uitofp i32 %27 to double
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %30
  %32 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul i32 %33, 3
  %35 = uitofp i32 %34 to double
  %36 = fmul double %35, 1.100000e+00
  %37 = fcmp ogt double %28, %36
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %22, %3
  call void @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  call void @_terminate(i32 6) #4
  unreachable

; <label>:39:                                     ; preds = %22
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %76

; <label>:42:                                     ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %44
  %46 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = uitofp i32 %47 to double
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul i32 %53, 7
  %55 = uitofp i32 %54 to double
  %56 = fmul double %55, 9.000000e-01
  %57 = fcmp olt double %48, %56
  br i1 %57, label %74, label %58

; <label>:58:                                     ; preds = %42
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = uitofp i32 %63 to double
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul i32 %69, 7
  %71 = uitofp i32 %70 to double
  %72 = fmul double %71, 1.100000e+00
  %73 = fcmp ogt double %64, %72
  br i1 %73, label %74, label %75

; <label>:74:                                     ; preds = %58, %42
  call void @puts(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  call void @_terminate(i32 6) #4
  unreachable

; <label>:75:                                     ; preds = %58
  br label %76

; <label>:76:                                     ; preds = %75, %39
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ValidateBuckets() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i16, i16* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 1, i32 0), align 16
  %5 = sext i16 %4 to i32
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %63

; <label>:7:                                      ; preds = %0
  %8 = load i16, i16* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 2, i32 0), align 16
  %9 = sext i16 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %63

; <label>:11:                                     ; preds = %7
  %12 = load i16, i16* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 3, i32 0), align 16
  %13 = sext i16 %12 to i32
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %63

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 1, i32 1), align 4
  %17 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 2, i32 1), align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %30

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 1, i32 1), align 4
  %21 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 3, i32 1), align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %30

; <label>:23:                                     ; preds = %19
  store i32 1, i32* %3, align 4
  %24 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 2, i32 1), align 4
  %25 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 3, i32 1), align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %23
  store i32 2, i32* %2, align 4
  store i32 3, i32* %1, align 4
  br label %29

; <label>:28:                                     ; preds = %23
  store i32 3, i32* %2, align 4
  store i32 2, i32* %1, align 4
  br label %29

; <label>:29:                                     ; preds = %28, %27
  br label %62

; <label>:30:                                     ; preds = %19, %15
  %31 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 2, i32 1), align 4
  %32 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 1, i32 1), align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %45

; <label>:34:                                     ; preds = %30
  %35 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 2, i32 1), align 4
  %36 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 3, i32 1), align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %45

; <label>:38:                                     ; preds = %34
  store i32 2, i32* %3, align 4
  %39 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 1, i32 1), align 4
  %40 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 3, i32 1), align 4
  %41 = icmp ugt i32 %39, %40
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %38
  store i32 1, i32* %2, align 4
  store i32 3, i32* %1, align 4
  br label %44

; <label>:43:                                     ; preds = %38
  store i32 3, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %44

; <label>:44:                                     ; preds = %43, %42
  br label %61

; <label>:45:                                     ; preds = %34, %30
  %46 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 3, i32 1), align 4
  %47 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 1, i32 1), align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %60

; <label>:49:                                     ; preds = %45
  %50 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 3, i32 1), align 4
  %51 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 2, i32 1), align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %60

; <label>:53:                                     ; preds = %49
  store i32 3, i32* %3, align 4
  %54 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 1, i32 1), align 4
  %55 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 2, i32 1), align 4
  %56 = icmp ugt i32 %54, %55
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %53
  store i32 1, i32* %2, align 4
  store i32 2, i32* %1, align 4
  br label %59

; <label>:58:                                     ; preds = %53
  store i32 2, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %59

; <label>:59:                                     ; preds = %58, %57
  br label %60

; <label>:60:                                     ; preds = %59, %49, %45
  br label %61

; <label>:61:                                     ; preds = %60, %44
  br label %62

; <label>:62:                                     ; preds = %61, %29
  br label %80

; <label>:63:                                     ; preds = %11, %7, %0
  %64 = load i16, i16* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 1, i32 0), align 16
  %65 = sext i16 %64 to i32
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

; <label>:67:                                     ; preds = %63
  %68 = load i16, i16* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 2, i32 0), align 16
  %69 = sext i16 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

; <label>:71:                                     ; preds = %67
  store i32 0, i32* %3, align 4
  %72 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 1, i32 1), align 4
  %73 = load i32, i32* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 2, i32 1), align 4
  %74 = icmp ugt i32 %72, %73
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %71
  store i32 1, i32* %2, align 4
  store i32 2, i32* %1, align 4
  br label %77

; <label>:76:                                     ; preds = %71
  store i32 2, i32* %2, align 4
  store i32 1, i32* %1, align 4
  br label %77

; <label>:77:                                     ; preds = %76, %75
  br label %79

; <label>:78:                                     ; preds = %67, %63
  call void @puts(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i32 0, i32 0))
  call void @_terminate(i32 4) #4
  unreachable

; <label>:79:                                     ; preds = %77
  br label %80

; <label>:80:                                     ; preds = %79, %62
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %83, i32 0, i32 3
  store i8 32, i8* %84, align 4
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %86
  %88 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %87, i32 0, i32 4
  store i8 32, i8* %88, align 1
  %89 = load i32, i32* %2, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %91, i32 0, i32 3
  store i8 45, i8* %92, align 4
  %93 = load i32, i32* %2, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %94
  %96 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %95, i32 0, i32 4
  store i8 124, i8* %96, align 1
  %97 = load i32, i32* %1, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %99, i32 0, i32 3
  store i8 46, i8* %100, align 4
  %101 = load i32, i32* %1, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %103, i32 0, i32 4
  store i8 0, i8* %104, align 1
  %105 = load i32, i32* %1, align 4
  %106 = load i32, i32* %2, align 4
  %107 = load i32, i32* %3, align 4
  call void @CheckLimits(i32 %105, i32 %106, i32 %107)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @ParseWav(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcm_header*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [1024 x i8], align 16
  %15 = alloca [1024 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %19, i8 0, i64 1024, i32 16, i1 false)
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %20, i8 0, i64 1024, i32 16, i1 false)
  store i32 0, i32* %12, align 4
  store i16 0, i16* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 1, i32 0), align 16
  store i16 0, i16* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 2, i32 0), align 16
  store i16 0, i16* getelementptr inbounds ([4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 3, i32 0), align 16
  %21 = load i8*, i8** %2, align 8
  %22 = bitcast i8* %21 to %struct.pcm_header*
  store %struct.pcm_header* %22, %struct.pcm_header** %7, align 8
  %23 = load i8*, i8** %2, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 12
  %25 = load %struct.pcm_header*, %struct.pcm_header** %7, align 8
  %26 = getelementptr inbounds %struct.pcm_header, %struct.pcm_header* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  store i8* %29, i8** %4, align 8
  %30 = load i8*, i8** %2, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 12
  store i8* %31, i8** %3, align 8
  store i32 12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %32

; <label>:32:                                     ; preds = %143, %116, %110, %68, %62, %1
  %33 = load i8*, i8** %3, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ult i8* %33, %34
  br i1 %35, label %36, label %39

; <label>:36:                                     ; preds = %32
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 1022
  br label %39

; <label>:39:                                     ; preds = %36, %32
  %40 = phi i1 [ false, %32 ], [ %38, %36 ]
  br i1 %40, label %41, label %146

; <label>:41:                                     ; preds = %39
  %42 = load i8*, i8** %3, align 8
  %43 = bitcast i8* %42 to i16*
  %44 = load i16, i16* %43, align 2
  store i16 %44, i16* %10, align 2
  %45 = load i16, i16* %10, align 2
  %46 = sext i16 %45 to i32
  %47 = icmp sgt i32 %46, -10
  br i1 %47, label %48, label %92

; <label>:48:                                     ; preds = %41
  %49 = load i16, i16* %10, align 2
  %50 = sext i16 %49 to i32
  %51 = icmp slt i32 %50, 10
  br i1 %51, label %52, label %92

; <label>:52:                                     ; preds = %48
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

; <label>:55:                                     ; preds = %52
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %92

; <label>:58:                                     ; preds = %55, %52
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  %61 = icmp slt i32 %60, 50
  br i1 %61, label %62, label %65

; <label>:62:                                     ; preds = %58
  %63 = load i8*, i8** %3, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 2
  store i8* %64, i8** %3, align 8
  br label %32

; <label>:65:                                     ; preds = %58
  %66 = load i32, i32* %18, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %65
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %18, align 4
  %69 = load i8*, i8** %2, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 12
  store i8* %70, i8** %3, align 8
  store i32 12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %32

; <label>:71:                                     ; preds = %65
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %72 = load i8*, i8** %3, align 8
  %73 = load i8*, i8** %2, align 8
  %74 = ptrtoint i8* %72 to i64
  %75 = ptrtoint i8* %73 to i64
  %76 = sub i64 %74, %75
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = sub i32 %78, 100
  %80 = load i32, i32* %5, align 4
  %81 = sub i32 %79, %80
  %82 = udiv i32 %81, 2
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %6, align 4
  %84 = sub i32 %83, 100
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @AssignToBucket(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %12, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %90
  store i8 %87, i8* %91, align 1
  br label %143

; <label>:92:                                     ; preds = %55, %48, %41
  %93 = load i16, i16* %10, align 2
  %94 = sext i16 %93 to i32
  %95 = icmp slt i32 %94, -10
  br i1 %95, label %100, label %96

; <label>:96:                                     ; preds = %92
  %97 = load i16, i16* %10, align 2
  %98 = sext i16 %97 to i32
  %99 = icmp sgt i32 %98, 10
  br i1 %99, label %100, label %141

; <label>:100:                                    ; preds = %96, %92
  %101 = load i32, i32* %8, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

; <label>:103:                                    ; preds = %100
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %141

; <label>:106:                                    ; preds = %103, %100
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  %109 = icmp slt i32 %108, 50
  br i1 %109, label %110, label %113

; <label>:110:                                    ; preds = %106
  %111 = load i8*, i8** %3, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 2
  store i8* %112, i8** %3, align 8
  br label %32

; <label>:113:                                    ; preds = %106
  %114 = load i32, i32* %18, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

; <label>:116:                                    ; preds = %113
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %18, align 4
  %117 = load i8*, i8** %2, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 12
  store i8* %118, i8** %3, align 8
  store i32 12, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %32

; <label>:119:                                    ; preds = %113
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %120 = load i8*, i8** %3, align 8
  %121 = load i8*, i8** %2, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = sub i32 %126, 100
  %128 = load i32, i32* %5, align 4
  %129 = sub i32 %127, %128
  %130 = udiv i32 %129, 2
  store i32 %130, i32* %13, align 4
  %131 = load i32, i32* %6, align 4
  %132 = sub i32 %131, 100
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @AssignToBucket(i32 %133)
  %135 = mul nsw i32 %134, -1
  %136 = trunc i32 %135 to i8
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  %139 = sext i32 %137 to i64
  %140 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %139
  store i8 %136, i8* %140, align 1
  br label %142

; <label>:141:                                    ; preds = %103, %96
  store i32 0, i32* %9, align 4
  br label %142

; <label>:142:                                    ; preds = %141, %119
  br label %143

; <label>:143:                                    ; preds = %142, %71
  %144 = load i8*, i8** %3, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 2
  store i8* %145, i8** %3, align 8
  br label %32

; <label>:146:                                    ; preds = %39
  %147 = load i8*, i8** %3, align 8
  %148 = load i8*, i8** %2, align 8
  %149 = ptrtoint i8* %147 to i64
  %150 = ptrtoint i8* %148 to i64
  %151 = sub i64 %149, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %6, align 4
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %5, align 4
  %155 = sub i32 %153, %154
  %156 = trunc i32 %155 to i16
  %157 = sext i16 %156 to i32
  %158 = sdiv i32 %157, 2
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %169, label %161

; <label>:161:                                    ; preds = %146
  %162 = load i32, i32* %13, align 4
  %163 = call i32 @AssignToBucket(i32 %162)
  %164 = trunc i32 %163 to i8
  %165 = load i32, i32* %12, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %12, align 4
  %167 = sext i32 %165 to i64
  %168 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %167
  store i8 %164, i8* %168, align 1
  br label %169

; <label>:169:                                    ; preds = %161, %146
  call void @ValidateBuckets()
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  br label %170

; <label>:170:                                    ; preds = %238, %169
  %171 = load i32, i32* %16, align 4
  %172 = icmp slt i32 %171, 1023
  br i1 %172, label %173, label %241

; <label>:173:                                    ; preds = %170
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %175
  %177 = load i8, i8* %176, align 1
  %178 = sext i8 %177 to i32
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %181

; <label>:180:                                    ; preds = %173
  br label %238

; <label>:181:                                    ; preds = %173
  %182 = load i32, i32* %16, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %213

; <label>:188:                                    ; preds = %181
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = mul nsw i32 %193, -1
  store i32 %194, i32* %17, align 4
  %195 = load i32, i32* %17, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %197, i32 0, i32 4
  %199 = load i8, i8* %198, align 1
  %200 = sext i8 %199 to i32
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

; <label>:202:                                    ; preds = %188
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %204
  %206 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %205, i32 0, i32 4
  %207 = load i8, i8* %206, align 1
  %208 = load i32, i32* %12, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %12, align 4
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %210
  store i8 %207, i8* %211, align 1
  br label %212

; <label>:212:                                    ; preds = %202, %188
  br label %237

; <label>:213:                                    ; preds = %181
  %214 = load i32, i32* %16, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 %215
  %217 = load i8, i8* %216, align 1
  %218 = sext i8 %217 to i32
  store i32 %218, i32* %17, align 4
  %219 = load i32, i32* %17, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %220
  %222 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %221, i32 0, i32 3
  %223 = load i8, i8* %222, align 4
  %224 = sext i8 %223 to i32
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %236

; <label>:226:                                    ; preds = %213
  %227 = load i32, i32* %17, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [4 x %struct.time_bucket], [4 x %struct.time_bucket]* @Bucket, i64 0, i64 %228
  %230 = getelementptr inbounds %struct.time_bucket, %struct.time_bucket* %229, i32 0, i32 3
  %231 = load i8, i8* %230, align 4
  %232 = load i32, i32* %12, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %12, align 4
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %234
  store i8 %231, i8* %235, align 1
  br label %236

; <label>:236:                                    ; preds = %226, %213
  br label %237

; <label>:237:                                    ; preds = %236, %212
  br label %238

; <label>:238:                                    ; preds = %237, %180
  %239 = load i32, i32* %16, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %16, align 4
  br label %170

; <label>:241:                                    ; preds = %170
  %242 = load i32, i32* %12, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %12, align 4
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 %244
  store i8 10, i8* %245, align 1
  %246 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i32 0, i32 0
  %247 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i32 0, i32 0
  call void @ParseCode(i8* %246, i8* %247)
  %248 = getelementptr inbounds [1024 x i8], [1024 x i8]* %15, i32 0, i32 0
  call void @puts(i8* %248)
  call void @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0))
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1048576 x i8], align 16
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds [1048576 x i8], [1048576 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %3, i8 0, i64 1048576, i32 16, i1 false)
  call void @InitLang(%struct.language* @lh, i8* null)
  %4 = getelementptr inbounds [1048576 x i8], [1048576 x i8]* %2, i32 0, i32 0
  %5 = call i8* @ReadWav(i8* %4)
  %6 = getelementptr inbounds [1048576 x i8], [1048576 x i8]* %2, i32 0, i32 0
  call void @ParseWav(i8* %6)
  ret i32 0
}

declare void @InitLang(%struct.language*, i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
