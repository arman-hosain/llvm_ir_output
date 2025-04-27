; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jit = type { [4000 x i8], [250 x i32], i8*, i32*, i32 }

@g_output_buf = internal global i8* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"Failed to allocate output buffer.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to allocate JIT struct.\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"QUIT\0A\00", align 1
@main.prologue = private unnamed_addr constant [14 x i8] c"U\8B\EC\81\EC\FF\00\00\00Q1\C0\89\C2", align 1
@main.epilogue = private unnamed_addr constant [5 x i8] c"Y\8B\E5]\C3", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"Error!\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"%d (0x%08x)\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @readuntil(i32, i8*, i64, i8 signext) #0 {
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
define i32 @jit_int(%struct.jit*, i32) #0 {
  %3 = alloca %struct.jit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [13 x i8], align 1
  store %struct.jit* %0, %struct.jit** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.jit*, %struct.jit** %3, align 8
  %8 = getelementptr inbounds %struct.jit, %struct.jit* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 -1
  %11 = ptrtoint i32* %10 to i32
  store i32 %11, i32* %5, align 4
  %12 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i64 0, i64 0
  store i8 -71, i8* %12, align 1
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 255
  %16 = trunc i32 %15 to i8
  store i8 %16, i8* %13, align 1
  %17 = getelementptr inbounds i8, i8* %13, i64 1
  %18 = load i32, i32* %5, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %17, align 1
  %22 = getelementptr inbounds i8, i8* %17, i64 1
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %22, align 1
  %27 = getelementptr inbounds i8, i8* %22, i64 1
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 24
  %30 = and i32 %29, 255
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  %32 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 -119, i8* %32, align 1
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 57, i8* %33, align 1
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 -105, i8* %34, align 1
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 -72, i8* %35, align 1
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i32, i32* %4, align 4
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %36, align 1
  %40 = getelementptr inbounds i8, i8* %36, i64 1
  %41 = load i32, i32* %4, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %40, align 1
  %45 = getelementptr inbounds i8, i8* %40, i64 1
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 16
  %48 = and i32 %47, 255
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  %50 = getelementptr inbounds i8, i8* %45, i64 1
  %51 = load i32, i32* %4, align 4
  %52 = ashr i32 %51, 24
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  store i8 %54, i8* %50, align 1
  %55 = load %struct.jit*, %struct.jit** %3, align 8
  %56 = getelementptr inbounds %struct.jit, %struct.jit* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds [13 x i8], [13 x i8]* %6, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %57, i8* %58, i64 13, i32 1, i1 false)
  %59 = load %struct.jit*, %struct.jit** %3, align 8
  %60 = getelementptr inbounds %struct.jit, %struct.jit* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 13
  store i8* %62, i8** %60, align 8
  %63 = load %struct.jit*, %struct.jit** %3, align 8
  %64 = getelementptr inbounds %struct.jit, %struct.jit* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i32 -1
  store i32* %66, i32** %64, align 8
  %67 = load %struct.jit*, %struct.jit** %3, align 8
  %68 = getelementptr inbounds %struct.jit, %struct.jit* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind uwtable
define i32 @jit_op(%struct.jit*, i8 signext) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jit*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.jit* %0, %struct.jit** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.jit*, %struct.jit** %4, align 8
  %8 = getelementptr inbounds %struct.jit, %struct.jit* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = ptrtoint i32* %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load i8, i8* %5, align 1
  %12 = sext i8 %11 to i32
  switch i32 %12, label %572 [
    i32 43, label %13
    i32 45, label %79
    i32 42, label %145
    i32 47, label %215
    i32 94, label %333
    i32 124, label %479
    i32 126, label %542
    i32 33, label %557
  ]

; <label>:13:                                     ; preds = %2
  %14 = load %struct.jit*, %struct.jit** %4, align 8
  %15 = getelementptr inbounds %struct.jit, %struct.jit* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %13
  store i32 3, i32* %3, align 4
  br label %578

; <label>:19:                                     ; preds = %13
  %20 = load %struct.jit*, %struct.jit** %4, align 8
  %21 = getelementptr inbounds %struct.jit, %struct.jit* %20, i32 0, i32 2
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %21, align 8
  store i8 1, i8* %22, align 1
  %24 = load %struct.jit*, %struct.jit** %4, align 8
  %25 = getelementptr inbounds %struct.jit, %struct.jit* %24, i32 0, i32 2
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %25, align 8
  store i8 -8, i8* %26, align 1
  %28 = load %struct.jit*, %struct.jit** %4, align 8
  %29 = getelementptr inbounds %struct.jit, %struct.jit* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %29, align 8
  store i8 -71, i8* %30, align 1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, 255
  %34 = trunc i32 %33 to i8
  %35 = load %struct.jit*, %struct.jit** %4, align 8
  %36 = getelementptr inbounds %struct.jit, %struct.jit* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %36, align 8
  store i8 %34, i8* %37, align 1
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 8
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = load %struct.jit*, %struct.jit** %4, align 8
  %44 = getelementptr inbounds %struct.jit, %struct.jit* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %44, align 8
  store i8 %42, i8* %45, align 1
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 16
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = load %struct.jit*, %struct.jit** %4, align 8
  %52 = getelementptr inbounds %struct.jit, %struct.jit* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %52, align 8
  store i8 %50, i8* %53, align 1
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 24
  %57 = and i32 %56, 255
  %58 = trunc i32 %57 to i8
  %59 = load %struct.jit*, %struct.jit** %4, align 8
  %60 = getelementptr inbounds %struct.jit, %struct.jit* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %60, align 8
  store i8 %58, i8* %61, align 1
  %63 = load %struct.jit*, %struct.jit** %4, align 8
  %64 = getelementptr inbounds %struct.jit, %struct.jit* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %64, align 8
  store i8 -117, i8* %65, align 1
  %67 = load %struct.jit*, %struct.jit** %4, align 8
  %68 = getelementptr inbounds %struct.jit, %struct.jit* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %68, align 8
  store i8 57, i8* %69, align 1
  %71 = load %struct.jit*, %struct.jit** %4, align 8
  %72 = getelementptr inbounds %struct.jit, %struct.jit* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32* %74, i32** %72, align 8
  %75 = load %struct.jit*, %struct.jit** %4, align 8
  %76 = getelementptr inbounds %struct.jit, %struct.jit* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %76, align 8
  br label %577

; <label>:79:                                     ; preds = %2
  %80 = load %struct.jit*, %struct.jit** %4, align 8
  %81 = getelementptr inbounds %struct.jit, %struct.jit* %80, i32 0, i32 4
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %82, 2
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %79
  store i32 3, i32* %3, align 4
  br label %578

