; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._carstate = type <{ i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, [32 x i8] }>
%struct._locals = type { [256 x i8], %struct._carstate, %struct._carstate* }

@.str = private unnamed_addr constant [11 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"AAAAAAAAAAAAAAAA\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @recvUntil(i32, i8*, i32, i8 signext) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8 %3, i8* %9, align 1
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %7, align 8
  store i8* %14, i8** %13, align 8
  br label %15

; <label>:15:                                     ; preds = %4, %30
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @receive(i32 %16, i8* %10, i64 1, i64* null)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %29

; <label>:20:                                     ; preds = %15
  %21 = load i8, i8* %10, align 1
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* %9, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %28

; <label>:26:                                     ; preds = %20
  call void (...) @validateRet()
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %5, align 4
  br label %39

; <label>:28:                                     ; preds = %20
  br label %30

; <label>:29:                                     ; preds = %15
  call void (...) @validateRet()
  store i32 -1, i32* %5, align 4
  br label %39

; <label>:30:                                     ; preds = %28
  %31 = load i32, i32* %11, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %11, align 4
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @validatePtr(i8* %33)
  %35 = load i8, i8* %10, align 1
  %36 = load i8*, i8** %13, align 8
  store i8 %35, i8* %36, align 1
  %37 = load i8*, i8** %13, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %13, align 8
  br label %15

; <label>:39:                                     ; preds = %29, %26
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare i32 @receive(i32, i8*, i64, i64*) #1

declare void @validateRet(...) #1

declare i32 @validatePtr(i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @bookKeeping(%struct._carstate*) #0 {
  %2 = alloca %struct._carstate*, align 8
  %3 = alloca i32, align 4
  store %struct._carstate* %0, %struct._carstate** %2, align 8
  %4 = load %struct._carstate*, %struct._carstate** %2, align 8
  %5 = bitcast %struct._carstate* %4 to i8*
  %6 = call i32 @validatePtr(i8* %5)
  %7 = load %struct._carstate*, %struct._carstate** %2, align 8
  %8 = getelementptr inbounds %struct._carstate, %struct._carstate* %7, i32 0, i32 2
  %9 = load i16, i16* %8, align 1
  %10 = zext i16 %9 to i32
  %11 = icmp sgt i32 %10, 6000
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %1
  %13 = call i32 @transmit_all(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), i64 10)
  call void @_terminate(i32 0) #4
  unreachable

; <label>:14:                                     ; preds = %1
  %15 = load %struct._carstate*, %struct._carstate** %2, align 8
  %16 = getelementptr inbounds %struct._carstate, %struct._carstate* %15, i32 0, i32 6
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 16
  br i1 %19, label %20, label %100

; <label>:20:                                     ; preds = %14
  %21 = load %struct._carstate*, %struct._carstate** %2, align 8
  %22 = getelementptr inbounds %struct._carstate, %struct._carstate* %21, i32 0, i32 2
  %23 = load i16, i16* %22, align 1
  %24 = zext i16 %23 to i32
  %25 = sdiv i32 %24, 100
  %26 = load %struct._carstate*, %struct._carstate** %2, align 8
  %27 = getelementptr inbounds %struct._carstate, %struct._carstate* %26, i32 0, i32 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = add nsw i32 %25, %29
  %31 = load %struct._carstate*, %struct._carstate** %2, align 8
  %32 = getelementptr inbounds %struct._carstate, %struct._carstate* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 1
  %34 = sdiv i32 %33, 100
  %35 = add nsw i32 %30, %34
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct._carstate*, %struct._carstate** %2, align 8
  %38 = getelementptr inbounds %struct._carstate, %struct._carstate* %37, i32 0, i32 1
  %39 = load i16, i16* %38, align 1
  %40 = zext i16 %39 to i32
  %41 = sub nsw i32 %40, %36
  %42 = trunc i32 %41 to i16
  store i16 %42, i16* %38, align 1
  %43 = load %struct._carstate*, %struct._carstate** %2, align 8
  %44 = getelementptr inbounds %struct._carstate, %struct._carstate* %43, i32 0, i32 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, -16
  br i1 %47, label %48, label %55

; <label>:48:                                     ; preds = %20
  %49 = load %struct._carstate*, %struct._carstate** %2, align 8
  %50 = getelementptr inbounds %struct._carstate, %struct._carstate* %49, i32 0, i32 1
  %51 = load i16, i16* %50, align 1
  %52 = zext i16 %51 to i32
  %53 = sub nsw i32 %52, 5
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %50, align 1
  br label %55

; <label>:55:                                     ; preds = %48, %20
  %56 = load %struct._carstate*, %struct._carstate** %2, align 8
  %57 = getelementptr inbounds %struct._carstate, %struct._carstate* %56, i32 0, i32 9
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, -48
  br i1 %60, label %61, label %68

; <label>:61:                                     ; preds = %55
  %62 = load %struct._carstate*, %struct._carstate** %2, align 8
  %63 = getelementptr inbounds %struct._carstate, %struct._carstate* %62, i32 0, i32 1
  %64 = load i16, i16* %63, align 1
  %65 = zext i16 %64 to i32
  %66 = sub nsw i32 %65, 2
  %67 = trunc i32 %66 to i16
  store i16 %67, i16* %63, align 1
  br label %68

; <label>:68:                                     ; preds = %61, %55
  %69 = load %struct._carstate*, %struct._carstate** %2, align 8
  %70 = getelementptr inbounds %struct._carstate, %struct._carstate* %69, i32 0, i32 3
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, -1
  br i1 %73, label %80, label %74

; <label>:74:                                     ; preds = %68
  %75 = load %struct._carstate*, %struct._carstate** %2, align 8
  %76 = getelementptr inbounds %struct._carstate, %struct._carstate* %75, i32 0, i32 3
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp ne i32 %78, 1
  br i1 %79, label %80, label %99

; <label>:80:                                     ; preds = %74, %68
  %81 = load %struct._carstate*, %struct._carstate** %2, align 8
  %82 = getelementptr inbounds %struct._carstate, %struct._carstate* %81, i32 0, i32 4
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp sgt i32 %84, 20
  br i1 %85, label %86, label %99

; <label>:86:                                     ; preds = %80
  %87 = load %struct._carstate*, %struct._carstate** %2, align 8
  %88 = getelementptr inbounds %struct._carstate, %struct._carstate* %87, i32 0, i32 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = add nsw i32 %90, 1
  %92 = trunc i32 %91 to i8
  store i8 %92, i8* %88, align 1
  %93 = load %struct._carstate*, %struct._carstate** %2, align 8
  %94 = getelementptr inbounds %struct._carstate, %struct._carstate* %93, i32 0, i32 2
  %95 = load i16, i16* %94, align 1
  %96 = zext i16 %95 to i32
  %97 = add nsw i32 %96, 25
  %98 = trunc i32 %97 to i16
  store i16 %98, i16* %94, align 1
  br label %99

; <label>:99:                                     ; preds = %86, %80, %74
  br label %100

; <label>:100:                                    ; preds = %99, %14
  call void (...) @validateRet()
  ret void
}

