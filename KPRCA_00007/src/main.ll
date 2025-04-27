; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route_mem_t = type { i32, i32, i32, i32, [4095 x %struct.route] }
%struct.route = type { %struct.route*, %struct.route*, i32, i16, i8, i8 }
%struct.router_t = type { i32, [256 x i8], i32 }

@g_route_memory = common global %struct.route_mem_t** null, align 8
@g_enable = common global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"$ \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"query\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"edit\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"GOOD-BYE\0A\00", align 1
@g_buffer = common global [1024 x i8] zeroinitializer, align 16
@g_buffer_bytes = common global i64 0, align 8
@g_num_routers = common global i32 0, align 4
@g_routers = common global [65535 x %struct.router_t] zeroinitializer, align 16
@g_default_route = common global %struct.route zeroinitializer, align 8
@g_route_mem_length = common global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"OUT OF MEMORY\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"BAD ARGUMENTS\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"ROUTE NOT FOUND\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"Next hop for %d.%d.%d.%d is \00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"BLACKHOLE.\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"%d.%d.%d.%d, AS %d (%s)\0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"racoiaws\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"BAD PASSWORD\0A\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"AS %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c" Name: %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c" IP: %d.%d.%d.%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"Modify name? \00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"New name? \00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"Modify IP? \00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"New IP? \00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  %4 = call i32 @allocate(i64 8192, i32 0, i8** bitcast (%struct.route_mem_t*** @g_route_memory to i8**))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %0
  store i32 0, i32* %1, align 4
  br label %82

; <label>:7:                                      ; preds = %0
  br label %8

; <label>:8:                                      ; preds = %7, %80
  %9 = load i32, i32* @g_enable, align 4
  %10 = icmp ne i32 %9, 0
  %11 = select i1 %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)
  %12 = call i8* @readline(i8* %11)
  store i8* %12, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %8
  br label %81

; <label>:16:                                     ; preds = %8
  %17 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %17, i8** %3, align 8
  %18 = load i32, i32* @g_enable, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %50

; <label>:20:                                     ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %2, align 8
  call void @cmd_add_route(i8* %25)
  br label %26

; <label>:26:                                     ; preds = %24, %20
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

; <label>:30:                                     ; preds = %26
  %31 = load i8*, i8** %2, align 8
  call void @cmd_delete_route(i8* %31)
  br label %32

; <label>:32:                                     ; preds = %30, %26
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i32 0, i32 0))
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

; <label>:36:                                     ; preds = %32
  %37 = load i8*, i8** %2, align 8
  call void @cmd_query_route(i8* %37)
  br label %38

; <label>:38:                                     ; preds = %36, %32
  %39 = load i8*, i8** %3, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

; <label>:42:                                     ; preds = %38
  %43 = load i8*, i8** %2, align 8
  call void @cmd_enable_mode(i8* %43)
  br label %44

; <label>:44:                                     ; preds = %42, %38
  %45 = load i8*, i8** %3, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %44
  br label %81

; <label>:49:                                     ; preds = %44
  br label %80

; <label>:50:                                     ; preds = %16
  %51 = load i8*, i8** %3, align 8
  %52 = call i32 @strcmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

; <label>:54:                                     ; preds = %50
  %55 = load i8*, i8** %2, align 8
  call void @cmd_add_router(i8* %55)
  br label %56

; <label>:56:                                     ; preds = %54, %50
  %57 = load i8*, i8** %3, align 8
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0))
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %56
  %61 = load i8*, i8** %2, align 8
  call void @cmd_delete_router(i8* %61)
  br label %62

; <label>:62:                                     ; preds = %60, %56
  %63 = load i8*, i8** %3, align 8
  %64 = call i32 @strcmp(i8* %63, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %62
  %67 = load i8*, i8** %2, align 8
  call void @cmd_edit_router(i8* %67)
  br label %68

; <label>:68:                                     ; preds = %66, %62
  %69 = load i8*, i8** %3, align 8
  %70 = call i32 @strcmp(i8* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

; <label>:72:                                     ; preds = %68
  %73 = load i8*, i8** %2, align 8
  call void @cmd_list_router(i8* %73)
  br label %74

; <label>:74:                                     ; preds = %72, %68
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0))
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

; <label>:78:                                     ; preds = %74
  store i32 0, i32* @g_enable, align 4
  br label %79

; <label>:79:                                     ; preds = %78, %74
  br label %80

; <label>:80:                                     ; preds = %79, %49
  br label %8

; <label>:81:                                     ; preds = %48, %15
  call void @print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %82

; <label>:82:                                     ; preds = %81, %6
  %83 = load i32, i32* %1, align 4
  ret i32 %83
}

declare i32 @allocate(i64, i32, i8**) #1

