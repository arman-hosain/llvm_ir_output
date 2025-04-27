; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._trie = type { %struct._trie*, %struct._trie*, i8, i8* }
%struct._stack = type { i32, [32 x i8*] }
%struct._ltype = type { i8*, i8*, i8*, i32 }

@root = common global %struct._trie* null, align 8
@operStack = common global %struct._stack* null, align 8
@funcStack = common global %struct._stack* null, align 8
@.str = private unnamed_addr constant [4 x i8] c"add\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"sub\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mul\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"div\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"mod\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"terminate\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"equals\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"> \00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"NOT A NUMBER\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"Unterminated string constant: @s\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"var\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Malformed variable declaration\0A\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"False\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"True\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"==\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Function\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"Undeclared identifier: @s\0A\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"Integer\00", align 1
@.str.30 = private unnamed_addr constant [4 x i8] c"@d\0A\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"String\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"@s\0A\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"Boolean\00", align 1
@.str.34 = private unnamed_addr constant [28 x i8] c"Not enough operands for add\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"Critical memory error.  Exiting.\00", align 1
@.str.36 = private unnamed_addr constant [37 x i8] c"Add doesn't make sense on @s and @s\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"Could not convert argument to int\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"Not enough operands for int\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"Critical memory error.  Terminating.\00", align 1
@.str.41 = private unnamed_addr constant [41 x i8] c"Mul does not make sense with @s and @s.\0A\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"Not enough operands for multiplication\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"Not enough operands for sub\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"Sub does not make sense on @s and @s\0A\00", align 1
@.str.45 = private unnamed_addr constant [23 x i8] c"Cannot divide by zero.\00", align 1
@.str.46 = private unnamed_addr constant [43 x i8] c"Division does not make sense on @s and @s\0A\00", align 1
@.str.47 = private unnamed_addr constant [34 x i8] c"Not enough operands for division.\00", align 1
@.str.48 = private unnamed_addr constant [20 x i8] c"Cannot mod by zero.\00", align 1
@.str.49 = private unnamed_addr constant [38 x i8] c"Mod does not make sense on @s and @s\0A\00", align 1
@.str.50 = private unnamed_addr constant [29 x i8] c"Not enough operands for mod.\00", align 1
@.str.51 = private unnamed_addr constant [29 x i8] c"Not enough operands for not.\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"OMG\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"BBQ\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"Not enough operands for len.\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"Not enough operands for equality\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  %4 = call %struct._trie* (...) @initTrie()
  store %struct._trie* %4, %struct._trie** @root, align 8
  %5 = call %struct._stack* (...) @initStack()
  store %struct._stack* %5, %struct._stack** @operStack, align 8
  %6 = call %struct._stack* (...) @initStack()
  store %struct._stack* %6, %struct._stack** @funcStack, align 8
  %7 = load %struct._trie*, %struct._trie** @root, align 8
  %8 = call %struct._ltype* @lfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), void (...)* bitcast (void ()* @add to void (...)*))
  %9 = bitcast %struct._ltype* %8 to i8*
  call void @insertInTrie(%struct._trie* %7, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* %9)
  %10 = load %struct._trie*, %struct._trie** @root, align 8
  %11 = call %struct._ltype* @lfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), void (...)* bitcast (void ()* @sub to void (...)*))
  %12 = bitcast %struct._ltype* %11 to i8*
  call void @insertInTrie(%struct._trie* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* %12)
  %13 = load %struct._trie*, %struct._trie** @root, align 8
  %14 = call %struct._ltype* @lfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), void (...)* bitcast (void ()* @mul to void (...)*))
  %15 = bitcast %struct._ltype* %14 to i8*
  call void @insertInTrie(%struct._trie* %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* %15)
  %16 = load %struct._trie*, %struct._trie** @root, align 8
  %17 = call %struct._ltype* @lfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), void (...)* bitcast (void ()* @div to void (...)*))
  %18 = bitcast %struct._ltype* %17 to i8*
  call void @insertInTrie(%struct._trie* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), i8* %18)
  %19 = load %struct._trie*, %struct._trie** @root, align 8
  %20 = call %struct._ltype* @lfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), void (...)* bitcast (void ()* @mod to void (...)*))
  %21 = bitcast %struct._ltype* %20 to i8*
  call void @insertInTrie(%struct._trie* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), i8* %21)
  %22 = load %struct._trie*, %struct._trie** @root, align 8
  %23 = call %struct._ltype* @lfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), void (...)* bitcast (void ()* @not to void (...)*))
  %24 = bitcast %struct._ltype* %23 to i8*
  call void @insertInTrie(%struct._trie* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* %24)
  %25 = load %struct._trie*, %struct._trie** @root, align 8
  %26 = call %struct._ltype* @lfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), void (...)* bitcast (void ()* @_int to void (...)*))
  %27 = bitcast %struct._ltype* %26 to i8*
  call void @insertInTrie(%struct._trie* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0), i8* %27)
  %28 = load %struct._trie*, %struct._trie** @root, align 8
  %29 = call %struct._ltype* @lfunc(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), void (...)* bitcast (void ()* @terminate to void (...)*))
  %30 = bitcast %struct._ltype* %29 to i8*
  call void @insertInTrie(%struct._trie* %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* %30)
  %31 = load %struct._trie*, %struct._trie** @root, align 8
  %32 = call %struct._ltype* @lfunc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), void (...)* bitcast (void ()* @equals to void (...)*))
  %33 = bitcast %struct._ltype* %32 to i8*
  call void @insertInTrie(%struct._trie* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* %33)
  %34 = load %struct._trie*, %struct._trie** @root, align 8
  %35 = call %struct._ltype* @lfunc(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), void (...)* bitcast (void ()* @type to void (...)*))
  %36 = bitcast %struct._ltype* %35 to i8*
  call void @insertInTrie(%struct._trie* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0), i8* %36)
  %37 = load %struct._trie*, %struct._trie** @root, align 8
  %38 = call %struct._ltype* @lfunc(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), void (...)* bitcast (void ()* @len to void (...)*))
  %39 = bitcast %struct._ltype* %38 to i8*
  call void @insertInTrie(%struct._trie* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* %39)
  br label %40

; <label>:40:                                     ; preds = %0, %47
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %41, i8 0, i64 256, i32 16, i1 false)
  %42 = call i32 @transmit(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i64 2, i64* null)
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  %44 = call i64 @receive_until(i8* %43, i8 signext 10, i64 255)
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %40
  call void @_terminate(i32 0) #5
  unreachable

; <label>:47:                                     ; preds = %40
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  call void @process(i8* %48)
  br label %40
                                                  ; No predecessors!
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare %struct._trie* @initTrie(...) #1

declare %struct._stack* @initStack(...) #1

declare void @insertInTrie(%struct._trie*, i8*, i8*) #1

declare %struct._ltype* @lfunc(i8*, void (...)*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare i32 @transmit(i32, i8*, i64, i64*) #1

declare i64 @receive_until(i8*, i8 signext, i64) #1

; Function Attrs: noreturn
declare void @_terminate(i32) #3

; Function Attrs: noinline nounwind uwtable
define void @process(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._ltype*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct._ltype*, align 8
  %13 = alloca %struct._ltype*, align 8
  %14 = alloca %struct._ltype*, align 8
  %15 = alloca %struct._ltype*, align 8
  %16 = alloca %struct._ltype*, align 8
  %17 = alloca %struct._ltype*, align 8
  %18 = alloca %struct._ltype*, align 8
  %19 = alloca %struct._ltype*, align 8
  %20 = alloca %struct._ltype*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %21 = load i8*, i8** %2, align 8
  %22 = call i8* @strtok(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %22, i8** %3, align 8
  br label %23

; <label>:23:                                     ; preds = %318, %277, %263, %249, %235, %221, %207, %198, %189, %183, %1
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %320

; <label>:26:                                     ; preds = %23
  %27 = load i8*, i8** %3, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = call i32 @isdigit(i32 %30) #6
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

; <label>:33:                                     ; preds = %26
  %34 = load i8*, i8** %3, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 45
  br i1 %38, label %39, label %78

; <label>:39:                                     ; preds = %33
  %40 = load i8*, i8** %3, align 8
  %41 = call i64 @strlen(i8* %40)
  %42 = icmp ugt i64 %41, 1
  br i1 %42, label %43, label %78

; <label>:43:                                     ; preds = %39, %26
  store i32 1, i32* %4, align 4
  br label %44

; <label>:44:                                     ; preds = %61, %43
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = load i8*, i8** %3, align 8
  %48 = call i64 @strlen(i8* %47)
  %49 = icmp ult i64 %46, %48
  br i1 %49, label %50, label %64

; <label>:50:                                     ; preds = %44
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = call i32 @isdigit(i32 %56) #6
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

; <label>:59:                                     ; preds = %50
  br label %64

; <label>:60:                                     ; preds = %50
  br label %61

; <label>:61:                                     ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %44

; <label>:64:                                     ; preds = %59, %44
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = load i8*, i8** %3, align 8
  %68 = call i64 @strlen(i8* %67)
  %69 = icmp ult i64 %66, %68
  br i1 %69, label %70, label %71

; <label>:70:                                     ; preds = %64
  call void @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0))
  br label %77

; <label>:71:                                     ; preds = %64
  %72 = load i8*, i8** %3, align 8
  %73 = call %struct._ltype* @lint(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %72)
  store %struct._ltype* %73, %struct._ltype** %5, align 8
  %74 = load %struct._stack*, %struct._stack** @operStack, align 8
  %75 = load %struct._ltype*, %struct._ltype** %5, align 8
  %76 = bitcast %struct._ltype* %75 to i8*
  call void @push(%struct._stack* %74, i8* %76)
  br label %77

; <label>:77:                                     ; preds = %71, %70
  br label %318

; <label>:78:                                     ; preds = %39, %33
  %79 = load i8*, i8** %3, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp eq i32 %82, 34
  br i1 %83, label %84, label %103

; <label>:84:                                     ; preds = %78
  %85 = load i8*, i8** %3, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %3, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = call i8* @strchr(i8* %87, i32 34)
  store i8* %88, i8** %7, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %97

; <label>:91:                                     ; preds = %84
  %92 = load i8*, i8** %7, align 8
  store i8 0, i8* %92, align 1
  %93 = load %struct._stack*, %struct._stack** @operStack, align 8
  %94 = load i8*, i8** %3, align 8
  %95 = call %struct._ltype* @lstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %94)
  %96 = bitcast %struct._ltype* %95 to i8*
  call void @push(%struct._stack* %93, i8* %96)
  br label %102

