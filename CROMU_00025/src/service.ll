; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_meta = type { [16 x i8], i32, i8*, %struct.image_meta* }
%struct.fpai_image_data = type { i8*, i32, i32, i32, i32, i32, i32, i16 }
%struct.fpti_image_data = type { i8*, i32, i32, i32, i8 }
%struct.rpti_image_data = type { i8*, i32, i32, i32 }
%struct.tbir_image_data = type { i8*, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32 }
%struct.tpai_image_data = type { i8*, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"[ERROR] Unknown Format\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"1- Upload Image\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"2- List Images\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"3- Remove Image\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"4- Display Image\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"5- Leave\0A\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"} \00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"[ERROR] Failed to read choice\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"[ERROR] Failed to allocate buffer\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Image Name: \00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"[ERROR] Receive name failed\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"[ERROR] Receive length failed\0A\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"[ERROR] Image length to large\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"[ERROR] Failed to allocate image buffer\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"[ERROR] Failed to receive image data\0A\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"@s\0A\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"[ERROR] Failed to receive name\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"[ERROR] Failed to render image\0A\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"[ERROR] Failed to locate image\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"[ERROR] Invalid option: @d\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @readData(i8**) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i8* null, i8** %6, align 8
  %7 = load i8**, i8*** %3, align 8
  %8 = icmp eq i8** %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

; <label>:10:                                     ; preds = %1
  %11 = bitcast i32* %4 to i8*
  %12 = call i32 @receive(i32 0, i8* %11, i64 2, i64* %5)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %10
  store i32 0, i32* %2, align 4
  br label %43

; <label>:15:                                     ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 2048
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15
  store i32 0, i32* %2, align 4
  br label %43

; <label>:19:                                     ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = call i32 @allocate(i64 %21, i32 0, i8** %6)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %19
  store i32 0, i32* %2, align 4
  br label %43

; <label>:25:                                     ; preds = %19
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = call i32 @receive(i32 0, i8* %26, i64 %28, i64* %5)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %25
  store i32 0, i32* %2, align 4
  br label %43

; <label>:32:                                     ; preds = %25
  %33 = load i64, i64* %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %33, %35
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %32
  store i32 0, i32* %2, align 4
  br label %43

; <label>:38:                                     ; preds = %32
  %39 = load i8*, i8** %6, align 8
  %40 = load i8**, i8*** %3, align 8
  store i8* %39, i8** %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %2, align 4
  br label %43

; <label>:43:                                     ; preds = %38, %37, %31, %24, %18, %14, %9
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare i32 @receive(i32, i8*, i64, i64*) #1

declare i32 @allocate(i64, i32, i8**) #1

; Function Attrs: noinline nounwind uwtable
define i32 @selectRenderer(%struct.image_meta*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.image_meta*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fpai_image_data, align 8
  %8 = alloca %struct.fpti_image_data, align 8
  %9 = alloca %struct.rpti_image_data, align 8
  %10 = alloca %struct.tbir_image_data, align 8
  %11 = alloca %struct.tpai_image_data, align 8
  store %struct.image_meta* %0, %struct.image_meta** %3, align 8
  %12 = load %struct.image_meta*, %struct.image_meta** %3, align 8
  %13 = icmp eq %struct.image_meta* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %1
  store i32 0, i32* %2, align 4
  br label %108

; <label>:15:                                     ; preds = %1
  %16 = load %struct.image_meta*, %struct.image_meta** %3, align 8
  %17 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %15
  store i32 0, i32* %2, align 4
  br label %108

; <label>:21:                                     ; preds = %15
  %22 = load %struct.image_meta*, %struct.image_meta** %3, align 8
  %23 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %21
  store i32 0, i32* %2, align 4
  br label %108

; <label>:27:                                     ; preds = %21
  %28 = load %struct.image_meta*, %struct.image_meta** %3, align 8
  %29 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %5, align 8
  %31 = load %struct.image_meta*, %struct.image_meta** %3, align 8
  %32 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %6, align 4
  %34 = bitcast i32* %4 to i8*
  %35 = load i8*, i8** %5, align 8
  %36 = call i32 @memcpy(i8* %34, i8* %35, i64 4)
  %37 = load i32, i32* %4, align 4
  %38 = icmp eq i32 %37, 1440331486
  br i1 %38, label %39, label %49

; <label>:39:                                     ; preds = %27
  %40 = bitcast %struct.fpai_image_data* %7 to i8*
  call void @memset(i8* %40, i8 signext 0, i64 40)
  %41 = load i8*, i8** %5, align 8
  %42 = getelementptr inbounds %struct.fpai_image_data, %struct.fpai_image_data* %7, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = getelementptr inbounds %struct.fpai_image_data, %struct.fpai_image_data* %7, i32 0, i32 1
  store i32 %43, i32* %44, align 8
  %45 = call i32 @fpai_display_img(%struct.fpai_image_data* %7)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %39
  store i32 0, i32* %2, align 4
  br label %108

; <label>:48:                                     ; preds = %39
  br label %107

; <label>:49:                                     ; preds = %27
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, -2047949020
  br i1 %51, label %52, label %62

; <label>:52:                                     ; preds = %49
  %53 = bitcast %struct.fpti_image_data* %8 to i8*
  call void @memset(i8* %53, i8 signext 0, i64 24)
  %54 = load i8*, i8** %5, align 8
  %55 = getelementptr inbounds %struct.fpti_image_data, %struct.fpti_image_data* %8, i32 0, i32 0
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %6, align 4
  %57 = getelementptr inbounds %struct.fpti_image_data, %struct.fpti_image_data* %8, i32 0, i32 1
  store i32 %56, i32* %57, align 8
  %58 = call i32 @fpti_display_img(%struct.fpti_image_data* %8)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

; <label>:60:                                     ; preds = %52
  store i32 0, i32* %2, align 4
  br label %108

; <label>:61:                                     ; preds = %52
  br label %106

; <label>:62:                                     ; preds = %49
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %63, -1018099245
  br i1 %64, label %65, label %75

; <label>:65:                                     ; preds = %62
  %66 = bitcast %struct.rpti_image_data* %9 to i8*
  call void @memset(i8* %66, i8 signext 0, i64 24)
  %67 = load i8*, i8** %5, align 8
  %68 = getelementptr inbounds %struct.rpti_image_data, %struct.rpti_image_data* %9, i32 0, i32 0
  store i8* %67, i8** %68, align 8
  %69 = load i32, i32* %6, align 4
  %70 = getelementptr inbounds %struct.rpti_image_data, %struct.rpti_image_data* %9, i32 0, i32 1
  store i32 %69, i32* %70, align 8
  %71 = call i32 @rpti_display_img(%struct.rpti_image_data* %9)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %65
  store i32 0, i32* %2, align 4
  br label %108

; <label>:74:                                     ; preds = %65
  br label %105

; <label>:75:                                     ; preds = %62
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 1994376368
  br i1 %77, label %78, label %88

; <label>:78:                                     ; preds = %75
  %79 = bitcast %struct.tbir_image_data* %10 to i8*
  call void @memset(i8* %79, i8 signext 0, i64 64)
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds %struct.tbir_image_data, %struct.tbir_image_data* %10, i32 0, i32 0
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* %6, align 4
  %83 = getelementptr inbounds %struct.tbir_image_data, %struct.tbir_image_data* %10, i32 0, i32 1
  store i32 %82, i32* %83, align 8
  %84 = call i32 @tbir_display_img(%struct.tbir_image_data* %10)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

; <label>:86:                                     ; preds = %78
  store i32 0, i32* %2, align 4
  br label %108

; <label>:87:                                     ; preds = %78
  br label %104

; <label>:88:                                     ; preds = %75
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %89, 823089611
  br i1 %90, label %91, label %101

; <label>:91:                                     ; preds = %88
  %92 = bitcast %struct.tpai_image_data* %11 to i8*
  call void @memset(i8* %92, i8 signext 0, i64 40)
  %93 = load i8*, i8** %5, align 8
  %94 = getelementptr inbounds %struct.tpai_image_data, %struct.tpai_image_data* %11, i32 0, i32 0
  store i8* %93, i8** %94, align 8
  %95 = load i32, i32* %6, align 4
  %96 = getelementptr inbounds %struct.tpai_image_data, %struct.tpai_image_data* %11, i32 0, i32 1
  store i32 %95, i32* %96, align 8
  %97 = call i32 @tpai_display_image(%struct.tpai_image_data* %11)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %91
  store i32 0, i32* %2, align 4
  br label %108

; <label>:100:                                    ; preds = %91
  br label %103

; <label>:101:                                    ; preds = %88
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  br label %103

; <label>:103:                                    ; preds = %101, %100
  br label %104

; <label>:104:                                    ; preds = %103, %87
  br label %105

; <label>:105:                                    ; preds = %104, %74
  br label %106

; <label>:106:                                    ; preds = %105, %61
  br label %107

; <label>:107:                                    ; preds = %106, %48
  store i32 1, i32* %2, align 4
  br label %108

; <label>:108:                                    ; preds = %107, %99, %86, %73, %60, %47, %26, %20, %14
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare i32 @memcpy(i8*, i8*, i64) #1

declare void @memset(i8*, i8 signext, i64) #1

declare i32 @fpai_display_img(%struct.fpai_image_data*) #1

declare i32 @fpti_display_img(%struct.fpti_image_data*) #1

declare i32 @rpti_display_img(%struct.rpti_image_data*) #1

declare i32 @tbir_display_img(%struct.tbir_image_data*) #1

declare i32 @tpai_display_image(%struct.tpai_image_data*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @menu() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.image_meta, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca %struct.image_meta*, align 8
  %8 = alloca %struct.image_meta*, align 8
  store i32 0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %9 = bitcast %struct.image_meta* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* %9, i8 0, i64 40, i32 8, i1 false)
  br label %10

; <label>:10:                                     ; preds = %0, %58, %127, %173, %211
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i32 0, i32 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  %17 = bitcast i32* %2 to i8*
  %18 = call i64 @receive_until(i8* %17, i8 signext 10, i64 2)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %10
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %212

; <label>:22:                                     ; preds = %10
  %23 = load i32, i32* %2, align 4
  %24 = sub nsw i32 %23, 48
  store i32 %24, i32* %2, align 4
  %25 = load i32, i32* %2, align 4
  switch i32 %25, label %208 [
    i32 1, label %26
    i32 2, label %106
    i32 3, label %121
    i32 4, label %167
    i32 5, label %207
  ]

; <label>:26:                                     ; preds = %22
  %27 = bitcast %struct.image_meta** %7 to i8**
  %28 = call i32 @allocate(i64 40, i32 0, i8** %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %26
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %212

; <label>:32:                                     ; preds = %26
  %33 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %34 = bitcast %struct.image_meta* %33 to i8*
  call void @memset(i8* %34, i8 signext 0, i64 40)
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  %36 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %37 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %36, i32 0, i32 0
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %37, i32 0, i32 0
  %39 = call i64 @receive_until(i8* %38, i8 signext 10, i64 15)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %46

; <label>:41:                                     ; preds = %32
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  %43 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %44 = bitcast %struct.image_meta* %43 to i8*
  %45 = call i32 @deallocate(i8* %44, i64 40)
  store i32 0, i32* %1, align 4
  br label %212

; <label>:46:                                     ; preds = %32
  %47 = bitcast i32* %3 to i8*
  %48 = call i32 @receive(i32 0, i8* %47, i64 2, i64* %4)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

; <label>:50:                                     ; preds = %46
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i32 0, i32 0))
  %52 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %53 = bitcast %struct.image_meta* %52 to i8*
  %54 = call i32 @deallocate(i8* %53, i64 40)
  store i32 0, i32* %1, align 4
  br label %212

; <label>:55:                                     ; preds = %46
  %56 = load i32, i32* %3, align 4
  %57 = icmp sgt i32 %56, 2048
  br i1 %57, label %58, label %63

; <label>:58:                                     ; preds = %55
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  %60 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %61 = bitcast %struct.image_meta* %60 to i8*
  %62 = call i32 @deallocate(i8* %61, i64 40)
  br label %10

; <label>:63:                                     ; preds = %55
  %64 = load i32, i32* %3, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %68 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %67, i32 0, i32 2
  %69 = call i32 @allocate(i64 %66, i32 0, i8** %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

; <label>:71:                                     ; preds = %63
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i32 0, i32 0))
  %73 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %74 = bitcast %struct.image_meta* %73 to i8*
  %75 = call i32 @deallocate(i8* %74, i64 40)
  store i32 0, i32* %1, align 4
  br label %212

