; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._ShellCmds = type { i8*, i32 ()*, i8* }
%struct._superblock = type { i32, i32, i32, [64 x %struct._inode*] }
%struct._inode = type { [208 x i8], i32, i32, i32, %struct._inode*, [8 x [512 x i8]*] }
%struct._free_t = type { i8, [512 x i8]* }

@ARGV = common global [10 x i8*] zeroinitializer, align 16
@ARGC = common global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"missing quote\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"too many args\00", align 1
@CWD = common global [256 x i8] zeroinitializer, align 16
@.str.3 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Failed to initialize the RAM file system\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Welcome to the cgcfs shell!\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Type help for a list of available commands.\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"% \00", align 1
@cmds = external global [0 x %struct._ShellCmds], align 8
@.str.8 = private unnamed_addr constant [16 x i8] c"Invalid command\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Failed to destroy the RAM file system\0A\00", align 1
@fs = common global %struct._superblock zeroinitializer, align 8
@free_list = common global [256 x %struct._free_t] zeroinitializer, align 16

; Function Attrs: noinline nounwind uwtable
define i32 @FreeArgs() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

; <label>:2:                                      ; preds = %8, %0
  %3 = load i32, i32* %1, align 4
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %4
  %6 = load i8*, i8** %5, align 8
  %7 = icmp ne i8* %6, null
  br i1 %7, label %8, label %24

; <label>:8:                                      ; preds = %2
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %10
  %12 = load i8*, i8** %11, align 8
  %13 = load i32, i32* %1, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strlen(i8* %16)
  %18 = call i32 @deallocate(i8* %12, i64 %17)
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %20
  store i8* null, i8** %21, align 8
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %1, align 4
  br label %2

; <label>:24:                                     ; preds = %2
  ret i32 0
}