; Function Attrs: noinline nounwind uwtable
define internal i8* @readline(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 0, i64* %4, align 8
  %7 = load i8*, i8** %3, align 8
  call void @print(i8* %7)
  br label %8

; <label>:8:                                      ; preds = %1, %30
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds [1024 x i8], [1024 x i8]* @g_buffer, i64 0, i64 %9
  %11 = call i32 @receive(i32 0, i8* %10, i64 1, i64* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

; <label>:14:                                     ; preds = %8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 1
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %14, %8
  store i8* null, i8** %2, align 8
  br label %34

; <label>:18:                                     ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds [1024 x i8], [1024 x i8]* @g_buffer, i64 0, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 10
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %18
  br label %31

; <label>:25:                                     ; preds = %18
  %26 = load i64, i64* %4, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %4, align 8
  %28 = icmp eq i64 %27, 1024
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %25
  store i8* null, i8** %2, align 8
  br label %34

; <label>:30:                                     ; preds = %25
  br label %8

; <label>:31:                                     ; preds = %24
  %32 = load i64, i64* %4, align 8
  %33 = getelementptr inbounds [1024 x i8], [1024 x i8]* @g_buffer, i64 0, i64 %32
  store i8 0, i8* %33, align 1
  store i8* getelementptr inbounds ([1024 x i8], [1024 x i8]* @g_buffer, i32 0, i32 0), i8** %2, align 8
  br label %34

; <label>:34:                                     ; preds = %31, %29, %17
  %35 = load i8*, i8** %2, align 8
  ret i8* %35
}

declare i8* @strsep(i8**, i8*) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define internal void @cmd_add_route(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.route*, align 8
  %9 = alloca %struct.route*, align 8
  %10 = alloca %struct.route*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %14 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %21, label %17

; <label>:17:                                     ; preds = %1
  %18 = load i8*, i8** %6, align 8
  %19 = call i32 @parse_ip(i8* %18, i32* %3)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

; <label>:21:                                     ; preds = %17, %1
  br label %300

; <label>:22:                                     ; preds = %17
  %23 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %30, label %26

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @parse_ip(i8* %27, i32* %4)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %26, %22
  br label %300

; <label>:31:                                     ; preds = %26
  %32 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %32, i8** %6, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

; <label>:35:                                     ; preds = %31
  br label %300

; <label>:36:                                     ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strtoul(i8* %37, i8** null, i32 10)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ugt i32 %40, 65535
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %36
  br label %300

; <label>:43:                                     ; preds = %36
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

; <label>:46:                                     ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = call %struct.router_t* @get_router(i32 %47)
  %49 = call i32 @valid_router(%struct.router_t* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

; <label>:51:                                     ; preds = %46
  br label %300

; <label>:52:                                     ; preds = %46, %43
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @mask_to_length(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %55, 32
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %52
  br label %300

; <label>:58:                                     ; preds = %52
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %58
  br label %300

; <label>:65:                                     ; preds = %58
  %66 = load i32, i32* %7, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %71

; <label>:68:                                     ; preds = %65
  %69 = load i32, i32* %5, align 4
  %70 = trunc i32 %69 to i16
  store i16 %70, i16* getelementptr inbounds (%struct.route, %struct.route* @g_default_route, i32 0, i32 3), align 4
  br label %301

; <label>:71:                                     ; preds = %65
  %72 = load i32, i32* %7, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %7, align 4
  store %struct.route* @g_default_route, %struct.route** %10, align 8
  br label %74

; <label>:74:                                     ; preds = %71, %282
  %75 = load %struct.route*, %struct.route** %10, align 8
  %76 = call i32 @route_bit(%struct.route* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* %11, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %85

; <label>:81:                                     ; preds = %74
  %82 = load %struct.route*, %struct.route** %10, align 8
  %83 = getelementptr inbounds %struct.route, %struct.route* %82, i32 0, i32 0
  %84 = load %struct.route*, %struct.route** %83, align 8
  br label %89

; <label>:85:                                     ; preds = %74
  %86 = load %struct.route*, %struct.route** %10, align 8
  %87 = getelementptr inbounds %struct.route, %struct.route* %86, i32 0, i32 1
  %88 = load %struct.route*, %struct.route** %87, align 8
  br label %89

; <label>:89:                                     ; preds = %85, %81
  %90 = phi %struct.route* [ %84, %81 ], [ %88, %85 ]
  store %struct.route* %90, %struct.route** %8, align 8
  %91 = load %struct.route*, %struct.route** %8, align 8
  %92 = icmp eq %struct.route* %91, null
  br i1 %92, label %93, label %112

; <label>:93:                                     ; preds = %89
  %94 = call %struct.route* @allocate_route()
  store %struct.route* %94, %struct.route** %9, align 8
  %95 = load %struct.route*, %struct.route** %9, align 8
  %96 = icmp eq %struct.route* %95, null
  br i1 %96, label %97, label %98

; <label>:97:                                     ; preds = %93
  call void @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  br label %301

; <label>:98:                                     ; preds = %93
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %11, align 4
  %101 = and i32 %99, %100
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

; <label>:103:                                    ; preds = %98
  %104 = load %struct.route*, %struct.route** %9, align 8
  %105 = load %struct.route*, %struct.route** %10, align 8
  %106 = getelementptr inbounds %struct.route, %struct.route* %105, i32 0, i32 0
  store %struct.route* %104, %struct.route** %106, align 8
  br label %111

; <label>:107:                                    ; preds = %98
  %108 = load %struct.route*, %struct.route** %9, align 8
  %109 = load %struct.route*, %struct.route** %10, align 8
  %110 = getelementptr inbounds %struct.route, %struct.route* %109, i32 0, i32 1
  store %struct.route* %108, %struct.route** %110, align 8
  br label %111

; <label>:111:                                    ; preds = %107, %103
  br label %283

; <label>:112:                                    ; preds = %89
  %113 = load %struct.route*, %struct.route** %8, align 8
  %114 = call i32 @route_mask(%struct.route* %113)
  store i32 %114, i32* %12, align 4
  %115 = load %struct.route*, %struct.route** %8, align 8
  %116 = getelementptr inbounds %struct.route, %struct.route* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* %3, align 4
  %121 = load i32, i32* %12, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %119, %122
  br i1 %123, label %132, label %124

; <label>:124:                                    ; preds = %112
  %125 = load %struct.route*, %struct.route** %8, align 8
  %126 = getelementptr inbounds %struct.route, %struct.route* %125, i32 0, i32 5
  %127 = load i8, i8* %126, align 1
  %128 = lshr i8 %127, 3
  %129 = zext i8 %128 to i32
  %130 = load i32, i32* %7, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %269

; <label>:132:                                    ; preds = %124, %112
  %133 = load i32, i32* %7, align 4
  %134 = sub nsw i32 31, %133
  %135 = shl i32 -1, %134
  store i32 %135, i32* %12, align 4
  %136 = load %struct.route*, %struct.route** %8, align 8
  %137 = getelementptr inbounds %struct.route, %struct.route* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* %3, align 4
  %142 = load i32, i32* %12, align 4
  %143 = and i32 %141, %142
  %144 = icmp eq i32 %140, %143
  br i1 %144, label %145, label %183

; <label>:145:                                    ; preds = %132
  %146 = call %struct.route* @allocate_route()
  store %struct.route* %146, %struct.route** %9, align 8
  %147 = load %struct.route*, %struct.route** %9, align 8
  %148 = icmp eq %struct.route* %147, null
  br i1 %148, label %149, label %150

; <label>:149:                                    ; preds = %145
  call void @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  br label %301

; <label>:150:                                    ; preds = %145
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* %11, align 4
  %153 = and i32 %151, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %159

; <label>:155:                                    ; preds = %150
  %156 = load %struct.route*, %struct.route** %9, align 8
  %157 = load %struct.route*, %struct.route** %10, align 8
  %158 = getelementptr inbounds %struct.route, %struct.route* %157, i32 0, i32 0
  store %struct.route* %156, %struct.route** %158, align 8
  br label %163

; <label>:159:                                    ; preds = %150
  %160 = load %struct.route*, %struct.route** %9, align 8
  %161 = load %struct.route*, %struct.route** %10, align 8
  %162 = getelementptr inbounds %struct.route, %struct.route* %161, i32 0, i32 1
  store %struct.route* %160, %struct.route** %162, align 8
  br label %163

; <label>:163:                                    ; preds = %159, %155
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 31, %164
  %166 = sub nsw i32 %165, 1
  %167 = shl i32 1, %166
  store i32 %167, i32* %11, align 4
  %168 = load %struct.route*, %struct.route** %8, align 8
  %169 = getelementptr inbounds %struct.route, %struct.route* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = and i32 %170, %171
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %178

; <label>:174:                                    ; preds = %163
  %175 = load %struct.route*, %struct.route** %8, align 8
  %176 = load %struct.route*, %struct.route** %9, align 8
  %177 = getelementptr inbounds %struct.route, %struct.route* %176, i32 0, i32 0
  store %struct.route* %175, %struct.route** %177, align 8
  br label %182

; <label>:178:                                    ; preds = %163
  %179 = load %struct.route*, %struct.route** %8, align 8
  %180 = load %struct.route*, %struct.route** %9, align 8
  %181 = getelementptr inbounds %struct.route, %struct.route* %180, i32 0, i32 1
  store %struct.route* %179, %struct.route** %181, align 8
  br label %182

; <label>:182:                                    ; preds = %178, %174
  br label %268

; <label>:183:                                    ; preds = %132
  %184 = call %struct.route* @allocate_route()
  store %struct.route* %184, %struct.route** %9, align 8
  %185 = load %struct.route*, %struct.route** %9, align 8
  %186 = icmp eq %struct.route* %185, null
  br i1 %186, label %187, label %188

; <label>:187:                                    ; preds = %183
  call void @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  br label %301

; <label>:188:                                    ; preds = %183
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* %11, align 4
  %191 = and i32 %189, %190
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %197

; <label>:193:                                    ; preds = %188
  %194 = load %struct.route*, %struct.route** %9, align 8
  %195 = load %struct.route*, %struct.route** %10, align 8
  %196 = getelementptr inbounds %struct.route, %struct.route* %195, i32 0, i32 0
  store %struct.route* %194, %struct.route** %196, align 8
  br label %201

; <label>:197:                                    ; preds = %188
  %198 = load %struct.route*, %struct.route** %9, align 8
  %199 = load %struct.route*, %struct.route** %10, align 8
  %200 = getelementptr inbounds %struct.route, %struct.route* %199, i32 0, i32 1
  store %struct.route* %198, %struct.route** %200, align 8
  br label %201

; <label>:201:                                    ; preds = %197, %193
  %202 = load %struct.route*, %struct.route** %9, align 8
  store %struct.route* %202, %struct.route** %10, align 8
  %203 = call %struct.route* @allocate_route()
  store %struct.route* %203, %struct.route** %9, align 8
  %204 = load %struct.route*, %struct.route** %9, align 8
  %205 = icmp eq %struct.route* %204, null
  br i1 %205, label %206, label %207

; <label>:206:                                    ; preds = %201
  call void @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i32 0, i32 0))
  br label %301

; <label>:207:                                    ; preds = %201
  %208 = load i32, i32* %3, align 4
  %209 = load %struct.route*, %struct.route** %8, align 8
  %210 = getelementptr inbounds %struct.route, %struct.route* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = xor i32 %208, %211
  store i32 %212, i32* %13, align 4
  store i32 31, i32* %11, align 4
  br label %213

; <label>:213:                                    ; preds = %224, %207
  %214 = load i32, i32* %11, align 4
  %215 = icmp sge i32 %214, 0
  br i1 %215, label %216, label %227

; <label>:216:                                    ; preds = %213
  %217 = load i32, i32* %11, align 4
  %218 = shl i32 1, %217
  %219 = load i32, i32* %13, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

; <label>:222:                                    ; preds = %216
  br label %227

; <label>:223:                                    ; preds = %216
  br label %224

; <label>:224:                                    ; preds = %223
  %225 = load i32, i32* %11, align 4
  %226 = add nsw i32 %225, -1
  store i32 %226, i32* %11, align 4
  br label %213

; <label>:227:                                    ; preds = %222, %213
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %11, align 4
  %231 = sub nsw i32 31, %230
  %232 = trunc i32 %231 to i8
  %233 = load %struct.route*, %struct.route** %10, align 8
  %234 = getelementptr inbounds %struct.route, %struct.route* %233, i32 0, i32 5
  %235 = load i8, i8* %234, align 1
  %236 = and i8 %232, 31
  %237 = shl i8 %236, 3
  %238 = and i8 %235, 7
  %239 = or i8 %238, %237
  store i8 %239, i8* %234, align 1
  %240 = load i32, i32* %11, align 4
  %241 = shl i32 -1, %240
  store i32 %241, i32* %12, align 4
  %242 = load i32, i32* %3, align 4
  %243 = load i32, i32* %12, align 4
  %244 = and i32 %242, %243
  %245 = load %struct.route*, %struct.route** %10, align 8
  %246 = getelementptr inbounds %struct.route, %struct.route* %245, i32 0, i32 2
  store i32 %244, i32* %246, align 8
  %247 = load i32, i32* %3, align 4
  %248 = load i32, i32* %11, align 4
  %249 = sub nsw i32 %248, 1
  %250 = shl i32 1, %249
  %251 = and i32 %247, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %260

; <label>:253:                                    ; preds = %227
  %254 = load %struct.route*, %struct.route** %8, align 8
  %255 = load %struct.route*, %struct.route** %10, align 8
  %256 = getelementptr inbounds %struct.route, %struct.route* %255, i32 0, i32 0
  store %struct.route* %254, %struct.route** %256, align 8
  %257 = load %struct.route*, %struct.route** %9, align 8
  %258 = load %struct.route*, %struct.route** %10, align 8
  %259 = getelementptr inbounds %struct.route, %struct.route* %258, i32 0, i32 1
  store %struct.route* %257, %struct.route** %259, align 8
  br label %267

; <label>:260:                                    ; preds = %227
  %261 = load %struct.route*, %struct.route** %9, align 8
  %262 = load %struct.route*, %struct.route** %10, align 8
  %263 = getelementptr inbounds %struct.route, %struct.route* %262, i32 0, i32 0
  store %struct.route* %261, %struct.route** %263, align 8
  %264 = load %struct.route*, %struct.route** %8, align 8
  %265 = load %struct.route*, %struct.route** %10, align 8
  %266 = getelementptr inbounds %struct.route, %struct.route* %265, i32 0, i32 1
  store %struct.route* %264, %struct.route** %266, align 8
  br label %267

; <label>:267:                                    ; preds = %260, %253
  br label %268

; <label>:268:                                    ; preds = %267, %182
  br label %283

; <label>:269:                                    ; preds = %124
  %270 = load %struct.route*, %struct.route** %8, align 8
  %271 = getelementptr inbounds %struct.route, %struct.route* %270, i32 0, i32 5
  %272 = load i8, i8* %271, align 1
  %273 = lshr i8 %272, 3
  %274 = zext i8 %273 to i32
  %275 = load i32, i32* %7, align 4
  %276 = icmp eq i32 %274, %275
  br i1 %276, label %277, label %279

; <label>:277:                                    ; preds = %269
  %278 = load %struct.route*, %struct.route** %8, align 8
  store %struct.route* %278, %struct.route** %9, align 8
  br label %283

; <label>:279:                                    ; preds = %269
  %280 = load %struct.route*, %struct.route** %8, align 8
  store %struct.route* %280, %struct.route** %10, align 8
  br label %281

; <label>:281:                                    ; preds = %279
  br label %282

; <label>:282:                                    ; preds = %281
  br label %74

; <label>:283:                                    ; preds = %277, %268, %111
  %284 = load i32, i32* %3, align 4
  %285 = load %struct.route*, %struct.route** %9, align 8
  %286 = getelementptr inbounds %struct.route, %struct.route* %285, i32 0, i32 2
  store i32 %284, i32* %286, align 8
  %287 = load i32, i32* %5, align 4
  %288 = trunc i32 %287 to i16
  %289 = load %struct.route*, %struct.route** %9, align 8
  %290 = getelementptr inbounds %struct.route, %struct.route* %289, i32 0, i32 3
  store i16 %288, i16* %290, align 4
  %291 = load i32, i32* %7, align 4
  %292 = trunc i32 %291 to i8
  %293 = load %struct.route*, %struct.route** %9, align 8
  %294 = getelementptr inbounds %struct.route, %struct.route* %293, i32 0, i32 5
  %295 = load i8, i8* %294, align 1
  %296 = and i8 %292, 31
  %297 = shl i8 %296, 3
  %298 = and i8 %295, 7
  %299 = or i8 %298, %297
  store i8 %299, i8* %294, align 1
  br label %301

; <label>:300:                                    ; preds = %64, %57, %51, %42, %35, %30, %21
  call void @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  br label %301

; <label>:301:                                    ; preds = %300, %283, %206, %187, %149, %97, %68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cmd_delete_route(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.route*, align 8
  %8 = alloca %struct.route*, align 8
  store i8* %0, i8** %2, align 8
  %9 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %16, label %12

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %5, align 8
  %14 = call i32 @parse_ip(i8* %13, i32* %3)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

; <label>:16:                                     ; preds = %12, %1
  br label %66

; <label>:17:                                     ; preds = %12
  %18 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %18, i8** %5, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %25, label %21

; <label>:21:                                     ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = call i32 @parse_ip(i8* %22, i32* %4)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

; <label>:25:                                     ; preds = %21, %17
  br label %66

; <label>:26:                                     ; preds = %21
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @mask_to_length(i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 32
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %26
  br label %66

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

; <label>:35:                                     ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

; <label>:38:                                     ; preds = %35
  store i16 0, i16* getelementptr inbounds (%struct.route, %struct.route* @g_default_route, i32 0, i32 3), align 4
  br label %40

; <label>:39:                                     ; preds = %35
  call void @print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  br label %40

; <label>:40:                                     ; preds = %39, %38
  br label %67

; <label>:41:                                     ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call %struct.route* @lookup_route(i32 %42, i32 %43, %struct.route** %7)
  store %struct.route* %44, %struct.route** %8, align 8
  %45 = load %struct.route*, %struct.route** %8, align 8
  %46 = icmp ne %struct.route* %45, null
  br i1 %46, label %47, label %64

; <label>:47:                                     ; preds = %41
  %48 = load %struct.route*, %struct.route** %8, align 8
  %49 = getelementptr inbounds %struct.route, %struct.route* %48, i32 0, i32 3
  %50 = load i16, i16* %49, align 4
  %51 = zext i16 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

; <label>:53:                                     ; preds = %47
  %54 = load %struct.route*, %struct.route** %8, align 8
  %55 = getelementptr inbounds %struct.route, %struct.route* %54, i32 0, i32 5
  %56 = load i8, i8* %55, align 1
  %57 = lshr i8 %56, 1
  %58 = and i8 %57, 1
  %59 = zext i8 %58 to i32
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

; <label>:61:                                     ; preds = %53, %47
  %62 = load %struct.route*, %struct.route** %8, align 8
  %63 = load %struct.route*, %struct.route** %7, align 8
  call void @delete_route(%struct.route* %62, %struct.route* %63)
  br label %65

; <label>:64:                                     ; preds = %53, %41
  call void @print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i32 0, i32 0))
  br label %65

; <label>:65:                                     ; preds = %64, %61
  br label %67

; <label>:66:                                     ; preds = %31, %25, %16
  call void @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  br label %67

; <label>:67:                                     ; preds = %66, %65, %40
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cmd_query_route(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.route*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.router_t*, align 8
  store i8* %0, i8** %2, align 8
  %10 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %17, label %13

; <label>:13:                                     ; preds = %1
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @parse_ip(i8* %14, i32* %3)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

; <label>:17:                                     ; preds = %13, %1
  br label %146

; <label>:18:                                     ; preds = %13
  store i32 0, i32* %5, align 4
  store %struct.route* @g_default_route, %struct.route** %6, align 8
  br label %19

; <label>:19:                                     ; preds = %97, %18
  %20 = load %struct.route*, %struct.route** %6, align 8
  %21 = icmp ne %struct.route* %20, null
  br i1 %21, label %22, label %99

; <label>:22:                                     ; preds = %19
  %23 = load %struct.route*, %struct.route** %6, align 8
  %24 = icmp eq %struct.route* %23, @g_default_route
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %22
  store i32 0, i32* %7, align 4
  br label %34

; <label>:26:                                     ; preds = %22
  %27 = load %struct.route*, %struct.route** %6, align 8
  %28 = getelementptr inbounds %struct.route, %struct.route* %27, i32 0, i32 5
  %29 = load i8, i8* %28, align 1
  %30 = lshr i8 %29, 3
  %31 = zext i8 %30 to i32
  %32 = sub nsw i32 31, %31
  %33 = shl i32 -1, %32
  store i32 %33, i32* %7, align 4
  br label %34

; <label>:34:                                     ; preds = %26, %25
  %35 = load %struct.route*, %struct.route** %6, align 8
  %36 = getelementptr inbounds %struct.route, %struct.route* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %34
  br label %99

; <label>:45:                                     ; preds = %34
  %46 = load %struct.route*, %struct.route** %6, align 8
  %47 = getelementptr inbounds %struct.route, %struct.route* %46, i32 0, i32 3
  %48 = load i16, i16* %47, align 4
  %49 = zext i16 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

; <label>:51:                                     ; preds = %45
  %52 = load %struct.route*, %struct.route** %6, align 8
  %53 = getelementptr inbounds %struct.route, %struct.route* %52, i32 0, i32 5
  %54 = load i8, i8* %53, align 1
  %55 = lshr i8 %54, 1
  %56 = and i8 %55, 1
  %57 = zext i8 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %64

; <label>:59:                                     ; preds = %51, %45
  %60 = load %struct.route*, %struct.route** %6, align 8
  %61 = getelementptr inbounds %struct.route, %struct.route* %60, i32 0, i32 3
  %62 = load i16, i16* %61, align 4
  %63 = zext i16 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %64

; <label>:64:                                     ; preds = %59, %51
  %65 = load %struct.route*, %struct.route** %6, align 8
  %66 = getelementptr inbounds %struct.route, %struct.route* %65, i32 0, i32 5
  %67 = load i8, i8* %66, align 1
  %68 = lshr i8 %67, 3
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 31
  br i1 %70, label %71, label %72

; <label>:71:                                     ; preds = %64
  br label %99

; <label>:72:                                     ; preds = %64
  %73 = load %struct.route*, %struct.route** %6, align 8
  %74 = icmp eq %struct.route* %73, @g_default_route
  br i1 %74, label %75, label %76

; <label>:75:                                     ; preds = %72
  store i32 -2147483648, i32* %8, align 4
  br label %84

; <label>:76:                                     ; preds = %72
  %77 = load %struct.route*, %struct.route** %6, align 8
  %78 = getelementptr inbounds %struct.route, %struct.route* %77, i32 0, i32 5
  %79 = load i8, i8* %78, align 1
  %80 = lshr i8 %79, 3
  %81 = zext i8 %80 to i32
  %82 = sub nsw i32 30, %81
  %83 = shl i32 1, %82
  store i32 %83, i32* %8, align 4
  br label %84

; <label>:84:                                     ; preds = %76, %75
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %8, align 4
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

; <label>:89:                                     ; preds = %84
  %90 = load %struct.route*, %struct.route** %6, align 8
  %91 = getelementptr inbounds %struct.route, %struct.route* %90, i32 0, i32 0
  %92 = load %struct.route*, %struct.route** %91, align 8
  br label %97

; <label>:93:                                     ; preds = %84
  %94 = load %struct.route*, %struct.route** %6, align 8
  %95 = getelementptr inbounds %struct.route, %struct.route* %94, i32 0, i32 1
  %96 = load %struct.route*, %struct.route** %95, align 8
  br label %97

; <label>:97:                                     ; preds = %93, %89
  %98 = phi %struct.route* [ %92, %89 ], [ %96, %93 ]
  store %struct.route* %98, %struct.route** %6, align 8
  br label %19

; <label>:99:                                     ; preds = %71, %44, %19
  %100 = load i32, i32* %3, align 4
  %101 = lshr i32 %100, 24
  %102 = load i32, i32* %3, align 4
  %103 = lshr i32 %102, 16
  %104 = and i32 %103, 255
  %105 = load i32, i32* %3, align 4
  %106 = lshr i32 %105, 8
  %107 = and i32 %106, 255
  %108 = load i32, i32* %3, align 4
  %109 = lshr i32 %108, 0
  %110 = and i32 %109, 255
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0), i32 %101, i32 %104, i32 %107, i32 %110)
  %112 = load i32, i32* %5, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %116

; <label>:114:                                    ; preds = %99
  %115 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0))
  br label %145

