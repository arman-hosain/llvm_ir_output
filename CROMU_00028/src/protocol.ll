; ModuleID = 'protocol.c'
source_filename = "protocol.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol_frame = type { i8, i8, i8* }

; Function Attrs: noinline nounwind uwtable
define %struct.protocol_frame* @allocate_frame(i64, i8*) #0 {
  %3 = alloca %struct.protocol_frame*, align 8
  %4 = alloca %struct.protocol_frame, align 8
  %5 = alloca %struct.protocol_frame*, align 8
  %6 = bitcast %struct.protocol_frame* %4 to { i64, i8* }*
  %7 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %6, i32 0, i32 0
  store i64 %0, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %6, i32 0, i32 1
  store i8* %1, i8** %8, align 8
  %9 = bitcast %struct.protocol_frame** %5 to i8**
  %10 = call i32 @allocate(i64 16, i32 0, i8** %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:13:                                     ; preds = %2
  %14 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %4, i32 0, i32 0
  %15 = load i8, i8* %14, align 8
  %16 = load %struct.protocol_frame*, %struct.protocol_frame** %5, align 8
  %17 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %16, i32 0, i32 0
  store i8 %15, i8* %17, align 8
  %18 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %4, i32 0, i32 1
  %19 = load i8, i8* %18, align 1
  %20 = load %struct.protocol_frame*, %struct.protocol_frame** %5, align 8
  %21 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %20, i32 0, i32 1
  store i8 %19, i8* %21, align 1
  %22 = load %struct.protocol_frame*, %struct.protocol_frame** %5, align 8
  %23 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %22, i32 0, i32 1
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %13
  %28 = load %struct.protocol_frame*, %struct.protocol_frame** %5, align 8
  store %struct.protocol_frame* %28, %struct.protocol_frame** %3, align 8
  br label %40

; <label>:29:                                     ; preds = %13
  %30 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %4, i32 0, i32 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i64
  %33 = load %struct.protocol_frame*, %struct.protocol_frame** %5, align 8
  %34 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %33, i32 0, i32 2
  %35 = call i32 @allocate(i64 %32, i32 0, i8** %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %29
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:38:                                     ; preds = %29
  %39 = load %struct.protocol_frame*, %struct.protocol_frame** %5, align 8
  store %struct.protocol_frame* %39, %struct.protocol_frame** %3, align 8
  br label %40

; <label>:40:                                     ; preds = %38, %27
  %41 = load %struct.protocol_frame*, %struct.protocol_frame** %3, align 8
  ret %struct.protocol_frame* %41
}

declare i32 @allocate(i64, i32, i8**) #1

; Function Attrs: noreturn
declare void @_terminate(i32) #2

; Function Attrs: noinline nounwind uwtable
define %struct.protocol_frame* @expect_frame(i8 zeroext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.protocol_frame*, align 8
  store i8 %0, i8* %2, align 1
  %4 = call %struct.protocol_frame* @receive_frame()
  store %struct.protocol_frame* %4, %struct.protocol_frame** %3, align 8
  %5 = load %struct.protocol_frame*, %struct.protocol_frame** %3, align 8
  %6 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 8
  %8 = zext i8 %7 to i32
  %9 = load i8, i8* %2, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %8, %10
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %1
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:13:                                     ; preds = %1
  %14 = load %struct.protocol_frame*, %struct.protocol_frame** %3, align 8
  ret %struct.protocol_frame* %14
}

; Function Attrs: noinline nounwind uwtable
define %struct.protocol_frame* @receive_frame() #0 {
  %1 = alloca %struct.protocol_frame*, align 8
  %2 = alloca %struct.protocol_frame, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.protocol_frame*, align 8
  %6 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %2, i32 0, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %2, i32 0, i32 0
  store i8 0, i8* %7, align 8
  store i64 2, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %8 = bitcast %struct.protocol_frame* %2 to i8*
  call void @receive_eventually(i32 0, i8* %8, i64 2)
  %9 = bitcast %struct.protocol_frame* %2 to { i64, i8* }*
  %10 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %9, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call %struct.protocol_frame* @allocate_frame(i64 %11, i8* %13)
  store %struct.protocol_frame* %14, %struct.protocol_frame** %5, align 8
  %15 = load %struct.protocol_frame*, %struct.protocol_frame** %5, align 8
  %16 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %15, i32 0, i32 1
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %0
  %21 = load %struct.protocol_frame*, %struct.protocol_frame** %5, align 8
  store %struct.protocol_frame* %21, %struct.protocol_frame** %1, align 8
  br label %31

; <label>:22:                                     ; preds = %0
  %23 = load %struct.protocol_frame*, %struct.protocol_frame** %5, align 8
  %24 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %23, i32 0, i32 2
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.protocol_frame*, %struct.protocol_frame** %5, align 8
  %27 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %26, i32 0, i32 1
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i64
  call void @receive_eventually(i32 0, i8* %25, i64 %29)
  %30 = load %struct.protocol_frame*, %struct.protocol_frame** %5, align 8
  store %struct.protocol_frame* %30, %struct.protocol_frame** %1, align 8
  br label %31

; <label>:31:                                     ; preds = %22, %20
  %32 = load %struct.protocol_frame*, %struct.protocol_frame** %1, align 8
  ret %struct.protocol_frame* %32
}