; <label>:97:                                     ; preds = %84
  %98 = load i8*, i8** %3, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 -1
  store i8* %99, i8** %3, align 8
  %100 = load i8*, i8** %3, align 8
  %101 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.15, i32 0, i32 0), i8* %100)
  br label %102

; <label>:102:                                    ; preds = %97, %91
  br label %317

; <label>:103:                                    ; preds = %78
  %104 = load i8*, i8** %3, align 8
  %105 = call i32 @strcmp(i8* %104, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0))
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %185

; <label>:107:                                    ; preds = %103
  %108 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %108, i8** %8, align 8
  %109 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %109, i8** %9, align 8
  %110 = load i8*, i8** %9, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %177

; <label>:112:                                    ; preds = %107
  %113 = load i8*, i8** %9, align 8
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp eq i32 %115, 61
  br i1 %116, label %117, label %177

; <label>:117:                                    ; preds = %112
  %118 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %118, i8** %10, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = icmp eq i8* %119, null
  br i1 %120, label %121, label %123

; <label>:121:                                    ; preds = %117
  %122 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i32 0, i32 0))
  br label %320

; <label>:123:                                    ; preds = %117
  %124 = load i8*, i8** %10, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = icmp eq i32 %127, 34
  br i1 %128, label %129, label %145

; <label>:129:                                    ; preds = %123
  %130 = load i8*, i8** %10, align 8
  %131 = getelementptr inbounds i8, i8* %130, i32 1
  store i8* %131, i8** %10, align 8
  %132 = load i8*, i8** %10, align 8
  %133 = call i8* @strchr(i8* %132, i32 34)
  store i8* %133, i8** %11, align 8
  %134 = load i8*, i8** %11, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %144

; <label>:136:                                    ; preds = %129
  %137 = load i8*, i8** %11, align 8
  store i8 0, i8* %137, align 1
  %138 = load %struct._trie*, %struct._trie** @root, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = call %struct._ltype* @lstring(i8* %140, i8* %141)
  %143 = bitcast %struct._ltype* %142 to i8*
  call void @insertInTrie(%struct._trie* %138, i8* %139, i8* %143)
  br label %144

; <label>:144:                                    ; preds = %136, %129
  br label %176

; <label>:145:                                    ; preds = %123
  %146 = load i8*, i8** %10, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %156

; <label>:149:                                    ; preds = %145
  %150 = load %struct._trie*, %struct._trie** @root, align 8
  %151 = load i8*, i8** %8, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = call %struct._ltype* @lbool(i8* %152, i8* %153)
  %155 = bitcast %struct._ltype* %154 to i8*
  call void @insertInTrie(%struct._trie* %150, i8* %151, i8* %155)
  br label %175

; <label>:156:                                    ; preds = %145
  %157 = load i8*, i8** %10, align 8
  %158 = call i32 @strcmp(i8* %157, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %167

; <label>:160:                                    ; preds = %156
  %161 = load %struct._trie*, %struct._trie** @root, align 8
  %162 = load i8*, i8** %8, align 8
  %163 = load i8*, i8** %8, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = call %struct._ltype* @lbool(i8* %163, i8* %164)
  %166 = bitcast %struct._ltype* %165 to i8*
  call void @insertInTrie(%struct._trie* %161, i8* %162, i8* %166)
  br label %174

; <label>:167:                                    ; preds = %156
  %168 = load %struct._trie*, %struct._trie** @root, align 8
  %169 = load i8*, i8** %8, align 8
  %170 = load i8*, i8** %8, align 8
  %171 = load i8*, i8** %10, align 8
  %172 = call %struct._ltype* @lint(i8* %170, i8* %171)
  %173 = bitcast %struct._ltype* %172 to i8*
  call void @insertInTrie(%struct._trie* %168, i8* %169, i8* %173)
  br label %174

; <label>:174:                                    ; preds = %167, %160
  br label %175

; <label>:175:                                    ; preds = %174, %149
  br label %176

; <label>:176:                                    ; preds = %175, %144
  br label %183

; <label>:177:                                    ; preds = %112, %107
  %178 = load %struct._trie*, %struct._trie** @root, align 8
  %179 = load i8*, i8** %8, align 8
  %180 = load i8*, i8** %8, align 8
  %181 = call %struct._ltype* @lint(i8* %180, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %182 = bitcast %struct._ltype* %181 to i8*
  call void @insertInTrie(%struct._trie* %178, i8* %179, i8* %182)
  br label %183

; <label>:183:                                    ; preds = %177, %176
  %184 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %184, i8** %3, align 8
  br label %23

; <label>:185:                                    ; preds = %103
  %186 = load i8*, i8** %3, align 8
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %194

; <label>:189:                                    ; preds = %185
  %190 = load %struct._stack*, %struct._stack** @operStack, align 8
  %191 = call %struct._ltype* @lbool(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  %192 = bitcast %struct._ltype* %191 to i8*
  call void @push(%struct._stack* %190, i8* %192)
  %193 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %193, i8** %3, align 8
  br label %23

; <label>:194:                                    ; preds = %185
  %195 = load i8*, i8** %3, align 8
  %196 = call i32 @strcmp(i8* %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %203

; <label>:198:                                    ; preds = %194
  %199 = load %struct._stack*, %struct._stack** @operStack, align 8
  %200 = call %struct._ltype* @lbool(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  %201 = bitcast %struct._ltype* %200 to i8*
  call void @push(%struct._stack* %199, i8* %201)
  %202 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %202, i8** %3, align 8
  br label %23

; <label>:203:                                    ; preds = %194
  %204 = load i8*, i8** %3, align 8
  %205 = call i32 @strcmp(i8* %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0))
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %217

; <label>:207:                                    ; preds = %203
  %208 = load %struct._trie*, %struct._trie** @root, align 8
  %209 = call %struct._trie* @findInTrie(%struct._trie* %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0))
  %210 = getelementptr inbounds %struct._trie, %struct._trie* %209, i32 0, i32 3
  %211 = load i8*, i8** %210, align 8
  %212 = bitcast i8* %211 to %struct._ltype*
  store %struct._ltype* %212, %struct._ltype** %12, align 8
  %213 = load %struct._stack*, %struct._stack** @funcStack, align 8
  %214 = load %struct._ltype*, %struct._ltype** %12, align 8
  %215 = bitcast %struct._ltype* %214 to i8*
  call void @push(%struct._stack* %213, i8* %215)
  %216 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %216, i8** %3, align 8
  br label %23

; <label>:217:                                    ; preds = %203
  %218 = load i8*, i8** %3, align 8
  %219 = call i32 @strcmp(i8* %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0))
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %231

; <label>:221:                                    ; preds = %217
  %222 = load %struct._trie*, %struct._trie** @root, align 8
  %223 = call %struct._trie* @findInTrie(%struct._trie* %222, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0))
  %224 = getelementptr inbounds %struct._trie, %struct._trie* %223, i32 0, i32 3
  %225 = load i8*, i8** %224, align 8
  %226 = bitcast i8* %225 to %struct._ltype*
  store %struct._ltype* %226, %struct._ltype** %13, align 8
  %227 = load %struct._stack*, %struct._stack** @funcStack, align 8
  %228 = load %struct._ltype*, %struct._ltype** %13, align 8
  %229 = bitcast %struct._ltype* %228 to i8*
  call void @push(%struct._stack* %227, i8* %229)
  %230 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %230, i8** %3, align 8
  br label %23

; <label>:231:                                    ; preds = %217
  %232 = load i8*, i8** %3, align 8
  %233 = call i32 @strcmp(i8* %232, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0))
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %245