; <label>:116:                                    ; preds = %99
  %117 = load i32, i32* %5, align 4
  %118 = call %struct.router_t* @get_router(i32 %117)
  store %struct.router_t* %118, %struct.router_t** %9, align 8
  %119 = load %struct.router_t*, %struct.router_t** %9, align 8
  %120 = getelementptr inbounds %struct.router_t, %struct.router_t* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = lshr i32 %121, 24
  %123 = load %struct.router_t*, %struct.router_t** %9, align 8
  %124 = getelementptr inbounds %struct.router_t, %struct.router_t* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = lshr i32 %125, 16
  %127 = and i32 %126, 255
  %128 = load %struct.router_t*, %struct.router_t** %9, align 8
  %129 = getelementptr inbounds %struct.router_t, %struct.router_t* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = lshr i32 %130, 8
  %132 = and i32 %131, 255
  %133 = load %struct.router_t*, %struct.router_t** %9, align 8
  %134 = getelementptr inbounds %struct.router_t, %struct.router_t* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = lshr i32 %135, 0
  %137 = and i32 %136, 255
  %138 = load %struct.router_t*, %struct.router_t** %9, align 8
  %139 = getelementptr inbounds %struct.router_t, %struct.router_t* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.router_t*, %struct.router_t** %9, align 8
  %142 = getelementptr inbounds %struct.router_t, %struct.router_t* %141, i32 0, i32 1
  %143 = getelementptr inbounds [256 x i8], [256 x i8]* %142, i32 0, i32 0
  %144 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i32 0, i32 0), i32 %122, i32 %127, i32 %132, i32 %137, i32 %140, i8* %143)
  br label %145

