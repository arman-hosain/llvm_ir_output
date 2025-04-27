; ModuleID = '/home/ahossain4@cs.utep.edu/neurips_workspace_2025/cgc-cbs/cqe-challenges/CROMU_00001/src/service.c'
source_filename = "/home/ahossain4@cs.utep.edu/neurips_workspace_2025/cgc-cbs/cqe-challenges/CROMU_00001/src/service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_manager = type { %struct.user*, i32 }
%struct.user = type { [16 x i8], %struct.message_manager*, %struct.user* }
%struct.message_manager = type { %struct.message*, i32 }
%struct.message = type { %struct.message*, i32, i32, [32 x i8] }

@.str = private unnamed_addr constant [37 x i8] c"[-] Error Failed to allocate buffer\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"[-] Error username too long\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"[-] Error user exists\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"[-] Error allocating user structure\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"[-] Error Message too long\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"[-] Error Failed to allocate message struct\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"[-] Message ID out of range\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"[-] Message ID not found\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"***********************************\0A\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c":  \00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"\0A***********************************\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"Unread messages:\0A\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"[-] Error invalid user\0A\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"[-] Failed to create message\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"[-] Failed to add message\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"1) Send Message\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"2) Read Message\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"3) List Messages\0A\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"4) Delete Message\0A\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"5) Logout\0A\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"6) Exit\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"[-] Receive failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"[-] Invalid choice\0A\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Exiting...\0A\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"Logging out...\0A\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"ID: \00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"To: \00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Message: \00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"1) Create User\0A\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"2) Login\0A\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"3) Exit\0A\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"[-] Receive Failed\0A\00", align 1
@.str.34 = private unnamed_addr constant [11 x i8] c"username: \00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"Login Success\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"Login Failed\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @list_users(%struct.user_manager*) #0 {
  %2 = alloca %struct.user_manager*, align 8
  %3 = alloca %struct.user*, align 8
  store %struct.user_manager* %0, %struct.user_manager** %2, align 8
  store %struct.user* null, %struct.user** %3, align 8
  %4 = load %struct.user_manager*, %struct.user_manager** %2, align 8
  %5 = icmp eq %struct.user_manager* %4, null
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  br label %23

; <label>:7:                                      ; preds = %1
  %8 = load %struct.user_manager*, %struct.user_manager** %2, align 8
  %9 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %8, i32 0, i32 0
  %10 = load %struct.user*, %struct.user** %9, align 8
  store %struct.user* %10, %struct.user** %3, align 8
  br label %11

; <label>:11:                                     ; preds = %14, %7
  %12 = load %struct.user*, %struct.user** %3, align 8
  %13 = icmp ne %struct.user* %12, null
  br i1 %13, label %14, label %22

; <label>:14:                                     ; preds = %11
  %15 = load %struct.user*, %struct.user** %3, align 8
  %16 = getelementptr inbounds %struct.user, %struct.user* %15, i32 0, i32 0
  %17 = getelementptr inbounds [16 x i8], [16 x i8]* %16, i32 0, i32 0
  %18 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* %17)
  %19 = load %struct.user*, %struct.user** %3, align 8
  %20 = getelementptr inbounds %struct.user, %struct.user* %19, i32 0, i32 2
  %21 = load %struct.user*, %struct.user** %20, align 8
  store %struct.user* %21, %struct.user** %3, align 8
  br label %11

; <label>:22:                                     ; preds = %11
  br label %23

; <label>:23:                                     ; preds = %22, %6
  ret void
}

declare i32 @puts(...) #1

; Function Attrs: noinline nounwind uwtable
define %struct.user_manager* @init_users() #0 {
  %1 = alloca %struct.user_manager*, align 8
  store %struct.user_manager* null, %struct.user_manager** %1, align 8
  %2 = bitcast %struct.user_manager** %1 to i8**
  %3 = call i32 @allocate(i64 16, i32 0, i8** %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %0
  %6 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0))
  br label %12

; <label>:7:                                      ; preds = %0
  %8 = load %struct.user_manager*, %struct.user_manager** %1, align 8
  %9 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %8, i32 0, i32 0
  store %struct.user* null, %struct.user** %9, align 8
  %10 = load %struct.user_manager*, %struct.user_manager** %1, align 8
  %11 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %10, i32 0, i32 1
  store i32 0, i32* %11, align 8
  br label %12

; <label>:12:                                     ; preds = %7, %5
  %13 = load %struct.user_manager*, %struct.user_manager** %1, align 8
  ret %struct.user_manager* %13
}

declare i32 @allocate(i64, i32, i8**) #1

; Function Attrs: noinline nounwind uwtable
define i64 @create_user(%struct.user_manager*, i8*) #0 {
  %3 = alloca %struct.user_manager*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.user*, align 8
  %7 = alloca %struct.user*, align 8
  store %struct.user_manager* %0, %struct.user_manager** %3, align 8
  store i8* %1, i8** %4, align 8
  store i64 0, i64* %5, align 8
  store %struct.user* null, %struct.user** %6, align 8
  store %struct.user* null, %struct.user** %7, align 8
  %8 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %9 = icmp eq %struct.user_manager* %8, null
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  br label %94

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11
  br label %94

; <label>:15:                                     ; preds = %11
  %16 = load i8*, i8** %4, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = icmp ugt i64 %17, 15
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %15
  %20 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  br label %94

; <label>:21:                                     ; preds = %15
  %22 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %23 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %22, i32 0, i32 0
  %24 = load %struct.user*, %struct.user** %23, align 8
  store %struct.user* %24, %struct.user** %6, align 8
  br label %25