; Function Attrs: noinline nounwind uwtable
define void @receive_eventually(i32, i8*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  br label %12

; <label>:12:                                     ; preds = %30, %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %37

; <label>:16:                                     ; preds = %12
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %19, %20
  %22 = call i32 @receive(i32 %17, i8* %18, i64 %21, i64* %10)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %16
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:26:                                     ; preds = %16
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %26
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:30:                                     ; preds = %26
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr i8, i8* %35, i64 %34
  store i8* %36, i8** %8, align 8
  br label %12

; <label>:37:                                     ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @send_frame(%struct.protocol_frame*) #0 {
  %2 = alloca %struct.protocol_frame*, align 8
  %3 = alloca i64, align 8
  store %struct.protocol_frame* %0, %struct.protocol_frame** %2, align 8
  %4 = load %struct.protocol_frame*, %struct.protocol_frame** %2, align 8
  %5 = bitcast %struct.protocol_frame* %4 to i8*
  call void @send_eventually(i32 1, i8* %5, i64 2)
  %6 = load %struct.protocol_frame*, %struct.protocol_frame** %2, align 8
  %7 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %6, i32 0, i32 2
  %8 = load i8*, i8** %7, align 8
  %9 = load %struct.protocol_frame*, %struct.protocol_frame** %2, align 8
  %10 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %9, i32 0, i32 1
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i64
  call void @send_eventually(i32 1, i8* %8, i64 %12)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @send_eventually(i32, i8*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load i8*, i8** %5, align 8
  store i8* %11, i8** %8, align 8
  br label %12

; <label>:12:                                     ; preds = %26, %3
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %33

; <label>:16:                                     ; preds = %12
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %19, %20
  %22 = call i32 @transmit(i32 %17, i8* %18, i64 %21, i64* %10)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %16
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:26:                                     ; preds = %16
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, %27
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %10, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr i8, i8* %31, i64 %30
  store i8* %32, i8** %8, align 8
  br label %12

; <label>:33:                                     ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @send_empty_frame(i8 zeroext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.protocol_frame, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %3, i32 0, i32 0
  store i8 %4, i8* %5, align 8
  %6 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %3, i32 0, i32 1
  store i8 0, i8* %6, align 1
  %7 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %3, i32 0, i32 2
  store i8* null, i8** %7, align 8
  call void @send_frame(%struct.protocol_frame* %3)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @expect_empty_frame(i8 zeroext) #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.protocol_frame*, align 8
  store i8 %0, i8* %2, align 1
  %4 = load i8, i8* %2, align 1
  %5 = call %struct.protocol_frame* @expect_frame(i8 zeroext %4)
  store %struct.protocol_frame* %5, %struct.protocol_frame** %3, align 8
  %6 = load %struct.protocol_frame*, %struct.protocol_frame** %3, align 8
  call void @free_frame(%struct.protocol_frame* %6)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @free_frame(%struct.protocol_frame*) #0 {
  %2 = alloca %struct.protocol_frame*, align 8
  store %struct.protocol_frame* %0, %struct.protocol_frame** %2, align 8
  %3 = load %struct.protocol_frame*, %struct.protocol_frame** %2, align 8
  %4 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %3, i32 0, i32 2
  %5 = load i8*, i8** %4, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %19

; <label>:7:                                      ; preds = %1
  %8 = load %struct.protocol_frame*, %struct.protocol_frame** %2, align 8
  %9 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %8, i32 0, i32 2
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.protocol_frame*, %struct.protocol_frame** %2, align 8
  %12 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %11, i32 0, i32 1
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i64
  %15 = call i32 @deallocate(i8* %10, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %7
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:18:                                     ; preds = %7
  br label %19

; <label>:19:                                     ; preds = %18, %1
  %20 = load %struct.protocol_frame*, %struct.protocol_frame** %2, align 8
  %21 = bitcast %struct.protocol_frame* %20 to i8*
  %22 = call i32 @deallocate(i8* %21, i64 8)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %19
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:25:                                     ; preds = %19
  ret void
}

declare i32 @deallocate(i8*, i64) #1

declare i32 @transmit(i32, i8*, i64, i64*) #1

declare i32 @receive(i32, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
