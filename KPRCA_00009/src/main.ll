; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_t = type { i8*, i8*, [16 x i8], i8*, i8*, [3 x %struct.pal_t], i8, %struct.reg_t, i32, float, i32, i32, i32, i32, i32, i32 }
%struct.pal_t = type { [4 x i8] }
%struct.reg_t = type { %union.anon, %union.anon.0, %union.anon.1, %union.anon.2, i16, i16, i8 }
%union.anon = type { i16 }
%union.anon.0 = type { i16 }
%union.anon.1 = type { i16 }
%union.anon.2 = type { i16 }
%struct.cgc_fd_set = type { [16 x i64] }
%struct.cgc_timeval = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"Good-Bye\0A\00", align 1
@.str.1 = private unnamed_addr constant [82 x i8] c"HELP: (q)uit, (h)elp, (wasd) direction keys, (j) A, (k) B, (u) SELECT, (i) START\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Unable to allocate memory.\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\1B[2J\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Unable to load ROM.\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"\1B[?25l\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"\1B[H\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"AF = %04X, BC = %04X, DE = %04X, HL = %04X\0A\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"SP = %04X, PC = %04X\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @process_input(%struct.gb_t*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_t*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store %struct.gb_t* %0, %struct.gb_t** %3, align 8
  %6 = call i32 @receive(i32 0, i8* %4, i64 1, i64* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

; <label>:8:                                      ; preds = %1
  %9 = load i64, i64* %5, align 8
  %10 = icmp ne i64 %9, 1
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8, %1
  store i32 0, i32* %2, align 4
  br label %132

; <label>:12:                                     ; preds = %8
  %13 = load i8, i8* %4, align 1
  %14 = sext i8 %13 to i32
  switch i32 %14, label %131 [
    i32 119, label %15
    i32 87, label %22
    i32 97, label %29
    i32 65, label %36
    i32 115, label %43
    i32 83, label %50
    i32 100, label %57
    i32 68, label %64
    i32 106, label %71
    i32 74, label %78
    i32 107, label %85
    i32 75, label %92
    i32 117, label %99
    i32 85, label %106
    i32 105, label %113
    i32 73, label %120
    i32 113, label %127
    i32 104, label %129
    i32 63, label %129
  ]

; <label>:15:                                     ; preds = %12
  %16 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %17 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %16, i32 0, i32 6
  %18 = load i8, i8* %17, align 4
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, 4
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %17, align 4
  br label %131

; <label>:22:                                     ; preds = %12
  %23 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %24 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %23, i32 0, i32 6
  %25 = load i8, i8* %24, align 4
  %26 = zext i8 %25 to i32
  %27 = and i32 %26, -5
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %24, align 4
  br label %131

; <label>:29:                                     ; preds = %12
  %30 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %31 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %30, i32 0, i32 6
  %32 = load i8, i8* %31, align 4
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, 2
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %31, align 4
  br label %131

; <label>:36:                                     ; preds = %12
  %37 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %38 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %37, i32 0, i32 6
  %39 = load i8, i8* %38, align 4
  %40 = zext i8 %39 to i32
  %41 = and i32 %40, -3
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %38, align 4
  br label %131

; <label>:43:                                     ; preds = %12
  %44 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %45 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %44, i32 0, i32 6
  %46 = load i8, i8* %45, align 4
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, 8
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 4
  br label %131

; <label>:50:                                     ; preds = %12
  %51 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %52 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %51, i32 0, i32 6
  %53 = load i8, i8* %52, align 4
  %54 = zext i8 %53 to i32
  %55 = and i32 %54, -9
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %52, align 4
  br label %131

; <label>:57:                                     ; preds = %12
  %58 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %59 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %58, i32 0, i32 6
  %60 = load i8, i8* %59, align 4
  %61 = zext i8 %60 to i32
  %62 = or i32 %61, 1
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %59, align 4
  br label %131

; <label>:64:                                     ; preds = %12
  %65 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %66 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %65, i32 0, i32 6
  %67 = load i8, i8* %66, align 4
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, -2
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %66, align 4
  br label %131

; <label>:71:                                     ; preds = %12
  %72 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %73 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %72, i32 0, i32 6
  %74 = load i8, i8* %73, align 4
  %75 = zext i8 %74 to i32
  %76 = or i32 %75, 16
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %73, align 4
  br label %131

; <label>:78:                                     ; preds = %12
  %79 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %80 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %79, i32 0, i32 6
  %81 = load i8, i8* %80, align 4
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, -17
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %80, align 4
  br label %131

; <label>:85:                                     ; preds = %12
  %86 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %87 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %86, i32 0, i32 6
  %88 = load i8, i8* %87, align 4
  %89 = zext i8 %88 to i32
  %90 = or i32 %89, 32
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %87, align 4
  br label %131

; <label>:92:                                     ; preds = %12
  %93 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %94 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %93, i32 0, i32 6
  %95 = load i8, i8* %94, align 4
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, -33
  %98 = trunc i32 %97 to i8
  store i8 %98, i8* %94, align 4
  br label %131

; <label>:99:                                     ; preds = %12
  %100 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %101 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %100, i32 0, i32 6
  %102 = load i8, i8* %101, align 4
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, 64
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %101, align 4
  br label %131

; <label>:106:                                    ; preds = %12
  %107 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %108 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %107, i32 0, i32 6
  %109 = load i8, i8* %108, align 4
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, -65
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %108, align 4
  br label %131

; <label>:113:                                    ; preds = %12
  %114 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %115 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %114, i32 0, i32 6
  %116 = load i8, i8* %115, align 4
  %117 = zext i8 %116 to i32
  %118 = or i32 %117, 128
  %119 = trunc i32 %118 to i8
  store i8 %119, i8* %115, align 4
  br label %131

; <label>:120:                                    ; preds = %12
  %121 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %122 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %121, i32 0, i32 6
  %123 = load i8, i8* %122, align 4
  %124 = zext i8 %123 to i32
  %125 = and i32 %124, -129
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %122, align 4
  br label %131

; <label>:127:                                    ; preds = %12
  %128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i32 0, i32 0))
  store i32 0, i32* %2, align 4
  br label %132

