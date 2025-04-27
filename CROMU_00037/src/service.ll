; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._users = type { [16 x i8], [255 x [50 x i8]], [255 x i8], i32 }

@.str = private unnamed_addr constant [16 x i8] c"1) Create User\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"2) Login\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"3) Exit\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"1) Send Message\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"2) Read Message\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"3) List Messages\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"4) Delete Message\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"5) Logout\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"6) Exit\0A\00", align 1
@USERS = common global %struct._users* null, align 8
@ADMIN_ACCESS = external global i32, align 4
@CURRENT_USER = common global i32 0, align 4
@NUM_USERS = common global i32 0, align 4
@.str.10 = private unnamed_addr constant [20 x i8] c"[-] Invalid choice\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Exiting...\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"Logging out...\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @PrintLoggedOutMenu() #0 {
  call void @print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i32 0, i32 0))
  call void @print(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i32 0, i32 0))
  call void @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i32 0, i32 0))
  call void @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

declare void @print(i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @PrintLoggedInMenu() #0 {
  call void @print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0))
  call void @print(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0))
  call void @print(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i32 0, i32 0))
  call void @print(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i32 0, i32 0))
  call void @print(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0))
  call void @print(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i32 0, i32 0))
  call void @print(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [100 x %struct._users], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  store i32 0, i32* %4, align 4
  %5 = getelementptr inbounds [100 x %struct._users], [100 x %struct._users]* %2, i32 0, i32 0
  store %struct._users* %5, %struct._users** @USERS, align 8
  store i32 0, i32* @ADMIN_ACCESS, align 4
  store i32 -1, i32* @CURRENT_USER, align 4
  store i32 0, i32* @NUM_USERS, align 4
  %6 = load %struct._users*, %struct._users** @USERS, align 8
  %7 = bitcast %struct._users* %6 to i8*
  call void @zero(i8* %7, i32 1302800)
  br label %8

; <label>:8:                                      ; preds = %83, %80, %68, %56, %48, %33, %25, %0
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  br i1 %11, label %12, label %84

; <label>:12:                                     ; preds = %8
  %13 = load i32, i32* @ADMIN_ACCESS, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %35

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  call void @zero(i8* %16, i32 100)
  call void @PrintAdminMenu()
  %17 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  %18 = call i32 @read_until(i8* %17, i8 signext 10, i64 100)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %15
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:21:                                     ; preds = %15
  %22 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  %23 = call i64 @strlen(i8* %22)
  %24 = icmp ugt i64 %23, 1
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %21
  call void @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  br label %8

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %28 = load i8, i8* %27, align 16
  %29 = sext i8 %28 to i32
  switch i32 %29, label %33 [
    i32 49, label %30
    i32 50, label %31
    i32 51, label %32
  ]

; <label>:30:                                     ; preds = %26
  call void @SendBroadcastMessage()
  br label %34

; <label>:31:                                     ; preds = %26
  store i32 0, i32* @ADMIN_ACCESS, align 4
  br label %34

; <label>:32:                                     ; preds = %26
  call void @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  store i32 1, i32* %4, align 4
  br label %34

; <label>:33:                                     ; preds = %26
  br label %8

; <label>:34:                                     ; preds = %32, %31, %30
  br label %83

; <label>:35:                                     ; preds = %12
  %36 = load i32, i32* @CURRENT_USER, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %58

; <label>:38:                                     ; preds = %35
  %39 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  call void @zero(i8* %39, i32 100)
  call void @PrintLoggedOutMenu()
  %40 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  %41 = call i32 @read_until(i8* %40, i8 signext 10, i64 100)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %44

; <label>:43:                                     ; preds = %38
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:44:                                     ; preds = %38
  %45 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  %46 = call i64 @strlen(i8* %45)
  %47 = icmp ugt i64 %46, 1
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %44
  call void @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  br label %8

; <label>:49:                                     ; preds = %44
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %51 = load i8, i8* %50, align 16
  %52 = sext i8 %51 to i32
  switch i32 %52, label %56 [
    i32 49, label %53
    i32 50, label %54
    i32 51, label %55
  ]

; <label>:53:                                     ; preds = %49
  call void @CreateUser()
  br label %57

; <label>:54:                                     ; preds = %49
  call void @Login()
  br label %57

; <label>:55:                                     ; preds = %49
  call void @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  call void @_terminate(i32 0) #3
  unreachable

; <label>:56:                                     ; preds = %49
  call void @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  br label %8

; <label>:57:                                     ; preds = %54, %53
  br label %82

; <label>:58:                                     ; preds = %35
  %59 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  call void @zero(i8* %59, i32 100)
  call void @PrintNewMessages()
  call void @PrintLoggedInMenu()
  %60 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  %61 = call i32 @read_until(i8* %60, i8 signext 10, i64 100)
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %58
  call void @_terminate(i32 -1) #3
  unreachable

; <label>:64:                                     ; preds = %58
  %65 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i32 0, i32 0
  %66 = call i64 @strlen(i8* %65)
  %67 = icmp ugt i64 %66, 1
  br i1 %67, label %68, label %69

; <label>:68:                                     ; preds = %64
  call void @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  br label %8

; <label>:69:                                     ; preds = %64
  %70 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0
  %71 = load i8, i8* %70, align 16
  %72 = sext i8 %71 to i32
  switch i32 %72, label %80 [
    i32 49, label %73
    i32 50, label %74
    i32 51, label %75
    i32 52, label %76
    i32 53, label %77
    i32 54, label %78
    i32 97, label %79
  ]

; <label>:73:                                     ; preds = %69
  call void @SendMessage()
  br label %81

; <label>:74:                                     ; preds = %69
  call void @ReadMessage()
  br label %81

; <label>:75:                                     ; preds = %69
  call void @ListMessages()
  br label %81

; <label>:76:                                     ; preds = %69
  call void @DeleteMessage()
  br label %81

; <label>:77:                                     ; preds = %69
  store i32 -1, i32* @CURRENT_USER, align 4
  call void @print(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0))
  br label %81

; <label>:78:                                     ; preds = %69
  call void @print(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  call void @_terminate(i32 0) #3
  unreachable

; <label>:79:                                     ; preds = %69
  call void @AdminLogin()
  br label %81

; <label>:80:                                     ; preds = %69
  call void @print(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i32 0, i32 0))
  br label %8

; <label>:81:                                     ; preds = %79, %77, %76, %75, %74, %73
  br label %82

; <label>:82:                                     ; preds = %81, %57
  br label %83

; <label>:83:                                     ; preds = %82, %34
  br label %8

; <label>:84:                                     ; preds = %8
  ret i32 0
}

declare void @zero(i8*, i32) #1

declare void @PrintAdminMenu() #1

declare i32 @read_until(i8*, i8 signext, i64) #1

; Function Attrs: noreturn
declare void @_terminate(i32) #2

declare i64 @strlen(i8*) #1

declare void @SendBroadcastMessage() #1

declare void @CreateUser() #1

declare void @Login() #1

declare void @PrintNewMessages() #1

declare void @SendMessage() #1

declare void @ReadMessage() #1

declare void @ListMessages() #1

declare void @DeleteMessage() #1

declare void @AdminLogin() #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