declare i32 @deallocate(i8*, i64) #1

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @ParseArgs(i8*) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %7, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast ([10 x i8*]* @ARGV to i8*), i8 0, i64 80, i32 16, i1 false)
  store i32 0, i32* @ARGC, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @strtok(i8* %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i8* %9, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %1
  store i32 0, i32* @ARGC, align 4
  store i32 0, i32* %2, align 4
  br label %205

; <label>:12:                                     ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i8* @strdup(i8* %13)
  %15 = load i32, i32* @ARGC, align 4
  %16 = add i32 %15, 1
  store i32 %16, i32* @ARGC, align 4
  %17 = zext i32 %15 to i64
  %18 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %17
  store i8* %14, i8** %18, align 8
  br label %19

; <label>:19:                                     ; preds = %192, %12
  %20 = call i8* @strtok(i8* null, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  store i8* %20, i8** %4, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

; <label>:22:                                     ; preds = %19
  %23 = load i32, i32* @ARGC, align 4
  %24 = icmp ult i32 %23, 9
  br label %25

; <label>:25:                                     ; preds = %22, %19
  %26 = phi i1 [ false, %19 ], [ %24, %22 ]
  br i1 %26, label %27, label %193

; <label>:27:                                     ; preds = %25
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %91

; <label>:30:                                     ; preds = %27
  %31 = load i8*, i8** %4, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i64 @strlen(i8* %32)
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp eq i32 %37, 34
  br i1 %38, label %39, label %91

; <label>:39:                                     ; preds = %30
  %40 = load i32, i32* @ARGC, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i64 @strlen(i8* %43)
  %45 = load i8*, i8** %4, align 8
  %46 = call i64 @strlen(i8* %45)
  %47 = add i64 %44, %46
  %48 = add i64 %47, 1
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = bitcast i8** %5 to i8*
  %53 = bitcast i8* %52 to i8**
  %54 = call i32 @allocate(i64 %51, i32 0, i8** %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

; <label>:56:                                     ; preds = %39
  %57 = call i32 @FreeArgs()
  store i32 0, i32* @ARGC, align 4
  store i32 0, i32* %2, align 4
  br label %205

; <label>:58:                                     ; preds = %39
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @ARGC, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = call i8* @strcpy(i8* %59, i8* %64)
  %66 = load i8*, i8** %5, align 8
  %67 = call i64 @strcat(i8* %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %68 = load i8*, i8** %4, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = sub i64 %70, 1
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i64 @strcat(i8* %73, i8* %74)
  %76 = load i32, i32* @ARGC, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %77
  %79 = load i8*, i8** %78, align 8
  %80 = load i32, i32* @ARGC, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %81
  %83 = load i8*, i8** %82, align 8
  %84 = call i64 @strlen(i8* %83)
  %85 = call i32 @deallocate(i8* %79, i64 %84)
  %86 = load i8*, i8** %5, align 8
  %87 = load i32, i32* @ARGC, align 4
  %88 = add i32 %87, 1
  store i32 %88, i32* @ARGC, align 4
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %89
  store i8* %86, i8** %90, align 8
  store i32 0, i32* %7, align 4
  br label %192

; <label>:91:                                     ; preds = %30, %27
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %139

; <label>:94:                                     ; preds = %91
  %95 = load i32, i32* @ARGC, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %96
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strlen(i8* %98)
  %100 = load i8*, i8** %4, align 8
  %101 = call i64 @strlen(i8* %100)
  %102 = add i64 %99, %101
  %103 = add i64 %102, 2
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = bitcast i8** %5 to i8*
  %108 = bitcast i8* %107 to i8**
  %109 = call i32 @allocate(i64 %106, i32 0, i8** %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

; <label>:111:                                    ; preds = %94
  %112 = call i32 @FreeArgs()
  store i32 0, i32* @ARGC, align 4
  store i32 0, i32* %2, align 4
  br label %205

; <label>:113:                                    ; preds = %94
  %114 = load i8*, i8** %5, align 8
  %115 = load i32, i32* @ARGC, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = call i8* @strcpy(i8* %114, i8* %118)
  %120 = load i8*, i8** %5, align 8
  %121 = call i64 @strcat(i8* %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0))
  %122 = load i8*, i8** %5, align 8
  %123 = load i8*, i8** %4, align 8
  %124 = call i64 @strcat(i8* %122, i8* %123)
  %125 = load i32, i32* @ARGC, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* @ARGC, align 4
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %130
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @strlen(i8* %132)
  %134 = call i32 @deallocate(i8* %128, i64 %133)
  %135 = load i8*, i8** %5, align 8
  %136 = load i32, i32* @ARGC, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %137
  store i8* %135, i8** %138, align 8
  br label %191

; <label>:139:                                    ; preds = %91
  %140 = load i8*, i8** %4, align 8
  %141 = getelementptr inbounds i8, i8* %140, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 34
  %145 = zext i1 %144 to i32
  %146 = load i8*, i8** %4, align 8
  %147 = load i8*, i8** %4, align 8
  %148 = call i64 @strlen(i8* %147)
  %149 = sub i64 %148, 1
  %150 = getelementptr inbounds i8, i8* %146, i64 %149
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp eq i32 %152, 34
  %154 = zext i1 %153 to i32
  %155 = and i32 %145, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %170

; <label>:157:                                    ; preds = %139
  %158 = load i8*, i8** %4, align 8
  %159 = load i8*, i8** %4, align 8
  %160 = call i64 @strlen(i8* %159)
  %161 = sub i64 %160, 1
  %162 = getelementptr inbounds i8, i8* %158, i64 %161
  store i8 0, i8* %162, align 1
  %163 = load i8*, i8** %4, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 1
  %165 = call i8* @strdup(i8* %164)
  %166 = load i32, i32* @ARGC, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* @ARGC, align 4
  %168 = zext i32 %166 to i64
  %169 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %168
  store i8* %165, i8** %169, align 8
  br label %190

; <label>:170:                                    ; preds = %139
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 34
  br i1 %175, label %176, label %182

; <label>:176:                                    ; preds = %170
  store i32 1, i32* %7, align 4
  %177 = load i8*, i8** %4, align 8
  %178 = call i8* @strdup(i8* %177)
  %179 = load i32, i32* @ARGC, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %180
  store i8* %178, i8** %181, align 8
  br label %189

; <label>:182:                                    ; preds = %170
  %183 = load i8*, i8** %4, align 8
  %184 = call i8* @strdup(i8* %183)
  %185 = load i32, i32* @ARGC, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* @ARGC, align 4
  %187 = zext i32 %185 to i64
  %188 = getelementptr inbounds [10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 %187
  store i8* %184, i8** %188, align 8
  br label %189

; <label>:189:                                    ; preds = %182, %176
  br label %190

; <label>:190:                                    ; preds = %189, %157
  br label %191

; <label>:191:                                    ; preds = %190, %113
  br label %192

; <label>:192:                                    ; preds = %191, %58
  br label %19

; <label>:193:                                    ; preds = %25
  %194 = load i32, i32* %7, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

; <label>:196:                                    ; preds = %193
  call void @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0))
  %197 = call i32 @FreeArgs()
  store i32 0, i32* @ARGC, align 4
  store i32 0, i32* %2, align 4
  br label %205

; <label>:198:                                    ; preds = %193
  %199 = load i32, i32* @ARGC, align 4
  %200 = icmp eq i32 %199, 9
  br i1 %200, label %201, label %203

; <label>:201:                                    ; preds = %198
  call void @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  %202 = call i32 @FreeArgs()
  store i32 0, i32* @ARGC, align 4
  store i32 0, i32* %2, align 4
  br label %205

; <label>:203:                                    ; preds = %198
  %204 = load i32, i32* @ARGC, align 4
  store i32 %204, i32* %2, align 4
  br label %205

; <label>:205:                                    ; preds = %203, %201, %196, %111, %56, %11
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare i8* @strtok(i8*, i8*) #1

declare i8* @strdup(i8*) #1

declare i32 @allocate(i64, i32, i8**) #1

declare i8* @strcpy(i8*, i8*) #1

declare i64 @strcat(i8*, i8*) #1

declare void @puts(i8*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct._ShellCmds*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.memset.p0i8.i64(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CWD, i32 0, i32 0), i8 0, i64 256, i32 16, i1 false)
  %4 = call i8* @strcpy(i8* getelementptr inbounds ([256 x i8], [256 x i8]* @CWD, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  %5 = call i32 @InitFS(i32 524288)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %0
  call void @puts(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %68

; <label>:8:                                      ; preds = %0
  call void @puts(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i32 0, i32 0))
  call void @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i32 0, i32 0))
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %10, i8 0, i64 256, i32 16, i1 false)
  br label %11

; <label>:11:                                     ; preds = %59, %20, %8
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  %13 = call i32 @readUntil(i8* %12, i32 255, i8 signext 10)
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %63

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  %17 = call i32 @ParseArgs(i8* %16)
  %18 = load i32, i32* @ARGC, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

; <label>:20:                                     ; preds = %15
  %21 = call i32 @FreeArgs()
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 256, i32 16, i1 false)
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %11

; <label>:24:                                     ; preds = %15
  %25 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 0), align 16
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %49