; <label>:129:                                    ; preds = %12, %12
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.1, i32 0, i32 0))
  br label %131

; <label>:131:                                    ; preds = %12, %129, %120, %113, %106, %99, %92, %85, %78, %71, %64, %57, %50, %43, %36, %29, %22, %15
  store i32 1, i32* %2, align 4
  br label %132

; <label>:132:                                    ; preds = %131, %127, %11
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare i32 @receive(i32, i8*, i64, i64*) #1

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define i32 @check_input(%struct.gb_t*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_t*, align 8
  %4 = alloca %struct.cgc_fd_set, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cgc_timeval, align 4
  %7 = alloca i32, align 4
  store %struct.gb_t* %0, %struct.gb_t** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %7, align 4
  br label %9

; <label>:9:                                      ; preds = %18, %8
  %10 = load i32, i32* %7, align 4
  %11 = sext i32 %10 to i64
  %12 = icmp ult i64 %11, 16
  br i1 %12, label %13, label %21

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds %struct.cgc_fd_set, %struct.cgc_fd_set* %4, i32 0, i32 0
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [16 x i64], [16 x i64]* %14, i64 0, i64 %16
  store i64 0, i64* %17, align 8
  br label %18

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %9

; <label>:21:                                     ; preds = %9
  br label %22

; <label>:22:                                     ; preds = %21
  %23 = getelementptr inbounds %struct.cgc_fd_set, %struct.cgc_fd_set* %4, i32 0, i32 0
  %24 = getelementptr inbounds [16 x i64], [16 x i64]* %23, i64 0, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = or i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = getelementptr inbounds %struct.cgc_timeval, %struct.cgc_timeval* %6, i32 0, i32 0
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.cgc_timeval, %struct.cgc_timeval* %6, i32 0, i32 1
  store i32 100, i32* %28, align 4
  %29 = call i32 @fdwait(i32 1, %struct.cgc_fd_set* %4, %struct.cgc_fd_set* null, %struct.cgc_timeval* %6, i32* %5)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %22
  store i32 0, i32* %2, align 4
  br label %39

; <label>:32:                                     ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

; <label>:35:                                     ; preds = %32
  %36 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %37 = call i32 @process_input(%struct.gb_t* %36)
  store i32 %37, i32* %2, align 4
  br label %39

; <label>:38:                                     ; preds = %32
  store i32 1, i32* %2, align 4
  br label %39

; <label>:39:                                     ; preds = %38, %35, %31
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare i32 @fdwait(i32, %struct.cgc_fd_set*, %struct.cgc_fd_set*, %struct.cgc_timeval*, i32*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.gb_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = call %struct.gb_t* (...) @gb_new()
  store %struct.gb_t* %5, %struct.gb_t** %2, align 8
  %6 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %7 = icmp eq %struct.gb_t* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0))
  call void @exit(i32 1)
  br label %10

; <label>:10:                                     ; preds = %8, %0
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i32 0, i32 0))
  %12 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %13 = call i32 @load_rom(%struct.gb_t* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

; <label>:15:                                     ; preds = %10
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i32 0, i32 0))
  call void @exit(i32 2)
  br label %17