; <label>:76:                                     ; preds = %63
  %77 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %78 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = call i32 @receive(i32 0, i8* %79, i64 %81, i64* %4)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

; <label>:84:                                     ; preds = %76
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.14, i32 0, i32 0))
  %86 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %87 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %86, i32 0, i32 2
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %3, align 4
  %90 = add nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = call i32 @deallocate(i8* %88, i64 %91)
  %93 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %94 = bitcast %struct.image_meta* %93 to i8*
  %95 = call i32 @deallocate(i8* %94, i64 40)
  store i32 0, i32* %1, align 4
  br label %212

; <label>:96:                                     ; preds = %76
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %99 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %5, i32 0, i32 3
  %101 = load %struct.image_meta*, %struct.image_meta** %100, align 8
  %102 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %103 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %102, i32 0, i32 3
  store %struct.image_meta* %101, %struct.image_meta** %103, align 8
  %104 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %105 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %5, i32 0, i32 3
  store %struct.image_meta* %104, %struct.image_meta** %105, align 8
  store %struct.image_meta* null, %struct.image_meta** %7, align 8
  br label %211

; <label>:106:                                    ; preds = %22
  %107 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %5, i32 0, i32 3
  %108 = load %struct.image_meta*, %struct.image_meta** %107, align 8
  store %struct.image_meta* %108, %struct.image_meta** %7, align 8
  br label %109