; <label>:85:                                     ; preds = %79
  %86 = load %struct.jit*, %struct.jit** %4, align 8
  %87 = getelementptr inbounds %struct.jit, %struct.jit* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %89, i8** %87, align 8
  store i8 41, i8* %88, align 1
  %90 = load %struct.jit*, %struct.jit** %4, align 8
  %91 = getelementptr inbounds %struct.jit, %struct.jit* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %91, align 8
  store i8 -8, i8* %92, align 1
  %94 = load %struct.jit*, %struct.jit** %4, align 8
  %95 = getelementptr inbounds %struct.jit, %struct.jit* %94, i32 0, i32 2
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %97, i8** %95, align 8
  store i8 -71, i8* %96, align 1
  %98 = load i32, i32* %6, align 4
  %99 = and i32 %98, 255
  %100 = trunc i32 %99 to i8
  %101 = load %struct.jit*, %struct.jit** %4, align 8
  %102 = getelementptr inbounds %struct.jit, %struct.jit* %101, i32 0, i32 2
  %103 = load i8*, i8** %102, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %102, align 8
  store i8 %100, i8* %103, align 1
  %105 = load i32, i32* %6, align 4
  %106 = ashr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = trunc i32 %107 to i8
  %109 = load %struct.jit*, %struct.jit** %4, align 8
  %110 = getelementptr inbounds %struct.jit, %struct.jit* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %110, align 8
  store i8 %108, i8* %111, align 1
  %113 = load i32, i32* %6, align 4
  %114 = ashr i32 %113, 16
  %115 = and i32 %114, 255
  %116 = trunc i32 %115 to i8
  %117 = load %struct.jit*, %struct.jit** %4, align 8
  %118 = getelementptr inbounds %struct.jit, %struct.jit* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %120, i8** %118, align 8
  store i8 %116, i8* %119, align 1
  %121 = load i32, i32* %6, align 4
  %122 = ashr i32 %121, 24
  %123 = and i32 %122, 255
  %124 = trunc i32 %123 to i8
  %125 = load %struct.jit*, %struct.jit** %4, align 8
  %126 = getelementptr inbounds %struct.jit, %struct.jit* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds i8, i8* %127, i32 1
  store i8* %128, i8** %126, align 8
  store i8 %124, i8* %127, align 1
  %129 = load %struct.jit*, %struct.jit** %4, align 8
  %130 = getelementptr inbounds %struct.jit, %struct.jit* %129, i32 0, i32 2
  %131 = load i8*, i8** %130, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %130, align 8
  store i8 -117, i8* %131, align 1
  %133 = load %struct.jit*, %struct.jit** %4, align 8
  %134 = getelementptr inbounds %struct.jit, %struct.jit* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %136, i8** %134, align 8
  store i8 57, i8* %135, align 1
  %137 = load %struct.jit*, %struct.jit** %4, align 8
  %138 = getelementptr inbounds %struct.jit, %struct.jit* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32* %140, i32** %138, align 8
  %141 = load %struct.jit*, %struct.jit** %4, align 8
  %142 = getelementptr inbounds %struct.jit, %struct.jit* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %142, align 8
  br label %577

; <label>:145:                                    ; preds = %2
  %146 = load %struct.jit*, %struct.jit** %4, align 8
  %147 = getelementptr inbounds %struct.jit, %struct.jit* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %148, 2
  br i1 %149, label %150, label %151

; <label>:150:                                    ; preds = %145
  store i32 3, i32* %3, align 4
  br label %578

; <label>:151:                                    ; preds = %145
  %152 = load %struct.jit*, %struct.jit** %4, align 8
  %153 = getelementptr inbounds %struct.jit, %struct.jit* %152, i32 0, i32 2
  %154 = load i8*, i8** %153, align 8
  %155 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %155, i8** %153, align 8
  store i8 15, i8* %154, align 1
  %156 = load %struct.jit*, %struct.jit** %4, align 8
  %157 = getelementptr inbounds %struct.jit, %struct.jit* %156, i32 0, i32 2
  %158 = load i8*, i8** %157, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %157, align 8
  store i8 -81, i8* %158, align 1
  %160 = load %struct.jit*, %struct.jit** %4, align 8
  %161 = getelementptr inbounds %struct.jit, %struct.jit* %160, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %163, i8** %161, align 8
  store i8 -57, i8* %162, align 1
  %164 = load %struct.jit*, %struct.jit** %4, align 8
  %165 = getelementptr inbounds %struct.jit, %struct.jit* %164, i32 0, i32 2
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %165, align 8
  store i8 -71, i8* %166, align 1
  %168 = load i32, i32* %6, align 4
  %169 = and i32 %168, 255
  %170 = trunc i32 %169 to i8
  %171 = load %struct.jit*, %struct.jit** %4, align 8
  %172 = getelementptr inbounds %struct.jit, %struct.jit* %171, i32 0, i32 2
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %172, align 8
  store i8 %170, i8* %173, align 1
  %175 = load i32, i32* %6, align 4
  %176 = ashr i32 %175, 8
  %177 = and i32 %176, 255
  %178 = trunc i32 %177 to i8
  %179 = load %struct.jit*, %struct.jit** %4, align 8
  %180 = getelementptr inbounds %struct.jit, %struct.jit* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %180, align 8
  store i8 %178, i8* %181, align 1
  %183 = load i32, i32* %6, align 4
  %184 = ashr i32 %183, 16
  %185 = and i32 %184, 255
  %186 = trunc i32 %185 to i8
  %187 = load %struct.jit*, %struct.jit** %4, align 8
  %188 = getelementptr inbounds %struct.jit, %struct.jit* %187, i32 0, i32 2
  %189 = load i8*, i8** %188, align 8
  %190 = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %190, i8** %188, align 8
  store i8 %186, i8* %189, align 1
  %191 = load i32, i32* %6, align 4
  %192 = ashr i32 %191, 24
  %193 = and i32 %192, 255
  %194 = trunc i32 %193 to i8
  %195 = load %struct.jit*, %struct.jit** %4, align 8
  %196 = getelementptr inbounds %struct.jit, %struct.jit* %195, i32 0, i32 2
  %197 = load i8*, i8** %196, align 8
  %198 = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %198, i8** %196, align 8
  store i8 %194, i8* %197, align 1
  %199 = load %struct.jit*, %struct.jit** %4, align 8
  %200 = getelementptr inbounds %struct.jit, %struct.jit* %199, i32 0, i32 2
  %201 = load i8*, i8** %200, align 8
  %202 = getelementptr inbounds i8, i8* %201, i32 1
  store i8* %202, i8** %200, align 8
  store i8 -117, i8* %201, align 1
  %203 = load %struct.jit*, %struct.jit** %4, align 8
  %204 = getelementptr inbounds %struct.jit, %struct.jit* %203, i32 0, i32 2
  %205 = load i8*, i8** %204, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %204, align 8
  store i8 57, i8* %205, align 1
  %207 = load %struct.jit*, %struct.jit** %4, align 8
  %208 = getelementptr inbounds %struct.jit, %struct.jit* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  store i32* %210, i32** %208, align 8
  %211 = load %struct.jit*, %struct.jit** %4, align 8
  %212 = getelementptr inbounds %struct.jit, %struct.jit* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = sub nsw i32 %213, 1
  store i32 %214, i32* %212, align 8
  br label %577

