; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwfc_t = type { [4 x i8], i32, [4 x i8], [4 x i8], i32, i16, i16, i32, i32, i16, i16, [4 x i8], i32, i8* }
%struct.complex_t = type { double, double }

@filter_type = internal global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"EXITING...\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"ERROR: Couldn't load file, malformed file data\0A\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"ERROR: Couldn't load new file, contains malformed file data\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"ERROR: Bad Choice. Select another option\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"ERROR: Bad Input. Valid Options: 1, 2\0A\00", align 1
@.str.5 = private unnamed_addr constant [60 x i8] c"ERROR: Bad Input. Valid Options: 1, 2, 3, 4, 5, 6, 7, 8, 9\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"1. Load File\0A\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"2. Quit\0A\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"--NO FILE LOADED--\0A\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"1. Load New File\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"2. Wave Visualizer\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"3. EQ Visualizer\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"4. Power Visualizer\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"5. Enable Low Pass Filter\0A\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"6. Enable High Pass Filter\0A\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"7. Disable Filters\0A\00", align 1
@.str.16 = private unnamed_addr constant [45 x i8] c"8. Set visualization speed multiplier (0-9)\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"9. Quit\0A\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"--Current Track: \00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Sampled @%dHz %d bit, \00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Mono - \00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"Stereo - \00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"Data Size=%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [24 x i8] c"::Options: Filter Type=\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"Low Pass\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"High Pass\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c" | Visualization Slowdown Multiplier=%d::\0A\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @load_file(%struct.uwfc_t**) #0 {
  %2 = alloca %struct.uwfc_t**, align 8
  store %struct.uwfc_t** %0, %struct.uwfc_t*** %2, align 8
  %3 = load %struct.uwfc_t**, %struct.uwfc_t*** %2, align 8
  %4 = load %struct.uwfc_t*, %struct.uwfc_t** %3, align 8
  %5 = icmp ne %struct.uwfc_t* %4, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = load %struct.uwfc_t**, %struct.uwfc_t*** %2, align 8
  call void @clear_track(%struct.uwfc_t** %7)
  br label %8

; <label>:8:                                      ; preds = %6, %1
  %9 = call %struct.uwfc_t* (...) @init_track()
  %10 = load %struct.uwfc_t**, %struct.uwfc_t*** %2, align 8
  store %struct.uwfc_t* %9, %struct.uwfc_t** %10, align 8
  ret void
}

declare void @clear_track(%struct.uwfc_t**) #1

declare %struct.uwfc_t* @init_track(...) #1

; Function Attrs: noinline nounwind uwtable
define void @quit(%struct.uwfc_t**) #0 {
  %2 = alloca %struct.uwfc_t**, align 8
  store %struct.uwfc_t** %0, %struct.uwfc_t*** %2, align 8
  %3 = load %struct.uwfc_t**, %struct.uwfc_t*** %2, align 8
  %4 = load %struct.uwfc_t*, %struct.uwfc_t** %3, align 8
  %5 = icmp ne %struct.uwfc_t* %4, null
  br i1 %5, label %6, label %8

; <label>:6:                                      ; preds = %1
  %7 = load %struct.uwfc_t**, %struct.uwfc_t*** %2, align 8
  call void @clear_track(%struct.uwfc_t** %7)
  br label %8

; <label>:8:                                      ; preds = %6, %1
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @select_option(%struct.uwfc_t**) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uwfc_t**, align 8
  %4 = alloca %struct.uwfc_t*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.uwfc_t** %0, %struct.uwfc_t*** %3, align 8
  %7 = load %struct.uwfc_t**, %struct.uwfc_t*** %3, align 8
  %8 = load %struct.uwfc_t*, %struct.uwfc_t** %7, align 8
  store %struct.uwfc_t* %8, %struct.uwfc_t** %4, align 8
  %9 = call signext i8 @readopt(i32 0)
  store i8 %9, i8* %5, align 1
  %10 = load i8, i8* %5, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %18

; <label>:13:                                     ; preds = %1
  %14 = load %struct.uwfc_t*, %struct.uwfc_t** %4, align 8
  %15 = icmp eq %struct.uwfc_t* %14, null
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %13
  store i32 -16, i32* %2, align 4
  br label %64

; <label>:17:                                     ; preds = %13
  store i32 -32, i32* %2, align 4
  br label %64

; <label>:18:                                     ; preds = %1
  %19 = load %struct.uwfc_t*, %struct.uwfc_t** %4, align 8
  %20 = icmp eq %struct.uwfc_t* %19, null
  br i1 %20, label %21, label %35

; <label>:21:                                     ; preds = %18
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %33 [
    i32 49, label %24
    i32 50, label %31
  ]

; <label>:24:                                     ; preds = %21
  %25 = load %struct.uwfc_t**, %struct.uwfc_t*** %3, align 8
  call void @load_file(%struct.uwfc_t** %25)
  %26 = load %struct.uwfc_t**, %struct.uwfc_t*** %3, align 8
  %27 = load %struct.uwfc_t*, %struct.uwfc_t** %26, align 8
  %28 = icmp eq %struct.uwfc_t* %27, null
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %24
  store i32 -2, i32* %2, align 4
  br label %64