; <label>:109:                                    ; preds = %112, %106
  %110 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %111 = icmp ne %struct.image_meta* %110, null
  br i1 %111, label %112, label %120

; <label>:112:                                    ; preds = %109
  %113 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %114 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %113, i32 0, i32 0
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %114, i32 0, i32 0
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* %115)
  %117 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %118 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %117, i32 0, i32 3
  %119 = load %struct.image_meta*, %struct.image_meta** %118, align 8
  store %struct.image_meta* %119, %struct.image_meta** %7, align 8
  br label %109

; <label>:120:                                    ; preds = %109
  br label %211

; <label>:121:                                    ; preds = %22
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  %123 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %123, i8 0, i64 16, i32 16, i1 false)
  %124 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  %125 = call i64 @receive_until(i8* %124, i8 signext 10, i64 15)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %129

; <label>:127:                                    ; preds = %121
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0))
  br label %10

; <label>:129:                                    ; preds = %121
  %130 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %5, i32 0, i32 3
  %131 = load %struct.image_meta*, %struct.image_meta** %130, align 8
  store %struct.image_meta* %131, %struct.image_meta** %7, align 8
  store %struct.image_meta* %5, %struct.image_meta** %8, align 8
  br label %132

; <label>:132:                                    ; preds = %165, %129
  %133 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %134 = icmp ne %struct.image_meta* %133, null
  br i1 %134, label %135, label %166