; <label>:215:                                    ; preds = %2
  %216 = load %struct.jit*, %struct.jit** %4, align 8
  %217 = getelementptr inbounds %struct.jit, %struct.jit* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %218, 2
  br i1 %219, label %220, label %221

; <label>:220:                                    ; preds = %215
  store i32 3, i32* %3, align 4
  br label %578

; <label>:221:                                    ; preds = %215
  %222 = load %struct.jit*, %struct.jit** %4, align 8
  %223 = getelementptr inbounds %struct.jit, %struct.jit* %222, i32 0, i32 2
  %224 = load i8*, i8** %223, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %223, align 8
  store i8 -125, i8* %224, align 1
  %226 = load %struct.jit*, %struct.jit** %4, align 8
  %227 = getelementptr inbounds %struct.jit, %struct.jit* %226, i32 0, i32 2
  %228 = load i8*, i8** %227, align 8
  %229 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %229, i8** %227, align 8
  store i8 -1, i8* %228, align 1
  %230 = load %struct.jit*, %struct.jit** %4, align 8
  %231 = getelementptr inbounds %struct.jit, %struct.jit* %230, i32 0, i32 2
  %232 = load i8*, i8** %231, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %231, align 8
  store i8 0, i8* %232, align 1
  %234 = load %struct.jit*, %struct.jit** %4, align 8
  %235 = getelementptr inbounds %struct.jit, %struct.jit* %234, i32 0, i32 2
  %236 = load i8*, i8** %235, align 8
  %237 = getelementptr inbounds i8, i8* %236, i32 1
  store i8* %237, i8** %235, align 8
  store i8 117, i8* %236, align 1
  %238 = load %struct.jit*, %struct.jit** %4, align 8
  %239 = getelementptr inbounds %struct.jit, %struct.jit* %238, i32 0, i32 2
  %240 = load i8*, i8** %239, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %239, align 8
  store i8 7, i8* %240, align 1
  %242 = load %struct.jit*, %struct.jit** %4, align 8
  %243 = getelementptr inbounds %struct.jit, %struct.jit* %242, i32 0, i32 2
  %244 = load i8*, i8** %243, align 8
  %245 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %245, i8** %243, align 8
  store i8 49, i8* %244, align 1
  %246 = load %struct.jit*, %struct.jit** %4, align 8
  %247 = getelementptr inbounds %struct.jit, %struct.jit* %246, i32 0, i32 2
  %248 = load i8*, i8** %247, align 8
  %249 = getelementptr inbounds i8, i8* %248, i32 1
  store i8* %249, i8** %247, align 8
  store i8 -64, i8* %248, align 1
  %250 = load %struct.jit*, %struct.jit** %4, align 8
  %251 = getelementptr inbounds %struct.jit, %struct.jit* %250, i32 0, i32 2
  %252 = load i8*, i8** %251, align 8
  %253 = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %253, i8** %251, align 8
  store i8 64, i8* %252, align 1
  %254 = load %struct.jit*, %struct.jit** %4, align 8
  %255 = getelementptr inbounds %struct.jit, %struct.jit* %254, i32 0, i32 2
  %256 = load i8*, i8** %255, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %255, align 8
  store i8 -119, i8* %256, align 1
  %258 = load %struct.jit*, %struct.jit** %4, align 8
  %259 = getelementptr inbounds %struct.jit, %struct.jit* %258, i32 0, i32 2
  %260 = load i8*, i8** %259, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %259, align 8
  store i8 -61, i8* %260, align 1
  %262 = load %struct.jit*, %struct.jit** %4, align 8
  %263 = getelementptr inbounds %struct.jit, %struct.jit* %262, i32 0, i32 2
  %264 = load i8*, i8** %263, align 8
  %265 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %265, i8** %263, align 8
  store i8 -51, i8* %264, align 1
  %266 = load %struct.jit*, %struct.jit** %4, align 8
  %267 = getelementptr inbounds %struct.jit, %struct.jit* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %267, align 8
  store i8 -128, i8* %268, align 1
  %270 = load %struct.jit*, %struct.jit** %4, align 8
  %271 = getelementptr inbounds %struct.jit, %struct.jit* %270, i32 0, i32 2
  %272 = load i8*, i8** %271, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %271, align 8
  store i8 -103, i8* %272, align 1
  %274 = load %struct.jit*, %struct.jit** %4, align 8
  %275 = getelementptr inbounds %struct.jit, %struct.jit* %274, i32 0, i32 2
  %276 = load i8*, i8** %275, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %275, align 8
  store i8 -9, i8* %276, align 1
  %278 = load %struct.jit*, %struct.jit** %4, align 8
  %279 = getelementptr inbounds %struct.jit, %struct.jit* %278, i32 0, i32 2
  %280 = load i8*, i8** %279, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %279, align 8
  store i8 -1, i8* %280, align 1
  %282 = load %struct.jit*, %struct.jit** %4, align 8
  %283 = getelementptr inbounds %struct.jit, %struct.jit* %282, i32 0, i32 2
  %284 = load i8*, i8** %283, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %283, align 8
  store i8 -71, i8* %284, align 1
  %286 = load i32, i32* %6, align 4
  %287 = and i32 %286, 255
  %288 = trunc i32 %287 to i8
  %289 = load %struct.jit*, %struct.jit** %4, align 8
  %290 = getelementptr inbounds %struct.jit, %struct.jit* %289, i32 0, i32 2
  %291 = load i8*, i8** %290, align 8
  %292 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %292, i8** %290, align 8
  store i8 %288, i8* %291, align 1
  %293 = load i32, i32* %6, align 4
  %294 = ashr i32 %293, 8
  %295 = and i32 %294, 255
  %296 = trunc i32 %295 to i8
  %297 = load %struct.jit*, %struct.jit** %4, align 8
  %298 = getelementptr inbounds %struct.jit, %struct.jit* %297, i32 0, i32 2
  %299 = load i8*, i8** %298, align 8
  %300 = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %300, i8** %298, align 8
  store i8 %296, i8* %299, align 1
  %301 = load i32, i32* %6, align 4
  %302 = ashr i32 %301, 16
  %303 = and i32 %302, 255
  %304 = trunc i32 %303 to i8
  %305 = load %struct.jit*, %struct.jit** %4, align 8
  %306 = getelementptr inbounds %struct.jit, %struct.jit* %305, i32 0, i32 2
  %307 = load i8*, i8** %306, align 8
  %308 = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %308, i8** %306, align 8
  store i8 %304, i8* %307, align 1
  %309 = load i32, i32* %6, align 4
  %310 = ashr i32 %309, 24
  %311 = and i32 %310, 255
  %312 = trunc i32 %311 to i8
  %313 = load %struct.jit*, %struct.jit** %4, align 8
  %314 = getelementptr inbounds %struct.jit, %struct.jit* %313, i32 0, i32 2
  %315 = load i8*, i8** %314, align 8
  %316 = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %316, i8** %314, align 8
  store i8 %312, i8* %315, align 1
  %317 = load %struct.jit*, %struct.jit** %4, align 8
  %318 = getelementptr inbounds %struct.jit, %struct.jit* %317, i32 0, i32 2
  %319 = load i8*, i8** %318, align 8
  %320 = getelementptr inbounds i8, i8* %319, i32 1
  store i8* %320, i8** %318, align 8
  store i8 -117, i8* %319, align 1
  %321 = load %struct.jit*, %struct.jit** %4, align 8
  %322 = getelementptr inbounds %struct.jit, %struct.jit* %321, i32 0, i32 2
  %323 = load i8*, i8** %322, align 8
  %324 = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %324, i8** %322, align 8
  store i8 57, i8* %323, align 1
  %325 = load %struct.jit*, %struct.jit** %4, align 8
  %326 = getelementptr inbounds %struct.jit, %struct.jit* %325, i32 0, i32 3
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 1
  store i32* %328, i32** %326, align 8
  %329 = load %struct.jit*, %struct.jit** %4, align 8
  %330 = getelementptr inbounds %struct.jit, %struct.jit* %329, i32 0, i32 4
  %331 = load i32, i32* %330, align 8
  %332 = sub nsw i32 %331, 1
  store i32 %332, i32* %330, align 8
  br label %577