declare i32 @transmit_all(i32, i8*, i64) #1

; Function Attrs: noreturn
declare void @_terminate(i32) #2

; Function Attrs: noinline nounwind uwtable
define void @raiseAlarm() #0 {
  %1 = alloca i8, align 1
  %2 = call i8* @memcpy(i8* %1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0), i64 16)
  call void (...) @validateRet()
  ret void
}

declare i8* @memcpy(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define void @handleShift(%struct._carstate*, i8 signext) #0 {
  %3 = alloca %struct._carstate*, align 8
  %4 = alloca i8, align 1
  store %struct._carstate* %0, %struct._carstate** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load %struct._carstate*, %struct._carstate** %3, align 8
  %6 = bitcast %struct._carstate* %5 to i8*
  %7 = call i32 @validatePtr(i8* %6)
  %8 = load i8, i8* %4, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 114
  br i1 %10, label %11, label %75

; <label>:11:                                     ; preds = %2
  %12 = load %struct._carstate*, %struct._carstate** %3, align 8
  %13 = getelementptr inbounds %struct._carstate, %struct._carstate* %12, i32 0, i32 6
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp slt i32 %15, 96
  br i1 %16, label %17, label %74

; <label>:17:                                     ; preds = %11
  %18 = load %struct._carstate*, %struct._carstate** %3, align 8
  %19 = getelementptr inbounds %struct._carstate, %struct._carstate* %18, i32 0, i32 2
  %20 = load i16, i16* %19, align 1
  %21 = zext i16 %20 to i32
  %22 = icmp sgt i32 %21, 500
  br i1 %22, label %23, label %74

; <label>:23:                                     ; preds = %17
  %24 = load %struct._carstate*, %struct._carstate** %3, align 8
  %25 = getelementptr inbounds %struct._carstate, %struct._carstate* %24, i32 0, i32 6
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp sgt i32 %27, 16
  br i1 %28, label %29, label %50

; <label>:29:                                     ; preds = %23
  %30 = load %struct._carstate*, %struct._carstate** %3, align 8
  %31 = getelementptr inbounds %struct._carstate, %struct._carstate* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = load %struct._carstate*, %struct._carstate** %3, align 8
  %35 = getelementptr inbounds %struct._carstate, %struct._carstate* %34, i32 0, i32 6
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = sdiv i32 %37, 16
  %39 = mul nsw i32 %38, 10
  %40 = icmp sgt i32 %33, %39
  br i1 %40, label %41, label %48

; <label>:41:                                     ; preds = %29
  %42 = load %struct._carstate*, %struct._carstate** %3, align 8
  %43 = getelementptr inbounds %struct._carstate, %struct._carstate* %42, i32 0, i32 6
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, 16
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %43, align 1
  br label %49

; <label>:48:                                     ; preds = %29
  call void (...) @validateRet()
  br label %96

; <label>:49:                                     ; preds = %41
  br label %57

; <label>:50:                                     ; preds = %23
  %51 = load %struct._carstate*, %struct._carstate** %3, align 8
  %52 = getelementptr inbounds %struct._carstate, %struct._carstate* %51, i32 0, i32 6
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = add nsw i32 %54, 16
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 1
  br label %57

; <label>:57:                                     ; preds = %50, %49
  %58 = load %struct._carstate*, %struct._carstate** %3, align 8
  %59 = getelementptr inbounds %struct._carstate, %struct._carstate* %58, i32 0, i32 2
  %60 = load i16, i16* %59, align 1
  %61 = zext i16 %60 to i32
  %62 = icmp slt i32 %61, 750
  br i1 %62, label %63, label %66

; <label>:63:                                     ; preds = %57
  %64 = load %struct._carstate*, %struct._carstate** %3, align 8
  %65 = getelementptr inbounds %struct._carstate, %struct._carstate* %64, i32 0, i32 2
  store i16 0, i16* %65, align 1
  br label %73

; <label>:66:                                     ; preds = %57
  %67 = load %struct._carstate*, %struct._carstate** %3, align 8
  %68 = getelementptr inbounds %struct._carstate, %struct._carstate* %67, i32 0, i32 2
  %69 = load i16, i16* %68, align 1
  %70 = zext i16 %69 to i32
  %71 = sub nsw i32 %70, 750
  %72 = trunc i32 %71 to i16
  store i16 %72, i16* %68, align 1
  br label %73

; <label>:73:                                     ; preds = %66, %63
  br label %74

; <label>:74:                                     ; preds = %73, %17, %11
  br label %95

; <label>:75:                                     ; preds = %2
  %76 = load %struct._carstate*, %struct._carstate** %3, align 8
  %77 = getelementptr inbounds %struct._carstate, %struct._carstate* %76, i32 0, i32 6
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp sgt i32 %79, 16
  br i1 %80, label %81, label %94

; <label>:81:                                     ; preds = %75
  %82 = load %struct._carstate*, %struct._carstate** %3, align 8
  %83 = getelementptr inbounds %struct._carstate, %struct._carstate* %82, i32 0, i32 6
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = sub nsw i32 %85, 16
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %83, align 1
  %88 = load %struct._carstate*, %struct._carstate** %3, align 8
  %89 = getelementptr inbounds %struct._carstate, %struct._carstate* %88, i32 0, i32 2
  %90 = load i16, i16* %89, align 1
  %91 = zext i16 %90 to i32
  %92 = add nsw i32 %91, 750
  %93 = trunc i32 %92 to i16
  store i16 %93, i16* %89, align 1
  br label %94

; <label>:94:                                     ; preds = %81, %75
  br label %95

; <label>:95:                                     ; preds = %94, %74
  call void (...) @validateRet()
  br label %96

; <label>:96:                                     ; preds = %95, %48
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @updateBTMetadata(%struct._carstate*, i8*) #0 {
  %3 = alloca %struct._carstate*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  store %struct._carstate* %0, %struct._carstate** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct._carstate*, %struct._carstate** %3, align 8
  %8 = bitcast %struct._carstate* %7 to i8*
  %9 = call i32 @validatePtr(i8* %8)
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @validatePtr(i8* %10)
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = load i8, i8* %14, align 1
  store i8 %15, i8* %6, align 1
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %5, align 8
  %18 = load %struct._carstate*, %struct._carstate** %3, align 8
  %19 = getelementptr inbounds %struct._carstate, %struct._carstate* %18, i32 0, i32 13
  %20 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i32 0, i32 0
  %21 = load i8*, i8** %5, align 8
  %22 = load i8, i8* %6, align 1
  %23 = sext i8 %22 to i64
  %24 = call i8* @memcpy(i8* %20, i8* %21, i64 %23)
  call void (...) @validateRet()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @handleTrunk(%struct._carstate*, i8*) #0 {
  %3 = alloca %struct._carstate*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct._carstate* %0, %struct._carstate** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct._carstate*, %struct._carstate** %3, align 8
  %7 = bitcast %struct._carstate* %6 to i8*
  %8 = call i32 @validatePtr(i8* %7)
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @validatePtr(i8* %9)
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, -112
  br i1 %15, label %16, label %25

; <label>:16:                                     ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 1
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = load %struct._carstate*, %struct._carstate** %3, align 8
  %22 = getelementptr inbounds %struct._carstate, %struct._carstate* %21, i32 0, i32 12
  %23 = load i32, i32* %22, align 1
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 1
  br label %47

; <label>:25:                                     ; preds = %2
  %26 = load %struct._carstate*, %struct._carstate** %3, align 8
  %27 = getelementptr inbounds %struct._carstate, %struct._carstate* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp slt i32 %28, %32
  br i1 %33, label %34, label %37

; <label>:34:                                     ; preds = %25
  %35 = load %struct._carstate*, %struct._carstate** %3, align 8
  %36 = getelementptr inbounds %struct._carstate, %struct._carstate* %35, i32 0, i32 12
  store i32 0, i32* %36, align 1
  br label %46

; <label>:37:                                     ; preds = %25
  %38 = load i8*, i8** %4, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = load %struct._carstate*, %struct._carstate** %3, align 8
  %43 = getelementptr inbounds %struct._carstate, %struct._carstate* %42, i32 0, i32 12
  %44 = load i32, i32* %43, align 1
  %45 = sub nsw i32 %44, %41
  store i32 %45, i32* %43, align 1
  br label %46

; <label>:46:                                     ; preds = %37, %34
  br label %47

; <label>:47:                                     ; preds = %46, %16
  call void (...) @validateRet()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @initCar(%struct._carstate*) #0 {
  %2 = alloca %struct._carstate*, align 8
  store %struct._carstate* %0, %struct._carstate** %2, align 8
  %3 = load %struct._carstate*, %struct._carstate** %2, align 8
  %4 = bitcast %struct._carstate* %3 to i8*
  %5 = call i32 @validatePtr(i8* %4)
  %6 = load %struct._carstate*, %struct._carstate** %2, align 8
  %7 = getelementptr inbounds %struct._carstate, %struct._carstate* %6, i32 0, i32 6
  store i8 16, i8* %7, align 1
  %8 = load %struct._carstate*, %struct._carstate** %2, align 8
  %9 = getelementptr inbounds %struct._carstate, %struct._carstate* %8, i32 0, i32 5
  store i8 16, i8* %9, align 1
  %10 = load %struct._carstate*, %struct._carstate** %2, align 8
  %11 = getelementptr inbounds %struct._carstate, %struct._carstate* %10, i32 0, i32 10
  store i8 -96, i8* %11, align 1
  %12 = load %struct._carstate*, %struct._carstate** %2, align 8
  %13 = getelementptr inbounds %struct._carstate, %struct._carstate* %12, i32 0, i32 9
  store i8 -64, i8* %13, align 1
  %14 = load %struct._carstate*, %struct._carstate** %2, align 8
  %15 = getelementptr inbounds %struct._carstate, %struct._carstate* %14, i32 0, i32 8
  store i8 -32, i8* %15, align 1
  %16 = load %struct._carstate*, %struct._carstate** %2, align 8
  %17 = getelementptr inbounds %struct._carstate, %struct._carstate* %16, i32 0, i32 11
  store i8 -7, i8* %17, align 1
  %18 = load %struct._carstate*, %struct._carstate** %2, align 8
  %19 = getelementptr inbounds %struct._carstate, %struct._carstate* %18, i32 0, i32 7
  store i8 117, i8* %19, align 1
  %20 = load %struct._carstate*, %struct._carstate** %2, align 8
  %21 = getelementptr inbounds %struct._carstate, %struct._carstate* %20, i32 0, i32 1
  store i16 -1, i16* %21, align 1
  call void (...) @validateRet()
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  call void @serviceLoop()
  call void (...) @validateRet()
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define void @serviceLoop() #0 {
  %1 = alloca %struct._locals, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  store %struct._carstate* %7, %struct._carstate** %8, align 8
  %9 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %10 = load %struct._carstate*, %struct._carstate** %9, align 8
  %11 = bitcast %struct._carstate* %10 to i8*
  %12 = call i32 @validatePtr(i8* %11)
  %13 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %14 = load %struct._carstate*, %struct._carstate** %13, align 8
  %15 = bitcast %struct._carstate* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 50, i32 1, i1 false)
  %16 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %17 = load %struct._carstate*, %struct._carstate** %16, align 8
  %18 = bitcast %struct._carstate* %17 to i8*
  %19 = call i32 @validatePtr(i8* %18)
  %20 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %21 = load %struct._carstate*, %struct._carstate** %20, align 8
  call void @initCar(%struct._carstate* %21)
  br label %22