; <label>:135:                                    ; preds = %132
  %136 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %137 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %136, i32 0, i32 0
  %138 = getelementptr inbounds [16 x i8], [16 x i8]* %137, i32 0, i32 0
  %139 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  %140 = call i32 @strcmp(i8* %138, i8* %139)
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %160

; <label>:142:                                    ; preds = %135
  %143 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %144 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %143, i32 0, i32 2
  %145 = load i8*, i8** %144, align 8
  %146 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %147 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  %150 = sext i32 %149 to i64
  %151 = call i32 @deallocate(i8* %145, i64 %150)
  %152 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %153 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %152, i32 0, i32 3
  %154 = load %struct.image_meta*, %struct.image_meta** %153, align 8
  %155 = load %struct.image_meta*, %struct.image_meta** %8, align 8
  %156 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %155, i32 0, i32 3
  store %struct.image_meta* %154, %struct.image_meta** %156, align 8
  %157 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %158 = bitcast %struct.image_meta* %157 to i8*
  %159 = call i32 @deallocate(i8* %158, i64 40)
  store %struct.image_meta* null, %struct.image_meta** %7, align 8
  br label %165

; <label>:160:                                    ; preds = %135
  %161 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  store %struct.image_meta* %161, %struct.image_meta** %8, align 8
  %162 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %163 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %162, i32 0, i32 3
  %164 = load %struct.image_meta*, %struct.image_meta** %163, align 8
  store %struct.image_meta* %164, %struct.image_meta** %7, align 8
  br label %165