; <label>:333:                                    ; preds = %2
  %334 = load %struct.jit*, %struct.jit** %4, align 8
  %335 = getelementptr inbounds %struct.jit, %struct.jit* %334, i32 0, i32 4
  %336 = load i32, i32* %335, align 8
  %337 = icmp slt i32 %336, 2
  br i1 %337, label %338, label %339

; <label>:338:                                    ; preds = %333
  store i32 3, i32* %3, align 4
  br label %578

; <label>:339:                                    ; preds = %333
  %340 = load %struct.jit*, %struct.jit** %4, align 8
  %341 = getelementptr inbounds %struct.jit, %struct.jit* %340, i32 0, i32 2
  %342 = load i8*, i8** %341, align 8
  %343 = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %343, i8** %341, align 8
  store i8 87, i8* %342, align 1
  %344 = load %struct.jit*, %struct.jit** %4, align 8
  %345 = getelementptr inbounds %struct.jit, %struct.jit* %344, i32 0, i32 2
  %346 = load i8*, i8** %345, align 8
  %347 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %347, i8** %345, align 8
  store i8 49, i8* %346, align 1
  %348 = load %struct.jit*, %struct.jit** %4, align 8
  %349 = getelementptr inbounds %struct.jit, %struct.jit* %348, i32 0, i32 2
  %350 = load i8*, i8** %349, align 8
  %351 = getelementptr inbounds i8, i8* %350, i32 1
  store i8* %351, i8** %349, align 8
  store i8 -55, i8* %350, align 1
  %352 = load %struct.jit*, %struct.jit** %4, align 8
  %353 = getelementptr inbounds %struct.jit, %struct.jit* %352, i32 0, i32 2
  %354 = load i8*, i8** %353, align 8
  %355 = getelementptr inbounds i8, i8* %354, i32 1
  store i8* %355, i8** %353, align 8
  store i8 65, i8* %354, align 1
  %356 = load %struct.jit*, %struct.jit** %4, align 8
  %357 = getelementptr inbounds %struct.jit, %struct.jit* %356, i32 0, i32 2
  %358 = load i8*, i8** %357, align 8
  %359 = getelementptr inbounds i8, i8* %358, i32 1
  store i8* %359, i8** %357, align 8
  store i8 -125, i8* %358, align 1
  %360 = load %struct.jit*, %struct.jit** %4, align 8
  %361 = getelementptr inbounds %struct.jit, %struct.jit* %360, i32 0, i32 2
  %362 = load i8*, i8** %361, align 8
  %363 = getelementptr inbounds i8, i8* %362, i32 1
  store i8* %363, i8** %361, align 8
  store i8 -1, i8* %362, align 1
  %364 = load %struct.jit*, %struct.jit** %4, align 8
  %365 = getelementptr inbounds %struct.jit, %struct.jit* %364, i32 0, i32 2
  %366 = load i8*, i8** %365, align 8
  %367 = getelementptr inbounds i8, i8* %366, i32 1
  store i8* %367, i8** %365, align 8
  store i8 0, i8* %366, align 1
  %368 = load %struct.jit*, %struct.jit** %4, align 8
  %369 = getelementptr inbounds %struct.jit, %struct.jit* %368, i32 0, i32 2
  %370 = load i8*, i8** %369, align 8
  %371 = getelementptr inbounds i8, i8* %370, i32 1
  store i8* %371, i8** %369, align 8
  store i8 124, i8* %370, align 1
  %372 = load %struct.jit*, %struct.jit** %4, align 8
  %373 = getelementptr inbounds %struct.jit, %struct.jit* %372, i32 0, i32 2
  %374 = load i8*, i8** %373, align 8
  %375 = getelementptr inbounds i8, i8* %374, i32 1
  store i8* %375, i8** %373, align 8
  store i8 10, i8* %374, align 1
  %376 = load %struct.jit*, %struct.jit** %4, align 8
  %377 = getelementptr inbounds %struct.jit, %struct.jit* %376, i32 0, i32 2
  %378 = load i8*, i8** %377, align 8
  %379 = getelementptr inbounds i8, i8* %378, i32 1
  store i8* %379, i8** %377, align 8
  store i8 -123, i8* %378, align 1
  %380 = load %struct.jit*, %struct.jit** %4, align 8
  %381 = getelementptr inbounds %struct.jit, %struct.jit* %380, i32 0, i32 2
  %382 = load i8*, i8** %381, align 8
  %383 = getelementptr inbounds i8, i8* %382, i32 1
  store i8* %383, i8** %381, align 8
  store i8 -1, i8* %382, align 1
  %384 = load %struct.jit*, %struct.jit** %4, align 8
  %385 = getelementptr inbounds %struct.jit, %struct.jit* %384, i32 0, i32 2
  %386 = load i8*, i8** %385, align 8
  %387 = getelementptr inbounds i8, i8* %386, i32 1
  store i8* %387, i8** %385, align 8
  store i8 116, i8* %386, align 1
  %388 = load %struct.jit*, %struct.jit** %4, align 8
  %389 = getelementptr inbounds %struct.jit, %struct.jit* %388, i32 0, i32 2
  %390 = load i8*, i8** %389, align 8
  %391 = getelementptr inbounds i8, i8* %390, i32 1
  store i8* %391, i8** %389, align 8
  store i8 7, i8* %390, align 1
  %392 = load %struct.jit*, %struct.jit** %4, align 8
  %393 = getelementptr inbounds %struct.jit, %struct.jit* %392, i32 0, i32 2
  %394 = load i8*, i8** %393, align 8
  %395 = getelementptr inbounds i8, i8* %394, i32 1
  store i8* %395, i8** %393, align 8
  store i8 15, i8* %394, align 1
  %396 = load %struct.jit*, %struct.jit** %4, align 8
  %397 = getelementptr inbounds %struct.jit, %struct.jit* %396, i32 0, i32 2
  %398 = load i8*, i8** %397, align 8
  %399 = getelementptr inbounds i8, i8* %398, i32 1
  store i8* %399, i8** %397, align 8
  store i8 -81, i8* %398, align 1
  %400 = load %struct.jit*, %struct.jit** %4, align 8
  %401 = getelementptr inbounds %struct.jit, %struct.jit* %400, i32 0, i32 2
  %402 = load i8*, i8** %401, align 8
  %403 = getelementptr inbounds i8, i8* %402, i32 1
  store i8* %403, i8** %401, align 8
  store i8 -56, i8* %402, align 1
  %404 = load %struct.jit*, %struct.jit** %4, align 8
  %405 = getelementptr inbounds %struct.jit, %struct.jit* %404, i32 0, i32 2
  %406 = load i8*, i8** %405, align 8
  %407 = getelementptr inbounds i8, i8* %406, i32 1
  store i8* %407, i8** %405, align 8
  store i8 79, i8* %406, align 1
  %408 = load %struct.jit*, %struct.jit** %4, align 8
  %409 = getelementptr inbounds %struct.jit, %struct.jit* %408, i32 0, i32 2
  %410 = load i8*, i8** %409, align 8
  %411 = getelementptr inbounds i8, i8* %410, i32 1
  store i8* %411, i8** %409, align 8
  store i8 -21, i8* %410, align 1
  %412 = load %struct.jit*, %struct.jit** %4, align 8
  %413 = getelementptr inbounds %struct.jit, %struct.jit* %412, i32 0, i32 2
  %414 = load i8*, i8** %413, align 8
  %415 = getelementptr inbounds i8, i8* %414, i32 1
  store i8* %415, i8** %413, align 8
  store i8 -10, i8* %414, align 1
  %416 = load %struct.jit*, %struct.jit** %4, align 8
  %417 = getelementptr inbounds %struct.jit, %struct.jit* %416, i32 0, i32 2
  %418 = load i8*, i8** %417, align 8
  %419 = getelementptr inbounds i8, i8* %418, i32 1
  store i8* %419, i8** %417, align 8
  store i8 73, i8* %418, align 1
  %420 = load %struct.jit*, %struct.jit** %4, align 8
  %421 = getelementptr inbounds %struct.jit, %struct.jit* %420, i32 0, i32 2
  %422 = load i8*, i8** %421, align 8
  %423 = getelementptr inbounds i8, i8* %422, i32 1
  store i8* %423, i8** %421, align 8
  store i8 95, i8* %422, align 1
  %424 = load %struct.jit*, %struct.jit** %4, align 8
  %425 = getelementptr inbounds %struct.jit, %struct.jit* %424, i32 0, i32 2
  %426 = load i8*, i8** %425, align 8
  %427 = getelementptr inbounds i8, i8* %426, i32 1
  store i8* %427, i8** %425, align 8
  store i8 -111, i8* %426, align 1
  %428 = load %struct.jit*, %struct.jit** %4, align 8
  %429 = getelementptr inbounds %struct.jit, %struct.jit* %428, i32 0, i32 2
  %430 = load i8*, i8** %429, align 8
  %431 = getelementptr inbounds i8, i8* %430, i32 1
  store i8* %431, i8** %429, align 8
  store i8 -71, i8* %430, align 1
  %432 = load i32, i32* %6, align 4
  %433 = and i32 %432, 255
  %434 = trunc i32 %433 to i8
  %435 = load %struct.jit*, %struct.jit** %4, align 8
  %436 = getelementptr inbounds %struct.jit, %struct.jit* %435, i32 0, i32 2
  %437 = load i8*, i8** %436, align 8
  %438 = getelementptr inbounds i8, i8* %437, i32 1
  store i8* %438, i8** %436, align 8
  store i8 %434, i8* %437, align 1
  %439 = load i32, i32* %6, align 4
  %440 = ashr i32 %439, 8
  %441 = and i32 %440, 255
  %442 = trunc i32 %441 to i8
  %443 = load %struct.jit*, %struct.jit** %4, align 8
  %444 = getelementptr inbounds %struct.jit, %struct.jit* %443, i32 0, i32 2
  %445 = load i8*, i8** %444, align 8
  %446 = getelementptr inbounds i8, i8* %445, i32 1
  store i8* %446, i8** %444, align 8
  store i8 %442, i8* %445, align 1
  %447 = load i32, i32* %6, align 4
  %448 = ashr i32 %447, 16
  %449 = and i32 %448, 255
  %450 = trunc i32 %449 to i8
  %451 = load %struct.jit*, %struct.jit** %4, align 8
  %452 = getelementptr inbounds %struct.jit, %struct.jit* %451, i32 0, i32 2
  %453 = load i8*, i8** %452, align 8
  %454 = getelementptr inbounds i8, i8* %453, i32 1
  store i8* %454, i8** %452, align 8
  store i8 %450, i8* %453, align 1
  %455 = load i32, i32* %6, align 4
  %456 = ashr i32 %455, 24
  %457 = and i32 %456, 255
  %458 = trunc i32 %457 to i8
  %459 = load %struct.jit*, %struct.jit** %4, align 8
  %460 = getelementptr inbounds %struct.jit, %struct.jit* %459, i32 0, i32 2
  %461 = load i8*, i8** %460, align 8
  %462 = getelementptr inbounds i8, i8* %461, i32 1
  store i8* %462, i8** %460, align 8
  store i8 %458, i8* %461, align 1
  %463 = load %struct.jit*, %struct.jit** %4, align 8
  %464 = getelementptr inbounds %struct.jit, %struct.jit* %463, i32 0, i32 2
  %465 = load i8*, i8** %464, align 8
  %466 = getelementptr inbounds i8, i8* %465, i32 1
  store i8* %466, i8** %464, align 8
  store i8 -117, i8* %465, align 1
  %467 = load %struct.jit*, %struct.jit** %4, align 8
  %468 = getelementptr inbounds %struct.jit, %struct.jit* %467, i32 0, i32 2
  %469 = load i8*, i8** %468, align 8
  %470 = getelementptr inbounds i8, i8* %469, i32 1
  store i8* %470, i8** %468, align 8
  store i8 57, i8* %469, align 1
  %471 = load %struct.jit*, %struct.jit** %4, align 8
  %472 = getelementptr inbounds %struct.jit, %struct.jit* %471, i32 0, i32 3
  %473 = load i32*, i32** %472, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 1
  store i32* %474, i32** %472, align 8
  %475 = load %struct.jit*, %struct.jit** %4, align 8
  %476 = getelementptr inbounds %struct.jit, %struct.jit* %475, i32 0, i32 4
  %477 = load i32, i32* %476, align 8
  %478 = sub nsw i32 %477, 1
  store i32 %478, i32* %476, align 8
  br label %577