; <label>:30:                                     ; preds = %24
  br label %34

; <label>:31:                                     ; preds = %21
  %32 = load %struct.uwfc_t**, %struct.uwfc_t*** %3, align 8
  call void @quit(%struct.uwfc_t** %32)
  store i32 0, i32* %2, align 4
  br label %64

; <label>:33:                                     ; preds = %21
  store i32 -8, i32* %2, align 4
  br label %64

; <label>:34:                                     ; preds = %30
  br label %63

; <label>:35:                                     ; preds = %18
  %36 = load i8, i8* %5, align 1
  %37 = sext i8 %36 to i32
  switch i32 %37, label %61 [
    i32 49, label %38
    i32 50, label %45
    i32 51, label %47
    i32 52, label %50
    i32 53, label %53
    i32 54, label %54
    i32 55, label %55
    i32 56, label %56
    i32 57, label %59
  ]

; <label>:38:                                     ; preds = %35
  %39 = load %struct.uwfc_t**, %struct.uwfc_t*** %3, align 8
  call void @load_file(%struct.uwfc_t** %39)
  %40 = load %struct.uwfc_t**, %struct.uwfc_t*** %3, align 8
  %41 = load %struct.uwfc_t*, %struct.uwfc_t** %40, align 8
  %42 = icmp eq %struct.uwfc_t* %41, null
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %38
  store i32 -4, i32* %2, align 4
  br label %64

; <label>:44:                                     ; preds = %38
  br label %62

; <label>:45:                                     ; preds = %35
  %46 = load %struct.uwfc_t*, %struct.uwfc_t** %4, align 8
  call void @wave_vis(%struct.uwfc_t* %46)
  br label %62

; <label>:47:                                     ; preds = %35
  %48 = load %struct.uwfc_t*, %struct.uwfc_t** %4, align 8
  %49 = load i32, i32* @filter_type, align 4
  call void @eq_vis(%struct.uwfc_t* %48, i32 1, i32 %49)
  br label %62

; <label>:50:                                     ; preds = %35
  %51 = load %struct.uwfc_t*, %struct.uwfc_t** %4, align 8
  %52 = load i32, i32* @filter_type, align 4
  call void @eq_vis(%struct.uwfc_t* %51, i32 2, i32 %52)
  br label %62

; <label>:53:                                     ; preds = %35
  store i32 1, i32* @filter_type, align 4
  br label %62

; <label>:54:                                     ; preds = %35
  store i32 2, i32* @filter_type, align 4
  br label %62

; <label>:55:                                     ; preds = %35
  store i32 0, i32* @filter_type, align 4
  br label %62

; <label>:56:                                     ; preds = %35
  %57 = call signext i8 @readopt(i32 0)
  store i8 %57, i8* %6, align 1
  %58 = load i8, i8* %6, align 1
  call void @set_vis_multiplier(i8 signext %58)
  br label %62

; <label>:59:                                     ; preds = %35
  %60 = load %struct.uwfc_t**, %struct.uwfc_t*** %3, align 8
  call void @quit(%struct.uwfc_t** %60)
  store i32 0, i32* %2, align 4
  br label %64

; <label>:61:                                     ; preds = %35
  store i32 -8, i32* %2, align 4
  br label %64

; <label>:62:                                     ; preds = %56, %55, %54, %53, %50, %47, %45, %44
  br label %63

; <label>:63:                                     ; preds = %62, %34
  store i32 1, i32* %2, align 4
  br label %64

; <label>:64:                                     ; preds = %63, %61, %59, %43, %33, %31, %29, %17, %16
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: noinline nounwind uwtable
define internal signext i8 @readopt(i32) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8 0, i8* %4, align 1
  store i8 0, i8* %5, align 1
  store i8 10, i8* %6, align 1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @receive(i32 %8, i8* %4, i64 1, i64* %7)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %1
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %1
  store i8 -1, i8* %2, align 1
  br label %48

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @receive(i32 %16, i8* %5, i64 1, i64* %7)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

; <label>:19:                                     ; preds = %15
  %20 = load i64, i64* %7, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19, %15
  store i8 -1, i8* %2, align 1
  br label %48

; <label>:23:                                     ; preds = %19
  %24 = load i8, i8* %5, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* %6, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %46

; <label>:29:                                     ; preds = %23
  br label %30

; <label>:30:                                     ; preds = %44, %29
  %31 = load i8, i8* %5, align 1
  %32 = sext i8 %31 to i32
  %33 = load i8, i8* %6, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %45

; <label>:36:                                     ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @receive(i32 %37, i8* %5, i64 1, i64* %7)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

; <label>:40:                                     ; preds = %36
  %41 = load i64, i64* %7, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %40, %36
  store i8 -1, i8* %2, align 1
  br label %48

; <label>:44:                                     ; preds = %40
  br label %30

; <label>:45:                                     ; preds = %30
  store i8 -1, i8* %2, align 1
  br label %48