; <label>:235:                                    ; preds = %231
  %236 = load %struct._trie*, %struct._trie** @root, align 8
  %237 = call %struct._trie* @findInTrie(%struct._trie* %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0))
  %238 = getelementptr inbounds %struct._trie, %struct._trie* %237, i32 0, i32 3
  %239 = load i8*, i8** %238, align 8
  %240 = bitcast i8* %239 to %struct._ltype*
  store %struct._ltype* %240, %struct._ltype** %14, align 8
  %241 = load %struct._stack*, %struct._stack** @funcStack, align 8
  %242 = load %struct._ltype*, %struct._ltype** %14, align 8
  %243 = bitcast %struct._ltype* %242 to i8*
  call void @push(%struct._stack* %241, i8* %243)
  %244 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %244, i8** %3, align 8
  br label %23

; <label>:245:                                    ; preds = %231
  %246 = load i8*, i8** %3, align 8
  %247 = call i32 @strcmp(i8* %246, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0))
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %259

; <label>:249:                                    ; preds = %245
  %250 = load %struct._trie*, %struct._trie** @root, align 8
  %251 = call %struct._trie* @findInTrie(%struct._trie* %250, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0))
  %252 = getelementptr inbounds %struct._trie, %struct._trie* %251, i32 0, i32 3
  %253 = load i8*, i8** %252, align 8
  %254 = bitcast i8* %253 to %struct._ltype*
  store %struct._ltype* %254, %struct._ltype** %15, align 8
  %255 = load %struct._stack*, %struct._stack** @funcStack, align 8
  %256 = load %struct._ltype*, %struct._ltype** %15, align 8
  %257 = bitcast %struct._ltype* %256 to i8*
  call void @push(%struct._stack* %255, i8* %257)
  %258 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %258, i8** %3, align 8
  br label %23

; <label>:259:                                    ; preds = %245
  %260 = load i8*, i8** %3, align 8
  %261 = call i32 @strcmp(i8* %260, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0))
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %273

; <label>:263:                                    ; preds = %259
  %264 = load %struct._trie*, %struct._trie** @root, align 8
  %265 = call %struct._trie* @findInTrie(%struct._trie* %264, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  %266 = getelementptr inbounds %struct._trie, %struct._trie* %265, i32 0, i32 3
  %267 = load i8*, i8** %266, align 8
  %268 = bitcast i8* %267 to %struct._ltype*
  store %struct._ltype* %268, %struct._ltype** %16, align 8
  %269 = load %struct._stack*, %struct._stack** @funcStack, align 8
  %270 = load %struct._ltype*, %struct._ltype** %16, align 8
  %271 = bitcast %struct._ltype* %270 to i8*
  call void @push(%struct._stack* %269, i8* %271)
  %272 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %272, i8** %3, align 8
  br label %23

; <label>:273:                                    ; preds = %259
  %274 = load i8*, i8** %3, align 8
  %275 = call i32 @strcmp(i8* %274, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i32 0, i32 0))
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %287

; <label>:277:                                    ; preds = %273
  %278 = load %struct._trie*, %struct._trie** @root, align 8
  %279 = call %struct._trie* @findInTrie(%struct._trie* %278, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0))
  %280 = getelementptr inbounds %struct._trie, %struct._trie* %279, i32 0, i32 3
  %281 = load i8*, i8** %280, align 8
  %282 = bitcast i8* %281 to %struct._ltype*
  store %struct._ltype* %282, %struct._ltype** %17, align 8
  %283 = load %struct._stack*, %struct._stack** @funcStack, align 8
  %284 = load %struct._ltype*, %struct._ltype** %17, align 8
  %285 = bitcast %struct._ltype* %284 to i8*
  call void @push(%struct._stack* %283, i8* %285)
  %286 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %286, i8** %3, align 8
  br label %23

; <label>:287:                                    ; preds = %273
  %288 = load %struct._trie*, %struct._trie** @root, align 8
  %289 = load i8*, i8** %3, align 8
  %290 = call %struct._trie* @findInTrie(%struct._trie* %288, i8* %289)
  %291 = icmp ne %struct._trie* %290, null
  br i1 %291, label %292, label %313

; <label>:292:                                    ; preds = %287
  %293 = load %struct._trie*, %struct._trie** @root, align 8
  %294 = load i8*, i8** %3, align 8
  %295 = call %struct._trie* @findInTrie(%struct._trie* %293, i8* %294)
  %296 = getelementptr inbounds %struct._trie, %struct._trie* %295, i32 0, i32 3
  %297 = load i8*, i8** %296, align 8
  %298 = bitcast i8* %297 to %struct._ltype*
  store %struct._ltype* %298, %struct._ltype** %18, align 8
  %299 = load %struct._ltype*, %struct._ltype** %18, align 8
  %300 = getelementptr inbounds %struct._ltype, %struct._ltype* %299, i32 0, i32 1
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 @strcmp(i8* %301, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0))
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %308

; <label>:304:                                    ; preds = %292
  %305 = load %struct._stack*, %struct._stack** @funcStack, align 8
  %306 = load %struct._ltype*, %struct._ltype** %18, align 8
  %307 = bitcast %struct._ltype* %306 to i8*
  call void @push(%struct._stack* %305, i8* %307)
  br label %312

; <label>:308:                                    ; preds = %292
  %309 = load %struct._stack*, %struct._stack** @operStack, align 8
  %310 = load %struct._ltype*, %struct._ltype** %18, align 8
  %311 = bitcast %struct._ltype* %310 to i8*
  call void @push(%struct._stack* %309, i8* %311)
  br label %312

; <label>:312:                                    ; preds = %308, %304
  br label %316

; <label>:313:                                    ; preds = %287
  %314 = load i8*, i8** %3, align 8
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i32 0, i32 0), i8* %314)
  br label %316

; <label>:316:                                    ; preds = %313, %312
  br label %317

; <label>:317:                                    ; preds = %316, %102
  br label %318

; <label>:318:                                    ; preds = %317, %77
  %319 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0))
  store i8* %319, i8** %3, align 8
  br label %23

; <label>:320:                                    ; preds = %121, %23
  br label %321

; <label>:321:                                    ; preds = %326, %320
  %322 = load %struct._stack*, %struct._stack** @funcStack, align 8
  %323 = call i32 @isEmpty(%struct._stack* %322)
  %324 = icmp ne i32 %323, 0
  %325 = xor i1 %324, true
  br i1 %325, label %326, label %334

; <label>:326:                                    ; preds = %321
  %327 = load %struct._stack*, %struct._stack** @funcStack, align 8
  %328 = call i8* @pop(%struct._stack* %327)
  %329 = bitcast i8* %328 to %struct._ltype*
  store %struct._ltype* %329, %struct._ltype** %19, align 8
  %330 = load %struct._ltype*, %struct._ltype** %19, align 8
  %331 = getelementptr inbounds %struct._ltype, %struct._ltype* %330, i32 0, i32 2
  %332 = load i8*, i8** %331, align 8
  %333 = bitcast i8* %332 to void (...)*
  call void (...) %333()
  br label %321

; <label>:334:                                    ; preds = %321
  %335 = load %struct._stack*, %struct._stack** @operStack, align 8
  %336 = call i32 @isEmpty(%struct._stack* %335)
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %380, label %338

; <label>:338:                                    ; preds = %334
  %339 = load %struct._stack*, %struct._stack** @operStack, align 8
  %340 = call i8* @pop(%struct._stack* %339)
  %341 = bitcast i8* %340 to %struct._ltype*
  store %struct._ltype* %341, %struct._ltype** %20, align 8
  %342 = load %struct._ltype*, %struct._ltype** %20, align 8
  %343 = getelementptr inbounds %struct._ltype, %struct._ltype* %342, i32 0, i32 1
  %344 = load i8*, i8** %343, align 8
  %345 = call i32 @strcmp(i8* %344, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %352

; <label>:347:                                    ; preds = %338
  %348 = load %struct._ltype*, %struct._ltype** %20, align 8
  %349 = getelementptr inbounds %struct._ltype, %struct._ltype* %348, i32 0, i32 2
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.30, i32 0, i32 0), i8* %350)
  br label %379

; <label>:352:                                    ; preds = %338
  %353 = load %struct._ltype*, %struct._ltype** %20, align 8
  %354 = getelementptr inbounds %struct._ltype, %struct._ltype* %353, i32 0, i32 1
  %355 = load i8*, i8** %354, align 8
  %356 = call i32 @strcmp(i8* %355, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0))
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %363

; <label>:358:                                    ; preds = %352
  %359 = load %struct._ltype*, %struct._ltype** %20, align 8
  %360 = getelementptr inbounds %struct._ltype, %struct._ltype* %359, i32 0, i32 2
  %361 = load i8*, i8** %360, align 8
  %362 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* %361)
  br label %378

; <label>:363:                                    ; preds = %352
  %364 = load %struct._ltype*, %struct._ltype** %20, align 8
  %365 = getelementptr inbounds %struct._ltype, %struct._ltype* %364, i32 0, i32 1
  %366 = load i8*, i8** %365, align 8
  %367 = call i32 @strcmp(i8* %366, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0))
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %369, label %377

; <label>:369:                                    ; preds = %363
  %370 = load %struct._ltype*, %struct._ltype** %20, align 8
  %371 = getelementptr inbounds %struct._ltype, %struct._ltype* %370, i32 0, i32 2
  %372 = load i8*, i8** %371, align 8
  %373 = ptrtoint i8* %372 to i32
  %374 = icmp eq i32 %373, 1
  %375 = select i1 %374, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0)
  %376 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i32 0, i32 0), i8* %375)
  br label %377