; <label>:17:                                     ; preds = %15, %10
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  %19 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  call void @gb_reset(%struct.gb_t* %19)
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %20

; <label>:20:                                     ; preds = %55, %17
  %21 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %22 = call i32 @gb_tick(%struct.gb_t* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

; <label>:24:                                     ; preds = %20
  br label %56

; <label>:25:                                     ; preds = %20
  %26 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %27 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %40

; <label>:30:                                     ; preds = %25
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = urem i32 %32, 30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %30
  %36 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  call void @draw_screen(%struct.gb_t* %36)
  br label %37

; <label>:37:                                     ; preds = %35, %30
  %38 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %39 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %38, i32 0, i32 10
  store i32 0, i32* %39, align 4
  br label %40

; <label>:40:                                     ; preds = %37, %25
  %41 = load i32, i32* %3, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %3, align 4
  %43 = uitofp i32 %41 to float
  %44 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %45 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %44, i32 0, i32 9
  %46 = load float, float* %45, align 8
  %47 = fmul float 1.000000e+00, %46
  %48 = fcmp oeq float %43, %47
  br i1 %48, label %49, label %55

; <label>:49:                                     ; preds = %40
  %50 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %51 = call i32 @check_input(%struct.gb_t* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

; <label>:53:                                     ; preds = %49
  br label %56

; <label>:54:                                     ; preds = %49
  store i32 0, i32* %3, align 4
  br label %55

; <label>:55:                                     ; preds = %54, %40
  br label %20

; <label>:56:                                     ; preds = %53, %24
  %57 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  call void @print_reg(%struct.gb_t* %57)
  ret i32 0
}

declare %struct.gb_t* @gb_new(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @exit(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @_terminate(i32 %3) #3
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @load_rom(%struct.gb_t*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_t*, align 8
  %4 = alloca [32768 x i8], align 16
  store %struct.gb_t* %0, %struct.gb_t** %3, align 8
  %5 = getelementptr inbounds [32768 x i8], [32768 x i8]* %4, i32 0, i32 0
  %6 = call i32 @recvall(i32 0, i8* %5, i64 32768)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

; <label>:8:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %13

; <label>:9:                                      ; preds = %1
  %10 = load %struct.gb_t*, %struct.gb_t** %3, align 8
  %11 = getelementptr inbounds [32768 x i8], [32768 x i8]* %4, i32 0, i32 0
  %12 = call i32 @gb_load(%struct.gb_t* %10, i8* %11)
  store i32 %12, i32* %2, align 4
  br label %13

; <label>:13:                                     ; preds = %9, %8
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare void @gb_reset(%struct.gb_t*) #1

declare i32 @gb_tick(%struct.gb_t*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @draw_screen(%struct.gb_t*) #0 {
  %2 = alloca %struct.gb_t*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store %struct.gb_t* %0, %struct.gb_t** %2, align 8
  %7 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %8 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 65344
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, 128
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %1
  br label %58

; <label>:16:                                     ; preds = %1
  %17 = call i32 @transmit(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i64 3, i64* %3)
  store i8 0, i8* %5, align 1
  br label %18

; <label>:18:                                     ; preds = %51, %16
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp slt i32 %20, 144
  br i1 %21, label %22, label %56

; <label>:22:                                     ; preds = %18
  store i8 0, i8* %4, align 1
  br label %23

; <label>:23:                                     ; preds = %44, %22
  %24 = load i8, i8* %4, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp slt i32 %25, 160
  br i1 %26, label %27, label %49

; <label>:27:                                     ; preds = %23
  %28 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %29 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %28, i32 0, i32 4
  %30 = load i8*, i8** %29, align 8
  %31 = load i8, i8* %5, align 1
  %32 = zext i8 %31 to i32
  %33 = mul nsw i32 %32, 160
  %34 = load i8, i8* %4, align 1
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %33, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %30, i64 %37
  %39 = call i8* @block_6px_char(i8* %38, i32 160)
  store i8* %39, i8** %6, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = call i64 @strlen(i8* %41)
  %43 = call i32 @transmit(i32 1, i8* %40, i64 %42, i64* %3)
  br label %44

; <label>:44:                                     ; preds = %27
  %45 = load i8, i8* %4, align 1
  %46 = zext i8 %45 to i32
  %47 = add nsw i32 %46, 2
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %4, align 1
  br label %23

; <label>:49:                                     ; preds = %23
  %50 = call i32 @transmit(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i64 1, i64* %3)
  br label %51

; <label>:51:                                     ; preds = %49
  %52 = load i8, i8* %5, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, 3
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %5, align 1
  br label %18

; <label>:56:                                     ; preds = %18
  %57 = call i32 @transmit(i32 1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i64 1, i64* %3)
  br label %58

; <label>:58:                                     ; preds = %56, %15
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_reg(%struct.gb_t*) #0 {
  %2 = alloca %struct.gb_t*, align 8
  store %struct.gb_t* %0, %struct.gb_t** %2, align 8
  %3 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %4 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %3, i32 0, i32 7
  %5 = getelementptr inbounds %struct.reg_t, %struct.reg_t* %4, i32 0, i32 0
  %6 = bitcast %union.anon* %5 to i16*
  %7 = load i16, i16* %6, align 2
  %8 = zext i16 %7 to i32
  %9 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %10 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.reg_t, %struct.reg_t* %10, i32 0, i32 1
  %12 = bitcast %union.anon.0* %11 to i16*
  %13 = load i16, i16* %12, align 2
  %14 = zext i16 %13 to i32
  %15 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %16 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %15, i32 0, i32 7
  %17 = getelementptr inbounds %struct.reg_t, %struct.reg_t* %16, i32 0, i32 2
  %18 = bitcast %union.anon.1* %17 to i16*
  %19 = load i16, i16* %18, align 2
  %20 = zext i16 %19 to i32
  %21 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %22 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.reg_t, %struct.reg_t* %22, i32 0, i32 3
  %24 = bitcast %union.anon.2* %23 to i16*
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.12, i32 0, i32 0), i32 %8, i32 %14, i32 %20, i32 %26)
  %28 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %29 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %28, i32 0, i32 7
  %30 = getelementptr inbounds %struct.reg_t, %struct.reg_t* %29, i32 0, i32 4
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = load %struct.gb_t*, %struct.gb_t** %2, align 8
  %34 = getelementptr inbounds %struct.gb_t, %struct.gb_t* %33, i32 0, i32 7
  %35 = getelementptr inbounds %struct.reg_t, %struct.reg_t* %34, i32 0, i32 5
  %36 = load i16, i16* %35, align 2
  %37 = zext i16 %36 to i32
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i32 0, i32 0), i32 %32, i32 %37)
  ret void
}