; <label>:22:                                     ; preds = %0, %528
  %23 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 0
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %23, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %24, i8 0, i64 256, i32 8, i1 false)
  %25 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 0
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %25, i32 0, i32 0
  %27 = call i32 @recvUntil(i32 0, i8* %26, i32 255, i8 signext 10)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp sle i32 %28, 0
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %22
  call void @_terminate(i32 0) #4
  unreachable

; <label>:31:                                     ; preds = %22
  %32 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 0
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %32, i32 0, i32 0
  store i8* %33, i8** %2, align 8
  %34 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %35 = load %struct._carstate*, %struct._carstate** %34, align 8
  call void @bookKeeping(%struct._carstate* %35)
  %36 = load i8*, i8** %2, align 8
  %37 = call i32 @validatePtr(i8* %36)
  br label %38

; <label>:38:                                     ; preds = %525, %31
  %39 = load i8*, i8** %2, align 8
  %40 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 0
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %40, i32 0, i32 0
  %42 = getelementptr inbounds i8, i8* %41, i64 256
  %43 = icmp ult i8* %39, %42
  br i1 %43, label %44, label %528

; <label>:44:                                     ; preds = %38
  %45 = load i8*, i8** %2, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  switch i32 %47, label %196 [
    i32 -35, label %48
    i32 16, label %57
    i32 32, label %77
    i32 48, label %100
    i32 -80, label %130
    i32 -96, label %143
    i32 -8, label %161
    i32 -7, label %161
    i32 -112, label %171
    i32 -128, label %171
  ]

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %50 = load %struct._carstate*, %struct._carstate** %49, align 8
  %51 = bitcast %struct._carstate* %50 to i8*
  %52 = call i32 @validatePtr(i8* %51)
  %53 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %54 = load %struct._carstate*, %struct._carstate** %53, align 8
  %55 = bitcast %struct._carstate* %54 to i8*
  %56 = call i32 @transmit_all(i32 1, i8* %55, i64 50)
  call void @_terminate(i32 0) #4
  unreachable