; <label>:479:                                    ; preds = %2
  %480 = load %struct.jit*, %struct.jit** %4, align 8
  %481 = getelementptr inbounds %struct.jit, %struct.jit* %480, i32 0, i32 4
  %482 = load i32, i32* %481, align 8
  %483 = icmp slt i32 %482, 1
  br i1 %483, label %484, label %485

; <label>:484:                                    ; preds = %479
  store i32 3, i32* %3, align 4
  br label %578

; <label>:485:                                    ; preds = %479
  %486 = load %struct.jit*, %struct.jit** %4, align 8
  %487 = getelementptr inbounds %struct.jit, %struct.jit* %486, i32 0, i32 2
  %488 = load i8*, i8** %487, align 8
  %489 = getelementptr inbounds i8, i8* %488, i32 1
  store i8* %489, i8** %487, align 8
  store i8 82, i8* %488, align 1
  %490 = load %struct.jit*, %struct.jit** %4, align 8
  %491 = getelementptr inbounds %struct.jit, %struct.jit* %490, i32 0, i32 2
  %492 = load i8*, i8** %491, align 8
  %493 = getelementptr inbounds i8, i8* %492, i32 1
  store i8* %493, i8** %491, align 8
  store i8 -119, i8* %492, align 1
  %494 = load %struct.jit*, %struct.jit** %4, align 8
  %495 = getelementptr inbounds %struct.jit, %struct.jit* %494, i32 0, i32 2
  %496 = load i8*, i8** %495, align 8
  %497 = getelementptr inbounds i8, i8* %496, i32 1
  store i8* %497, i8** %495, align 8
  store i8 -63, i8* %496, align 1
  %498 = load %struct.jit*, %struct.jit** %4, align 8
  %499 = getelementptr inbounds %struct.jit, %struct.jit* %498, i32 0, i32 2
  %500 = load i8*, i8** %499, align 8
  %501 = getelementptr inbounds i8, i8* %500, i32 1
  store i8* %501, i8** %499, align 8
  store i8 -63, i8* %500, align 1
  %502 = load %struct.jit*, %struct.jit** %4, align 8
  %503 = getelementptr inbounds %struct.jit, %struct.jit* %502, i32 0, i32 2
  %504 = load i8*, i8** %503, align 8
  %505 = getelementptr inbounds i8, i8* %504, i32 1
  store i8* %505, i8** %503, align 8
  store i8 -7, i8* %504, align 1
  %506 = load %struct.jit*, %struct.jit** %4, align 8
  %507 = getelementptr inbounds %struct.jit, %struct.jit* %506, i32 0, i32 2
  %508 = load i8*, i8** %507, align 8
  %509 = getelementptr inbounds i8, i8* %508, i32 1
  store i8* %509, i8** %507, align 8
  store i8 31, i8* %508, align 1
  %510 = load %struct.jit*, %struct.jit** %4, align 8
  %511 = getelementptr inbounds %struct.jit, %struct.jit* %510, i32 0, i32 2
  %512 = load i8*, i8** %511, align 8
  %513 = getelementptr inbounds i8, i8* %512, i32 1
  store i8* %513, i8** %511, align 8
  store i8 -119, i8* %512, align 1
  %514 = load %struct.jit*, %struct.jit** %4, align 8
  %515 = getelementptr inbounds %struct.jit, %struct.jit* %514, i32 0, i32 2
  %516 = load i8*, i8** %515, align 8
  %517 = getelementptr inbounds i8, i8* %516, i32 1
  store i8* %517, i8** %515, align 8
  store i8 -54, i8* %516, align 1
  %518 = load %struct.jit*, %struct.jit** %4, align 8
  %519 = getelementptr inbounds %struct.jit, %struct.jit* %518, i32 0, i32 2
  %520 = load i8*, i8** %519, align 8
  %521 = getelementptr inbounds i8, i8* %520, i32 1
  store i8* %521, i8** %519, align 8
  store i8 49, i8* %520, align 1
  %522 = load %struct.jit*, %struct.jit** %4, align 8
  %523 = getelementptr inbounds %struct.jit, %struct.jit* %522, i32 0, i32 2
  %524 = load i8*, i8** %523, align 8
  %525 = getelementptr inbounds i8, i8* %524, i32 1
  store i8* %525, i8** %523, align 8
  store i8 -62, i8* %524, align 1
  %526 = load %struct.jit*, %struct.jit** %4, align 8
  %527 = getelementptr inbounds %struct.jit, %struct.jit* %526, i32 0, i32 2
  %528 = load i8*, i8** %527, align 8
  %529 = getelementptr inbounds i8, i8* %528, i32 1
  store i8* %529, i8** %527, align 8
  store i8 41, i8* %528, align 1
  %530 = load %struct.jit*, %struct.jit** %4, align 8
  %531 = getelementptr inbounds %struct.jit, %struct.jit* %530, i32 0, i32 2
  %532 = load i8*, i8** %531, align 8
  %533 = getelementptr inbounds i8, i8* %532, i32 1
  store i8* %533, i8** %531, align 8
  store i8 -54, i8* %532, align 1
  %534 = load %struct.jit*, %struct.jit** %4, align 8
  %535 = getelementptr inbounds %struct.jit, %struct.jit* %534, i32 0, i32 2
  %536 = load i8*, i8** %535, align 8
  %537 = getelementptr inbounds i8, i8* %536, i32 1
  store i8* %537, i8** %535, align 8
  store i8 -110, i8* %536, align 1
  %538 = load %struct.jit*, %struct.jit** %4, align 8
  %539 = getelementptr inbounds %struct.jit, %struct.jit* %538, i32 0, i32 2
  %540 = load i8*, i8** %539, align 8
  %541 = getelementptr inbounds i8, i8* %540, i32 1
  store i8* %541, i8** %539, align 8
  store i8 90, i8* %540, align 1
  br label %577