; <label>:377:                                    ; preds = %369, %363
  br label %378

; <label>:378:                                    ; preds = %377, %358
  br label %379

; <label>:379:                                    ; preds = %378, %347
  br label %380

; <label>:380:                                    ; preds = %379, %334
  ret void
}

declare i8* @strtok(i8*, i8*) #1

; Function Attrs: nounwind readonly
declare i32 @isdigit(i32) #4

declare i64 @strlen(i8*) #1

declare void @puts(i8*) #1

declare %struct._ltype* @lint(i8*, i8*) #1

declare void @push(%struct._stack*, i8*) #1

declare i8* @strchr(i8*, i32) #1

declare %struct._ltype* @lstring(i8*, i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @strcmp(i8*, i8*) #1

declare %struct._ltype* @lbool(i8*, i8*) #1

declare %struct._trie* @findInTrie(%struct._trie*, i8*) #1

declare i32 @isEmpty(%struct._stack*) #1

declare i8* @pop(%struct._stack*) #1

; Function Attrs: noinline nounwind uwtable
define void @add() #0 {
  %1 = alloca %struct._ltype*, align 8
  %2 = alloca %struct._ltype*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [32 x i8], align 16
  store %struct._ltype* null, %struct._ltype** %1, align 8
  store %struct._ltype* null, %struct._ltype** %2, align 8
  %7 = load %struct._stack*, %struct._stack** @operStack, align 8
  %8 = call i32 @isEmpty(%struct._stack* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

; <label>:10:                                     ; preds = %0
  %11 = load %struct._stack*, %struct._stack** @operStack, align 8
  %12 = call i8* @pop(%struct._stack* %11)
  %13 = bitcast i8* %12 to %struct._ltype*
  store %struct._ltype* %13, %struct._ltype** %1, align 8
  br label %15

; <label>:14:                                     ; preds = %0
  call void @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0))
  br label %176

; <label>:15:                                     ; preds = %10
  %16 = load %struct._stack*, %struct._stack** @operStack, align 8
  %17 = call i32 @isEmpty(%struct._stack* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %15
  %20 = load %struct._stack*, %struct._stack** @operStack, align 8
  %21 = call i8* @pop(%struct._stack* %20)
  %22 = bitcast i8* %21 to %struct._ltype*
  store %struct._ltype* %22, %struct._ltype** %2, align 8
  br label %24

; <label>:23:                                     ; preds = %15
  call void @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.34, i32 0, i32 0))
  br label %176

; <label>:24:                                     ; preds = %19
  %25 = load %struct._ltype*, %struct._ltype** %1, align 8
  %26 = getelementptr inbounds %struct._ltype, %struct._ltype* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %52

; <label>:30:                                     ; preds = %24
  %31 = load %struct._ltype*, %struct._ltype** %2, align 8
  %32 = getelementptr inbounds %struct._ltype, %struct._ltype* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %52

; <label>:36:                                     ; preds = %30
  %37 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %37, i8 0, i64 32, i32 16, i1 false)
  %38 = load %struct._ltype*, %struct._ltype** %1, align 8
  %39 = getelementptr inbounds %struct._ltype, %struct._ltype* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = ptrtoint i8* %40 to i32
  %42 = load %struct._ltype*, %struct._ltype** %2, align 8
  %43 = getelementptr inbounds %struct._ltype, %struct._ltype* %42, i32 0, i32 2
  %44 = load i8*, i8** %43, align 8
  %45 = ptrtoint i8* %44 to i32
  %46 = add nsw i32 %41, %45
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @int_to_str(i32 %46, i8* %47)
  %48 = load %struct._stack*, %struct._stack** @operStack, align 8
  %49 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  %50 = call %struct._ltype* @lint(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %49)
  %51 = bitcast %struct._ltype* %50 to i8*
  call void @push(%struct._stack* %48, i8* %51)
  br label %176

; <label>:52:                                     ; preds = %30, %24
  %53 = load %struct._ltype*, %struct._ltype** %1, align 8
  %54 = getelementptr inbounds %struct._ltype, %struct._ltype* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @strcmp(i8* %55, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0))
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %108

; <label>:58:                                     ; preds = %52
  %59 = load %struct._ltype*, %struct._ltype** %2, align 8
  %60 = getelementptr inbounds %struct._ltype, %struct._ltype* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @strcmp(i8* %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0))
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %108

; <label>:64:                                     ; preds = %58
  %65 = load %struct._ltype*, %struct._ltype** %1, align 8
  %66 = getelementptr inbounds %struct._ltype, %struct._ltype* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct._ltype*, %struct._ltype** %2, align 8
  %69 = getelementptr inbounds %struct._ltype, %struct._ltype* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %67, %70
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = call i8* @my_calloc(i64 %73, i64 1)
  store i8* %74, i8** %4, align 8
  %75 = load i8*, i8** %4, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %106

; <label>:77:                                     ; preds = %64
  %78 = load i8*, i8** %4, align 8
  %79 = load %struct._ltype*, %struct._ltype** %2, align 8
  %80 = getelementptr inbounds %struct._ltype, %struct._ltype* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct._ltype*, %struct._ltype** %2, align 8
  %83 = getelementptr inbounds %struct._ltype, %struct._ltype* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = call i8* @memcpy(i8* %78, i8* %81, i64 %85)
  %87 = load i8*, i8** %4, align 8
  %88 = load %struct._ltype*, %struct._ltype** %2, align 8
  %89 = getelementptr inbounds %struct._ltype, %struct._ltype* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %87, i64 %91
  %93 = load %struct._ltype*, %struct._ltype** %1, align 8
  %94 = getelementptr inbounds %struct._ltype, %struct._ltype* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct._ltype*, %struct._ltype** %1, align 8
  %97 = getelementptr inbounds %struct._ltype, %struct._ltype* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = call i8* @memcpy(i8* %92, i8* %95, i64 %99)
  %101 = load %struct._stack*, %struct._stack** @operStack, align 8
  %102 = load i8*, i8** %4, align 8
  %103 = call %struct._ltype* @lstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %102)
  %104 = bitcast %struct._ltype* %103 to i8*
  call void @push(%struct._stack* %101, i8* %104)
  %105 = load i8*, i8** %4, align 8
  call void @my_free(i8* %105)
  br label %107

; <label>:106:                                    ; preds = %64
  call void @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0))
  call void @_terminate(i32 -1) #5
  unreachable

; <label>:107:                                    ; preds = %77
  br label %175

; <label>:108:                                    ; preds = %58, %52
  %109 = load %struct._ltype*, %struct._ltype** %2, align 8
  %110 = getelementptr inbounds %struct._ltype, %struct._ltype* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @strcmp(i8* %111, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0))
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %166

; <label>:114:                                    ; preds = %108
  %115 = load %struct._ltype*, %struct._ltype** %1, align 8
  %116 = getelementptr inbounds %struct._ltype, %struct._ltype* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @strcmp(i8* %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %166

; <label>:120:                                    ; preds = %114
  %121 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %121, i8 0, i64 32, i32 16, i1 false)
  %122 = load %struct._ltype*, %struct._ltype** %1, align 8
  %123 = getelementptr inbounds %struct._ltype, %struct._ltype* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  call void @int_to_str(i32 %125, i8* %126)
  %127 = load %struct._ltype*, %struct._ltype** %2, align 8
  %128 = getelementptr inbounds %struct._ltype, %struct._ltype* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = load %struct._ltype*, %struct._ltype** %1, align 8
  %131 = getelementptr inbounds %struct._ltype, %struct._ltype* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %129, %132
  %134 = add nsw i32 %133, 1
  %135 = sext i32 %134 to i64
  %136 = call i8* @my_calloc(i64 %135, i64 1)
  store i8* %136, i8** %5, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = icmp ne i8* %137, null
  br i1 %138, label %139, label %164

; <label>:139:                                    ; preds = %120
  %140 = load i8*, i8** %5, align 8
  %141 = load %struct._ltype*, %struct._ltype** %2, align 8
  %142 = getelementptr inbounds %struct._ltype, %struct._ltype* %141, i32 0, i32 2
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct._ltype*, %struct._ltype** %2, align 8
  %145 = getelementptr inbounds %struct._ltype, %struct._ltype* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = call i8* @memcpy(i8* %140, i8* %143, i64 %147)
  %149 = load i8*, i8** %5, align 8
  %150 = load %struct._ltype*, %struct._ltype** %2, align 8
  %151 = getelementptr inbounds %struct._ltype, %struct._ltype* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %149, i64 %153
  %155 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %156 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i32 0, i32 0
  %157 = call i64 @strlen(i8* %156)
  %158 = call i8* @memcpy(i8* %154, i8* %155, i64 %157)
  %159 = load %struct._stack*, %struct._stack** @operStack, align 8
  %160 = load i8*, i8** %5, align 8
  %161 = call %struct._ltype* @lstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %160)
  %162 = bitcast %struct._ltype* %161 to i8*
  call void @push(%struct._stack* %159, i8* %162)
  %163 = load i8*, i8** %5, align 8
  call void @my_free(i8* %163)
  br label %165

