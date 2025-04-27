; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.protocol_frame = type { i32, i32, i8* }

@gauntlet_count = constant i32 32, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @send_empty_frame(i32 0)
  call void @expect_empty_frame(i32 0)
  call void @seed()
  call void @gauntlet()
  br label %2

; <label>:2:                                      ; preds = %0, %2
  call void @operate()
  br label %2
                                                  ; No predecessors!
  %4 = load i32, i32* %1, align 4
  ret i32 %4
}

declare void @send_empty_frame(i32) #1

declare void @expect_empty_frame(i32) #1

; Function Attrs: noinline nounwind uwtable
define void @seed() #0 {
  %1 = alloca %struct.protocol_frame*, align 8
  %2 = call %struct.protocol_frame* @expect_frame(i32 1)
  store %struct.protocol_frame* %2, %struct.protocol_frame** %1, align 8
  %3 = load %struct.protocol_frame*, %struct.protocol_frame** %1, align 8
  call void @handle_seed(%struct.protocol_frame* %3)
  %4 = load %struct.protocol_frame*, %struct.protocol_frame** %1, align 8
  call void @free_frame(%struct.protocol_frame* %4)
  ret void
}

declare %struct.protocol_frame* @expect_frame(i32) #1

declare void @handle_seed(%struct.protocol_frame*) #1

declare void @free_frame(%struct.protocol_frame*) #1

; Function Attrs: noinline nounwind uwtable
define void @gauntlet() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.protocol_frame*, align 8
  store i32 0, i32* %1, align 4
  br label %3

; <label>:3:                                      ; preds = %10, %0
  %4 = load i32, i32* %1, align 4
  %5 = icmp slt i32 %4, 32
  br i1 %5, label %6, label %13

; <label>:6:                                      ; preds = %3
  %7 = call %struct.protocol_frame* @expect_frame(i32 20)
  store %struct.protocol_frame* %7, %struct.protocol_frame** %2, align 8
  %8 = load %struct.protocol_frame*, %struct.protocol_frame** %2, align 8
  call void @handle_guess(%struct.protocol_frame* %8)
  %9 = load %struct.protocol_frame*, %struct.protocol_frame** %2, align 8
  call void @free_frame(%struct.protocol_frame* %9)
  br label %10

; <label>:10:                                     ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %3

; <label>:13:                                     ; preds = %3
  ret void
}

declare void @handle_guess(%struct.protocol_frame*) #1

; Function Attrs: noinline nounwind uwtable
define void @operate() #0 {
  %1 = alloca %struct.protocol_frame*, align 8
  %2 = call i32 @transmit(i32 2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i64 1, i64* null)
  %3 = call %struct.protocol_frame* (...) @receive_frame()
  store %struct.protocol_frame* %3, %struct.protocol_frame** %1, align 8
  %4 = load %struct.protocol_frame*, %struct.protocol_frame** %1, align 8
  %5 = getelementptr inbounds %struct.protocol_frame, %struct.protocol_frame* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %15 [
    i32 1, label %7
    i32 10, label %9
    i32 20, label %11
    i32 30, label %13
  ]

; <label>:7:                                      ; preds = %0
  %8 = load %struct.protocol_frame*, %struct.protocol_frame** %1, align 8
  call void @handle_seed(%struct.protocol_frame* %8)
  br label %16

; <label>:9:                                      ; preds = %0
  %10 = load %struct.protocol_frame*, %struct.protocol_frame** %1, align 8
  call void @handle_rand(%struct.protocol_frame* %10)
  br label %16

; <label>:11:                                     ; preds = %0
  %12 = load %struct.protocol_frame*, %struct.protocol_frame** %1, align 8
  call void @handle_guess(%struct.protocol_frame* %12)
  br label %16

; <label>:13:                                     ; preds = %0
  %14 = load %struct.protocol_frame*, %struct.protocol_frame** %1, align 8
  call void @handle_echo(%struct.protocol_frame* %14)
  br label %16

; <label>:15:                                     ; preds = %0
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:16:                                     ; preds = %13, %11, %9, %7
  %17 = load %struct.protocol_frame*, %struct.protocol_frame** %1, align 8
  call void @free_frame(%struct.protocol_frame* %17)
  ret void
}

declare i32 @transmit(i32, i8*, i64, i64*) #1

declare %struct.protocol_frame* @receive_frame(...) #1

declare void @handle_rand(%struct.protocol_frame*) #1

declare void @handle_echo(%struct.protocol_frame*) #1

; Function Attrs: noreturn
declare void @_terminate(i32) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