; <label>:542:                                    ; preds = %2
  %543 = load %struct.jit*, %struct.jit** %4, align 8
  %544 = getelementptr inbounds %struct.jit, %struct.jit* %543, i32 0, i32 4
  %545 = load i32, i32* %544, align 8
  %546 = icmp slt i32 %545, 1
  br i1 %546, label %547, label %548

; <label>:547:                                    ; preds = %542
  store i32 3, i32* %3, align 4
  br label %578

; <label>:548:                                    ; preds = %542
  %549 = load %struct.jit*, %struct.jit** %4, align 8
  %550 = getelementptr inbounds %struct.jit, %struct.jit* %549, i32 0, i32 2
  %551 = load i8*, i8** %550, align 8
  %552 = getelementptr inbounds i8, i8* %551, i32 1
  store i8* %552, i8** %550, align 8
  store i8 -9, i8* %551, align 1
  %553 = load %struct.jit*, %struct.jit** %4, align 8
  %554 = getelementptr inbounds %struct.jit, %struct.jit* %553, i32 0, i32 2
  %555 = load i8*, i8** %554, align 8
  %556 = getelementptr inbounds i8, i8* %555, i32 1
  store i8* %556, i8** %554, align 8
  store i8 -40, i8* %555, align 1
  br label %577