; <label>:27:                                     ; preds = %24
  store %struct._ShellCmds* getelementptr inbounds ([0 x %struct._ShellCmds], [0 x %struct._ShellCmds]* @cmds, i32 0, i32 0), %struct._ShellCmds** %3, align 8
  br label %28

; <label>:28:                                     ; preds = %45, %27
  %29 = load %struct._ShellCmds*, %struct._ShellCmds** %3, align 8
  %30 = getelementptr inbounds %struct._ShellCmds, %struct._ShellCmds* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %48

; <label>:33:                                     ; preds = %28
  %34 = load %struct._ShellCmds*, %struct._ShellCmds** %3, align 8
  %35 = getelementptr inbounds %struct._ShellCmds, %struct._ShellCmds* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @ARGV, i64 0, i64 0), align 16
  %38 = call i32 @strcmp(i8* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

; <label>:40:                                     ; preds = %33
  %41 = load %struct._ShellCmds*, %struct._ShellCmds** %3, align 8
  %42 = getelementptr inbounds %struct._ShellCmds, %struct._ShellCmds* %41, i32 0, i32 1
  %43 = load i32 ()*, i32 ()** %42, align 8
  %44 = call i32 %43()
  br label %48

; <label>:45:                                     ; preds = %33
  %46 = load %struct._ShellCmds*, %struct._ShellCmds** %3, align 8
  %47 = getelementptr inbounds %struct._ShellCmds, %struct._ShellCmds* %46, i32 1
  store %struct._ShellCmds* %47, %struct._ShellCmds** %3, align 8
  br label %28

; <label>:48:                                     ; preds = %40, %28
  br label %49

; <label>:49:                                     ; preds = %48, %24
  %50 = load %struct._ShellCmds*, %struct._ShellCmds** %3, align 8
  %51 = icmp eq %struct._ShellCmds* %50, null
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  call void @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  br label %53

; <label>:53:                                     ; preds = %52, %49
  %54 = load %struct._ShellCmds*, %struct._ShellCmds** %3, align 8
  %55 = getelementptr inbounds %struct._ShellCmds, %struct._ShellCmds* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp eq i8* %56, null
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %53
  call void @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i32 0, i32 0))
  br label %59

; <label>:59:                                     ; preds = %58, %53
  %60 = call i32 @FreeArgs()
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %61, i8 0, i64 256, i32 16, i1 false)
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0))
  br label %11

; <label>:63:                                     ; preds = %11
  %64 = call i32 (...) @DestroyFS()
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

; <label>:66:                                     ; preds = %63
  call void @puts(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %68

; <label>:67:                                     ; preds = %63
  store i32 0, i32* %1, align 4
  br label %68

; <label>:68:                                     ; preds = %67, %66, %7
  %69 = load i32, i32* %1, align 4
  ret i32 %69
}

declare i32 @InitFS(i32) #1

declare i32 @printf(i8*, ...) #1

declare i32 @readUntil(i8*, i32, i8 signext) #1

declare i32 @strcmp(i8*, i8*) #1

declare i32 @DestroyFS(...) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