; <label>:57:                                     ; preds = %44
  %58 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %59 = load %struct._carstate*, %struct._carstate** %58, align 8
  %60 = bitcast %struct._carstate* %59 to i8*
  %61 = call i32 @validatePtr(i8* %60)
  %62 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %63 = load %struct._carstate*, %struct._carstate** %62, align 8
  %64 = getelementptr inbounds %struct._carstate, %struct._carstate* %63, i32 0, i32 6
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %68, label %72

; <label>:68:                                     ; preds = %57
  %69 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %70 = load %struct._carstate*, %struct._carstate** %69, align 8
  %71 = getelementptr inbounds %struct._carstate, %struct._carstate* %70, i32 0, i32 5
  store i8 16, i8* %71, align 1
  br label %76

; <label>:72:                                     ; preds = %57
  %73 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %74 = load %struct._carstate*, %struct._carstate** %73, align 8
  %75 = getelementptr inbounds %struct._carstate, %struct._carstate* %74, i32 0, i32 2
  store i16 9999, i16* %75, align 1
  br label %76

; <label>:76:                                     ; preds = %72, %68
  br label %524

; <label>:77:                                     ; preds = %44
  %78 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %79 = load %struct._carstate*, %struct._carstate** %78, align 8
  %80 = bitcast %struct._carstate* %79 to i8*
  %81 = call i32 @validatePtr(i8* %80)
  %82 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %83 = load %struct._carstate*, %struct._carstate** %82, align 8
  %84 = getelementptr inbounds %struct._carstate, %struct._carstate* %83, i32 0, i32 5
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = icmp eq i32 %86, 16
  br i1 %87, label %95, label %88

; <label>:88:                                     ; preds = %77
  %89 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %90 = load %struct._carstate*, %struct._carstate** %89, align 8
  %91 = getelementptr inbounds %struct._carstate, %struct._carstate* %90, i32 0, i32 5
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp eq i32 %93, 48
  br i1 %94, label %95, label %99

; <label>:95:                                     ; preds = %88, %77
  %96 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %97 = load %struct._carstate*, %struct._carstate** %96, align 8
  %98 = getelementptr inbounds %struct._carstate, %struct._carstate* %97, i32 0, i32 5
  store i8 32, i8* %98, align 1
  br label %99

; <label>:99:                                     ; preds = %95, %88
  br label %524

; <label>:100:                                    ; preds = %44
  %101 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %102 = load %struct._carstate*, %struct._carstate** %101, align 8
  %103 = bitcast %struct._carstate* %102 to i8*
  %104 = call i32 @validatePtr(i8* %103)
  %105 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %106 = load %struct._carstate*, %struct._carstate** %105, align 8
  %107 = getelementptr inbounds %struct._carstate, %struct._carstate* %106, i32 0, i32 5
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 16
  br i1 %110, label %125, label %111

; <label>:111:                                    ; preds = %100
  %112 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %113 = load %struct._carstate*, %struct._carstate** %112, align 8
  %114 = getelementptr inbounds %struct._carstate, %struct._carstate* %113, i32 0, i32 5
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  %117 = icmp eq i32 %116, 32
  br i1 %117, label %118, label %129

; <label>:118:                                    ; preds = %111
  %119 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %120 = load %struct._carstate*, %struct._carstate** %119, align 8
  %121 = getelementptr inbounds %struct._carstate, %struct._carstate* %120, i32 0, i32 6
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 16
  br i1 %124, label %125, label %129