; <label>:25:                                     ; preds = %37, %21
  %26 = load %struct.user*, %struct.user** %6, align 8
  %27 = icmp ne %struct.user* %26, null
  br i1 %27, label %28, label %41

; <label>:28:                                     ; preds = %25
  %29 = load %struct.user*, %struct.user** %6, align 8
  %30 = getelementptr inbounds %struct.user, %struct.user* %29, i32 0, i32 0
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %30, i32 0, i32 0
  %32 = load i8*, i8** %4, align 8
  %33 = call i32 @strcmp(i8* %31, i8* %32)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %28
  %36 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i32 0, i32 0))
  br label %94

; <label>:37:                                     ; preds = %28
  %38 = load %struct.user*, %struct.user** %6, align 8
  %39 = getelementptr inbounds %struct.user, %struct.user* %38, i32 0, i32 2
  %40 = load %struct.user*, %struct.user** %39, align 8
  store %struct.user* %40, %struct.user** %6, align 8
  br label %25

; <label>:41:                                     ; preds = %25
  %42 = bitcast %struct.user** %7 to i8**
  %43 = call i32 @allocate(i64 32, i32 0, i8** %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

; <label>:45:                                     ; preds = %41
  %46 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i32 0, i32 0))
  br label %94

; <label>:47:                                     ; preds = %41
  %48 = load %struct.user*, %struct.user** %7, align 8
  %49 = getelementptr inbounds %struct.user, %struct.user* %48, i32 0, i32 2
  store %struct.user* null, %struct.user** %49, align 8
  %50 = load %struct.user*, %struct.user** %7, align 8
  %51 = getelementptr inbounds %struct.user, %struct.user* %50, i32 0, i32 0
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %51, i64 0, i64 0
  store i8 0, i8* %52, align 8
  %53 = call %struct.message_manager* @init_manager()
  %54 = load %struct.user*, %struct.user** %7, align 8
  %55 = getelementptr inbounds %struct.user, %struct.user* %54, i32 0, i32 1
  store %struct.message_manager* %53, %struct.message_manager** %55, align 8
  %56 = load %struct.user*, %struct.user** %7, align 8
  %57 = getelementptr inbounds %struct.user, %struct.user* %56, i32 0, i32 0
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %57, i32 0, i32 0
  %59 = load i8*, i8** %4, align 8
  %60 = call i8* @strncat(i8* %58, i8* %59, i64 16)
  %61 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %62 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %61, i32 0, i32 0
  %63 = load %struct.user*, %struct.user** %62, align 8
  %64 = icmp eq %struct.user* %63, null
  br i1 %64, label %65, label %77

; <label>:65:                                     ; preds = %47
  %66 = load %struct.user*, %struct.user** %7, align 8
  %67 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %68 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %67, i32 0, i32 0
  store %struct.user* %66, %struct.user** %68, align 8
  %69 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %70 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %74 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = zext i32 %75 to i64
  store i64 %76, i64* %5, align 8
  br label %94

; <label>:77:                                     ; preds = %47
  %78 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %79 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %78, i32 0, i32 0
  %80 = load %struct.user*, %struct.user** %79, align 8
  %81 = load %struct.user*, %struct.user** %7, align 8
  %82 = getelementptr inbounds %struct.user, %struct.user* %81, i32 0, i32 2
  store %struct.user* %80, %struct.user** %82, align 8
  %83 = load %struct.user*, %struct.user** %7, align 8
  %84 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %85 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %84, i32 0, i32 0
  store %struct.user* %83, %struct.user** %85, align 8
  %86 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %87 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = add i32 %88, 1
  store i32 %89, i32* %87, align 8
  %90 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %91 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = zext i32 %92 to i64
  store i64 %93, i64* %5, align 8
  br label %94

; <label>:94:                                     ; preds = %77, %65, %45, %35, %19, %14, %10
  %95 = load i64, i64* %5, align 8
  ret i64 %95
}

declare i64 @strlen(i8*) #1

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define %struct.message_manager* @init_manager() #0 {
  %1 = alloca %struct.message_manager*, align 8
  store %struct.message_manager* null, %struct.message_manager** %1, align 8
  %2 = bitcast %struct.message_manager** %1 to i8**
  %3 = call i32 @allocate(i64 16, i32 0, i8** %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

; <label>:5:                                      ; preds = %0
  %6 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i32 0, i32 0))
  br label %12

; <label>:7:                                      ; preds = %0
  %8 = load %struct.message_manager*, %struct.message_manager** %1, align 8
  %9 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %8, i32 0, i32 0
  store %struct.message* null, %struct.message** %9, align 8
  %10 = load %struct.message_manager*, %struct.message_manager** %1, align 8
  %11 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %10, i32 0, i32 1
  store i32 0, i32* %11, align 8
  br label %12

; <label>:12:                                     ; preds = %7, %5
  %13 = load %struct.message_manager*, %struct.message_manager** %1, align 8
  ret %struct.message_manager* %13
}

