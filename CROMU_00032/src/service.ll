; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BitStream = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"[ERROR] Failed to receive\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"----------------Stream Me Your Video----------------\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"[ERROR] Image must be smaller than 4096 bytes\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"[ERROR] Image must be greater than 8 bytes\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i64 @receiveIt(i8*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  store i8* %9, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  store i64 0, i64* %3, align 8
  br label %39

; <label>:13:                                     ; preds = %2
  br label %14

; <label>:14:                                     ; preds = %27, %13
  %15 = load i64, i64* %5, align 8
  %16 = icmp ult i64 0, %15
  br i1 %16, label %17, label %36

; <label>:17:                                     ; preds = %14
  %18 = load i8*, i8** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i8, i8* %18, i64 %20
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @receive(i32 0, i8* %21, i64 %22, i64* %6)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %17
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i32 0, i32 0))
  store i64 0, i64* %3, align 8
  br label %39

; <label>:27:                                     ; preds = %17
  %28 = load i64, i64* %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = add i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %8, align 4
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = sub i64 %34, %33
  store i64 %35, i64* %5, align 8
  br label %14

; <label>:36:                                     ; preds = %14
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %3, align 8
  br label %39

; <label>:39:                                     ; preds = %36, %25, %12
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare i32 @receive(i32, i8*, i64, i64*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define %struct.BitStream* @readImageData() #0 {
  %1 = alloca %struct.BitStream*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.BitStream*, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %2, align 4
  store i64 0, i64* %3, align 8
  store %struct.BitStream* null, %struct.BitStream** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i32 0, i32 0))
  %7 = bitcast i32* %2 to i8*
  %8 = call i64 @receiveIt(i8* %7, i64 4)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 4
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %0
  store %struct.BitStream* null, %struct.BitStream** %1, align 8
  br label %49

; <label>:12:                                     ; preds = %0
  %13 = load i32, i32* %2, align 4
  %14 = icmp sgt i32 %13, 4096
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %12
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i32 0, i32 0))
  store %struct.BitStream* null, %struct.BitStream** %1, align 8
  br label %49

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 8
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i32 0, i32 0))
  store %struct.BitStream* null, %struct.BitStream** %1, align 8
  br label %49

; <label>:22:                                     ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = call i8* @my_malloc(i64 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %22
  store %struct.BitStream* null, %struct.BitStream** %1, align 8
  br label %49

; <label>:29:                                     ; preds = %22
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* %2, align 4
  %32 = sext i32 %31 to i64
  call void @llvm.memset.p0i8.i64(i8* %30, i8 0, i64 %32, i32 1, i1 false)
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = call i64 @receiveIt(i8* %33, i64 %35)
  store i64 %36, i64* %3, align 8
  %37 = load i64, i64* %3, align 8
  %38 = load i32, i32* %2, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %29
  %42 = load i8*, i8** %5, align 8
  call void @my_free(i8* %42)
  store %struct.BitStream* null, %struct.BitStream** %1, align 8
  br label %49

; <label>:43:                                     ; preds = %29
  %44 = load i8*, i8** %5, align 8
  %45 = load i32, i32* %2, align 4
  %46 = call %struct.BitStream* @initStream(i8* %44, i32 %45)
  store %struct.BitStream* %46, %struct.BitStream** %4, align 8
  %47 = load i8*, i8** %5, align 8
  call void @my_free(i8* %47)
  store i8* null, i8** %5, align 8
  %48 = load %struct.BitStream*, %struct.BitStream** %4, align 8
  store %struct.BitStream* %48, %struct.BitStream** %1, align 8
  br label %49

; <label>:49:                                     ; preds = %43, %41, %28, %20, %15, %11
  %50 = load %struct.BitStream*, %struct.BitStream** %1, align 8
  ret %struct.BitStream* %50
}

declare i8* @my_malloc(i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare void @my_free(i8*) #1

declare %struct.BitStream* @initStream(i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8, align 1
  %3 = alloca %struct.BitStream*, align 8
  store i32 0, i32* %1, align 4
  store i8 0, i8* %2, align 1
  %4 = call %struct.BitStream* @readImageData()
  store %struct.BitStream* %4, %struct.BitStream** %3, align 8
  %5 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  %6 = icmp eq %struct.BitStream* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %0
  store i32 0, i32* %1, align 4
  br label %10

; <label>:8:                                      ; preds = %0
  %9 = load %struct.BitStream*, %struct.BitStream** %3, align 8
  call void @renderCVF(%struct.BitStream* %9)
  call void @freeStream(%struct.BitStream** %3)
  store i32 0, i32* %1, align 4
  br label %10

; <label>:10:                                     ; preds = %8, %7
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

declare void @renderCVF(%struct.BitStream*) #1

declare void @freeStream(%struct.BitStream**) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