; <label>:125:                                    ; preds = %118, %100
  %126 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %127 = load %struct._carstate*, %struct._carstate** %126, align 8
  %128 = getelementptr inbounds %struct._carstate, %struct._carstate* %127, i32 0, i32 5
  store i8 48, i8* %128, align 1
  br label %129

; <label>:129:                                    ; preds = %125, %118, %111
  br label %524

; <label>:130:                                    ; preds = %44
  %131 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %132 = load %struct._carstate*, %struct._carstate** %131, align 8
  %133 = bitcast %struct._carstate* %132 to i8*
  %134 = call i32 @validatePtr(i8* %133)
  %135 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %136 = load %struct._carstate*, %struct._carstate** %135, align 8
  %137 = getelementptr inbounds %struct._carstate, %struct._carstate* %136, i32 0, i32 11
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = icmp eq i32 %139, -8
  br i1 %140, label %141, label %142

; <label>:141:                                    ; preds = %130
  call void @raiseAlarm()
  br label %142

; <label>:142:                                    ; preds = %141, %130
  br label %143

; <label>:143:                                    ; preds = %44, %142
  %144 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %145 = load %struct._carstate*, %struct._carstate** %144, align 8
  %146 = bitcast %struct._carstate* %145 to i8*
  %147 = call i32 @validatePtr(i8* %146)
  %148 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %149 = load %struct._carstate*, %struct._carstate** %148, align 8
  %150 = getelementptr inbounds %struct._carstate, %struct._carstate* %149, i32 0, i32 6
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp eq i32 %152, 16
  br i1 %153, label %154, label %160

; <label>:154:                                    ; preds = %143
  %155 = load i8*, i8** %2, align 8
  %156 = load i8, i8* %155, align 1
  %157 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %158 = load %struct._carstate*, %struct._carstate** %157, align 8
  %159 = getelementptr inbounds %struct._carstate, %struct._carstate* %158, i32 0, i32 10
  store i8 %156, i8* %159, align 1
  br label %160

; <label>:160:                                    ; preds = %154, %143
  br label %524

; <label>:161:                                    ; preds = %44, %44
  %162 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %163 = load %struct._carstate*, %struct._carstate** %162, align 8
  %164 = bitcast %struct._carstate* %163 to i8*
  %165 = call i32 @validatePtr(i8* %164)
  %166 = load i8*, i8** %2, align 8
  %167 = load i8, i8* %166, align 1
  %168 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %169 = load %struct._carstate*, %struct._carstate** %168, align 8
  %170 = getelementptr inbounds %struct._carstate, %struct._carstate* %169, i32 0, i32 11
  store i8 %167, i8* %170, align 1
  br label %524

; <label>:171:                                    ; preds = %44, %44
  %172 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %173 = load %struct._carstate*, %struct._carstate** %172, align 8
  %174 = bitcast %struct._carstate* %173 to i8*
  %175 = call i32 @validatePtr(i8* %174)
  %176 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %177 = load %struct._carstate*, %struct._carstate** %176, align 8
  %178 = getelementptr inbounds %struct._carstate, %struct._carstate* %177, i32 0, i32 6
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 16
  br i1 %181, label %182, label %193

; <label>:182:                                    ; preds = %171
  %183 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %184 = load %struct._carstate*, %struct._carstate** %183, align 8
  %185 = getelementptr inbounds %struct._carstate, %struct._carstate* %184, i32 0, i32 10
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %187, -80
  br i1 %188, label %189, label %193

; <label>:189:                                    ; preds = %182
  %190 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %191 = load %struct._carstate*, %struct._carstate** %190, align 8
  %192 = load i8*, i8** %2, align 8
  call void @handleTrunk(%struct._carstate* %191, i8* %192)
  br label %193

; <label>:193:                                    ; preds = %189, %182, %171
  %194 = load i8*, i8** %2, align 8
  %195 = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %195, i8** %2, align 8
  br label %524

; <label>:196:                                    ; preds = %44
  %197 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %198 = load %struct._carstate*, %struct._carstate** %197, align 8
  %199 = bitcast %struct._carstate* %198 to i8*
  %200 = call i32 @validatePtr(i8* %199)
  br label %201