; <label>:164:                                    ; preds = %120
  call void @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i32 0, i32 0))
  call void @_terminate(i32 -1) #5
  unreachable

; <label>:165:                                    ; preds = %139
  br label %174

; <label>:166:                                    ; preds = %114, %108
  %167 = load %struct._ltype*, %struct._ltype** %2, align 8
  %168 = getelementptr inbounds %struct._ltype, %struct._ltype* %167, i32 0, i32 1
  %169 = load i8*, i8** %168, align 8
  %170 = load %struct._ltype*, %struct._ltype** %1, align 8
  %171 = getelementptr inbounds %struct._ltype, %struct._ltype* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.36, i32 0, i32 0), i8* %169, i8* %172)
  br label %174

; <label>:174:                                    ; preds = %166, %165
  br label %175

; <label>:175:                                    ; preds = %174, %107
  br label %176

; <label>:176:                                    ; preds = %14, %23, %175, %36
  ret void
}

declare void @int_to_str(i32, i8*) #1

declare i8* @my_calloc(i64, i64) #1

declare i8* @memcpy(i8*, i8*, i64) #1

declare void @my_free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @_int() #0 {
  %1 = alloca %struct._ltype*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store %struct._ltype* null, %struct._ltype** %1, align 8
  %4 = load %struct._stack*, %struct._stack** @operStack, align 8
  %5 = call i32 @isEmpty(%struct._stack* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %0
  %8 = load %struct._stack*, %struct._stack** @operStack, align 8
  %9 = call i8* @pop(%struct._stack* %8)
  %10 = bitcast i8* %9 to %struct._ltype*
  store %struct._ltype* %10, %struct._ltype** %1, align 8
  br label %11

; <label>:11:                                     ; preds = %7, %0
  %12 = load %struct._ltype*, %struct._ltype** %1, align 8
  %13 = icmp ne %struct._ltype* %12, null
  br i1 %13, label %14, label %84

; <label>:14:                                     ; preds = %11
  %15 = load %struct._ltype*, %struct._ltype** %1, align 8
  %16 = getelementptr inbounds %struct._ltype, %struct._ltype* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %14
  %21 = load %struct._stack*, %struct._stack** @operStack, align 8
  %22 = load %struct._ltype*, %struct._ltype** %1, align 8
  %23 = bitcast %struct._ltype* %22 to i8*
  call void @push(%struct._stack* %21, i8* %23)
  br label %83

; <label>:24:                                     ; preds = %14
  %25 = load %struct._ltype*, %struct._ltype** %1, align 8
  %26 = getelementptr inbounds %struct._ltype, %struct._ltype* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0))
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %61

; <label>:30:                                     ; preds = %24
  %31 = load %struct._ltype*, %struct._ltype** %1, align 8
  %32 = getelementptr inbounds %struct._ltype, %struct._ltype* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %3, align 8
  store i32 0, i32* %2, align 4
  br label %34

; <label>:34:                                     ; preds = %51, %30
  %35 = load i32, i32* %2, align 4
  %36 = sext i32 %35 to i64
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strlen(i8* %37)
  %39 = icmp ult i64 %36, %38
  br i1 %39, label %40, label %54

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** %3, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = call i32 @isdigit(i32 %46) #6
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

; <label>:49:                                     ; preds = %40
  call void @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0))
  br label %85

; <label>:50:                                     ; preds = %40
  br label %51

; <label>:51:                                     ; preds = %50
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %2, align 4
  br label %34

; <label>:54:                                     ; preds = %34
  %55 = load %struct._stack*, %struct._stack** @operStack, align 8
  %56 = load %struct._ltype*, %struct._ltype** %1, align 8
  %57 = getelementptr inbounds %struct._ltype, %struct._ltype* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = call %struct._ltype* @lint(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %58)
  %60 = bitcast %struct._ltype* %59 to i8*
  call void @push(%struct._stack* %55, i8* %60)
  br label %82

; <label>:61:                                     ; preds = %24
  %62 = load %struct._ltype*, %struct._ltype** %1, align 8
  %63 = getelementptr inbounds %struct._ltype, %struct._ltype* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0))
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %81

; <label>:67:                                     ; preds = %61
  %68 = load %struct._ltype*, %struct._ltype** %1, align 8
  %69 = getelementptr inbounds %struct._ltype, %struct._ltype* %68, i32 0, i32 2
  %70 = load i8*, i8** %69, align 8
  %71 = icmp ne i8* %70, null
  br i1 %71, label %72, label %76

; <label>:72:                                     ; preds = %67
  %73 = load %struct._stack*, %struct._stack** @operStack, align 8
  %74 = call %struct._ltype* @lint(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  %75 = bitcast %struct._ltype* %74 to i8*
  call void @push(%struct._stack* %73, i8* %75)
  br label %80

; <label>:76:                                     ; preds = %67
  %77 = load %struct._stack*, %struct._stack** @operStack, align 8
  %78 = call %struct._ltype* @lint(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i32 0, i32 0))
  %79 = bitcast %struct._ltype* %78 to i8*
  call void @push(%struct._stack* %77, i8* %79)
  br label %80

; <label>:80:                                     ; preds = %76, %72
  br label %81

; <label>:81:                                     ; preds = %80, %61
  br label %82

; <label>:82:                                     ; preds = %81, %54
  br label %83

; <label>:83:                                     ; preds = %82, %20
  br label %85

; <label>:84:                                     ; preds = %11
  call void @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i32 0, i32 0))
  br label %85

; <label>:85:                                     ; preds = %49, %84, %83
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @mul() #0 {
  %1 = alloca %struct._ltype*, align 8
  %2 = alloca %struct._ltype*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct._ltype* null, %struct._ltype** %1, align 8
  store %struct._ltype* null, %struct._ltype** %2, align 8
  %8 = load %struct._stack*, %struct._stack** @operStack, align 8
  %9 = call i32 @isEmpty(%struct._stack* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %15, label %11

; <label>:11:                                     ; preds = %0
  %12 = load %struct._stack*, %struct._stack** @operStack, align 8
  %13 = call i8* @pop(%struct._stack* %12)
  %14 = bitcast i8* %13 to %struct._ltype*
  store %struct._ltype* %14, %struct._ltype** %1, align 8
  br label %15

; <label>:15:                                     ; preds = %11, %0
  %16 = load %struct._stack*, %struct._stack** @operStack, align 8
  %17 = call i32 @isEmpty(%struct._stack* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %15
  %20 = load %struct._stack*, %struct._stack** @operStack, align 8
  %21 = call i8* @pop(%struct._stack* %20)
  %22 = bitcast i8* %21 to %struct._ltype*
  store %struct._ltype* %22, %struct._ltype** %2, align 8
  br label %23

; <label>:23:                                     ; preds = %19, %15
  %24 = load %struct._ltype*, %struct._ltype** %1, align 8
  %25 = icmp ne %struct._ltype* %24, null
  br i1 %25, label %26, label %127

; <label>:26:                                     ; preds = %23
  %27 = load %struct._ltype*, %struct._ltype** %2, align 8
  %28 = icmp ne %struct._ltype* %27, null
  br i1 %28, label %29, label %127

; <label>:29:                                     ; preds = %26
  %30 = load %struct._ltype*, %struct._ltype** %2, align 8
  %31 = getelementptr inbounds %struct._ltype, %struct._ltype* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %57

; <label>:35:                                     ; preds = %29
  %36 = load %struct._ltype*, %struct._ltype** %1, align 8
  %37 = getelementptr inbounds %struct._ltype, %struct._ltype* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @strcmp(i8* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %57

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %42, i8 0, i64 32, i32 16, i1 false)
  %43 = load %struct._ltype*, %struct._ltype** %2, align 8
  %44 = getelementptr inbounds %struct._ltype, %struct._ltype* %43, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct._ltype*, %struct._ltype** %1, align 8
  %48 = getelementptr inbounds %struct._ltype, %struct._ltype* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = mul nsw i32 %46, %50
  %52 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @int_to_str(i32 %51, i8* %52)
  %53 = load %struct._stack*, %struct._stack** @operStack, align 8
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  %55 = call %struct._ltype* @lint(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %54)
  %56 = bitcast %struct._ltype* %55 to i8*
  call void @push(%struct._stack* %53, i8* %56)
  br label %126

; <label>:57:                                     ; preds = %35, %29
  %58 = load %struct._ltype*, %struct._ltype** %2, align 8
  %59 = getelementptr inbounds %struct._ltype, %struct._ltype* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0))
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %117