declare i8* @strncat(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define i64 @add_message(%struct.message_manager*, %struct.message*) #0 {
  %3 = alloca %struct.message_manager*, align 8
  %4 = alloca %struct.message*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.message*, align 8
  store %struct.message_manager* %0, %struct.message_manager** %3, align 8
  store %struct.message* %1, %struct.message** %4, align 8
  store i64 0, i64* %5, align 8
  store %struct.message* null, %struct.message** %6, align 8
  %7 = load %struct.message*, %struct.message** %4, align 8
  %8 = icmp eq %struct.message* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  br label %66

; <label>:10:                                     ; preds = %2
  %11 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %12 = icmp eq %struct.message_manager* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %10
  br label %66

; <label>:14:                                     ; preds = %10
  %15 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %16 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %15, i32 0, i32 0
  %17 = load %struct.message*, %struct.message** %16, align 8
  %18 = icmp eq %struct.message* %17, null
  br i1 %18, label %19, label %36

; <label>:19:                                     ; preds = %14
  %20 = load %struct.message*, %struct.message** %4, align 8
  %21 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %22 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %21, i32 0, i32 0
  store %struct.message* %20, %struct.message** %22, align 8
  %23 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %24 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = add i32 %25, 1
  store i32 %26, i32* %24, align 8
  %27 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %28 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.message*, %struct.message** %4, align 8
  %31 = getelementptr inbounds %struct.message, %struct.message* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load %struct.message*, %struct.message** %4, align 8
  %33 = getelementptr inbounds %struct.message, %struct.message* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = zext i32 %34 to i64
  store i64 %35, i64* %5, align 8
  br label %66

; <label>:36:                                     ; preds = %14
  %37 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %38 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %37, i32 0, i32 0
  %39 = load %struct.message*, %struct.message** %38, align 8
  store %struct.message* %39, %struct.message** %6, align 8
  br label %40

; <label>:40:                                     ; preds = %45, %36
  %41 = load %struct.message*, %struct.message** %6, align 8
  %42 = getelementptr inbounds %struct.message, %struct.message* %41, i32 0, i32 0
  %43 = load %struct.message*, %struct.message** %42, align 8
  %44 = icmp ne %struct.message* %43, null
  br i1 %44, label %45, label %49

; <label>:45:                                     ; preds = %40
  %46 = load %struct.message*, %struct.message** %6, align 8
  %47 = getelementptr inbounds %struct.message, %struct.message* %46, i32 0, i32 0
  %48 = load %struct.message*, %struct.message** %47, align 8
  store %struct.message* %48, %struct.message** %6, align 8
  br label %40

; <label>:49:                                     ; preds = %40
  %50 = load %struct.message*, %struct.message** %4, align 8
  %51 = load %struct.message*, %struct.message** %6, align 8
  %52 = getelementptr inbounds %struct.message, %struct.message* %51, i32 0, i32 0
  store %struct.message* %50, %struct.message** %52, align 8
  %53 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %54 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add i32 %55, 1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %58 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.message*, %struct.message** %4, align 8
  %61 = getelementptr inbounds %struct.message, %struct.message* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.message*, %struct.message** %4, align 8
  %63 = getelementptr inbounds %struct.message, %struct.message* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = zext i32 %64 to i64
  store i64 %65, i64* %5, align 8
  br label %66

; <label>:66:                                     ; preds = %49, %19, %13, %9
  %67 = load i64, i64* %5, align 8
  ret i64 %67
}

; Function Attrs: noinline nounwind uwtable
define %struct.message* @create_message(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.message*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.message* null, %struct.message** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  br label %51

; <label>:8:                                      ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = icmp ugt i64 %10, 31
  br i1 %11, label %12, label %14

; <label>:12:                                     ; preds = %8
  %13 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0))
  br label %51

; <label>:14:                                     ; preds = %8
  %15 = bitcast %struct.message** %3 to i8**
  %16 = call i32 @allocate(i64 48, i32 0, i8** %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %14
  %19 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i32 0, i32 0))
  br label %51

; <label>:20:                                     ; preds = %14
  %21 = load %struct.message*, %struct.message** %3, align 8
  %22 = getelementptr inbounds %struct.message, %struct.message* %21, i32 0, i32 0
  store %struct.message* null, %struct.message** %22, align 8
  %23 = load %struct.message*, %struct.message** %3, align 8
  %24 = getelementptr inbounds %struct.message, %struct.message* %23, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = load %struct.message*, %struct.message** %3, align 8
  %26 = getelementptr inbounds %struct.message, %struct.message* %25, i32 0, i32 2
  store i32 0, i32* %26, align 4
  %27 = load %struct.message*, %struct.message** %3, align 8
  %28 = getelementptr inbounds %struct.message, %struct.message* %27, i32 0, i32 3
  %29 = getelementptr inbounds [32 x i8], [32 x i8]* %28, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %29, i8 0, i64 32, i32 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %30

; <label>:30:                                     ; preds = %47, %20
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = load i8*, i8** %2, align 8
  %34 = call i64 @strlen(i8* %33)
  %35 = icmp ult i64 %32, %34
  br i1 %35, label %36, label %50

; <label>:36:                                     ; preds = %30
  %37 = load i8*, i8** %2, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = load %struct.message*, %struct.message** %3, align 8
  %43 = getelementptr inbounds %struct.message, %struct.message* %42, i32 0, i32 3
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %43, i64 0, i64 %45
  store i8 %41, i8* %46, align 1
  br label %47

; <label>:47:                                     ; preds = %36
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %4, align 4
  br label %30

; <label>:50:                                     ; preds = %30
  br label %51

; <label>:51:                                     ; preds = %50, %18, %12, %7
  %52 = load %struct.message*, %struct.message** %3, align 8
  ret %struct.message* %52
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: noinline nounwind uwtable
define void @delete_message(%struct.message_manager*, i64) #0 {
  %3 = alloca %struct.message_manager*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.message*, align 8
  %6 = alloca %struct.message*, align 8
  store %struct.message_manager* %0, %struct.message_manager** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.message* null, %struct.message** %5, align 8
  store %struct.message* null, %struct.message** %6, align 8
  %7 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %8 = icmp eq %struct.message_manager* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %2
  br label %63

; <label>:10:                                     ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %13 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = zext i32 %14 to i64
  %16 = icmp ugt i64 %11, %15
  br i1 %16, label %17, label %19