; <label>:557:                                    ; preds = %2
  %558 = load %struct.jit*, %struct.jit** %4, align 8
  %559 = getelementptr inbounds %struct.jit, %struct.jit* %558, i32 0, i32 4
  %560 = load i32, i32* %559, align 8
  %561 = icmp slt i32 %560, 1
  br i1 %561, label %562, label %563

; <label>:562:                                    ; preds = %557
  store i32 3, i32* %3, align 4
  br label %578

; <label>:563:                                    ; preds = %557
  %564 = load %struct.jit*, %struct.jit** %4, align 8
  %565 = getelementptr inbounds %struct.jit, %struct.jit* %564, i32 0, i32 2
  %566 = load i8*, i8** %565, align 8
  %567 = getelementptr inbounds i8, i8* %566, i32 1
  store i8* %567, i8** %565, align 8
  store i8 -9, i8* %566, align 1
  %568 = load %struct.jit*, %struct.jit** %4, align 8
  %569 = getelementptr inbounds %struct.jit, %struct.jit* %568, i32 0, i32 2
  %570 = load i8*, i8** %569, align 8
  %571 = getelementptr inbounds i8, i8* %570, i32 1
  store i8* %571, i8** %569, align 8
  store i8 -48, i8* %570, align 1
  br label %577

; <label>:572:                                    ; preds = %2
  %573 = load %struct.jit*, %struct.jit** %4, align 8
  %574 = getelementptr inbounds %struct.jit, %struct.jit* %573, i32 0, i32 2
  %575 = load i8*, i8** %574, align 8
  %576 = getelementptr inbounds i8, i8* %575, i32 1
  store i8* %576, i8** %574, align 8
  store i8 -112, i8* %575, align 1
  br label %577

; <label>:577:                                    ; preds = %572, %563, %548, %485, %339, %221, %151, %85, %19
  store i32 0, i32* %3, align 4
  br label %578

; <label>:578:                                    ; preds = %577, %562, %547, %484, %338, %220, %150, %84, %18
  %579 = load i32, i32* %3, align 4
  ret i32 %579
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [8192 x i8], align 16
  %3 = alloca %struct.jit*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [14 x i8], align 1
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca [5 x i8], align 1
  store i32 0, i32* %1, align 4
  %12 = call i8* @my_malloc(i64 65536)
  store i8* %12, i8** @g_output_buf, align 8
  %13 = load i8*, i8** @g_output_buf, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %0
  %16 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %158

; <label>:17:                                     ; preds = %0
  %18 = bitcast %struct.jit** %3 to i8**
  %19 = call i32 @allocate(i64 5024, i32 1, i8** %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

; <label>:21:                                     ; preds = %17
  %22 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %158

; <label>:23:                                     ; preds = %17
  %24 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %25

; <label>:25:                                     ; preds = %155, %23
  %26 = getelementptr inbounds [8192 x i8], [8192 x i8]* %2, i32 0, i32 0
  %27 = call i32 @readuntil(i32 0, i8* %26, i64 8192, i8 signext 10)
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %157

; <label>:29:                                     ; preds = %25
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %30 = getelementptr inbounds [8192 x i8], [8192 x i8]* %2, i32 0, i32 0
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %29
  %34 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %158

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds [8192 x i8], [8192 x i8]* %2, i32 0, i32 0
  %37 = call i64 @strlen(i8* %36)
  %38 = icmp ugt i64 %37, 0
  br i1 %38, label %39, label %146

; <label>:39:                                     ; preds = %35
  %40 = load %struct.jit*, %struct.jit** %3, align 8
  %41 = getelementptr inbounds %struct.jit, %struct.jit* %40, i32 0, i32 0
  %42 = getelementptr inbounds [4000 x i8], [4000 x i8]* %41, i32 0, i32 0
  %43 = load %struct.jit*, %struct.jit** %3, align 8
  %44 = getelementptr inbounds %struct.jit, %struct.jit* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.jit*, %struct.jit** %3, align 8
  %46 = getelementptr inbounds %struct.jit, %struct.jit* %45, i32 0, i32 1
  %47 = getelementptr inbounds [250 x i32], [250 x i32]* %46, i32 0, i32 0
  %48 = getelementptr inbounds i32, i32* %47, i64 250
  %49 = load %struct.jit*, %struct.jit** %3, align 8
  %50 = getelementptr inbounds %struct.jit, %struct.jit* %49, i32 0, i32 3
  store i32* %48, i32** %50, align 8
  %51 = load %struct.jit*, %struct.jit** %3, align 8
  %52 = getelementptr inbounds %struct.jit, %struct.jit* %51, i32 0, i32 4
  store i32 0, i32* %52, align 8
  %53 = bitcast [14 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @main.prologue, i32 0, i32 0), i64 14, i32 1, i1 false)
  %54 = load %struct.jit*, %struct.jit** %3, align 8
  %55 = getelementptr inbounds %struct.jit, %struct.jit* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds [14 x i8], [14 x i8]* %6, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %56, i8* %57, i64 14, i32 1, i1 false)
  %58 = load %struct.jit*, %struct.jit** %3, align 8
  %59 = getelementptr inbounds %struct.jit, %struct.jit* %58, i32 0, i32 2
  %60 = load i8*, i8** %59, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 14
  store i8* %61, i8** %59, align 8
  %62 = getelementptr inbounds [8192 x i8], [8192 x i8]* %2, i32 0, i32 0
  store i8* %62, i8** %8, align 8
  br label %63