; <label>:63:                                     ; preds = %57
  %64 = load %struct._ltype*, %struct._ltype** %1, align 8
  %65 = getelementptr inbounds %struct._ltype, %struct._ltype* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strcmp(i8* %66, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %117

; <label>:69:                                     ; preds = %63
  %70 = load %struct._ltype*, %struct._ltype** %1, align 8
  %71 = getelementptr inbounds %struct._ltype, %struct._ltype* %70, i32 0, i32 2
  %72 = load i8*, i8** %71, align 8
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %6, align 4
  %74 = load %struct._ltype*, %struct._ltype** %2, align 8
  %75 = getelementptr inbounds %struct._ltype, %struct._ltype* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct._ltype*, %struct._ltype** %1, align 8
  %78 = getelementptr inbounds %struct._ltype, %struct._ltype* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = ptrtoint i8* %79 to i32
  %81 = mul nsw i32 %76, %80
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = call i8* @my_calloc(i64 %84, i64 1)
  store i8* %85, i8** %4, align 8
  %86 = load i8*, i8** %4, align 8
  store i8* %86, i8** %7, align 8
  %87 = load i8*, i8** %4, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %89, label %115

; <label>:89:                                     ; preds = %69
  br label %90

; <label>:90:                                     ; preds = %94, %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %6, align 4
  %93 = icmp ne i32 %91, 0
  br i1 %93, label %94, label %110

; <label>:94:                                     ; preds = %90
  %95 = load i8*, i8** %4, align 8
  %96 = load %struct._ltype*, %struct._ltype** %2, align 8
  %97 = getelementptr inbounds %struct._ltype, %struct._ltype* %96, i32 0, i32 2
  %98 = load i8*, i8** %97, align 8
  %99 = load %struct._ltype*, %struct._ltype** %2, align 8
  %100 = getelementptr inbounds %struct._ltype, %struct._ltype* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = call i8* @memcpy(i8* %95, i8* %98, i64 %102)
  %104 = load %struct._ltype*, %struct._ltype** %2, align 8
  %105 = getelementptr inbounds %struct._ltype, %struct._ltype* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i8*, i8** %4, align 8
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i8, i8* %107, i64 %108
  store i8* %109, i8** %4, align 8
  br label %90

; <label>:110:                                    ; preds = %90
  %111 = load %struct._stack*, %struct._stack** @operStack, align 8
  %112 = load i8*, i8** %7, align 8
  %113 = call %struct._ltype* @lstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %112)
  %114 = bitcast %struct._ltype* %113 to i8*
  call void @push(%struct._stack* %111, i8* %114)
  br label %116

; <label>:115:                                    ; preds = %69
  call void @puts(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.40, i32 0, i32 0))
  call void @_terminate(i32 -1) #5
  unreachable

; <label>:116:                                    ; preds = %110
  br label %125

; <label>:117:                                    ; preds = %63, %57
  %118 = load %struct._ltype*, %struct._ltype** %2, align 8
  %119 = getelementptr inbounds %struct._ltype, %struct._ltype* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct._ltype*, %struct._ltype** %1, align 8
  %122 = getelementptr inbounds %struct._ltype, %struct._ltype* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.41, i32 0, i32 0), i8* %120, i8* %123)
  br label %125

; <label>:125:                                    ; preds = %117, %116
  br label %126

; <label>:126:                                    ; preds = %125, %41
  br label %128

; <label>:127:                                    ; preds = %26, %23
  call void @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.42, i32 0, i32 0))
  br label %128

; <label>:128:                                    ; preds = %127, %126
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @sub() #0 {
  %1 = alloca %struct._ltype*, align 8
  %2 = alloca %struct._ltype*, align 8
  %3 = alloca [32 x i8], align 16
  store %struct._ltype* null, %struct._ltype** %1, align 8
  store %struct._ltype* null, %struct._ltype** %2, align 8
  %4 = load %struct._stack*, %struct._stack** @operStack, align 8
  %5 = call i32 @isEmpty(%struct._stack* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %0
  %8 = load %struct._stack*, %struct._stack** @operStack, align 8
  %9 = call i8* @pop(%struct._stack* %8)
  %10 = bitcast i8* %9 to %struct._ltype*
  store %struct._ltype* %10, %struct._ltype** %1, align 8
  br label %12

; <label>:11:                                     ; preds = %0
  call void @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0))
  br label %57

; <label>:12:                                     ; preds = %7
  %13 = load %struct._stack*, %struct._stack** @operStack, align 8
  %14 = call i32 @isEmpty(%struct._stack* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

; <label>:16:                                     ; preds = %12
  %17 = load %struct._stack*, %struct._stack** @operStack, align 8
  %18 = call i8* @pop(%struct._stack* %17)
  %19 = bitcast i8* %18 to %struct._ltype*
  store %struct._ltype* %19, %struct._ltype** %2, align 8
  br label %21

; <label>:20:                                     ; preds = %12
  call void @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.43, i32 0, i32 0))
  br label %57

; <label>:21:                                     ; preds = %16
  %22 = load %struct._ltype*, %struct._ltype** %1, align 8
  %23 = getelementptr inbounds %struct._ltype, %struct._ltype* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %49

; <label>:27:                                     ; preds = %21
  %28 = load %struct._ltype*, %struct._ltype** %2, align 8
  %29 = getelementptr inbounds %struct._ltype, %struct._ltype* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %49

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %34, i8 0, i64 32, i32 16, i1 false)
  %35 = load %struct._ltype*, %struct._ltype** %2, align 8
  %36 = getelementptr inbounds %struct._ltype, %struct._ltype* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct._ltype*, %struct._ltype** %1, align 8
  %40 = getelementptr inbounds %struct._ltype, %struct._ltype* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = sub nsw i32 %38, %42
  %44 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @int_to_str(i32 %43, i8* %44)
  %45 = load %struct._stack*, %struct._stack** @operStack, align 8
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  %47 = call %struct._ltype* @lint(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %46)
  %48 = bitcast %struct._ltype* %47 to i8*
  call void @push(%struct._stack* %45, i8* %48)
  br label %57

; <label>:49:                                     ; preds = %27, %21
  %50 = load %struct._ltype*, %struct._ltype** %2, align 8
  %51 = getelementptr inbounds %struct._ltype, %struct._ltype* %50, i32 0, i32 1
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct._ltype*, %struct._ltype** %1, align 8
  %54 = getelementptr inbounds %struct._ltype, %struct._ltype* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.44, i32 0, i32 0), i8* %52, i8* %55)
  br label %57

; <label>:57:                                     ; preds = %11, %20, %49, %33
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @div() #0 {
  %1 = alloca %struct._ltype*, align 8
  %2 = alloca %struct._ltype*, align 8
  %3 = alloca [32 x i8], align 16
  store %struct._ltype* null, %struct._ltype** %1, align 8
  store %struct._ltype* null, %struct._ltype** %2, align 8
  %4 = load %struct._stack*, %struct._stack** @operStack, align 8
  %5 = call i32 @isEmpty(%struct._stack* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %0
  %8 = load %struct._stack*, %struct._stack** @operStack, align 8
  %9 = call i8* @pop(%struct._stack* %8)
  %10 = bitcast i8* %9 to %struct._ltype*
  store %struct._ltype* %10, %struct._ltype** %1, align 8
  br label %11

; <label>:11:                                     ; preds = %7, %0
  %12 = load %struct._stack*, %struct._stack** @operStack, align 8
  %13 = call i32 @isEmpty(%struct._stack* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %11
  %16 = load %struct._stack*, %struct._stack** @operStack, align 8
  %17 = call i8* @pop(%struct._stack* %16)
  %18 = bitcast i8* %17 to %struct._ltype*
  store %struct._ltype* %18, %struct._ltype** %2, align 8
  br label %19

; <label>:19:                                     ; preds = %15, %11
  %20 = load %struct._ltype*, %struct._ltype** %1, align 8
  %21 = icmp ne %struct._ltype* %20, null
  br i1 %21, label %22, label %69

; <label>:22:                                     ; preds = %19
  %23 = load %struct._ltype*, %struct._ltype** %2, align 8
  %24 = icmp ne %struct._ltype* %23, null
  br i1 %24, label %25, label %69

; <label>:25:                                     ; preds = %22
  %26 = load %struct._ltype*, %struct._ltype** %1, align 8
  %27 = getelementptr inbounds %struct._ltype, %struct._ltype* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %60

; <label>:31:                                     ; preds = %25
  %32 = load %struct._ltype*, %struct._ltype** %2, align 8
  %33 = getelementptr inbounds %struct._ltype, %struct._ltype* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 32, i32 16, i1 false)
  %39 = load %struct._ltype*, %struct._ltype** %1, align 8
  %40 = getelementptr inbounds %struct._ltype, %struct._ltype* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %58

; <label>:43:                                     ; preds = %37
  %44 = load %struct._ltype*, %struct._ltype** %2, align 8
  %45 = getelementptr inbounds %struct._ltype, %struct._ltype* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct._ltype*, %struct._ltype** %1, align 8
  %49 = getelementptr inbounds %struct._ltype, %struct._ltype* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = sdiv i32 %47, %51
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @int_to_str(i32 %52, i8* %53)
  %54 = load %struct._stack*, %struct._stack** @operStack, align 8
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  %56 = call %struct._ltype* @lint(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %55)
  %57 = bitcast %struct._ltype* %56 to i8*
  call void @push(%struct._stack* %54, i8* %57)
  br label %59

; <label>:58:                                     ; preds = %37
  call void @puts(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.45, i32 0, i32 0))
  br label %59

; <label>:59:                                     ; preds = %58, %43
  br label %68

; <label>:60:                                     ; preds = %31, %25
  %61 = load %struct._ltype*, %struct._ltype** %2, align 8
  %62 = getelementptr inbounds %struct._ltype, %struct._ltype* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct._ltype*, %struct._ltype** %1, align 8
  %65 = getelementptr inbounds %struct._ltype, %struct._ltype* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.46, i32 0, i32 0), i8* %63, i8* %66)
  br label %68