; <label>:145:                                    ; preds = %116, %114
  br label %147

; <label>:146:                                    ; preds = %17
  call void @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  br label %147

; <label>:147:                                    ; preds = %146, %145
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cmd_enable_mode(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %4 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %4, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  call void @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  br label %15

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %3, align 8
  %10 = call i32 @strcmp(i8* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i32 0, i32 0))
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  store i32 1, i32* @g_enable, align 4
  br label %14

; <label>:13:                                     ; preds = %8
  call void @print(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i32 0, i32 0))
  br label %14

; <label>:14:                                     ; preds = %13, %12
  br label %15

; <label>:15:                                     ; preds = %14, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cmd_add_router(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.router_t*, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  br label %34

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strtoul(i8* %11, i8** null, i32 10)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

; <label>:16:                                     ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = icmp ugt i32 %17, 65535
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %16, %10
  br label %34

; <label>:20:                                     ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = call %struct.router_t* @get_router(i32 %21)
  store %struct.router_t* %22, %struct.router_t** %5, align 8
  %23 = load %struct.router_t*, %struct.router_t** %5, align 8
  %24 = call i32 @valid_router(%struct.router_t* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %20
  br label %34

; <label>:27:                                     ; preds = %20
  %28 = load %struct.router_t*, %struct.router_t** %5, align 8
  %29 = bitcast %struct.router_t* %28 to i8*
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 264, i32 4, i1 false)
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.router_t*, %struct.router_t** %5, align 8
  %32 = getelementptr inbounds %struct.router_t, %struct.router_t* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.router_t*, %struct.router_t** %5, align 8
  call void @prompt_edit_router(%struct.router_t* %33)
  br label %35

; <label>:34:                                     ; preds = %26, %19, %9
  call void @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  br label %35

; <label>:35:                                     ; preds = %34, %27
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cmd_delete_router(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.router_t*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.route_mem_t*, align 8
  %9 = alloca %struct.route*, align 8
  store i8* %0, i8** %2, align 8
  %10 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %1
  br label %86

; <label>:14:                                     ; preds = %1
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strtoul(i8* %15, i8** null, i32 10)
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

; <label>:20:                                     ; preds = %14
  %21 = load i32, i32* %4, align 4
  %22 = icmp ugt i32 %21, 65535
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %20, %14
  br label %86

; <label>:24:                                     ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = call %struct.router_t* @get_router(i32 %25)
  store %struct.router_t* %26, %struct.router_t** %5, align 8
  %27 = load %struct.router_t*, %struct.router_t** %5, align 8
  %28 = call i32 @valid_router(%struct.router_t* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

; <label>:30:                                     ; preds = %24
  br label %86

; <label>:31:                                     ; preds = %24
  store i32 0, i32* %6, align 4
  br label %32

; <label>:32:                                     ; preds = %72, %31
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @g_route_mem_length, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %75

; <label>:36:                                     ; preds = %32
  %37 = load %struct.route_mem_t**, %struct.route_mem_t*** @g_route_memory, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.route_mem_t*, %struct.route_mem_t** %37, i64 %39
  %41 = load %struct.route_mem_t*, %struct.route_mem_t** %40, align 8
  store %struct.route_mem_t* %41, %struct.route_mem_t** %8, align 8
  store i32 0, i32* %7, align 4
  br label %42

; <label>:42:                                     ; preds = %68, %36
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = icmp ult i64 %44, 4095
  br i1 %45, label %46, label %71

; <label>:46:                                     ; preds = %42
  %47 = load %struct.route_mem_t*, %struct.route_mem_t** %8, align 8
  %48 = getelementptr inbounds %struct.route_mem_t, %struct.route_mem_t* %47, i32 0, i32 4
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [4095 x %struct.route], [4095 x %struct.route]* %48, i64 0, i64 %50
  store %struct.route* %51, %struct.route** %9, align 8
  %52 = load %struct.route*, %struct.route** %9, align 8
  %53 = getelementptr inbounds %struct.route, %struct.route* %52, i32 0, i32 5
  %54 = load i8, i8* %53, align 1
  %55 = lshr i8 %54, 2
  %56 = and i8 %55, 1
  %57 = icmp ne i8 %56, 0
  br i1 %57, label %67, label %58

; <label>:58:                                     ; preds = %46
  %59 = load %struct.route*, %struct.route** %9, align 8
  %60 = getelementptr inbounds %struct.route, %struct.route* %59, i32 0, i32 3
  %61 = load i16, i16* %60, align 4
  %62 = zext i16 %61 to i32
  %63 = load i32, i32* %4, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

; <label>:65:                                     ; preds = %58
  %66 = load %struct.route*, %struct.route** %9, align 8
  call void @delete_route(%struct.route* %66, %struct.route* null)
  br label %67

; <label>:67:                                     ; preds = %65, %58, %46
  br label %68

; <label>:68:                                     ; preds = %67
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %42

; <label>:71:                                     ; preds = %42
  br label %72

; <label>:72:                                     ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %32

; <label>:75:                                     ; preds = %32
  %76 = load i16, i16* getelementptr inbounds (%struct.route, %struct.route* @g_default_route, i32 0, i32 3), align 4
  %77 = zext i16 %76 to i32
  %78 = load i32, i32* %4, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

; <label>:80:                                     ; preds = %75
  store i16 0, i16* getelementptr inbounds (%struct.route, %struct.route* @g_default_route, i32 0, i32 3), align 4
  %81 = load i8, i8* getelementptr inbounds (%struct.route, %struct.route* @g_default_route, i32 0, i32 5), align 1
  %82 = and i8 %81, -3
  store i8 %82, i8* getelementptr inbounds (%struct.route, %struct.route* @g_default_route, i32 0, i32 5), align 1
  br label %83

; <label>:83:                                     ; preds = %80, %75
  %84 = load %struct.router_t*, %struct.router_t** %5, align 8
  %85 = getelementptr inbounds %struct.router_t, %struct.router_t* %84, i32 0, i32 0
  store i32 0, i32* %85, align 4
  br label %87

; <label>:86:                                     ; preds = %30, %23, %13
  call void @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  br label %87

; <label>:87:                                     ; preds = %86, %83
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cmd_edit_router(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.router_t*, align 8
  store i8* %0, i8** %2, align 8
  %6 = call i8* @strsep(i8** %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0))
  store i8* %6, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  br label %26

; <label>:10:                                     ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strtoul(i8* %11, i8** null, i32 10)
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ugt i32 %14, 65535
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %10
  br label %26

; <label>:17:                                     ; preds = %10
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.router_t* @get_router(i32 %18)
  store %struct.router_t* %19, %struct.router_t** %5, align 8
  %20 = load %struct.router_t*, %struct.router_t** %5, align 8
  %21 = call i32 @valid_router(%struct.router_t* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

; <label>:23:                                     ; preds = %17
  br label %26

; <label>:24:                                     ; preds = %17
  %25 = load %struct.router_t*, %struct.router_t** %5, align 8
  call void @prompt_edit_router(%struct.router_t* %25)
  br label %27

; <label>:26:                                     ; preds = %23, %16, %9
  call void @print(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i32 0, i32 0))
  br label %27

; <label>:27:                                     ; preds = %26, %24
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @cmd_list_router(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.router_t*, align 8
  store i8* %0, i8** %2, align 8
  store i32 1, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %44, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp sle i32 %6, 65535
  br i1 %7, label %8, label %47

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.router_t* @get_router(i32 %9)
  store %struct.router_t* %10, %struct.router_t** %4, align 8
  %11 = load %struct.router_t*, %struct.router_t** %4, align 8
  %12 = call i32 @valid_router(%struct.router_t* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

; <label>:14:                                     ; preds = %8
  br label %44

; <label>:15:                                     ; preds = %8
  %16 = load %struct.router_t*, %struct.router_t** %4, align 8
  %17 = getelementptr inbounds %struct.router_t, %struct.router_t* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 %18)
  %20 = load %struct.router_t*, %struct.router_t** %4, align 8
  %21 = getelementptr inbounds %struct.router_t, %struct.router_t* %20, i32 0, i32 1
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %21, i32 0, i32 0
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* %22)
  %24 = load %struct.router_t*, %struct.router_t** %4, align 8
  %25 = getelementptr inbounds %struct.router_t, %struct.router_t* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = lshr i32 %26, 24
  %28 = load %struct.router_t*, %struct.router_t** %4, align 8
  %29 = getelementptr inbounds %struct.router_t, %struct.router_t* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = lshr i32 %30, 16
  %32 = and i32 %31, 255
  %33 = load %struct.router_t*, %struct.router_t** %4, align 8
  %34 = getelementptr inbounds %struct.router_t, %struct.router_t* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = lshr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = load %struct.router_t*, %struct.router_t** %4, align 8
  %39 = getelementptr inbounds %struct.router_t, %struct.router_t* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = lshr i32 %40, 0
  %42 = and i32 %41, 255
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i32 %27, i32 %32, i32 %37, i32 %42)
  br label %44

; <label>:44:                                     ; preds = %15, %14
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %3, align 4
  br label %5

; <label>:47:                                     ; preds = %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @print(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5)
  %7 = call i32 @transmit(i32 1, i8* %4, i64 %6, i64* %3)
  ret void
}

declare i32 @receive(i32, i8*, i64, i64*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @parse_ip(i8*, i32*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %14 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store i8* %14, i8** %6, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

; <label>:16:                                     ; preds = %2
  store i32 0, i32* %3, align 4
  br label %65

; <label>:17:                                     ; preds = %2
  %18 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store i8* %18, i8** %7, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17
  store i32 0, i32* %3, align 4
  br label %65

; <label>:21:                                     ; preds = %17
  %22 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store i8* %22, i8** %8, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %25

; <label>:24:                                     ; preds = %21
  store i32 0, i32* %3, align 4
  br label %65

; <label>:25:                                     ; preds = %21
  %26 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0))
  store i8* %26, i8** %9, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %25
  store i32 0, i32* %3, align 4
  br label %65

; <label>:29:                                     ; preds = %25
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strtoul(i8* %30, i8** null, i32 10)
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %10, align 4
  %33 = icmp uge i32 %32, 256
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %29
  store i32 0, i32* %3, align 4
  br label %65

; <label>:35:                                     ; preds = %29
  %36 = load i8*, i8** %7, align 8
  %37 = call i64 @strtoul(i8* %36, i8** null, i32 10)
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = icmp uge i32 %38, 256
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %35
  store i32 0, i32* %3, align 4
  br label %65

; <label>:41:                                     ; preds = %35
  %42 = load i8*, i8** %8, align 8
  %43 = call i64 @strtoul(i8* %42, i8** null, i32 10)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %12, align 4
  %45 = icmp uge i32 %44, 256
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %41
  store i32 0, i32* %3, align 4
  br label %65

; <label>:47:                                     ; preds = %41
  %48 = load i8*, i8** %9, align 8
  %49 = call i64 @strtoul(i8* %48, i8** null, i32 10)
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = icmp uge i32 %50, 256
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %47
  store i32 0, i32* %3, align 4
  br label %65

; <label>:53:                                     ; preds = %47
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 %54, 24
  %56 = load i32, i32* %11, align 4
  %57 = shl i32 %56, 16
  %58 = or i32 %55, %57
  %59 = load i32, i32* %12, align 4
  %60 = shl i32 %59, 8
  %61 = or i32 %58, %60
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %61, %62
  %64 = load i32*, i32** %5, align 8
  store i32 %63, i32* %64, align 4
  store i32 1, i32* %3, align 4
  br label %65

; <label>:65:                                     ; preds = %53, %52, %46, %40, %34, %28, %24, %20, %16
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare i64 @strtoul(i8*, i8**, i32) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @valid_router(%struct.router_t*) #0 {
  %2 = alloca %struct.router_t*, align 8
  store %struct.router_t* %0, %struct.router_t** %2, align 8
  %3 = load %struct.router_t*, %struct.router_t** %2, align 8
  %4 = getelementptr inbounds %struct.router_t, %struct.router_t* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %12

; <label>:7:                                      ; preds = %1
  %8 = load %struct.router_t*, %struct.router_t** %2, align 8
  %9 = getelementptr inbounds %struct.router_t, %struct.router_t* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ule i32 %10, 65535
  br label %12

; <label>:12:                                     ; preds = %7, %1
  %13 = phi i1 [ false, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  ret i32 %14
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.router_t* @get_router(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = sub i32 %3, 1
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds [65535 x %struct.router_t], [65535 x %struct.router_t]* @g_routers, i64 0, i64 %5
  ret %struct.router_t* %6
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @mask_to_length(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %29

; <label>:8:                                      ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8
  store i32 32, i32* %2, align 4
  br label %29

; <label>:12:                                     ; preds = %8
  store i32 0, i32* %4, align 4
  br label %13

; <label>:13:                                     ; preds = %24, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 32
  br i1 %15, label %16, label %27

; <label>:16:                                     ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 32, %17
  %19 = shl i32 -1, %18
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %16
  br label %27

; <label>:23:                                     ; preds = %16
  br label %24

; <label>:24:                                     ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %13

; <label>:27:                                     ; preds = %22, %13
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %29

; <label>:29:                                     ; preds = %27, %11, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @route_bit(%struct.route*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.route*, align 8
  store %struct.route* %0, %struct.route** %3, align 8
  %4 = load %struct.route*, %struct.route** %3, align 8
  %5 = icmp eq %struct.route* %4, @g_default_route
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 -2147483648, i32* %2, align 4
  br label %16

; <label>:7:                                      ; preds = %1
  %8 = load %struct.route*, %struct.route** %3, align 8
  %9 = getelementptr inbounds %struct.route, %struct.route* %8, i32 0, i32 5
  %10 = load i8, i8* %9, align 1
  %11 = lshr i8 %10, 3
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 31, %12
  %14 = sub nsw i32 %13, 1
  %15 = shl i32 1, %14
  store i32 %15, i32* %2, align 4
  br label %16

; <label>:16:                                     ; preds = %7, %6
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @route_mask(%struct.route*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.route*, align 8
  store %struct.route* %0, %struct.route** %3, align 8
  %4 = load %struct.route*, %struct.route** %3, align 8
  %5 = icmp eq %struct.route* %4, @g_default_route
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  store i32 0, i32* %2, align 4
  br label %15

; <label>:7:                                      ; preds = %1
  %8 = load %struct.route*, %struct.route** %3, align 8
  %9 = getelementptr inbounds %struct.route, %struct.route* %8, i32 0, i32 5
  %10 = load i8, i8* %9, align 1
  %11 = lshr i8 %10, 3
  %12 = zext i8 %11 to i32
  %13 = sub nsw i32 31, %12
  %14 = shl i32 -1, %13
  store i32 %14, i32* %2, align 4
  br label %15

; <label>:15:                                     ; preds = %7, %6
  %16 = load i32, i32* %2, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.route* @allocate_route() #0 {
  %1 = alloca %struct.route*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.route_mem_t*, align 8
  %4 = alloca %struct.route_mem_t*, align 8
  %5 = alloca %struct.route*, align 8
  %6 = alloca %struct.route*, align 8
  store %struct.route_mem_t* null, %struct.route_mem_t** %3, align 8
  store i32 0, i32* %2, align 4
  br label %7

; <label>:7:                                      ; preds = %28, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @g_route_mem_length, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %31

; <label>:11:                                     ; preds = %7
  %12 = load %struct.route_mem_t**, %struct.route_mem_t*** @g_route_memory, align 8
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.route_mem_t*, %struct.route_mem_t** %12, i64 %14
  %16 = load %struct.route_mem_t*, %struct.route_mem_t** %15, align 8
  store %struct.route_mem_t* %16, %struct.route_mem_t** %4, align 8
  %17 = load %struct.route_mem_t*, %struct.route_mem_t** %4, align 8
  %18 = icmp eq %struct.route_mem_t* %17, null
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %11
  br label %28

; <label>:20:                                     ; preds = %11
  %21 = load %struct.route_mem_t*, %struct.route_mem_t** %4, align 8
  %22 = getelementptr inbounds %struct.route_mem_t, %struct.route_mem_t* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %20
  %26 = load %struct.route_mem_t*, %struct.route_mem_t** %4, align 8
  store %struct.route_mem_t* %26, %struct.route_mem_t** %3, align 8
  br label %31

; <label>:27:                                     ; preds = %20
  br label %28

; <label>:28:                                     ; preds = %27, %19
  %29 = load i32, i32* %2, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %2, align 4
  br label %7

; <label>:31:                                     ; preds = %25, %7
  %32 = load %struct.route_mem_t*, %struct.route_mem_t** %3, align 8
  %33 = icmp eq %struct.route_mem_t* %32, null
  br i1 %33, label %34, label %84

; <label>:34:                                     ; preds = %31
  %35 = load i32, i32* @g_route_mem_length, align 4
  %36 = icmp eq i32 %35, 1024
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %34
  store %struct.route* null, %struct.route** %1, align 8
  br label %101

; <label>:38:                                     ; preds = %34
  %39 = bitcast %struct.route_mem_t** %3 to i8**
  %40 = call i32 @allocate(i64 98296, i32 0, i8** %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

; <label>:42:                                     ; preds = %38
  store %struct.route* null, %struct.route** %1, align 8
  br label %101

; <label>:43:                                     ; preds = %38
  %44 = load %struct.route_mem_t*, %struct.route_mem_t** %3, align 8
  %45 = getelementptr inbounds %struct.route_mem_t, %struct.route_mem_t* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  store i32 1, i32* %2, align 4
  br label %46

; <label>:46:                                     ; preds = %74, %43
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = icmp ule i64 %48, 4095
  br i1 %49, label %50, label %77

; <label>:50:                                     ; preds = %46
  %51 = load %struct.route_mem_t*, %struct.route_mem_t** %3, align 8
  %52 = getelementptr inbounds %struct.route_mem_t, %struct.route_mem_t* %51, i32 0, i32 4
  %53 = load i32, i32* %2, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4095 x %struct.route], [4095 x %struct.route]* %52, i64 0, i64 %55
  store %struct.route* %56, %struct.route** %5, align 8
  %57 = load %struct.route*, %struct.route** %5, align 8
  %58 = getelementptr inbounds %struct.route, %struct.route* %57, i32 0, i32 5
  %59 = load i8, i8* %58, align 1
  %60 = and i8 %59, -5
  %61 = or i8 %60, 4
  store i8 %61, i8* %58, align 1
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp eq i64 %63, 4095
  br i1 %64, label %65, label %68

; <label>:65:                                     ; preds = %50
  %66 = load %struct.route*, %struct.route** %5, align 8
  %67 = getelementptr inbounds %struct.route, %struct.route* %66, i32 0, i32 2
  store i32 0, i32* %67, align 8
  br label %73

; <label>:68:                                     ; preds = %50
  %69 = load i32, i32* %2, align 4
  %70 = add nsw i32 %69, 1
  %71 = load %struct.route*, %struct.route** %5, align 8
  %72 = getelementptr inbounds %struct.route, %struct.route* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  br label %73

; <label>:73:                                     ; preds = %68, %65
  br label %74

; <label>:74:                                     ; preds = %73
  %75 = load i32, i32* %2, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %2, align 4
  br label %46

; <label>:77:                                     ; preds = %46
  %78 = load %struct.route_mem_t*, %struct.route_mem_t** %3, align 8
  %79 = load %struct.route_mem_t**, %struct.route_mem_t*** @g_route_memory, align 8
  %80 = load i32, i32* @g_route_mem_length, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* @g_route_mem_length, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds %struct.route_mem_t*, %struct.route_mem_t** %79, i64 %82
  store %struct.route_mem_t* %78, %struct.route_mem_t** %83, align 8
  br label %84

; <label>:84:                                     ; preds = %77, %31
  %85 = load %struct.route_mem_t*, %struct.route_mem_t** %3, align 8
  %86 = getelementptr inbounds %struct.route_mem_t, %struct.route_mem_t* %85, i32 0, i32 4
  %87 = load %struct.route_mem_t*, %struct.route_mem_t** %3, align 8
  %88 = getelementptr inbounds %struct.route_mem_t, %struct.route_mem_t* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub i32 %89, 1
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds [4095 x %struct.route], [4095 x %struct.route]* %86, i64 0, i64 %91
  store %struct.route* %92, %struct.route** %6, align 8
  %93 = load %struct.route*, %struct.route** %6, align 8
  %94 = getelementptr inbounds %struct.route, %struct.route* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.route_mem_t*, %struct.route_mem_t** %3, align 8
  %97 = getelementptr inbounds %struct.route_mem_t, %struct.route_mem_t* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.route*, %struct.route** %6, align 8
  %99 = bitcast %struct.route* %98 to i8*
  call void @llvm.memset.p0i8.i64(i8* %99, i8 0, i64 24, i32 8, i1 false)
  %100 = load %struct.route*, %struct.route** %6, align 8
  store %struct.route* %100, %struct.route** %1, align 8
  br label %101

; <label>:101:                                    ; preds = %84, %42, %37
  %102 = load %struct.route*, %struct.route** %1, align 8
  ret %struct.route* %102
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: noinline nounwind uwtable
define internal %struct.route* @lookup_route(i32, i32, %struct.route**) #0 {
  %4 = alloca %struct.route*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.route**, align 8
  %8 = alloca %struct.route*, align 8
  %9 = alloca %struct.route*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.route** %2, %struct.route*** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

; <label>:13:                                     ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

; <label>:16:                                     ; preds = %13
  %17 = load %struct.route**, %struct.route*** %7, align 8
  %18 = icmp ne %struct.route** %17, null
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %16
  %20 = load %struct.route**, %struct.route*** %7, align 8
  store %struct.route* null, %struct.route** %20, align 8
  br label %21

; <label>:21:                                     ; preds = %19, %16
  store %struct.route* @g_default_route, %struct.route** %4, align 8
  br label %76

; <label>:22:                                     ; preds = %13
  store %struct.route* null, %struct.route** %4, align 8
  br label %76

; <label>:23:                                     ; preds = %3
  store %struct.route* @g_default_route, %struct.route** %8, align 8
  br label %24

; <label>:24:                                     ; preds = %73, %23
  %25 = load %struct.route*, %struct.route** %8, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call %struct.route* @route_child(%struct.route* %25, i32 %26)
  store %struct.route* %27, %struct.route** %9, align 8
  %28 = icmp ne %struct.route* %27, null
  br i1 %28, label %29, label %75

; <label>:29:                                     ; preds = %24
  %30 = load %struct.route*, %struct.route** %9, align 8
  %31 = call i32 @route_mask(%struct.route* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.route*, %struct.route** %9, align 8
  %33 = getelementptr inbounds %struct.route, %struct.route* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %54

; <label>:37:                                     ; preds = %29
  %38 = load %struct.route*, %struct.route** %9, align 8
  %39 = getelementptr inbounds %struct.route, %struct.route* %38, i32 0, i32 5
  %40 = load i8, i8* %39, align 1
  %41 = lshr i8 %40, 3
  %42 = zext i8 %41 to i32
  %43 = load i32, i32* %6, align 4
  %44 = sub i32 %43, 1
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %54

; <label>:46:                                     ; preds = %37
  %47 = load %struct.route**, %struct.route*** %7, align 8
  %48 = icmp ne %struct.route** %47, null
  br i1 %48, label %49, label %52

; <label>:49:                                     ; preds = %46
  %50 = load %struct.route*, %struct.route** %8, align 8
  %51 = load %struct.route**, %struct.route*** %7, align 8
  store %struct.route* %50, %struct.route** %51, align 8
  br label %52

; <label>:52:                                     ; preds = %49, %46
  %53 = load %struct.route*, %struct.route** %9, align 8
  store %struct.route* %53, %struct.route** %4, align 8
  br label %76

; <label>:54:                                     ; preds = %37, %29
  %55 = load %struct.route*, %struct.route** %9, align 8
  %56 = getelementptr inbounds %struct.route, %struct.route* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %59, %62
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %54
  br label %75

; <label>:65:                                     ; preds = %54
  %66 = load %struct.route*, %struct.route** %9, align 8
  %67 = getelementptr inbounds %struct.route, %struct.route* %66, i32 0, i32 5
  %68 = load i8, i8* %67, align 1
  %69 = lshr i8 %68, 3
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 31
  br i1 %71, label %72, label %73

; <label>:72:                                     ; preds = %65
  br label %75

; <label>:73:                                     ; preds = %65
  %74 = load %struct.route*, %struct.route** %9, align 8
  store %struct.route* %74, %struct.route** %8, align 8
  br label %24

; <label>:75:                                     ; preds = %72, %64, %24
  store %struct.route* null, %struct.route** %4, align 8
  br label %76

; <label>:76:                                     ; preds = %75, %52, %22, %21
  %77 = load %struct.route*, %struct.route** %4, align 8
  ret %struct.route* %77
}

; Function Attrs: noinline nounwind uwtable
define internal void @delete_route(%struct.route*, %struct.route*) #0 {
  %3 = alloca %struct.route*, align 8
  %4 = alloca %struct.route*, align 8
  %5 = alloca %struct.route*, align 8
  %6 = alloca %struct.route**, align 8
  %7 = alloca %struct.route*, align 8
  store %struct.route* %0, %struct.route** %3, align 8
  store %struct.route* %1, %struct.route** %4, align 8
  %8 = load %struct.route*, %struct.route** %4, align 8
  %9 = icmp eq %struct.route* %8, null
  br i1 %9, label %10, label %24

; <label>:10:                                     ; preds = %2
  %11 = load %struct.route*, %struct.route** %3, align 8
  %12 = getelementptr inbounds %struct.route, %struct.route* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.route*, %struct.route** %3, align 8
  %15 = getelementptr inbounds %struct.route, %struct.route* %14, i32 0, i32 5
  %16 = load i8, i8* %15, align 1
  %17 = lshr i8 %16, 3
  %18 = zext i8 %17 to i32
  %19 = add nsw i32 %18, 1
  %20 = call %struct.route* @lookup_route(i32 %13, i32 %19, %struct.route** %4)
  %21 = icmp eq %struct.route* %20, null
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %10
  call void @exit(i32 1)
  br label %23

; <label>:23:                                     ; preds = %22, %10
  br label %24

; <label>:24:                                     ; preds = %23, %2
  %25 = load %struct.route*, %struct.route** %4, align 8
  %26 = icmp eq %struct.route* %25, null
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %24
  call void @exit(i32 2)
  br label %28

; <label>:28:                                     ; preds = %27, %24
  %29 = load %struct.route*, %struct.route** %4, align 8
  %30 = getelementptr inbounds %struct.route, %struct.route* %29, i32 0, i32 0
  %31 = load %struct.route*, %struct.route** %30, align 8
  %32 = load %struct.route*, %struct.route** %3, align 8
  %33 = icmp eq %struct.route* %31, %32
  br i1 %33, label %34, label %40

; <label>:34:                                     ; preds = %28
  %35 = load %struct.route*, %struct.route** %4, align 8
  %36 = getelementptr inbounds %struct.route, %struct.route* %35, i32 0, i32 0
  store %struct.route** %36, %struct.route*** %6, align 8
  %37 = load %struct.route*, %struct.route** %4, align 8
  %38 = getelementptr inbounds %struct.route, %struct.route* %37, i32 0, i32 1
  %39 = load %struct.route*, %struct.route** %38, align 8
  store %struct.route* %39, %struct.route** %5, align 8
  br label %54

; <label>:40:                                     ; preds = %28
  %41 = load %struct.route*, %struct.route** %4, align 8
  %42 = getelementptr inbounds %struct.route, %struct.route* %41, i32 0, i32 1
  %43 = load %struct.route*, %struct.route** %42, align 8
  %44 = load %struct.route*, %struct.route** %3, align 8
  %45 = icmp eq %struct.route* %43, %44
  br i1 %45, label %46, label %52

; <label>:46:                                     ; preds = %40
  %47 = load %struct.route*, %struct.route** %4, align 8
  %48 = getelementptr inbounds %struct.route, %struct.route* %47, i32 0, i32 1
  store %struct.route** %48, %struct.route*** %6, align 8
  %49 = load %struct.route*, %struct.route** %4, align 8
  %50 = getelementptr inbounds %struct.route, %struct.route* %49, i32 0, i32 0
  %51 = load %struct.route*, %struct.route** %50, align 8
  store %struct.route* %51, %struct.route** %5, align 8
  br label %53

; <label>:52:                                     ; preds = %40
  call void @exit(i32 3)
  br label %53

; <label>:53:                                     ; preds = %52, %46
  br label %54

; <label>:54:                                     ; preds = %53, %34
  %55 = load %struct.route*, %struct.route** %3, align 8
  %56 = getelementptr inbounds %struct.route, %struct.route* %55, i32 0, i32 3
  store i16 0, i16* %56, align 4
  %57 = load %struct.route*, %struct.route** %3, align 8
  %58 = getelementptr inbounds %struct.route, %struct.route* %57, i32 0, i32 5
  %59 = load i8, i8* %58, align 1
  %60 = and i8 %59, -3
  store i8 %60, i8* %58, align 1
  %61 = load %struct.route*, %struct.route** %3, align 8
  %62 = getelementptr inbounds %struct.route, %struct.route* %61, i32 0, i32 0
  %63 = load %struct.route*, %struct.route** %62, align 8
  %64 = icmp ne %struct.route* %63, null
  br i1 %64, label %65, label %71

; <label>:65:                                     ; preds = %54
  %66 = load %struct.route*, %struct.route** %3, align 8
  %67 = getelementptr inbounds %struct.route, %struct.route* %66, i32 0, i32 1
  %68 = load %struct.route*, %struct.route** %67, align 8
  %69 = icmp ne %struct.route* %68, null
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %65
  br label %151

; <label>:71:                                     ; preds = %65, %54
  %72 = load %struct.route*, %struct.route** %3, align 8
  %73 = getelementptr inbounds %struct.route, %struct.route* %72, i32 0, i32 0
  %74 = load %struct.route*, %struct.route** %73, align 8
  %75 = icmp ne %struct.route* %74, null
  br i1 %75, label %76, label %82

; <label>:76:                                     ; preds = %71
  %77 = load %struct.route*, %struct.route** %3, align 8
  %78 = getelementptr inbounds %struct.route, %struct.route* %77, i32 0, i32 0
  %79 = load %struct.route*, %struct.route** %78, align 8
  %80 = load %struct.route**, %struct.route*** %6, align 8
  store %struct.route* %79, %struct.route** %80, align 8
  %81 = load %struct.route*, %struct.route** %3, align 8
  call void @free_route(%struct.route* %81)
  br label %150

; <label>:82:                                     ; preds = %71
  %83 = load %struct.route*, %struct.route** %3, align 8
  %84 = getelementptr inbounds %struct.route, %struct.route* %83, i32 0, i32 1
  %85 = load %struct.route*, %struct.route** %84, align 8
  %86 = icmp ne %struct.route* %85, null
  br i1 %86, label %87, label %93

; <label>:87:                                     ; preds = %82
  %88 = load %struct.route*, %struct.route** %3, align 8
  %89 = getelementptr inbounds %struct.route, %struct.route* %88, i32 0, i32 1
  %90 = load %struct.route*, %struct.route** %89, align 8
  %91 = load %struct.route**, %struct.route*** %6, align 8
  store %struct.route* %90, %struct.route** %91, align 8
  %92 = load %struct.route*, %struct.route** %3, align 8
  call void @free_route(%struct.route* %92)
  br label %149

; <label>:93:                                     ; preds = %82
  %94 = load %struct.route*, %struct.route** %4, align 8
  %95 = icmp ne %struct.route* %94, @g_default_route
  br i1 %95, label %96, label %145

; <label>:96:                                     ; preds = %93
  %97 = load %struct.route*, %struct.route** %4, align 8
  %98 = getelementptr inbounds %struct.route, %struct.route* %97, i32 0, i32 3
  %99 = load i16, i16* %98, align 4
  %100 = zext i16 %99 to i32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %145

; <label>:102:                                    ; preds = %96
  %103 = load %struct.route*, %struct.route** %4, align 8
  %104 = getelementptr inbounds %struct.route, %struct.route* %103, i32 0, i32 5
  %105 = load i8, i8* %104, align 1
  %106 = lshr i8 %105, 1
  %107 = and i8 %106, 1
  %108 = icmp ne i8 %107, 0
  br i1 %108, label %145, label %109

; <label>:109:                                    ; preds = %102
  %110 = load %struct.route*, %struct.route** %5, align 8
  %111 = icmp ne %struct.route* %110, null
  br i1 %111, label %112, label %145

; <label>:112:                                    ; preds = %109
  %113 = load %struct.route*, %struct.route** %4, align 8
  %114 = getelementptr inbounds %struct.route, %struct.route* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.route*, %struct.route** %4, align 8
  %117 = getelementptr inbounds %struct.route, %struct.route* %116, i32 0, i32 5
  %118 = load i8, i8* %117, align 1
  %119 = lshr i8 %118, 3
  %120 = zext i8 %119 to i32
  %121 = add nsw i32 %120, 1
  %122 = call %struct.route* @lookup_route(i32 %115, i32 %121, %struct.route** %7)
  %123 = icmp ne %struct.route* %122, null
  br i1 %123, label %124, label %144

; <label>:124:                                    ; preds = %112
  %125 = load %struct.route*, %struct.route** %7, align 8
  %126 = icmp ne %struct.route* %125, null
  br i1 %126, label %127, label %144

; <label>:127:                                    ; preds = %124
  %128 = load %struct.route*, %struct.route** %7, align 8
  %129 = getelementptr inbounds %struct.route, %struct.route* %128, i32 0, i32 0
  %130 = load %struct.route*, %struct.route** %129, align 8
  %131 = load %struct.route*, %struct.route** %4, align 8
  %132 = icmp eq %struct.route* %130, %131
  br i1 %132, label %133, label %137

; <label>:133:                                    ; preds = %127
  %134 = load %struct.route*, %struct.route** %5, align 8
  %135 = load %struct.route*, %struct.route** %7, align 8
  %136 = getelementptr inbounds %struct.route, %struct.route* %135, i32 0, i32 0
  store %struct.route* %134, %struct.route** %136, align 8
  br label %141

; <label>:137:                                    ; preds = %127
  %138 = load %struct.route*, %struct.route** %5, align 8
  %139 = load %struct.route*, %struct.route** %7, align 8
  %140 = getelementptr inbounds %struct.route, %struct.route* %139, i32 0, i32 1
  store %struct.route* %138, %struct.route** %140, align 8
  br label %141

; <label>:141:                                    ; preds = %137, %133
  %142 = load %struct.route*, %struct.route** %4, align 8
  call void @free_route(%struct.route* %142)
  %143 = load %struct.route*, %struct.route** %3, align 8
  call void @free_route(%struct.route* %143)
  br label %144

; <label>:144:                                    ; preds = %141, %124, %112
  br label %148

; <label>:145:                                    ; preds = %109, %102, %96, %93
  %146 = load %struct.route**, %struct.route*** %6, align 8
  store %struct.route* null, %struct.route** %146, align 8
  %147 = load %struct.route*, %struct.route** %3, align 8
  call void @free_route(%struct.route* %147)
  br label %148

; <label>:148:                                    ; preds = %145, %144
  br label %149

; <label>:149:                                    ; preds = %148, %87
  br label %150

; <label>:150:                                    ; preds = %149, %76
  br label %151

; <label>:151:                                    ; preds = %150, %70
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal %struct.route* @route_child(%struct.route*, i32) #0 {
  %3 = alloca %struct.route*, align 8
  %4 = alloca i32, align 4
  store %struct.route* %0, %struct.route** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.route*, %struct.route** %3, align 8
  %7 = call i32 @route_bit(%struct.route* %6)
  %8 = and i32 %5, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %2
  %11 = load %struct.route*, %struct.route** %3, align 8
  %12 = getelementptr inbounds %struct.route, %struct.route* %11, i32 0, i32 0
  %13 = load %struct.route*, %struct.route** %12, align 8
  br label %18

; <label>:14:                                     ; preds = %2
  %15 = load %struct.route*, %struct.route** %3, align 8
  %16 = getelementptr inbounds %struct.route, %struct.route* %15, i32 0, i32 1
  %17 = load %struct.route*, %struct.route** %16, align 8
  br label %18

; <label>:18:                                     ; preds = %14, %10
  %19 = phi %struct.route* [ %13, %10 ], [ %17, %14 ]
  ret %struct.route* %19
}

; Function Attrs: noinline nounwind uwtable
define internal void @exit(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @_terminate(i32 %3) #4
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @free_route(%struct.route*) #0 {
  %2 = alloca %struct.route*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.route_mem_t*, align 8
  store %struct.route* %0, %struct.route** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

; <label>:5:                                      ; preds = %46, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @g_route_mem_length, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %49

; <label>:9:                                      ; preds = %5
  %10 = load %struct.route_mem_t**, %struct.route_mem_t*** @g_route_memory, align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.route_mem_t*, %struct.route_mem_t** %10, i64 %12
  %14 = load %struct.route_mem_t*, %struct.route_mem_t** %13, align 8
  store %struct.route_mem_t* %14, %struct.route_mem_t** %4, align 8
  %15 = load %struct.route_mem_t*, %struct.route_mem_t** %4, align 8
  %16 = icmp eq %struct.route_mem_t* %15, null
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %9
  br label %46

; <label>:18:                                     ; preds = %9
  %19 = load %struct.route*, %struct.route** %2, align 8
  %20 = ptrtoint %struct.route* %19 to i64
  %21 = load %struct.route_mem_t*, %struct.route_mem_t** %4, align 8
  %22 = ptrtoint %struct.route_mem_t* %21 to i64
  %23 = sub nsw i64 %20, %22
  %24 = icmp ult i64 %23, 98296
  br i1 %24, label %25, label %45

; <label>:25:                                     ; preds = %18
  %26 = load %struct.route*, %struct.route** %2, align 8
  %27 = getelementptr inbounds %struct.route, %struct.route* %26, i32 0, i32 5
  %28 = load i8, i8* %27, align 1
  %29 = and i8 %28, -5
  %30 = or i8 %29, 4
  store i8 %30, i8* %27, align 1
  %31 = load %struct.route_mem_t*, %struct.route_mem_t** %4, align 8
  %32 = getelementptr inbounds %struct.route_mem_t, %struct.route_mem_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.route*, %struct.route** %2, align 8
  %35 = getelementptr inbounds %struct.route, %struct.route* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.route*, %struct.route** %2, align 8
  %37 = ptrtoint %struct.route* %36 to i64
  %38 = load %struct.route_mem_t*, %struct.route_mem_t** %4, align 8
  %39 = ptrtoint %struct.route_mem_t* %38 to i64
  %40 = sub nsw i64 %37, %39
  %41 = udiv i64 %40, 24
  %42 = trunc i64 %41 to i32
  %43 = load %struct.route_mem_t*, %struct.route_mem_t** %4, align 8
  %44 = getelementptr inbounds %struct.route_mem_t, %struct.route_mem_t* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %50

; <label>:45:                                     ; preds = %18
  br label %46

; <label>:46:                                     ; preds = %45, %17
  %47 = load i32, i32* %3, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %5

; <label>:49:                                     ; preds = %5
  call void @exit(i32 9)
  br label %50

; <label>:50:                                     ; preds = %49, %25
  ret void
}

; Function Attrs: noreturn
declare void @_terminate(i32) #3

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @prompt_edit_router(%struct.router_t*) #0 {
  %2 = alloca %struct.router_t*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.router_t* %0, %struct.router_t** %2, align 8
  %5 = load %struct.router_t*, %struct.router_t** %2, align 8
  %6 = getelementptr inbounds %struct.router_t, %struct.router_t* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0), i32 %7)
  %9 = load %struct.router_t*, %struct.router_t** %2, align 8
  %10 = getelementptr inbounds %struct.router_t, %struct.router_t* %9, i32 0, i32 1
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i32 0, i32 0), i8* %11)
  %13 = load %struct.router_t*, %struct.router_t** %2, align 8
  %14 = getelementptr inbounds %struct.router_t, %struct.router_t* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = lshr i32 %15, 24
  %17 = load %struct.router_t*, %struct.router_t** %2, align 8
  %18 = getelementptr inbounds %struct.router_t, %struct.router_t* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = lshr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = load %struct.router_t*, %struct.router_t** %2, align 8
  %23 = getelementptr inbounds %struct.router_t, %struct.router_t* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = lshr i32 %24, 8
  %26 = and i32 %25, 255
  %27 = load %struct.router_t*, %struct.router_t** %2, align 8
  %28 = getelementptr inbounds %struct.router_t, %struct.router_t* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = lshr i32 %29, 0
  %31 = and i32 %30, 255
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i32 %16, i32 %21, i32 %26, i32 %31)
  %33 = call i8* @readline(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0))
  store i8* %33, i8** %3, align 8
  %34 = load i8*, i8** %3, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %54

