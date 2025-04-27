; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_package = type { i32, i32* }

@.str = private unnamed_addr constant [5 x i8] c"CHRT\00", align 1
@_NSConcreteStackBlock = common global i8* null, align 8
@_NSConcreteGlobalBlock = common global i8* null, align 8

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %3 = bitcast i32* %2 to i8*
  %4 = call i64 @read(i8* %3, i64 4)
  %5 = load i32, i32* %2, align 4
  %6 = icmp ult i32 %5, 1
  br i1 %6, label %10, label %7

; <label>:7:                                      ; preds = %0
  %8 = load i32, i32* %2, align 4
  %9 = icmp ugt i32 %8, 65536
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %7, %0
  store i32 -1, i32* %1, align 4
  br label %13

; <label>:11:                                     ; preds = %7
  %12 = load i32, i32* %2, align 4
  call void @read_data(i32 %12)
  store i32 0, i32* %1, align 4
  br label %13

; <label>:13:                                     ; preds = %11, %10
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define i64 @read(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @receive(i32 0, i8* %7, i64 %8, i64* %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %2
  call void @_terminate(i32 -1) #4
  unreachable

; <label>:13:                                     ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %13
  call void @_terminate(i32 -1) #4
  unreachable

; <label>:18:                                     ; preds = %13
  %19 = load i64, i64* %5, align 8
  ret i64 %19
}

; Function Attrs: noinline nounwind uwtable
define void @read_data(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.data_package, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i32, i64 %9, align 16
  %12 = getelementptr inbounds %struct.data_package, %struct.data_package* %4, i32 0, i32 0
  %13 = load i32, i32* %2, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.data_package, %struct.data_package* %4, i32 0, i32 1
  store i32* %11, i32** %14, align 8
  store i32 0, i32* %5, align 4
  br label %15

; <label>:15:                                     ; preds = %26, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %29

; <label>:19:                                     ; preds = %15
  %20 = bitcast i32* %6 to i8*
  %21 = call i64 @read(i8* %20, i64 4)
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %11, i64 %24
  store i32 %22, i32* %25, align 4
  br label %26

; <label>:26:                                     ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = add i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %15

; <label>:29:                                     ; preds = %15
  br label %30

; <label>:30:                                     ; preds = %60, %29
  br label %31

; <label>:31:                                     ; preds = %30
  %32 = call i32 @transmit_all(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 4)
  %33 = bitcast i32* %2 to i8*
  %34 = call i32 @transmit_all(i32 1, i8* %33, i64 4)
  %35 = bitcast i32* %7 to i8*
  %36 = call i64 @read(i8* %35, i64 4)
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %59 [
    i32 1, label %38
    i32 3, label %44
    i32 4, label %50
    i32 5, label %51
    i32 6, label %52
    i32 7, label %53
  ]

; <label>:38:                                     ; preds = %31
  %39 = bitcast %struct.data_package* %4 to { i32, i32* }*
  %40 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %39, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  call void @sparks(i32 %41, i32* %43)
  br label %60

; <label>:44:                                     ; preds = %31
  %45 = bitcast %struct.data_package* %4 to { i32, i32* }*
  %46 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %45, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  call void @bars(i32 %47, i32* %49)
  br label %60

; <label>:50:                                     ; preds = %31
  call void @echo()
  br label %60

; <label>:51:                                     ; preds = %31
  call void (...) @seed()
  br label %60

; <label>:52:                                     ; preds = %31
  call void (...) @noise()
  br label %60

; <label>:53:                                     ; preds = %31
  %54 = bitcast %struct.data_package* %4 to { i32, i32* }*
  %55 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds { i32, i32* }, { i32, i32* }* %54, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  call void @replacer(i32 %56, i32* %58)
  br label %60

; <label>:59:                                     ; preds = %31
  call void @_terminate(i32 0) #4
  unreachable

; <label>:60:                                     ; preds = %53, %52, %51, %50, %44, %38
  br label %30
                                                  ; No predecessors!
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare i32 @transmit_all(i32, i8*, i64) #2

declare void @sparks(i32, i32*) #2

declare void @bars(i32, i32*) #2

declare void @seed(...) #2

declare void @noise(...) #2

declare void @replacer(i32, i32*) #2

; Function Attrs: noreturn
declare void @_terminate(i32) #3

; Function Attrs: noinline nounwind uwtable
define void @draw_echo(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i32 0, i32* %4, align 4
  br label %10

; <label>:10:                                     ; preds = %21, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %2, align 4
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %24

; <label>:14:                                     ; preds = %10
  %15 = bitcast i32* %5 to i8*
  %16 = call i64 @read(i8* %15, i64 4)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %9, i64 %19
  store i32 %17, i32* %20, align 4
  br label %21

; <label>:21:                                     ; preds = %14
  %22 = load i32, i32* %4, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %10

; <label>:24:                                     ; preds = %10
  %25 = bitcast i32* %9 to i8*
  %26 = load i32, i32* %2, align 4
  %27 = zext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = call i32 @transmit_all(i32 1, i8* %25, i64 %28)
  %30 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %30)
  ret void
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @echo() #0 {
  %1 = alloca i32, align 4
  %2 = bitcast i32* %1 to i8*
  %3 = call i64 @read(i8* %2, i64 4)
  %4 = load i32, i32* %1, align 4
  %5 = icmp ult i32 %4, 1
  br i1 %5, label %9, label %6

; <label>:6:                                      ; preds = %0
  %7 = load i32, i32* %1, align 4
  %8 = icmp ugt i32 %7, 65536
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %6, %0
  call void @_terminate(i32 -1) #4
  unreachable

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %1, align 4
  call void @draw_echo(i32 %11)
  ret void
}

declare i32 @receive(i32, i8*, i64, i64*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