; <label>:46:                                     ; preds = %23
  %47 = load i8, i8* %4, align 1
  store i8 %47, i8* %2, align 1
  br label %48

; <label>:48:                                     ; preds = %46, %45, %43, %22, %14
  %49 = load i8, i8* %2, align 1
  ret i8 %49
}

declare void @wave_vis(%struct.uwfc_t*) #1

declare void @eq_vis(%struct.uwfc_t*, i32, i32) #1

declare void @set_vis_multiplier(i8 signext) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.uwfc_t*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.complex_t*, align 8
  store i32 0, i32* %1, align 4
  store %struct.uwfc_t* null, %struct.uwfc_t** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %9, %0
  %6 = load i32, i32* %3, align 4
  call void @print_error_code(i32 %6)
  %7 = load %struct.uwfc_t*, %struct.uwfc_t** %2, align 8
  call void @print_menu(%struct.uwfc_t* %7)
  %8 = call i32 @select_option(%struct.uwfc_t** %2)
  store i32 %8, i32* %3, align 4
  br label %9

; <label>:9:                                      ; preds = %5
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %5, label %12

; <label>:12:                                     ; preds = %9
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0))
  ret i32 0
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_error_code(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp eq i32 %3, -2
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i32 0, i32 0))
  br label %7

; <label>:7:                                      ; preds = %5, %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, -4
  br i1 %9, label %10, label %12

; <label>:10:                                     ; preds = %7
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i32 0, i32 0))
  br label %12

; <label>:12:                                     ; preds = %10, %7
  %13 = load i32, i32* %2, align 4
  %14 = icmp eq i32 %13, -8
  br i1 %14, label %15, label %17

; <label>:15:                                     ; preds = %12
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i32 0, i32 0))
  br label %17

; <label>:17:                                     ; preds = %15, %12
  %18 = load i32, i32* %2, align 4
  %19 = icmp eq i32 %18, -16
  br i1 %19, label %20, label %22

; <label>:20:                                     ; preds = %17
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0))
  br label %22

; <label>:22:                                     ; preds = %20, %17
  %23 = load i32, i32* %2, align 4
  %24 = icmp eq i32 %23, -32
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %22
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.5, i32 0, i32 0))
  br label %27

; <label>:27:                                     ; preds = %25, %22
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print_menu(%struct.uwfc_t*) #0 {
  %2 = alloca %struct.uwfc_t*, align 8
  store %struct.uwfc_t* %0, %struct.uwfc_t** %2, align 8
  %3 = load %struct.uwfc_t*, %struct.uwfc_t** %2, align 8
  %4 = icmp eq %struct.uwfc_t* %3, null
  br i1 %4, label %5, label %9

; <label>:5:                                      ; preds = %1
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %62

; <label>:9:                                      ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i32 0, i32 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i32 0, i32 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i32 0, i32 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i32 0, i32 0))
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i32 0, i32 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.16, i32 0, i32 0))
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0))
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0))
  %20 = load %struct.uwfc_t*, %struct.uwfc_t** %2, align 8
  %21 = getelementptr inbounds %struct.uwfc_t, %struct.uwfc_t* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.uwfc_t*, %struct.uwfc_t** %2, align 8
  %24 = getelementptr inbounds %struct.uwfc_t, %struct.uwfc_t* %23, i32 0, i32 10
  %25 = load i16, i16* %24, align 2
  %26 = zext i16 %25 to i32
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.19, i32 0, i32 0), i32 %22, i32 %26)
  %28 = load %struct.uwfc_t*, %struct.uwfc_t** %2, align 8
  %29 = getelementptr inbounds %struct.uwfc_t, %struct.uwfc_t* %28, i32 0, i32 6
  %30 = load i16, i16* %29, align 2
  %31 = zext i16 %30 to i32
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %9
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0))
  br label %37

; <label>:35:                                     ; preds = %9
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0))
  br label %37

; <label>:37:                                     ; preds = %35, %33
  %38 = load %struct.uwfc_t*, %struct.uwfc_t** %2, align 8
  %39 = getelementptr inbounds %struct.uwfc_t, %struct.uwfc_t* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i32 0, i32 0), i32 %40)
  %42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.23, i32 0, i32 0))
  %43 = load i32, i32* @filter_type, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %37
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0))
  br label %59

; <label>:47:                                     ; preds = %37
  %48 = load i32, i32* @filter_type, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %52

; <label>:50:                                     ; preds = %47
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0))
  br label %58

; <label>:52:                                     ; preds = %47
  %53 = load i32, i32* @filter_type, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %52
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  br label %57

; <label>:57:                                     ; preds = %55, %52
  br label %58

; <label>:58:                                     ; preds = %57, %50
  br label %59

; <label>:59:                                     ; preds = %58, %45
  %60 = call i32 (...) @get_vis_multiplier()
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.27, i32 0, i32 0), i32 %60)
  br label %62

; <label>:62:                                     ; preds = %59, %5
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @receive(i32, i8*, i64, i64*) #1

declare i32 @get_vis_multiplier(...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
