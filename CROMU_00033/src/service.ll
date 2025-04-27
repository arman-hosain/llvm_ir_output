; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { [256 x i8], i32, i32, i8* }

@root = global %struct.file* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"[ERROR] Failed to create the root node\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"[ERROR] Receive failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"[INFO] Terminating\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"[INFO] Listing files\0A\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"[ERROR] Invalid command: $x\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @service_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.file*, align 8
  store i32 0, i32* %1, align 4
  store %struct.file* null, %struct.file** %2, align 8
  %3 = call %struct.file* @init_file()
  store %struct.file* %3, %struct.file** @root, align 8
  %4 = load %struct.file*, %struct.file** @root, align 8
  %5 = icmp eq %struct.file* %4, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %0
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0))
  br label %47

; <label>:8:                                      ; preds = %0
  %9 = load %struct.file*, %struct.file** @root, align 8
  %10 = call i32 @set_type(%struct.file* %9, i32 1)
  %11 = load %struct.file*, %struct.file** @root, align 8
  %12 = call i32 @set_name(%struct.file* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %8, %24, %29, %34, %46
  %14 = bitcast i32* %1 to i8*
  %15 = call i32 @recv(i8* %14, i32 4)
  %16 = icmp ne i32 %15, 4
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %13
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i32 0, i32 0))
  br label %47

; <label>:19:                                     ; preds = %13
  %20 = load i32, i32* %1, align 4
  switch i32 %20, label %43 [
    i32 1145980243, label %21
    i32 1380533326, label %26
    i32 1447249234, label %31
    i32 1347376211, label %36
    i32 1414419024, label %38
    i32 1330660690, label %41
  ]

; <label>:21:                                     ; preds = %19
  %22 = call i32 @handle_send()
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  br label %13

; <label>:25:                                     ; preds = %21
  br label %46

; <label>:26:                                     ; preds = %19
  %27 = call i32 @handle_ndir()
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %26
  br label %13

; <label>:30:                                     ; preds = %26
  br label %46

; <label>:31:                                     ; preds = %19
  %32 = call i32 @handle_recv()
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %31
  br label %13

; <label>:35:                                     ; preds = %31
  br label %46

; <label>:36:                                     ; preds = %19
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  call void @_terminate(i32 0) #3
  unreachable

; <label>:38:                                     ; preds = %19
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i32 0, i32 0))
  %40 = load %struct.file*, %struct.file** @root, align 8
  call void @handle_prnt(%struct.file* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i32 0, i32 0))
  br label %46

; <label>:41:                                     ; preds = %19
  %42 = call i32 @handle_repo()
  br label %46

; <label>:43:                                     ; preds = %19
  %44 = load i32, i32* %1, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0), i32 %44)
  br label %46

; <label>:46:                                     ; preds = %43, %41, %38, %35, %30, %25
  br label %13

; <label>:47:                                     ; preds = %17, %6
  ret void
}

declare %struct.file* @init_file() #1

declare i32 @printf(i8*, ...) #1

declare i32 @set_type(%struct.file*, i32) #1

declare i32 @set_name(%struct.file*, i8*) #1

declare i32 @recv(i8*, i32) #1

declare i32 @handle_send() #1

declare i32 @handle_ndir() #1

declare i32 @handle_recv() #1

; Function Attrs: noreturn
declare void @_terminate(i32) #2

declare void @handle_prnt(%struct.file*, i8*) #1

declare i32 @handle_repo() #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @service_loop()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