; Function Attrs: noreturn
declare void @_terminate(i32) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @recvall(i32, i8*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  br label %8

; <label>:8:                                      ; preds = %21, %3
  %9 = load i64, i64* %6, align 8
  %10 = icmp ugt i64 %9, 0
  br i1 %10, label %11, label %28

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @receive(i32 %12, i8* %13, i64 %14, i64* %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

; <label>:17:                                     ; preds = %11
  %18 = load i64, i64* %7, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17, %11
  br label %28

; <label>:21:                                     ; preds = %17
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %6, align 8
  %24 = sub i64 %23, %22
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 %25
  store i8* %27, i8** %5, align 8
  br label %8

; <label>:28:                                     ; preds = %20, %8
  %29 = load i64, i64* %6, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare i32 @gb_load(%struct.gb_t*, i8*) #1

declare i32 @transmit(i32, i8*, i64, i64*) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @block_6px_char(i8*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8*, i8** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = mul i32 0, %8
  %10 = add i32 %9, 0
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i8, i8* %7, i64 %11
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8*, i8** %4, align 8
  %16 = load i32, i32* %5, align 4
  %17 = mul i32 0, %16
  %18 = add i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %15, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = add nsw i32 %14, %22
  %24 = load i8*, i8** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = mul i32 1, %25
  %27 = add i32 %26, 0
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, i8* %24, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = add nsw i32 %23, %31
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = mul i32 1, %34
  %36 = add i32 %35, 1
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %33, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %32, %40
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = mul i32 2, %43
  %45 = add i32 %44, 0
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  %50 = add nsw i32 %41, %49
  %51 = load i8*, i8** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = mul i32 2, %52
  %54 = add i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %51, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = add nsw i32 %50, %58
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = udiv i32 %60, 6
  switch i32 %61, label %66 [
    i32 0, label %62
    i32 1, label %63
    i32 2, label %64
    i32 3, label %65
  ]

; <label>:62:                                     ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8** %3, align 8
  br label %67

; <label>:63:                                     ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8** %3, align 8
  br label %67

; <label>:64:                                     ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8** %3, align 8
  br label %67

; <label>:65:                                     ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8** %3, align 8
  br label %67

; <label>:66:                                     ; preds = %2
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8** %3, align 8
  br label %67

; <label>:67:                                     ; preds = %66, %65, %64, %63, %62
  %68 = load i8*, i8** %3, align 8
  ret i8* %68
}

declare i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