; <label>:201:                                    ; preds = %520, %196
  %202 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %203 = load %struct._carstate*, %struct._carstate** %202, align 8
  %204 = bitcast %struct._carstate* %203 to i8*
  %205 = call i32 @validatePtr(i8* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %220

; <label>:207:                                    ; preds = %201
  %208 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %209 = load %struct._carstate*, %struct._carstate** %208, align 8
  %210 = getelementptr inbounds %struct._carstate, %struct._carstate* %209, i32 0, i32 5
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp ne i32 %212, 16
  br i1 %213, label %214, label %220

; <label>:214:                                    ; preds = %207
  %215 = load i8*, i8** %2, align 8
  %216 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 0
  %217 = getelementptr inbounds [256 x i8], [256 x i8]* %216, i32 0, i32 0
  %218 = getelementptr inbounds i8, i8* %217, i64 256
  %219 = icmp ult i8* %215, %218
  br label %220

; <label>:220:                                    ; preds = %214, %207, %201
  %221 = phi i1 [ false, %207 ], [ false, %201 ], [ %219, %214 ]
  br i1 %221, label %222, label %523

; <label>:222:                                    ; preds = %220
  %223 = load i8*, i8** %2, align 8
  %224 = call i32 @validatePtr(i8* %223)
  %225 = load i8*, i8** %2, align 8
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  switch i32 %227, label %520 [
    i32 -16, label %228
    i32 -32, label %244
    i32 -48, label %260
    i32 -64, label %276
    i32 -1, label %292
    i32 5, label %296
    i32 1, label %296
    i32 2, label %296
    i32 3, label %296
    i32 4, label %316
    i32 -127, label %346
    i32 -111, label %346
    i32 16, label %412
    i32 112, label %428
    i32 113, label %461
    i32 114, label %478
    i32 115, label %493
    i32 116, label %508
    i32 117, label %508
  ]

; <label>:228:                                    ; preds = %222
  %229 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %230 = load %struct._carstate*, %struct._carstate** %229, align 8
  %231 = bitcast %struct._carstate* %230 to i8*
  %232 = call i32 @validatePtr(i8* %231)
  %233 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %234 = load %struct._carstate*, %struct._carstate** %233, align 8
  %235 = getelementptr inbounds %struct._carstate, %struct._carstate* %234, i32 0, i32 8
  %236 = load i8, i8* %235, align 1
  %237 = sext i8 %236 to i32
  %238 = icmp ne i32 %237, -16
  br i1 %238, label %239, label %243

; <label>:239:                                    ; preds = %228
  %240 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %241 = load %struct._carstate*, %struct._carstate** %240, align 8
  %242 = getelementptr inbounds %struct._carstate, %struct._carstate* %241, i32 0, i32 8
  store i8 -16, i8* %242, align 1
  br label %243

; <label>:243:                                    ; preds = %239, %228
  br label %520

; <label>:244:                                    ; preds = %222
  %245 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %246 = load %struct._carstate*, %struct._carstate** %245, align 8
  %247 = bitcast %struct._carstate* %246 to i8*
  %248 = call i32 @validatePtr(i8* %247)
  %249 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %250 = load %struct._carstate*, %struct._carstate** %249, align 8
  %251 = getelementptr inbounds %struct._carstate, %struct._carstate* %250, i32 0, i32 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %253, -32
  br i1 %254, label %255, label %259

; <label>:255:                                    ; preds = %244
  %256 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %257 = load %struct._carstate*, %struct._carstate** %256, align 8
  %258 = getelementptr inbounds %struct._carstate, %struct._carstate* %257, i32 0, i32 8
  store i8 -32, i8* %258, align 1
  br label %259

; <label>:259:                                    ; preds = %255, %244
  br label %520

; <label>:260:                                    ; preds = %222
  %261 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %262 = load %struct._carstate*, %struct._carstate** %261, align 8
  %263 = bitcast %struct._carstate* %262 to i8*
  %264 = call i32 @validatePtr(i8* %263)
  %265 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %266 = load %struct._carstate*, %struct._carstate** %265, align 8
  %267 = getelementptr inbounds %struct._carstate, %struct._carstate* %266, i32 0, i32 9
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp ne i32 %269, -48
  br i1 %270, label %271, label %275

; <label>:271:                                    ; preds = %260
  %272 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %273 = load %struct._carstate*, %struct._carstate** %272, align 8
  %274 = getelementptr inbounds %struct._carstate, %struct._carstate* %273, i32 0, i32 9
  store i8 -48, i8* %274, align 1
  br label %275

; <label>:275:                                    ; preds = %271, %260
  br label %520

; <label>:276:                                    ; preds = %222
  %277 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %278 = load %struct._carstate*, %struct._carstate** %277, align 8
  %279 = bitcast %struct._carstate* %278 to i8*
  %280 = call i32 @validatePtr(i8* %279)
  %281 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %282 = load %struct._carstate*, %struct._carstate** %281, align 8
  %283 = getelementptr inbounds %struct._carstate, %struct._carstate* %282, i32 0, i32 9
  %284 = load i8, i8* %283, align 1
  %285 = sext i8 %284 to i32
  %286 = icmp ne i32 %285, -64
  br i1 %286, label %287, label %291

; <label>:287:                                    ; preds = %276
  %288 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %289 = load %struct._carstate*, %struct._carstate** %288, align 8
  %290 = getelementptr inbounds %struct._carstate, %struct._carstate* %289, i32 0, i32 9
  store i8 -64, i8* %290, align 1
  br label %291

; <label>:291:                                    ; preds = %287, %276
  br label %520

; <label>:292:                                    ; preds = %222
  %293 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %294 = load %struct._carstate*, %struct._carstate** %293, align 8
  %295 = getelementptr inbounds %struct._carstate, %struct._carstate* %294, i32 0, i32 4
  store i8 0, i8* %295, align 1
  br label %296

; <label>:296:                                    ; preds = %222, %222, %222, %222, %292
  %297 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %298 = load %struct._carstate*, %struct._carstate** %297, align 8
  %299 = bitcast %struct._carstate* %298 to i8*
  %300 = call i32 @validatePtr(i8* %299)
  %301 = load i8*, i8** %2, align 8
  %302 = call i32 @validatePtr(i8* %301)
  %303 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %304 = load %struct._carstate*, %struct._carstate** %303, align 8
  %305 = getelementptr inbounds %struct._carstate, %struct._carstate* %304, i32 0, i32 6
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  %308 = icmp sgt i32 %307, 64
  br i1 %308, label %309, label %315

; <label>:309:                                    ; preds = %296
  %310 = load i8*, i8** %2, align 8
  %311 = load i8, i8* %310, align 1
  %312 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %313 = load %struct._carstate*, %struct._carstate** %312, align 8
  %314 = getelementptr inbounds %struct._carstate, %struct._carstate* %313, i32 0, i32 3
  store i8 %311, i8* %314, align 1
  br label %315

; <label>:315:                                    ; preds = %309, %296
  br label %520

; <label>:316:                                    ; preds = %222
  %317 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %318 = load %struct._carstate*, %struct._carstate** %317, align 8
  %319 = bitcast %struct._carstate* %318 to i8*
  %320 = call i32 @validatePtr(i8* %319)
  %321 = load i8*, i8** %2, align 8
  %322 = call i32 @validatePtr(i8* %321)
  %323 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %324 = load %struct._carstate*, %struct._carstate** %323, align 8
  %325 = getelementptr inbounds %struct._carstate, %struct._carstate* %324, i32 0, i32 6
  %326 = load i8, i8* %325, align 1
  %327 = zext i8 %326 to i32
  %328 = icmp sgt i32 %327, 48
  br i1 %328, label %329, label %336

; <label>:329:                                    ; preds = %316
  %330 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %331 = load %struct._carstate*, %struct._carstate** %330, align 8
  %332 = getelementptr inbounds %struct._carstate, %struct._carstate* %331, i32 0, i32 3
  store i8 4, i8* %332, align 1
  %333 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %334 = load %struct._carstate*, %struct._carstate** %333, align 8
  %335 = load i8*, i8** %2, align 8
  call void @updateBTMetadata(%struct._carstate* %334, i8* %335)
  br label %336

; <label>:336:                                    ; preds = %329, %316
  %337 = load i8*, i8** %2, align 8
  %338 = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %338, i8** %2, align 8
  %339 = load i8*, i8** %2, align 8
  %340 = load i8, i8* %339, align 1
  store i8 %340, i8* %4, align 1
  %341 = load i8, i8* %4, align 1
  %342 = sext i8 %341 to i32
  %343 = load i8*, i8** %2, align 8
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i8, i8* %343, i64 %344
  store i8* %345, i8** %2, align 8
  br label %520

; <label>:346:                                    ; preds = %222, %222
  %347 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %348 = load %struct._carstate*, %struct._carstate** %347, align 8
  %349 = bitcast %struct._carstate* %348 to i8*
  %350 = call i32 @validatePtr(i8* %349)
  %351 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %352 = load %struct._carstate*, %struct._carstate** %351, align 8
  %353 = getelementptr inbounds %struct._carstate, %struct._carstate* %352, i32 0, i32 3
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp ne i32 %355, -1
  br i1 %356, label %357, label %409

; <label>:357:                                    ; preds = %346
  store i32 1, i32* %5, align 4
  %358 = load i8*, i8** %2, align 8
  %359 = call i32 @validatePtr(i8* %358)
  %360 = load i8*, i8** %2, align 8
  %361 = load i8, i8* %360, align 1
  %362 = sext i8 %361 to i32
  %363 = icmp eq i32 %362, -111
  br i1 %363, label %364, label %365

; <label>:364:                                    ; preds = %357
  store i32 -1, i32* %5, align 4
  br label %365

; <label>:365:                                    ; preds = %364, %357
  %366 = load i8*, i8** %2, align 8
  %367 = getelementptr inbounds i8, i8* %366, i64 1
  %368 = load i8, i8* %367, align 1
  %369 = sext i8 %368 to i16
  store i16 %369, i16* %6, align 2
  %370 = load i8*, i8** %2, align 8
  %371 = getelementptr inbounds i8, i8* %370, i64 2
  store i8* %371, i8** %2, align 8
  %372 = load i32, i32* %5, align 4
  %373 = icmp eq i32 %372, -1
  br i1 %373, label %374, label %398

; <label>:374:                                    ; preds = %365
  %375 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %376 = load %struct._carstate*, %struct._carstate** %375, align 8
  %377 = getelementptr inbounds %struct._carstate, %struct._carstate* %376, i32 0, i32 4
  %378 = load i8, i8* %377, align 1
  %379 = zext i8 %378 to i32
  %380 = load i16, i16* %6, align 2
  %381 = sext i16 %380 to i32
  %382 = icmp slt i32 %379, %381
  br i1 %382, label %383, label %387

; <label>:383:                                    ; preds = %374
  %384 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %385 = load %struct._carstate*, %struct._carstate** %384, align 8
  %386 = getelementptr inbounds %struct._carstate, %struct._carstate* %385, i32 0, i32 4
  store i8 0, i8* %386, align 1
  br label %397

; <label>:387:                                    ; preds = %374
  %388 = load i16, i16* %6, align 2
  %389 = sext i16 %388 to i32
  %390 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %391 = load %struct._carstate*, %struct._carstate** %390, align 8
  %392 = getelementptr inbounds %struct._carstate, %struct._carstate* %391, i32 0, i32 4
  %393 = load i8, i8* %392, align 1
  %394 = zext i8 %393 to i32
  %395 = sub nsw i32 %394, %389
  %396 = trunc i32 %395 to i8
  store i8 %396, i8* %392, align 1
  br label %397

; <label>:397:                                    ; preds = %387, %383
  br label %408

; <label>:398:                                    ; preds = %365
  %399 = load i16, i16* %6, align 2
  %400 = sext i16 %399 to i32
  %401 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %402 = load %struct._carstate*, %struct._carstate** %401, align 8
  %403 = getelementptr inbounds %struct._carstate, %struct._carstate* %402, i32 0, i32 4
  %404 = load i8, i8* %403, align 1
  %405 = zext i8 %404 to i32
  %406 = add nsw i32 %405, %400
  %407 = trunc i32 %406 to i8
  store i8 %407, i8* %403, align 1
  br label %408

; <label>:408:                                    ; preds = %398, %397
  br label %409

; <label>:409:                                    ; preds = %408, %346
  %410 = load i8*, i8** %2, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %2, align 8
  br label %520

; <label>:412:                                    ; preds = %222
  %413 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %414 = load %struct._carstate*, %struct._carstate** %413, align 8
  %415 = bitcast %struct._carstate* %414 to i8*
  %416 = call i32 @validatePtr(i8* %415)
  %417 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %418 = load %struct._carstate*, %struct._carstate** %417, align 8
  %419 = getelementptr inbounds %struct._carstate, %struct._carstate* %418, i32 0, i32 6
  %420 = load i8, i8* %419, align 1
  %421 = zext i8 %420 to i32
  %422 = icmp eq i32 %421, 16
  br i1 %422, label %423, label %427

; <label>:423:                                    ; preds = %412
  %424 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %425 = load %struct._carstate*, %struct._carstate** %424, align 8
  %426 = getelementptr inbounds %struct._carstate, %struct._carstate* %425, i32 0, i32 5
  store i8 16, i8* %426, align 1
  br label %427

; <label>:427:                                    ; preds = %423, %412
  br label %520

; <label>:428:                                    ; preds = %222
  %429 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %430 = load %struct._carstate*, %struct._carstate** %429, align 8
  %431 = bitcast %struct._carstate* %430 to i8*
  %432 = call i32 @validatePtr(i8* %431)
  %433 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %434 = load %struct._carstate*, %struct._carstate** %433, align 8
  %435 = getelementptr inbounds %struct._carstate, %struct._carstate* %434, i32 0, i32 7
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i32
  %438 = icmp eq i32 %437, 117
  br i1 %438, label %439, label %452

; <label>:439:                                    ; preds = %428
  %440 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %441 = load %struct._carstate*, %struct._carstate** %440, align 8
  %442 = getelementptr inbounds %struct._carstate, %struct._carstate* %441, i32 0, i32 0
  %443 = load i8, i8* %442, align 1
  %444 = add i8 %443, 1
  store i8 %444, i8* %442, align 1
  %445 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %446 = load %struct._carstate*, %struct._carstate** %445, align 8
  %447 = getelementptr inbounds %struct._carstate, %struct._carstate* %446, i32 0, i32 2
  %448 = load i16, i16* %447, align 1
  %449 = zext i16 %448 to i32
  %450 = add nsw i32 %449, 25
  %451 = trunc i32 %450 to i16
  store i16 %451, i16* %447, align 1
  br label %460

; <label>:452:                                    ; preds = %428
  %453 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %454 = load %struct._carstate*, %struct._carstate** %453, align 8
  %455 = getelementptr inbounds %struct._carstate, %struct._carstate* %454, i32 0, i32 2
  %456 = load i16, i16* %455, align 1
  %457 = zext i16 %456 to i32
  %458 = add nsw i32 %457, 50
  %459 = trunc i32 %458 to i16
  store i16 %459, i16* %455, align 1
  br label %460

; <label>:460:                                    ; preds = %452, %439
  br label %520

; <label>:461:                                    ; preds = %222
  %462 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %463 = load %struct._carstate*, %struct._carstate** %462, align 8
  %464 = bitcast %struct._carstate* %463 to i8*
  %465 = call i32 @validatePtr(i8* %464)
  %466 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %467 = load %struct._carstate*, %struct._carstate** %466, align 8
  %468 = getelementptr inbounds %struct._carstate, %struct._carstate* %467, i32 0, i32 0
  %469 = load i8, i8* %468, align 1
  %470 = add i8 %469, -1
  store i8 %470, i8* %468, align 1
  %471 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %472 = load %struct._carstate*, %struct._carstate** %471, align 8
  %473 = getelementptr inbounds %struct._carstate, %struct._carstate* %472, i32 0, i32 2
  %474 = load i16, i16* %473, align 1
  %475 = zext i16 %474 to i32
  %476 = sub nsw i32 %475, 25
  %477 = trunc i32 %476 to i16
  store i16 %477, i16* %473, align 1
  br label %520

; <label>:478:                                    ; preds = %222
  %479 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %480 = load %struct._carstate*, %struct._carstate** %479, align 8
  %481 = bitcast %struct._carstate* %480 to i8*
  %482 = call i32 @validatePtr(i8* %481)
  %483 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %484 = load %struct._carstate*, %struct._carstate** %483, align 8
  %485 = getelementptr inbounds %struct._carstate, %struct._carstate* %484, i32 0, i32 7
  %486 = load i8, i8* %485, align 1
  %487 = sext i8 %486 to i32
  %488 = icmp eq i32 %487, 116
  br i1 %488, label %489, label %492

; <label>:489:                                    ; preds = %478
  %490 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %491 = load %struct._carstate*, %struct._carstate** %490, align 8
  call void @handleShift(%struct._carstate* %491, i8 signext 114)
  br label %492

; <label>:492:                                    ; preds = %489, %478
  br label %520

; <label>:493:                                    ; preds = %222
  %494 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %495 = load %struct._carstate*, %struct._carstate** %494, align 8
  %496 = bitcast %struct._carstate* %495 to i8*
  %497 = call i32 @validatePtr(i8* %496)
  %498 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %499 = load %struct._carstate*, %struct._carstate** %498, align 8
  %500 = getelementptr inbounds %struct._carstate, %struct._carstate* %499, i32 0, i32 7
  %501 = load i8, i8* %500, align 1
  %502 = sext i8 %501 to i32
  %503 = icmp eq i32 %502, 116
  br i1 %503, label %504, label %507

; <label>:504:                                    ; preds = %493
  %505 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %506 = load %struct._carstate*, %struct._carstate** %505, align 8
  call void @handleShift(%struct._carstate* %506, i8 signext 115)
  br label %507

; <label>:507:                                    ; preds = %504, %493
  br label %520

; <label>:508:                                    ; preds = %222, %222
  %509 = load i8*, i8** %2, align 8
  %510 = call i32 @validatePtr(i8* %509)
  %511 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %512 = load %struct._carstate*, %struct._carstate** %511, align 8
  %513 = bitcast %struct._carstate* %512 to i8*
  %514 = call i32 @validatePtr(i8* %513)
  %515 = load i8*, i8** %2, align 8
  %516 = load i8, i8* %515, align 1
  %517 = getelementptr inbounds %struct._locals, %struct._locals* %1, i32 0, i32 2
  %518 = load %struct._carstate*, %struct._carstate** %517, align 8
  %519 = getelementptr inbounds %struct._carstate, %struct._carstate* %518, i32 0, i32 7
  store i8 %516, i8* %519, align 1
  br label %520

; <label>:520:                                    ; preds = %222, %508, %507, %492, %461, %460, %427, %409, %336, %315, %291, %275, %259, %243
  %521 = load i8*, i8** %2, align 8
  %522 = getelementptr inbounds i8, i8* %521, i32 1
  store i8* %522, i8** %2, align 8
  br label %201

; <label>:523:                                    ; preds = %220
  br label %524

; <label>:524:                                    ; preds = %523, %193, %161, %160, %129, %99, %76
  br label %525

; <label>:525:                                    ; preds = %524
  %526 = load i8*, i8** %2, align 8
  %527 = getelementptr inbounds i8, i8* %526, i32 1
  store i8* %527, i8** %2, align 8
  br label %38

; <label>:528:                                    ; preds = %38
  br label %22
                                                  ; No predecessors!
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