; <label>:17:                                     ; preds = %10
  %18 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  br label %63

; <label>:19:                                     ; preds = %10
  %20 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %21 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %20, i32 0, i32 0
  %22 = load %struct.message*, %struct.message** %21, align 8
  store %struct.message* %22, %struct.message** %5, align 8
  br label %23

; <label>:23:                                     ; preds = %52, %19
  %24 = load %struct.message*, %struct.message** %5, align 8
  %25 = icmp ne %struct.message* %24, null
  br i1 %25, label %26, label %57

; <label>:26:                                     ; preds = %23
  %27 = load %struct.message*, %struct.message** %5, align 8
  %28 = getelementptr inbounds %struct.message, %struct.message* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = zext i32 %29 to i64
  %31 = load i64, i64* %4, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %52

; <label>:33:                                     ; preds = %26
  %34 = load %struct.message*, %struct.message** %6, align 8
  %35 = icmp eq %struct.message* %34, null
  br i1 %35, label %36, label %42

; <label>:36:                                     ; preds = %33
  %37 = load %struct.message*, %struct.message** %5, align 8
  %38 = getelementptr inbounds %struct.message, %struct.message* %37, i32 0, i32 0
  %39 = load %struct.message*, %struct.message** %38, align 8
  %40 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %41 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %40, i32 0, i32 0
  store %struct.message* %39, %struct.message** %41, align 8
  br label %48

; <label>:42:                                     ; preds = %33
  %43 = load %struct.message*, %struct.message** %5, align 8
  %44 = getelementptr inbounds %struct.message, %struct.message* %43, i32 0, i32 0
  %45 = load %struct.message*, %struct.message** %44, align 8
  %46 = load %struct.message*, %struct.message** %6, align 8
  %47 = getelementptr inbounds %struct.message, %struct.message* %46, i32 0, i32 0
  store %struct.message* %45, %struct.message** %47, align 8
  br label %48

; <label>:48:                                     ; preds = %42, %36
  %49 = load %struct.message*, %struct.message** %5, align 8
  %50 = bitcast %struct.message* %49 to i8*
  %51 = call i32 @deallocate(i8* %50, i64 48)
  br label %63

; <label>:52:                                     ; preds = %26
  %53 = load %struct.message*, %struct.message** %5, align 8
  store %struct.message* %53, %struct.message** %6, align 8
  %54 = load %struct.message*, %struct.message** %5, align 8
  %55 = getelementptr inbounds %struct.message, %struct.message* %54, i32 0, i32 0
  %56 = load %struct.message*, %struct.message** %55, align 8
  store %struct.message* %56, %struct.message** %5, align 8
  br label %23

; <label>:57:                                     ; preds = %23
  %58 = load %struct.message*, %struct.message** %5, align 8
  %59 = icmp eq %struct.message* %58, null
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %57
  %61 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %62

; <label>:62:                                     ; preds = %60, %57
  br label %63

; <label>:63:                                     ; preds = %62, %48, %17, %9
  ret void
}

declare i32 @deallocate(i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define void @read_message(%struct.message_manager*, i64) #0 {
  %3 = alloca %struct.message_manager*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.message*, align 8
  %7 = alloca [256 x i8], align 16
  store %struct.message_manager* %0, %struct.message_manager** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store %struct.message* null, %struct.message** %6, align 8
  %8 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %9 = icmp eq %struct.message_manager* %8, null
  br i1 %9, label %10, label %11

; <label>:10:                                     ; preds = %2
  br label %70

; <label>:11:                                     ; preds = %2
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %14 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = icmp ugt i64 %12, %16
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %11
  %19 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i32 0, i32 0))
  br label %70

; <label>:20:                                     ; preds = %11
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 256, i32 16, i1 false)
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %23 = call i8* @strncat(i8* %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i64 256)
  %24 = load %struct.message_manager*, %struct.message_manager** %3, align 8
  %25 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %24, i32 0, i32 0
  %26 = load %struct.message*, %struct.message** %25, align 8
  store %struct.message* %26, %struct.message** %6, align 8
  br label %27

; <label>:27:                                     ; preds = %60, %20
  %28 = load %struct.message*, %struct.message** %6, align 8
  %29 = icmp ne %struct.message* %28, null
  br i1 %29, label %30, label %64

; <label>:30:                                     ; preds = %27
  %31 = load %struct.message*, %struct.message** %6, align 8
  %32 = getelementptr inbounds %struct.message, %struct.message* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* %4, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %60

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %39 = call i64 @strlen(i8* %38)
  store i64 %39, i64* %5, align 8
  %40 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %5, align 8
  %45 = sub i64 256, %44
  %46 = call i32 (i8*, i64, i64, ...) bitcast (i32 (...)* @itoa to i32 (i8*, i64, i64, ...)*)(i8* %42, i64 %43, i64 %45)
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %48 = call i8* @strncat(i8* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i64 256)
  %49 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %50 = load %struct.message*, %struct.message** %6, align 8
  %51 = getelementptr inbounds %struct.message, %struct.message* %50, i32 0, i32 3
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %51, i32 0, i32 0
  %53 = call i8* @strncat(i8* %49, i8* %52, i64 256)
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %55 = call i8* @strncat(i8* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i64 256)
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i32 0, i32 0
  %57 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* %56)
  %58 = load %struct.message*, %struct.message** %6, align 8
  %59 = getelementptr inbounds %struct.message, %struct.message* %58, i32 0, i32 2
  store i32 1, i32* %59, align 4
  br label %70