; <label>:165:                                    ; preds = %160, %142
  br label %132

; <label>:166:                                    ; preds = %132
  br label %211

; <label>:167:                                    ; preds = %22
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  %169 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %169, i8 0, i64 16, i32 16, i1 false)
  %170 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  %171 = call i64 @receive_until(i8* %170, i8 signext 10, i64 15)
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %175

; <label>:173:                                    ; preds = %167
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0))
  br label %10

; <label>:175:                                    ; preds = %167
  %176 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %5, i32 0, i32 3
  %177 = load %struct.image_meta*, %struct.image_meta** %176, align 8
  store %struct.image_meta* %177, %struct.image_meta** %7, align 8
  br label %178

; <label>:178:                                    ; preds = %193, %175
  %179 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %180 = icmp ne %struct.image_meta* %179, null
  br i1 %180, label %181, label %194

; <label>:181:                                    ; preds = %178
  %182 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %183 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %182, i32 0, i32 0
  %184 = getelementptr inbounds [16 x i8], [16 x i8]* %183, i32 0, i32 0
  %185 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i32 0, i32 0
  %186 = call i32 @strcmp(i8* %184, i8* %185)
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %189

; <label>:188:                                    ; preds = %181
  br label %194

; <label>:189:                                    ; preds = %181
  %190 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %191 = getelementptr inbounds %struct.image_meta, %struct.image_meta* %190, i32 0, i32 3
  %192 = load %struct.image_meta*, %struct.image_meta** %191, align 8
  store %struct.image_meta* %192, %struct.image_meta** %7, align 8
  br label %193

; <label>:193:                                    ; preds = %189
  br label %178

; <label>:194:                                    ; preds = %188, %178
  %195 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %196 = icmp ne %struct.image_meta* %195, null
  br i1 %196, label %197, label %204

; <label>:197:                                    ; preds = %194
  %198 = load %struct.image_meta*, %struct.image_meta** %7, align 8
  %199 = call i32 @selectRenderer(%struct.image_meta* %198)
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %203

; <label>:201:                                    ; preds = %197
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %212

; <label>:203:                                    ; preds = %197
  br label %206

; <label>:204:                                    ; preds = %194
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0))
  br label %206

; <label>:206:                                    ; preds = %204, %203
  br label %211

; <label>:207:                                    ; preds = %22
  store i32 0, i32* %1, align 4
  br label %212

; <label>:208:                                    ; preds = %22
  %209 = load i32, i32* %2, align 4
  %210 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i32 0, i32 0), i32 %209)
  br label %211

; <label>:211:                                    ; preds = %208, %206, %166, %120, %96
  br label %10

; <label>:212:                                    ; preds = %207, %201, %84, %71, %50, %41, %30, %20
  %213 = load i32, i32* %1, align 4
  ret i32 %213
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare i64 @receive_until(i8*, i8 signext, i64) #1

declare i32 @deallocate(i8*, i64) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i8* null, i8** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %5 = call i32 @menu()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