; <label>:36:                                     ; preds = %1
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %54

; <label>:40:                                     ; preds = %36
  %41 = call i8* @readline(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i32 0, i32 0))
  store i8* %41, i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %44, label %53

; <label>:44:                                     ; preds = %40
  %45 = load %struct.router_t*, %struct.router_t** %2, align 8
  %46 = getelementptr inbounds %struct.router_t, %struct.router_t* %45, i32 0, i32 1
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %46, i32 0, i32 0
  %48 = load i8*, i8** %3, align 8
  %49 = call i8* @strncpy(i8* %47, i8* %48, i64 256)
  %50 = load %struct.router_t*, %struct.router_t** %2, align 8
  %51 = getelementptr inbounds %struct.router_t, %struct.router_t* %50, i32 0, i32 1
  %52 = getelementptr inbounds [256 x i8], [256 x i8]* %51, i64 0, i64 255
  store i8 0, i8* %52, align 1
  br label %53

; <label>:53:                                     ; preds = %44, %40
  br label %54

; <label>:54:                                     ; preds = %53, %36, %1
  %55 = call i8* @readline(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i32 0, i32 0))
  store i8* %55, i8** %3, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %75

; <label>:58:                                     ; preds = %54
  %59 = load i8*, i8** %3, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %75

; <label>:62:                                     ; preds = %58
  %63 = call i8* @readline(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0))
  store i8* %63, i8** %3, align 8
  %64 = load i8*, i8** %3, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %74

; <label>:66:                                     ; preds = %62
  %67 = load i8*, i8** %3, align 8
  %68 = call i32 @parse_ip(i8* %67, i32* %4)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

; <label>:70:                                     ; preds = %66
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.router_t*, %struct.router_t** %2, align 8
  %73 = getelementptr inbounds %struct.router_t, %struct.router_t* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  br label %74

; <label>:74:                                     ; preds = %70, %66, %62
  br label %75

; <label>:75:                                     ; preds = %74, %58, %54
  ret void
}

declare i8* @strncpy(i8*, i8*, i64) #1

declare i32 @transmit(i32, i8*, i64, i64*) #1

declare i64 @strlen(i8*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