; <label>:60:                                     ; preds = %30
  %61 = load %struct.message*, %struct.message** %6, align 8
  %62 = getelementptr inbounds %struct.message, %struct.message* %61, i32 0, i32 0
  %63 = load %struct.message*, %struct.message** %62, align 8
  store %struct.message* %63, %struct.message** %6, align 8
  br label %27

; <label>:64:                                     ; preds = %27
  %65 = load %struct.message*, %struct.message** %6, align 8
  %66 = icmp eq %struct.message* %65, null
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %64
  %68 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i32 0, i32 0))
  br label %69

; <label>:69:                                     ; preds = %67, %64
  br label %70

; <label>:70:                                     ; preds = %69, %37, %18, %10
  ret void
}

declare i32 @itoa(...) #1

; Function Attrs: noinline nounwind uwtable
define void @list_unread_messages(%struct.message_manager*) #0 {
  %2 = alloca %struct.message_manager*, align 8
  %3 = alloca %struct.message*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  store %struct.message_manager* %0, %struct.message_manager** %2, align 8
  store %struct.message* null, %struct.message** %3, align 8
  store i64 0, i64* %4, align 8
  store i8 0, i8* %5, align 1
  %7 = load %struct.message_manager*, %struct.message_manager** %2, align 8
  %8 = icmp eq %struct.message_manager* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %1
  br label %92

; <label>:10:                                     ; preds = %1
  %11 = load %struct.message_manager*, %struct.message_manager** %2, align 8
  %12 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %11, i32 0, i32 0
  %13 = load %struct.message*, %struct.message** %12, align 8
  store %struct.message* %13, %struct.message** %3, align 8
  br label %14

; <label>:14:                                     ; preds = %25, %10
  %15 = load %struct.message*, %struct.message** %3, align 8
  %16 = icmp ne %struct.message* %15, null
  br i1 %16, label %17, label %29

; <label>:17:                                     ; preds = %14
  %18 = load %struct.message*, %struct.message** %3, align 8
  %19 = getelementptr inbounds %struct.message, %struct.message* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %17
  %23 = load i8, i8* %5, align 1
  %24 = add i8 %23, 1
  store i8 %24, i8* %5, align 1
  br label %25

; <label>:25:                                     ; preds = %22, %17
  %26 = load %struct.message*, %struct.message** %3, align 8
  %27 = getelementptr inbounds %struct.message, %struct.message* %26, i32 0, i32 0
  %28 = load %struct.message*, %struct.message** %27, align 8
  store %struct.message* %28, %struct.message** %3, align 8
  br label %14

; <label>:29:                                     ; preds = %14
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33:                                     ; preds = %29
  br label %92

; <label>:34:                                     ; preds = %29
  %35 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0))
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = mul nsw i32 %37, 32
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %4, align 8
  %40 = load i8, i8* %5, align 1
  %41 = zext i8 %40 to i32
  %42 = mul nsw i32 %41, 72
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %4, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %4, align 8
  %46 = load i8, i8* %5, align 1
  %47 = zext i8 %46 to i32
  %48 = mul nsw i32 %47, 8
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %4, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %4, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i8* @llvm.stacksave()
  store i8* %53, i8** %6, align 8
  %54 = alloca i8, i64 %52, align 16
  %55 = load i64, i64* %4, align 8
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 %55, i32 16, i1 false)
  %56 = load %struct.message_manager*, %struct.message_manager** %2, align 8
  %57 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %56, i32 0, i32 0
  %58 = load %struct.message*, %struct.message** %57, align 8
  store %struct.message* %58, %struct.message** %3, align 8
  br label %59

; <label>:59:                                     ; preds = %84, %34
  %60 = load %struct.message*, %struct.message** %3, align 8
  %61 = icmp ne %struct.message* %60, null
  br i1 %61, label %62, label %88

; <label>:62:                                     ; preds = %59
  %63 = load %struct.message*, %struct.message** %3, align 8
  %64 = getelementptr inbounds %struct.message, %struct.message* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %84

; <label>:67:                                     ; preds = %62
  %68 = load %struct.message*, %struct.message** %3, align 8
  %69 = getelementptr inbounds %struct.message, %struct.message* %68, i32 0, i32 2
  store i32 1, i32* %69, align 4
  %70 = call i8* @strcat(i8* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0))
  %71 = call i64 @strlen(i8* %54)
  %72 = getelementptr inbounds i8, i8* %54, i64 %71
  %73 = load %struct.message*, %struct.message** %3, align 8
  %74 = getelementptr inbounds %struct.message, %struct.message* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @itoa to i32 (i8*, i32, i32, ...)*)(i8* %72, i32 %75, i32 4)
  %77 = call i8* @strcat(i8* %54, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0))
  %78 = load %struct.message*, %struct.message** %3, align 8
  %79 = getelementptr inbounds %struct.message, %struct.message* %78, i32 0, i32 3
  %80 = getelementptr inbounds [32 x i8], [32 x i8]* %79, i32 0, i32 0
  %81 = call i8* @strcat(i8* %54, i8* %80)
  %82 = call i8* @strcat(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  %83 = call i8* @strcat(i8* %54, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0))
  br label %84

; <label>:84:                                     ; preds = %67, %62
  %85 = load %struct.message*, %struct.message** %3, align 8
  %86 = getelementptr inbounds %struct.message, %struct.message* %85, i32 0, i32 0
  %87 = load %struct.message*, %struct.message** %86, align 8
  store %struct.message* %87, %struct.message** %3, align 8
  br label %59

; <label>:88:                                     ; preds = %59
  %89 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* %54)
  br label %90

; <label>:90:                                     ; preds = %88
  %91 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %91)
  br label %92

