; ModuleID = 'storage_device.c'
source_filename = "storage_device.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_t = type { i64 (i8*, i64)*, i64 (i8*, i64)*, i32, %struct.msc_t }
%struct.msc_t = type { %struct.cbw_t, %struct.csw_t, i32, i32, i64, i8*, i64, i8*, i32, [4096 x i8], %union.anon }
%struct.cbw_t = type <{ i32, i32, i32, i8, i8, i8, [16 x i8] }>
%struct.csw_t = type <{ i32, i32, i32, i8 }>
%union.anon = type { %struct.anon }
%struct.anon = type { i32, i32 }

@usb = internal global %struct.usb_t zeroinitializer, align 8

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 @usb_init(%struct.usb_t* @usb)
  store i64 (i8*, i64)* @_send, i64 (i8*, i64)** getelementptr inbounds (%struct.usb_t, %struct.usb_t* @usb, i32 0, i32 1), align 8
  store i64 (i8*, i64)* @_recv, i64 (i8*, i64)** getelementptr inbounds (%struct.usb_t, %struct.usb_t* @usb, i32 0, i32 0), align 8
  br label %3

; <label>:3:                                      ; preds = %8, %0
  %4 = call i32 @usb_handle_packet(%struct.usb_t* @usb)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

; <label>:6:                                      ; preds = %3
  br label %9

; <label>:7:                                      ; preds = %3
  br label %8

; <label>:8:                                      ; preds = %7
  br i1 true, label %3, label %9

; <label>:9:                                      ; preds = %8, %6
  ret i32 0
}

declare i32 @usb_init(%struct.usb_t*) #1

; Function Attrs: noinline nounwind uwtable
define internal i64 @_send(i8*, i64) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @transmit(i32 1, i8* %8, i64 %9, i64* %6)
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

; <label>:14:                                     ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = load i64, i64* %5, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %14, %2
  store i64 0, i64* %3, align 8
  br label %21

; <label>:19:                                     ; preds = %14
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* %3, align 8
  br label %21

; <label>:21:                                     ; preds = %19, %18
  %22 = load i64, i64* %3, align 8
  ret i64 %22
}

; Function Attrs: noinline nounwind uwtable
define internal i64 @_recv(i8*, i64) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %6, align 8
  br label %9

; <label>:9:                                      ; preds = %27, %2
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %31

; <label>:13:                                     ; preds = %9
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = sub i64 %14, %15
  store i64 %16, i64* %7, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = load i64, i64* %7, align 8
  %19 = call i32 @receive(i32 0, i8* %17, i64 %18, i64* %5)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

; <label>:23:                                     ; preds = %13
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %23, %13
  br label %31

; <label>:27:                                     ; preds = %23
  %28 = load i64, i64* %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %6, align 8
  br label %9

; <label>:31:                                     ; preds = %26, %9
  %32 = load i64, i64* %6, align 8
  ret i64 %32
}

declare i32 @usb_handle_packet(%struct.usb_t*) #1

declare i32 @transmit(i32, i8*, i64, i64*) #1

declare i32 @receive(i32, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