; <label>:68:                                     ; preds = %60, %59
  br label %70

; <label>:69:                                     ; preds = %22, %19
  call void @puts(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.47, i32 0, i32 0))
  br label %70

; <label>:70:                                     ; preds = %69, %68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @mod() #0 {
  %1 = alloca %struct._ltype*, align 8
  %2 = alloca %struct._ltype*, align 8
  %3 = alloca [32 x i8], align 16
  store %struct._ltype* null, %struct._ltype** %1, align 8
  store %struct._ltype* null, %struct._ltype** %2, align 8
  %4 = load %struct._stack*, %struct._stack** @operStack, align 8
  %5 = call i32 @isEmpty(%struct._stack* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %11, label %7

; <label>:7:                                      ; preds = %0
  %8 = load %struct._stack*, %struct._stack** @operStack, align 8
  %9 = call i8* @pop(%struct._stack* %8)
  %10 = bitcast i8* %9 to %struct._ltype*
  store %struct._ltype* %10, %struct._ltype** %1, align 8
  br label %11

; <label>:11:                                     ; preds = %7, %0
  %12 = load %struct._stack*, %struct._stack** @operStack, align 8
  %13 = call i32 @isEmpty(%struct._stack* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

; <label>:15:                                     ; preds = %11
  %16 = load %struct._stack*, %struct._stack** @operStack, align 8
  %17 = call i8* @pop(%struct._stack* %16)
  %18 = bitcast i8* %17 to %struct._ltype*
  store %struct._ltype* %18, %struct._ltype** %2, align 8
  br label %19

; <label>:19:                                     ; preds = %15, %11
  %20 = load %struct._ltype*, %struct._ltype** %1, align 8
  %21 = icmp ne %struct._ltype* %20, null
  br i1 %21, label %22, label %69

; <label>:22:                                     ; preds = %19
  %23 = load %struct._ltype*, %struct._ltype** %2, align 8
  %24 = icmp ne %struct._ltype* %23, null
  br i1 %24, label %25, label %69

; <label>:25:                                     ; preds = %22
  %26 = load %struct._ltype*, %struct._ltype** %1, align 8
  %27 = getelementptr inbounds %struct._ltype, %struct._ltype* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @strcmp(i8* %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %60

; <label>:31:                                     ; preds = %25
  %32 = load %struct._ltype*, %struct._ltype** %2, align 8
  %33 = getelementptr inbounds %struct._ltype, %struct._ltype* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %60

; <label>:37:                                     ; preds = %31
  %38 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %38, i8 0, i64 32, i32 16, i1 false)
  %39 = load %struct._ltype*, %struct._ltype** %1, align 8
  %40 = getelementptr inbounds %struct._ltype, %struct._ltype* %39, i32 0, i32 2
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %43, label %58

; <label>:43:                                     ; preds = %37
  %44 = load %struct._ltype*, %struct._ltype** %2, align 8
  %45 = getelementptr inbounds %struct._ltype, %struct._ltype* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = ptrtoint i8* %46 to i32
  %48 = load %struct._ltype*, %struct._ltype** %1, align 8
  %49 = getelementptr inbounds %struct._ltype, %struct._ltype* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = srem i32 %47, %51
  %53 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  call void @int_to_str(i32 %52, i8* %53)
  %54 = load %struct._stack*, %struct._stack** @operStack, align 8
  %55 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i32 0, i32 0
  %56 = call %struct._ltype* @lint(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %55)
  %57 = bitcast %struct._ltype* %56 to i8*
  call void @push(%struct._stack* %54, i8* %57)
  br label %59

; <label>:58:                                     ; preds = %37
  call void @puts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.48, i32 0, i32 0))
  br label %59

; <label>:59:                                     ; preds = %58, %43
  br label %68

; <label>:60:                                     ; preds = %31, %25
  %61 = load %struct._ltype*, %struct._ltype** %2, align 8
  %62 = getelementptr inbounds %struct._ltype, %struct._ltype* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct._ltype*, %struct._ltype** %1, align 8
  %65 = getelementptr inbounds %struct._ltype, %struct._ltype* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.49, i32 0, i32 0), i8* %63, i8* %66)
  br label %68

; <label>:68:                                     ; preds = %60, %59
  br label %70

; <label>:69:                                     ; preds = %22, %19
  call void @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.50, i32 0, i32 0))
  br label %70

; <label>:70:                                     ; preds = %69, %68
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @not() #0 {
  %1 = alloca %struct._ltype*, align 8
  %2 = alloca [32 x i8], align 16
  store %struct._ltype* null, %struct._ltype** %1, align 8
  %3 = load %struct._stack*, %struct._stack** @operStack, align 8
  %4 = call i32 @isEmpty(%struct._stack* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %0
  %7 = load %struct._stack*, %struct._stack** @operStack, align 8
  %8 = call i8* @pop(%struct._stack* %7)
  %9 = bitcast i8* %8 to %struct._ltype*
  store %struct._ltype* %9, %struct._ltype** %1, align 8
  br label %11

; <label>:10:                                     ; preds = %0
  call void @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.51, i32 0, i32 0))
  br label %66

; <label>:11:                                     ; preds = %6
  %12 = load %struct._ltype*, %struct._ltype** %1, align 8
  %13 = getelementptr inbounds %struct._ltype, %struct._ltype* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0))
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %32

; <label>:17:                                     ; preds = %11
  %18 = load %struct._ltype*, %struct._ltype** %1, align 8
  %19 = getelementptr inbounds %struct._ltype, %struct._ltype* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

; <label>:23:                                     ; preds = %17
  %24 = load %struct._stack*, %struct._stack** @operStack, align 8
  %25 = call %struct._ltype* @lstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.52, i32 0, i32 0))
  %26 = bitcast %struct._ltype* %25 to i8*
  call void @push(%struct._stack* %24, i8* %26)
  br label %31

; <label>:27:                                     ; preds = %17
  %28 = load %struct._stack*, %struct._stack** @operStack, align 8
  %29 = call %struct._ltype* @lstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0))
  %30 = bitcast %struct._ltype* %29 to i8*
  call void @push(%struct._stack* %28, i8* %30)
  br label %31

; <label>:31:                                     ; preds = %27, %23
  br label %66

; <label>:32:                                     ; preds = %11
  %33 = load %struct._ltype*, %struct._ltype** %1, align 8
  %34 = getelementptr inbounds %struct._ltype, %struct._ltype* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %50

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %39, i8 0, i64 32, i32 16, i1 false)
  %40 = load %struct._ltype*, %struct._ltype** %1, align 8
  %41 = getelementptr inbounds %struct._ltype, %struct._ltype* %40, i32 0, i32 2
  %42 = load i8*, i8** %41, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = xor i32 %43, -1
  %45 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i32 0, i32 0
  call void @int_to_str(i32 %44, i8* %45)
  %46 = load %struct._stack*, %struct._stack** @operStack, align 8
  %47 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i32 0, i32 0
  %48 = call %struct._ltype* @lint(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %47)
  %49 = bitcast %struct._ltype* %48 to i8*
  call void @push(%struct._stack* %46, i8* %49)
  br label %65

; <label>:50:                                     ; preds = %32
  %51 = load %struct._ltype*, %struct._ltype** %1, align 8
  %52 = getelementptr inbounds %struct._ltype, %struct._ltype* %51, i32 0, i32 2
  %53 = load i8*, i8** %52, align 8
  %54 = ptrtoint i8* %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %60

; <label>:56:                                     ; preds = %50
  %57 = load %struct._stack*, %struct._stack** @operStack, align 8
  %58 = call %struct._ltype* @lbool(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  %59 = bitcast %struct._ltype* %58 to i8*
  call void @push(%struct._stack* %57, i8* %59)
  br label %64

; <label>:60:                                     ; preds = %50
  %61 = load %struct._stack*, %struct._stack** @operStack, align 8
  %62 = call %struct._ltype* @lbool(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  %63 = bitcast %struct._ltype* %62 to i8*
  call void @push(%struct._stack* %61, i8* %63)
  br label %64

; <label>:64:                                     ; preds = %60, %56
  br label %65

; <label>:65:                                     ; preds = %64, %38
  br label %66

; <label>:66:                                     ; preds = %10, %65, %31
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @len() #0 {
  %1 = alloca %struct._ltype*, align 8
  %2 = alloca [32 x i8], align 16
  store %struct._ltype* null, %struct._ltype** %1, align 8
  %3 = load %struct._stack*, %struct._stack** @operStack, align 8
  %4 = call i32 @isEmpty(%struct._stack* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %0
  %7 = load %struct._stack*, %struct._stack** @operStack, align 8
  %8 = call i8* @pop(%struct._stack* %7)
  %9 = bitcast i8* %8 to %struct._ltype*
  store %struct._ltype* %9, %struct._ltype** %1, align 8
  br label %11

; <label>:10:                                     ; preds = %0
  call void @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i32 0, i32 0))
  br label %21

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 32, i32 16, i1 false)
  %13 = load %struct._ltype*, %struct._ltype** %1, align 8
  %14 = getelementptr inbounds %struct._ltype, %struct._ltype* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i32 0, i32 0
  call void @int_to_str(i32 %15, i8* %16)
  %17 = load %struct._stack*, %struct._stack** @operStack, align 8
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i32 0, i32 0
  %19 = call %struct._ltype* @lint(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %18)
  %20 = bitcast %struct._ltype* %19 to i8*
  call void @push(%struct._stack* %17, i8* %20)
  br label %21