; <label>:92:                                     ; preds = %90, %33, %9
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare i8* @strcat(i8*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

; Function Attrs: noinline nounwind uwtable
define void @list_messages(%struct.message_manager*) #0 {
  %2 = alloca %struct.message_manager*, align 8
  %3 = alloca %struct.message*, align 8
  store %struct.message_manager* %0, %struct.message_manager** %2, align 8
  store %struct.message* null, %struct.message** %3, align 8
  %4 = load %struct.message_manager*, %struct.message_manager** %2, align 8
  %5 = icmp eq %struct.message_manager* %4, null
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  br label %24

; <label>:7:                                      ; preds = %1
  %8 = load %struct.message_manager*, %struct.message_manager** %2, align 8
  %9 = getelementptr inbounds %struct.message_manager, %struct.message_manager* %8, i32 0, i32 0
  %10 = load %struct.message*, %struct.message** %9, align 8
  store %struct.message* %10, %struct.message** %3, align 8
  br label %11

; <label>:11:                                     ; preds = %14, %7
  %12 = load %struct.message*, %struct.message** %3, align 8
  %13 = icmp ne %struct.message* %12, null
  br i1 %13, label %14, label %23

; <label>:14:                                     ; preds = %11
  %15 = load %struct.message_manager*, %struct.message_manager** %2, align 8
  %16 = load %struct.message*, %struct.message** %3, align 8
  %17 = getelementptr inbounds %struct.message, %struct.message* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = zext i32 %18 to i64
  call void @read_message(%struct.message_manager* %15, i64 %19)
  %20 = load %struct.message*, %struct.message** %3, align 8
  %21 = getelementptr inbounds %struct.message, %struct.message* %20, i32 0, i32 0
  %22 = load %struct.message*, %struct.message** %21, align 8
  store %struct.message* %22, %struct.message** %3, align 8
  br label %11

; <label>:23:                                     ; preds = %11
  br label %24

; <label>:24:                                     ; preds = %23, %6
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.user* @get_user(%struct.user_manager*, i8*) #0 {
  %3 = alloca %struct.user_manager*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.user*, align 8
  store %struct.user_manager* %0, %struct.user_manager** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.user* null, %struct.user** %5, align 8
  %6 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %7 = icmp eq %struct.user_manager* %6, null
  br i1 %7, label %11, label %8

; <label>:8:                                      ; preds = %2
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %8, %2
  br label %32

; <label>:12:                                     ; preds = %8
  %13 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %14 = getelementptr inbounds %struct.user_manager, %struct.user_manager* %13, i32 0, i32 0
  %15 = load %struct.user*, %struct.user** %14, align 8
  store %struct.user* %15, %struct.user** %5, align 8
  br label %16

; <label>:16:                                     ; preds = %27, %12
  %17 = load %struct.user*, %struct.user** %5, align 8
  %18 = icmp ne %struct.user* %17, null
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %16
  %20 = load %struct.user*, %struct.user** %5, align 8
  %21 = getelementptr inbounds %struct.user, %struct.user* %20, i32 0, i32 0
  %22 = getelementptr inbounds [16 x i8], [16 x i8]* %21, i32 0, i32 0
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strcmp(i8* %22, i8* %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %19
  br label %32

; <label>:27:                                     ; preds = %19
  %28 = load %struct.user*, %struct.user** %5, align 8
  %29 = getelementptr inbounds %struct.user, %struct.user* %28, i32 0, i32 2
  %30 = load %struct.user*, %struct.user** %29, align 8
  store %struct.user* %30, %struct.user** %5, align 8
  br label %16

; <label>:31:                                     ; preds = %16
  br label %32

; <label>:32:                                     ; preds = %31, %26, %11
  %33 = load %struct.user*, %struct.user** %5, align 8
  ret %struct.user* %33
}

; Function Attrs: noinline nounwind uwtable
define i64 @send_user_message(%struct.user_manager*, i8*, i8*) #0 {
  %4 = alloca %struct.user_manager*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.user*, align 8
  %9 = alloca %struct.message*, align 8
  store %struct.user_manager* %0, %struct.user_manager** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i64 0, i64* %7, align 8
  store %struct.user* null, %struct.user** %8, align 8
  store %struct.message* null, %struct.message** %9, align 8
  %10 = load %struct.user_manager*, %struct.user_manager** %4, align 8
  %11 = icmp eq %struct.user_manager* %10, null
  br i1 %11, label %18, label %12

; <label>:12:                                     ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

; <label>:15:                                     ; preds = %12
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %15, %12, %3
  br label %44

; <label>:19:                                     ; preds = %15
  %20 = load %struct.user_manager*, %struct.user_manager** %4, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call %struct.user* @get_user(%struct.user_manager* %20, i8* %21)
  store %struct.user* %22, %struct.user** %8, align 8
  %23 = load %struct.user*, %struct.user** %8, align 8
  %24 = icmp eq %struct.user* %23, null
  br i1 %24, label %25, label %27

; <label>:25:                                     ; preds = %19
  %26 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
  br label %44

; <label>:27:                                     ; preds = %19
  %28 = load i8*, i8** %6, align 8
  %29 = call %struct.message* @create_message(i8* %28)
  store %struct.message* %29, %struct.message** %9, align 8
  %30 = load %struct.message*, %struct.message** %9, align 8
  %31 = icmp eq %struct.message* %30, null
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %27
  %33 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0))
  br label %44

; <label>:34:                                     ; preds = %27
  %35 = load %struct.user*, %struct.user** %8, align 8
  %36 = getelementptr inbounds %struct.user, %struct.user* %35, i32 0, i32 1
  %37 = load %struct.message_manager*, %struct.message_manager** %36, align 8
  %38 = load %struct.message*, %struct.message** %9, align 8
  %39 = call i64 @add_message(%struct.message_manager* %37, %struct.message* %38)
  store i64 %39, i64* %7, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