; <label>:63:                                     ; preds = %118, %83, %39
  %64 = load i8*, i8** %8, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

; <label>:68:                                     ; preds = %63
  %69 = load i8*, i8** %8, align 8
  %70 = getelementptr inbounds [8192 x i8], [8192 x i8]* %2, i32 0, i32 0
  %71 = getelementptr inbounds [8192 x i8], [8192 x i8]* %2, i32 0, i32 0
  %72 = call i64 @strlen(i8* %71)
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = icmp ult i8* %69, %73
  br label %75

; <label>:75:                                     ; preds = %68, %63
  %76 = phi i1 [ false, %63 ], [ %74, %68 ]
  br i1 %76, label %77, label %119

; <label>:77:                                     ; preds = %75
  %78 = load i8*, i8** %8, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = call i32 @isspace(i32 %80) #4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

; <label>:83:                                     ; preds = %77
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  br label %63

; <label>:86:                                     ; preds = %77
  %87 = load i8*, i8** %8, align 8
  %88 = call i64 @strtol(i8* %87, i8** %7, i32 0)
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %9, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = load i8*, i8** %7, align 8
  %92 = icmp eq i8* %90, %91
  br i1 %92, label %93, label %113

; <label>:93:                                     ; preds = %86
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 1
  %96 = load i8, i8* %95, align 1
  store i8 %96, i8* %10, align 1
  %97 = load i8, i8* %10, align 1
  %98 = sext i8 %97 to i32
  %99 = call i32 @isspace(i32 %98) #4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

; <label>:101:                                    ; preds = %93
  %102 = load i8, i8* %10, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %101
  store i32 1, i32* %5, align 4
  br label %119

; <label>:106:                                    ; preds = %101, %93
  %107 = load %struct.jit*, %struct.jit** %3, align 8
  %108 = load i8*, i8** %8, align 8
  %109 = load i8, i8* %108, align 1
  %110 = call i32 @jit_op(%struct.jit* %107, i8 signext %109)
  store i32 %110, i32* %5, align 4
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %8, align 8
  br label %118

; <label>:113:                                    ; preds = %86
  %114 = load %struct.jit*, %struct.jit** %3, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @jit_int(%struct.jit* %114, i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = load i8*, i8** %7, align 8
  store i8* %117, i8** %8, align 8
  br label %118

; <label>:118:                                    ; preds = %113, %106
  br label %63

; <label>:119:                                    ; preds = %105, %75
  %120 = bitcast [5 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @main.epilogue, i32 0, i32 0), i64 5, i32 1, i1 false)
  %121 = load %struct.jit*, %struct.jit** %3, align 8
  %122 = getelementptr inbounds %struct.jit, %struct.jit* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 5
  %125 = load %struct.jit*, %struct.jit** %3, align 8
  %126 = getelementptr inbounds %struct.jit, %struct.jit* %125, i32 0, i32 0
  %127 = getelementptr inbounds [4000 x i8], [4000 x i8]* %126, i32 0, i32 0
  %128 = getelementptr inbounds i8, i8* %127, i64 4000
  %129 = icmp uge i8* %124, %128
  br i1 %129, label %130, label %131

; <label>:130:                                    ; preds = %119
  store i32 2, i32* %5, align 4
  br label %145

; <label>:131:                                    ; preds = %119
  %132 = load %struct.jit*, %struct.jit** %3, align 8
  %133 = getelementptr inbounds %struct.jit, %struct.jit* %132, i32 0, i32 2
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i32 0, i32 0
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %134, i8* %135, i64 5, i32 1, i1 false)
  %136 = load %struct.jit*, %struct.jit** %3, align 8
  %137 = getelementptr inbounds %struct.jit, %struct.jit* %136, i32 0, i32 2
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 5
  store i8* %139, i8** %137, align 8
  %140 = load %struct.jit*, %struct.jit** %3, align 8
  %141 = getelementptr inbounds %struct.jit, %struct.jit* %140, i32 0, i32 0
  %142 = getelementptr inbounds [4000 x i8], [4000 x i8]* %141, i32 0, i32 0
  %143 = bitcast i8* %142 to i32 ()*
  %144 = call i32 %143()
  store i32 %144, i32* %4, align 4
  br label %145

; <label>:145:                                    ; preds = %131, %130
  br label %146

; <label>:146:                                    ; preds = %145, %35
  %147 = load i32, i32* %5, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

; <label>:149:                                    ; preds = %146
  %150 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0))
  br label %155

; <label>:151:                                    ; preds = %146
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i32 %152, i32 %153)
  br label %155

; <label>:155:                                    ; preds = %151, %149
  %156 = call i32 (i32, i8*, ...) @fdprintf(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  br label %25

; <label>:157:                                    ; preds = %25
  store i32 0, i32* %1, align 4
  br label %158

; <label>:158:                                    ; preds = %157, %33, %21, %15
  %159 = load i32, i32* %1, align 4
  ret i32 %159
}

declare i8* @my_malloc(i64) #1

declare i32 @fdprintf(i32, i8*, ...) #1

declare i32 @allocate(i64, i32, i8**) #1

declare i32 @strcmp(i8*, i8*) #1

declare i64 @strlen(i8*) #1

; Function Attrs: nounwind readonly
declare i32 @isspace(i32) #3

declare i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