; <label>:21:                                     ; preds = %11, %10
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @equals() #0 {
  %1 = alloca %struct._ltype*, align 8
  %2 = alloca %struct._ltype*, align 8
  store %struct._ltype* null, %struct._ltype** %1, align 8
  store %struct._ltype* null, %struct._ltype** %2, align 8
  %3 = load %struct._stack*, %struct._stack** @operStack, align 8
  %4 = call i32 @isEmpty(%struct._stack* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %10, label %6

; <label>:6:                                      ; preds = %0
  %7 = load %struct._stack*, %struct._stack** @operStack, align 8
  %8 = call i8* @pop(%struct._stack* %7)
  %9 = bitcast i8* %8 to %struct._ltype*
  store %struct._ltype* %9, %struct._ltype** %1, align 8
  br label %10

; <label>:10:                                     ; preds = %6, %0
  %11 = load %struct._stack*, %struct._stack** @operStack, align 8
  %12 = call i32 @isEmpty(%struct._stack* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

; <label>:14:                                     ; preds = %10
  %15 = load %struct._stack*, %struct._stack** @operStack, align 8
  %16 = call i8* @pop(%struct._stack* %15)
  %17 = bitcast i8* %16 to %struct._ltype*
  store %struct._ltype* %17, %struct._ltype** %2, align 8
  br label %18

; <label>:18:                                     ; preds = %14, %10
  %19 = load %struct._ltype*, %struct._ltype** %1, align 8
  %20 = icmp ne %struct._ltype* %19, null
  br i1 %20, label %21, label %101

; <label>:21:                                     ; preds = %18
  %22 = load %struct._ltype*, %struct._ltype** %2, align 8
  %23 = icmp ne %struct._ltype* %22, null
  br i1 %23, label %24, label %101

; <label>:24:                                     ; preds = %21
  %25 = load %struct._ltype*, %struct._ltype** %1, align 8
  %26 = getelementptr inbounds %struct._ltype, %struct._ltype* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

; <label>:30:                                     ; preds = %24
  %31 = load %struct._ltype*, %struct._ltype** %2, align 8
  %32 = getelementptr inbounds %struct._ltype, %struct._ltype* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @strcmp(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %48, label %36

; <label>:36:                                     ; preds = %30, %24
  %37 = load %struct._ltype*, %struct._ltype** %1, align 8
  %38 = getelementptr inbounds %struct._ltype, %struct._ltype* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0))
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %65

; <label>:42:                                     ; preds = %36
  %43 = load %struct._ltype*, %struct._ltype** %2, align 8
  %44 = getelementptr inbounds %struct._ltype, %struct._ltype* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i32 0, i32 0))
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %65

; <label>:48:                                     ; preds = %42, %30
  %49 = load %struct._ltype*, %struct._ltype** %1, align 8
  %50 = getelementptr inbounds %struct._ltype, %struct._ltype* %49, i32 0, i32 2
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct._ltype*, %struct._ltype** %2, align 8
  %53 = getelementptr inbounds %struct._ltype, %struct._ltype* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = icmp eq i8* %51, %54
  br i1 %55, label %56, label %60

; <label>:56:                                     ; preds = %48
  %57 = load %struct._stack*, %struct._stack** @operStack, align 8
  %58 = call %struct._ltype* @lbool(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  %59 = bitcast %struct._ltype* %58 to i8*
  call void @push(%struct._stack* %57, i8* %59)
  br label %64

; <label>:60:                                     ; preds = %48
  %61 = load %struct._stack*, %struct._stack** @operStack, align 8
  %62 = call %struct._ltype* @lbool(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  %63 = bitcast %struct._ltype* %62 to i8*
  call void @push(%struct._stack* %61, i8* %63)
  br label %64

; <label>:64:                                     ; preds = %60, %56
  br label %100

; <label>:65:                                     ; preds = %42, %36
  %66 = load %struct._ltype*, %struct._ltype** %1, align 8
  %67 = getelementptr inbounds %struct._ltype, %struct._ltype* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0))
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %95

; <label>:71:                                     ; preds = %65
  %72 = load %struct._ltype*, %struct._ltype** %2, align 8
  %73 = getelementptr inbounds %struct._ltype, %struct._ltype* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0))
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %95

; <label>:77:                                     ; preds = %71
  %78 = load %struct._ltype*, %struct._ltype** %1, align 8
  %79 = getelementptr inbounds %struct._ltype, %struct._ltype* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct._ltype*, %struct._ltype** %2, align 8
  %82 = getelementptr inbounds %struct._ltype, %struct._ltype* %81, i32 0, i32 2
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @strcmp(i8* %80, i8* %83)
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

; <label>:86:                                     ; preds = %77
  %87 = load %struct._stack*, %struct._stack** @operStack, align 8
  %88 = call %struct._ltype* @lbool(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0))
  %89 = bitcast %struct._ltype* %88 to i8*
  call void @push(%struct._stack* %87, i8* %89)
  br label %94

; <label>:90:                                     ; preds = %77
  %91 = load %struct._stack*, %struct._stack** @operStack, align 8
  %92 = call %struct._ltype* @lbool(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  %93 = bitcast %struct._ltype* %92 to i8*
  call void @push(%struct._stack* %91, i8* %93)
  br label %94

; <label>:94:                                     ; preds = %90, %86
  br label %99

; <label>:95:                                     ; preds = %71, %65
  %96 = load %struct._stack*, %struct._stack** @operStack, align 8
  %97 = call %struct._ltype* @lbool(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0))
  %98 = bitcast %struct._ltype* %97 to i8*
  call void @push(%struct._stack* %96, i8* %98)
  br label %99

; <label>:99:                                     ; preds = %95, %94
  br label %100

; <label>:100:                                    ; preds = %99, %64
  br label %102

; <label>:101:                                    ; preds = %21, %18
  call void @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i32 0, i32 0))
  br label %102

; <label>:102:                                    ; preds = %101, %100
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @type() #0 {
  %1 = alloca %struct._ltype*, align 8
  store %struct._ltype* null, %struct._ltype** %1, align 8
  %2 = load %struct._stack*, %struct._stack** @operStack, align 8
  %3 = call i32 @isEmpty(%struct._stack* %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

; <label>:5:                                      ; preds = %0
  %6 = load %struct._stack*, %struct._stack** @operStack, align 8
  %7 = call i8* @pop(%struct._stack* %6)
  %8 = bitcast i8* %7 to %struct._ltype*
  store %struct._ltype* %8, %struct._ltype** %1, align 8
  br label %9

; <label>:9:                                      ; preds = %5, %0
  %10 = load %struct._ltype*, %struct._ltype** %1, align 8
  %11 = icmp ne %struct._ltype* %10, null
  br i1 %11, label %12, label %19

; <label>:12:                                     ; preds = %9
  %13 = load %struct._stack*, %struct._stack** @operStack, align 8
  %14 = load %struct._ltype*, %struct._ltype** %1, align 8
  %15 = getelementptr inbounds %struct._ltype, %struct._ltype* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = call %struct._ltype* @lstring(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.14, i32 0, i32 0), i8* %16)
  %18 = bitcast %struct._ltype* %17 to i8*
  call void @push(%struct._stack* %13, i8* %18)
  br label %19

; <label>:19:                                     ; preds = %12, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @terminate() #0 {
  %1 = alloca %struct._ltype*, align 8
  store %struct._ltype* null, %struct._ltype** %1, align 8
  %2 = load %struct._stack*, %struct._stack** @operStack, align 8
  %3 = call i32 @isEmpty(%struct._stack* %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %9, label %5

; <label>:5:                                      ; preds = %0
  %6 = load %struct._stack*, %struct._stack** @operStack, align 8
  %7 = call i8* @pop(%struct._stack* %6)
  %8 = bitcast i8* %7 to %struct._ltype*
  store %struct._ltype* %8, %struct._ltype** %1, align 8
  br label %9

; <label>:9:                                      ; preds = %5, %0
  %10 = load %struct._ltype*, %struct._ltype** %1, align 8
  %11 = icmp ne %struct._ltype* %10, null
  br i1 %11, label %12, label %23

; <label>:12:                                     ; preds = %9
  %13 = load %struct._ltype*, %struct._ltype** %1, align 8
  %14 = getelementptr inbounds %struct._ltype, %struct._ltype* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0))
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

; <label>:18:                                     ; preds = %12
  %19 = load %struct._ltype*, %struct._ltype** %1, align 8
  %20 = getelementptr inbounds %struct._ltype, %struct._ltype* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = ptrtoint i8* %21 to i32
  call void @_terminate(i32 %22) #5
  unreachable

; <label>:23:                                     ; preds = %12, %9
  call void @_terminate(i32 0) #5
  unreachable
                                                  ; No predecessors!
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }
attributes #6 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