; <label>:41:                                     ; preds = %34
  %42 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i32 0, i32 0))
  br label %44

; <label>:43:                                     ; preds = %34
  br label %44

; <label>:44:                                     ; preds = %43, %41, %32, %25, %18
  %45 = load i64, i64* %7, align 8
  ret i64 %45
}

; Function Attrs: noinline nounwind uwtable
define void @handle_loggedin(%struct.user_manager*, %struct.user*) #0 {
  %3 = alloca %struct.user_manager*, align 8
  %4 = alloca %struct.user*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca [16 x i8], align 16
  store %struct.user_manager* %0, %struct.user_manager** %3, align 8
  store %struct.user* %1, %struct.user** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %9 = icmp eq %struct.user_manager* %8, null
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %2
  %11 = load %struct.user*, %struct.user** %4, align 8
  %12 = icmp eq %struct.user* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %10, %2
  br label %110

; <label>:14:                                     ; preds = %10
  br label %15

; <label>:15:                                     ; preds = %14, %39, %109
  %16 = load %struct.user*, %struct.user** %4, align 8
  %17 = getelementptr inbounds %struct.user, %struct.user* %16, i32 0, i32 1
  %18 = load %struct.message_manager*, %struct.message_manager** %17, align 8
  call void @list_unread_messages(%struct.message_manager* %18)
  %19 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i32 0, i32 0))
  %20 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0))
  %21 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i32 0, i32 0))
  %22 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0))
  %23 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i32 0, i32 0))
  %24 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0))
  %25 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  store i64 0, i64* %5, align 8
  %26 = bitcast i64* %5 to i8*
  %27 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @receive_until to i32 (i8*, i32, i32, ...)*)(i8* %26, i32 10, i32 2)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %15
  %30 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0))
  call void @_terminate(i32 0) #5
  unreachable

; <label>:31:                                     ; preds = %15
  %32 = load i64, i64* %5, align 8
  %33 = sub i64 %32, 48
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ugt i64 %34, 6
  br i1 %35, label %39, label %36

; <label>:36:                                     ; preds = %31
  %37 = load i64, i64* %5, align 8
  %38 = icmp ult i64 %37, 1
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %36, %31
  %40 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  br label %15

; <label>:41:                                     ; preds = %36
  %42 = load i64, i64* %5, align 8
  %43 = icmp eq i64 %42, 6
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %41
  %45 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0))
  call void @_terminate(i32 0) #5
  unreachable

; <label>:46:                                     ; preds = %41
  %47 = load i64, i64* %5, align 8
  %48 = icmp eq i64 %47, 5
  br i1 %48, label %49, label %51

; <label>:49:                                     ; preds = %46
  %50 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i32 0, i32 0))
  br label %110

; <label>:51:                                     ; preds = %46
  %52 = load i64, i64* %5, align 8
  %53 = icmp eq i64 %52, 4
  br i1 %53, label %54, label %66

; <label>:54:                                     ; preds = %51
  %55 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %56, i8 0, i64 32, i32 16, i1 false)
  %57 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %58 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @receive_until to i32 (i8*, i32, i32, ...)*)(i8* %57, i32 10, i32 4)
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %60 = call i32 (i8*, ...) bitcast (i32 (...)* @atoi to i32 (i8*, ...)*)(i8* %59)
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %5, align 8
  %62 = load %struct.user*, %struct.user** %4, align 8
  %63 = getelementptr inbounds %struct.user, %struct.user* %62, i32 0, i32 1
  %64 = load %struct.message_manager*, %struct.message_manager** %63, align 8
  %65 = load i64, i64* %5, align 8
  call void @delete_message(%struct.message_manager* %64, i64 %65)
  br label %107

; <label>:66:                                     ; preds = %51
  %67 = load i64, i64* %5, align 8
  %68 = icmp eq i64 %67, 3
  br i1 %68, label %69, label %73

; <label>:69:                                     ; preds = %66
  %70 = load %struct.user*, %struct.user** %4, align 8
  %71 = getelementptr inbounds %struct.user, %struct.user* %70, i32 0, i32 1
  %72 = load %struct.message_manager*, %struct.message_manager** %71, align 8
  call void @list_messages(%struct.message_manager* %72)
  br label %106

; <label>:73:                                     ; preds = %66
  %74 = load i64, i64* %5, align 8
  %75 = icmp eq i64 %74, 2
  br i1 %75, label %76, label %88

; <label>:76:                                     ; preds = %73
  %77 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i32 0, i32 0))
  %78 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %78, i8 0, i64 32, i32 16, i1 false)
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %80 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @receive_until to i32 (i8*, i32, i32, ...)*)(i8* %79, i32 10, i32 4)
  %81 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %82 = call i32 (i8*, ...) bitcast (i32 (...)* @atoi to i32 (i8*, ...)*)(i8* %81)
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %5, align 8
  %84 = load %struct.user*, %struct.user** %4, align 8
  %85 = getelementptr inbounds %struct.user, %struct.user* %84, i32 0, i32 1
  %86 = load %struct.message_manager*, %struct.message_manager** %85, align 8
  %87 = load i64, i64* %5, align 8
  call void @read_message(%struct.message_manager* %86, i64 %87)
  br label %105

; <label>:88:                                     ; preds = %73
  %89 = load i64, i64* %5, align 8
  %90 = icmp eq i64 %89, 1
  br i1 %90, label %91, label %104

; <label>:91:                                     ; preds = %88
  %92 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %92, i8 0, i64 32, i32 16, i1 false)
  %93 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %93, i8 0, i64 16, i32 16, i1 false)
  %94 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0))
  %95 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0
  %96 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @receive_until to i32 (i8*, i32, i32, ...)*)(i8* %95, i32 10, i32 15)
  %97 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0))
  %98 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %99 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @receive_until to i32 (i8*, i32, i32, ...)*)(i8* %98, i32 10, i32 31)
  %100 = load %struct.user_manager*, %struct.user_manager** %3, align 8
  %101 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i32 0, i32 0
  %102 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %103 = call i64 @send_user_message(%struct.user_manager* %100, i8* %101, i8* %102)
  br label %104

; <label>:104:                                    ; preds = %91, %88
  br label %105

; <label>:105:                                    ; preds = %104, %76
  br label %106

; <label>:106:                                    ; preds = %105, %69
  br label %107

; <label>:107:                                    ; preds = %106, %54
  br label %108

; <label>:108:                                    ; preds = %107
  br label %109

; <label>:109:                                    ; preds = %108
  br label %15

; <label>:110:                                    ; preds = %49, %13
  ret void
}

declare i32 @receive_until(...) #1

; Function Attrs: noreturn
declare void @_terminate(i32) #4

declare i32 @atoi(...) #1

; Function Attrs: noinline nounwind uwtable
define void @handle_menu() #0 {
  %1 = alloca %struct.user_manager*, align 8
  %2 = alloca %struct.user*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca [16 x i8], align 16
  store %struct.user_manager* null, %struct.user_manager** %1, align 8
  store %struct.user* null, %struct.user** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %6 = call %struct.user_manager* @init_users()
  store %struct.user_manager* %6, %struct.user_manager** %1, align 8
  %7 = load %struct.user_manager*, %struct.user_manager** %1, align 8
  %8 = icmp eq %struct.user_manager* %7, null
  br i1 %8, label %9, label %10

; <label>:9:                                      ; preds = %0
  br label %69

; <label>:10:                                     ; preds = %0
  br label %11

; <label>:11:                                     ; preds = %10, %29, %68
  store i64 0, i64* %3, align 8
  %12 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i32 0, i32 0))
  %13 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.31, i32 0, i32 0))
  %14 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i32 0, i32 0))
  %15 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0))
  %16 = bitcast i64* %3 to i8*
  %17 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @receive_until to i32 (i8*, i32, i32, ...)*)(i8* %16, i32 10, i32 2)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

; <label>:19:                                     ; preds = %11
  %20 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0))
  call void @_terminate(i32 0) #5
  unreachable

; <label>:21:                                     ; preds = %11
  %22 = load i64, i64* %3, align 8
  %23 = sub i64 %22, 48
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp ugt i64 %24, 3
  br i1 %25, label %29, label %26

; <label>:26:                                     ; preds = %21
  %27 = load i64, i64* %3, align 8
  %28 = icmp ult i64 %27, 1
  br i1 %28, label %29, label %31

; <label>:29:                                     ; preds = %26, %21
  %30 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.24, i32 0, i32 0))
  br label %11

; <label>:31:                                     ; preds = %26
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %32, i8 0, i64 16, i32 16, i1 false)
  %33 = load i64, i64* %3, align 8
  %34 = icmp eq i64 %33, 3
  br i1 %34, label %35, label %37

; <label>:35:                                     ; preds = %31
  %36 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0))
  call void @_terminate(i32 0) #5
  unreachable

; <label>:37:                                     ; preds = %31
  %38 = load i64, i64* %3, align 8
  %39 = icmp eq i64 %38, 1
  br i1 %39, label %40, label %47

; <label>:40:                                     ; preds = %37
  %41 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0))
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0
  %43 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @receive_until to i32 (i8*, i32, i32, ...)*)(i8* %42, i32 10, i32 15)
  %44 = load %struct.user_manager*, %struct.user_manager** %1, align 8
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0
  %46 = call i64 @create_user(%struct.user_manager* %44, i8* %45)
  br label %67

; <label>:47:                                     ; preds = %37
  %48 = load i64, i64* %3, align 8
  %49 = icmp eq i64 %48, 2
  br i1 %49, label %50, label %66

; <label>:50:                                     ; preds = %47
  %51 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.34, i32 0, i32 0))
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0
  %53 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @receive_until to i32 (i8*, i32, i32, ...)*)(i8* %52, i32 10, i32 15)
  %54 = load %struct.user_manager*, %struct.user_manager** %1, align 8
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i32 0, i32 0
  %56 = call %struct.user* @get_user(%struct.user_manager* %54, i8* %55)
  store %struct.user* %56, %struct.user** %2, align 8
  %57 = load %struct.user*, %struct.user** %2, align 8
  %58 = icmp ne %struct.user* %57, null
  br i1 %58, label %59, label %63

; <label>:59:                                     ; preds = %50
  %60 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0))
  %61 = load %struct.user_manager*, %struct.user_manager** %1, align 8
  %62 = load %struct.user*, %struct.user** %2, align 8
  call void @handle_loggedin(%struct.user_manager* %61, %struct.user* %62)
  store %struct.user* null, %struct.user** %2, align 8
  br label %65

; <label>:63:                                     ; preds = %50
  %64 = call i32 (i8*, ...) bitcast (i32 (...)* @puts to i32 (i8*, ...)*)(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.36, i32 0, i32 0))
  br label %65

; <label>:65:                                     ; preds = %63, %59
  br label %66

; <label>:66:                                     ; preds = %65, %47
  br label %67

; <label>:67:                                     ; preds = %66, %40
  br label %68

; <label>:68:                                     ; preds = %67
  br label %11

; <label>:69:                                     ; preds = %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @handle_menu()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
