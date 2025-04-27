; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input = type { i32, i32, %struct.pkk*, i16, i16, i8* }
%struct.pkk = type { i32, i32, %struct.pixel* }
%struct.pixel = type { i8, i8, i8 }

@.str = private unnamed_addr constant [32 x i8] c"[ERROR] Failed to parse input.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"[ERROR] Failed to embed your message.\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"[ERROR] Failed to extract the message.\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Secret Text: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"[ERROR] Invalid mode.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @read_n(i32, i8*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i8*, i8** %5, align 8
  store i8* %10, i8** %8, align 8
  store i64 0, i64* %7, align 8
  br label %11

; <label>:11:                                     ; preds = %27, %3
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %30

; <label>:15:                                     ; preds = %11
  %16 = load i32, i32* %4, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @receive(i32 %16, i8* %17, i64 1, i64* %9)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

; <label>:20:                                     ; preds = %15
  %21 = load i64, i64* %9, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

; <label>:23:                                     ; preds = %20, %15
  br label %30

; <label>:24:                                     ; preds = %20
  %25 = load i8*, i8** %8, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %8, align 8
  br label %27

; <label>:27:                                     ; preds = %24
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %7, align 8
  br label %11

; <label>:30:                                     ; preds = %23, %11
  %31 = load i8*, i8** %8, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  %36 = trunc i64 %35 to i32
  ret i32 %36
}

declare i32 @receive(i32, i8*, i64, i64*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @readuntil(i32, i8*, i64, i8 signext) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8 %3, i8* %8, align 1
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  store i64 0, i64* %9, align 8
  br label %13

; <label>:13:                                     ; preds = %36, %4
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %39

; <label>:17:                                     ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = load i8*, i8** %10, align 8
  %20 = call i32 @receive(i32 %18, i8* %19, i64 1, i64* %11)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

; <label>:22:                                     ; preds = %17
  %23 = load i64, i64* %11, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %22, %17
  br label %39

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  %29 = load i8, i8* %27, align 1
  %30 = sext i8 %29 to i32
  %31 = load i8, i8* %8, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

; <label>:34:                                     ; preds = %26
  br label %39

; <label>:35:                                     ; preds = %26
  br label %36

; <label>:36:                                     ; preds = %35
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  br label %13

; <label>:39:                                     ; preds = %34, %25, %13
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 -1
  store i8 0, i8* %41, align 1
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %6, align 8
  %44 = ptrtoint i8* %42 to i64
  %45 = ptrtoint i8* %43 to i64
  %46 = sub i64 %44, %45
  %47 = trunc i64 %46 to i32
  ret i32 %47
}

; Function Attrs: noinline nounwind uwtable
define void @cleanup_input(%struct.input*) #0 {
  %2 = alloca %struct.input*, align 8
  store %struct.input* %0, %struct.input** %2, align 8
  %3 = load %struct.input*, %struct.input** %2, align 8
  %4 = icmp ne %struct.input* %3, null
  br i1 %4, label %5, label %26

; <label>:5:                                      ; preds = %1
  %6 = load %struct.input*, %struct.input** %2, align 8
  %7 = getelementptr inbounds %struct.input, %struct.input* %6, i32 0, i32 2
  %8 = load %struct.pkk*, %struct.pkk** %7, align 8
  %9 = icmp ne %struct.pkk* %8, null
  br i1 %9, label %10, label %14

; <label>:10:                                     ; preds = %5
  %11 = load %struct.input*, %struct.input** %2, align 8
  %12 = getelementptr inbounds %struct.input, %struct.input* %11, i32 0, i32 2
  %13 = load %struct.pkk*, %struct.pkk** %12, align 8
  call void @free_pkk(%struct.pkk* %13)
  br label %14

; <label>:14:                                     ; preds = %10, %5
  %15 = load %struct.input*, %struct.input** %2, align 8
  %16 = getelementptr inbounds %struct.input, %struct.input* %15, i32 0, i32 5
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

; <label>:19:                                     ; preds = %14
  %20 = load %struct.input*, %struct.input** %2, align 8
  %21 = getelementptr inbounds %struct.input, %struct.input* %20, i32 0, i32 5
  %22 = load i8*, i8** %21, align 8
  call void @my_free(i8* %22)
  br label %23

; <label>:23:                                     ; preds = %19, %14
  %24 = load %struct.input*, %struct.input** %2, align 8
  %25 = bitcast %struct.input* %24 to i8*
  call void @my_free(i8* %25)
  br label %26

; <label>:26:                                     ; preds = %23, %1
  ret void
}

declare void @free_pkk(%struct.pkk*) #1

declare void @my_free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define %struct.input* @parse_input() #0 {
  %1 = alloca %struct.input*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i16, align 2
  %4 = alloca %struct.input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.input* null, %struct.input** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = call i8* @my_malloc(i64 32)
  %8 = bitcast i8* %7 to %struct.input*
  store %struct.input* %8, %struct.input** %4, align 8
  %9 = load %struct.input*, %struct.input** %4, align 8
  %10 = icmp eq %struct.input* %9, null
  br i1 %10, label %11, label %12

; <label>:11:                                     ; preds = %0
  br label %226

; <label>:12:                                     ; preds = %0
  %13 = bitcast i32* %2 to i8*
  %14 = call i32 @read_n(i32 0, i8* %13, i64 4)
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 4
  br i1 %16, label %20, label %17

; <label>:17:                                     ; preds = %12
  %18 = load i32, i32* %2, align 4
  %19 = icmp ne i32 %18, -664046383
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17, %12
  br label %226

; <label>:21:                                     ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = zext i32 %22 to i64
  %24 = add i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = bitcast i32* %2 to i8*
  %27 = call i32 @read_n(i32 0, i8* %26, i64 4)
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 4
  br i1 %29, label %30, label %31

; <label>:30:                                     ; preds = %21
  br label %226

; <label>:31:                                     ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = add i64 %33, 4
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %2, align 4
  %37 = load %struct.input*, %struct.input** %4, align 8
  %38 = getelementptr inbounds %struct.input, %struct.input* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = bitcast i32* %2 to i8*
  %40 = call i32 @read_n(i32 0, i8* %39, i64 4)
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 4
  br i1 %42, label %46, label %43

; <label>:43:                                     ; preds = %31
  %44 = load i32, i32* %2, align 4
  %45 = icmp ne i32 %44, 52793398
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %43, %31
  br label %226

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = add i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %5, align 4
  %52 = bitcast i32* %2 to i8*
  %53 = call i32 @read_n(i32 0, i8* %52, i64 4)
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 4
  br i1 %55, label %56, label %57

; <label>:56:                                     ; preds = %47
  br label %226

; <label>:57:                                     ; preds = %47
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = add i64 %59, 4
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %2, align 4
  %63 = load %struct.input*, %struct.input** %4, align 8
  %64 = getelementptr inbounds %struct.input, %struct.input* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.input*, %struct.input** %4, align 8
  %66 = getelementptr inbounds %struct.input, %struct.input* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp ugt i32 %67, 0
  br i1 %68, label %69, label %110

; <label>:69:                                     ; preds = %57
  %70 = load %struct.input*, %struct.input** %4, align 8
  %71 = getelementptr inbounds %struct.input, %struct.input* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ult i32 %72, 1048576
  br i1 %73, label %74, label %110

; <label>:74:                                     ; preds = %69
  %75 = load %struct.input*, %struct.input** %4, align 8
  %76 = getelementptr inbounds %struct.input, %struct.input* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = zext i32 %77 to i64
  %79 = call i8* @my_malloc(i64 %78)
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.input*, %struct.input** %4, align 8
  %82 = getelementptr inbounds %struct.input, %struct.input* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = zext i32 %83 to i64
  %85 = call i32 @read_n(i32 0, i8* %80, i64 %84)
  %86 = load %struct.input*, %struct.input** %4, align 8
  %87 = getelementptr inbounds %struct.input, %struct.input* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %85, %88
  br i1 %89, label %90, label %91

; <label>:90:                                     ; preds = %74
  br label %226

; <label>:91:                                     ; preds = %74
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.input*, %struct.input** %4, align 8
  %94 = getelementptr inbounds %struct.input, %struct.input* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call %struct.pkk* @parse_pkk(i8* %92, i32 %95)
  %97 = load %struct.input*, %struct.input** %4, align 8
  %98 = getelementptr inbounds %struct.input, %struct.input* %97, i32 0, i32 2
  store %struct.pkk* %96, %struct.pkk** %98, align 8
  %99 = load %struct.input*, %struct.input** %4, align 8
  %100 = getelementptr inbounds %struct.input, %struct.input* %99, i32 0, i32 2
  %101 = load %struct.pkk*, %struct.pkk** %100, align 8
  %102 = icmp eq %struct.pkk* %101, null
  br i1 %102, label %103, label %104

; <label>:103:                                    ; preds = %91
  br label %226

; <label>:104:                                    ; preds = %91
  %105 = load %struct.input*, %struct.input** %4, align 8
  %106 = getelementptr inbounds %struct.input, %struct.input* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %5, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

; <label>:110:                                    ; preds = %104, %69, %57
  %111 = bitcast i32* %2 to i8*
  %112 = call i32 @read_n(i32 0, i8* %111, i64 4)
  %113 = sext i32 %112 to i64
  %114 = icmp ne i64 %113, 4
  br i1 %114, label %118, label %115

; <label>:115:                                    ; preds = %110
  %116 = load i32, i32* %2, align 4
  %117 = icmp ne i32 %116, -1148868836
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %115, %110
  br label %226

; <label>:119:                                    ; preds = %115
  %120 = load i32, i32* %5, align 4
  %121 = zext i32 %120 to i64
  %122 = add i64 %121, 4
  %123 = trunc i64 %122 to i32
  store i32 %123, i32* %5, align 4
  %124 = bitcast i16* %3 to i8*
  %125 = call i32 @read_n(i32 0, i8* %124, i64 2)
  %126 = sext i32 %125 to i64
  %127 = icmp ne i64 %126, 2
  br i1 %127, label %128, label %129

; <label>:128:                                    ; preds = %119
  br label %226

; <label>:129:                                    ; preds = %119
  %130 = load i32, i32* %5, align 4
  %131 = zext i32 %130 to i64
  %132 = add i64 %131, 2
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %5, align 4
  %134 = load i16, i16* %3, align 2
  %135 = load %struct.input*, %struct.input** %4, align 8
  %136 = getelementptr inbounds %struct.input, %struct.input* %135, i32 0, i32 3
  store i16 %134, i16* %136, align 8
  %137 = bitcast i32* %2 to i8*
  %138 = call i32 @read_n(i32 0, i8* %137, i64 4)
  %139 = sext i32 %138 to i64
  %140 = icmp ne i64 %139, 4
  br i1 %140, label %144, label %141

; <label>:141:                                    ; preds = %129
  %142 = load i32, i32* %2, align 4
  %143 = icmp ne i32 %142, -1074799127
  br i1 %143, label %144, label %145

; <label>:144:                                    ; preds = %141, %129
  br label %226

; <label>:145:                                    ; preds = %141
  %146 = load i32, i32* %5, align 4
  %147 = zext i32 %146 to i64
  %148 = add i64 %147, 4
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %5, align 4
  %150 = bitcast i16* %3 to i8*
  %151 = call i32 @read_n(i32 0, i8* %150, i64 2)
  %152 = sext i32 %151 to i64
  %153 = icmp ne i64 %152, 2
  br i1 %153, label %154, label %155

; <label>:154:                                    ; preds = %145
  br label %226

; <label>:155:                                    ; preds = %145
  %156 = load i32, i32* %5, align 4
  %157 = zext i32 %156 to i64
  %158 = add i64 %157, 2
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %5, align 4
  %160 = load i16, i16* %3, align 2
  %161 = load %struct.input*, %struct.input** %4, align 8
  %162 = getelementptr inbounds %struct.input, %struct.input* %161, i32 0, i32 4
  store i16 %160, i16* %162, align 2
  %163 = load %struct.input*, %struct.input** %4, align 8
  %164 = getelementptr inbounds %struct.input, %struct.input* %163, i32 0, i32 4
  %165 = load i16, i16* %164, align 2
  %166 = zext i16 %165 to i32
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %204

; <label>:168:                                    ; preds = %155
  %169 = load %struct.input*, %struct.input** %4, align 8
  %170 = getelementptr inbounds %struct.input, %struct.input* %169, i32 0, i32 4
  %171 = load i16, i16* %170, align 2
  %172 = zext i16 %171 to i32
  %173 = icmp sgt i32 %172, 1000
  br i1 %173, label %174, label %175

; <label>:174:                                    ; preds = %168
  br label %226

; <label>:175:                                    ; preds = %168
  %176 = load %struct.input*, %struct.input** %4, align 8
  %177 = getelementptr inbounds %struct.input, %struct.input* %176, i32 0, i32 4
  %178 = load i16, i16* %177, align 2
  %179 = zext i16 %178 to i64
  %180 = call i8* @my_malloc(i64 %179)
  %181 = load %struct.input*, %struct.input** %4, align 8
  %182 = getelementptr inbounds %struct.input, %struct.input* %181, i32 0, i32 5
  store i8* %180, i8** %182, align 8
  %183 = load %struct.input*, %struct.input** %4, align 8
  %184 = getelementptr inbounds %struct.input, %struct.input* %183, i32 0, i32 5
  %185 = load i8*, i8** %184, align 8
  %186 = load %struct.input*, %struct.input** %4, align 8
  %187 = getelementptr inbounds %struct.input, %struct.input* %186, i32 0, i32 4
  %188 = load i16, i16* %187, align 2
  %189 = zext i16 %188 to i64
  %190 = call i32 @read_n(i32 0, i8* %185, i64 %189)
  %191 = load %struct.input*, %struct.input** %4, align 8
  %192 = getelementptr inbounds %struct.input, %struct.input* %191, i32 0, i32 4
  %193 = load i16, i16* %192, align 2
  %194 = zext i16 %193 to i32
  %195 = icmp ne i32 %190, %194
  br i1 %195, label %196, label %197

; <label>:196:                                    ; preds = %175
  br label %226

; <label>:197:                                    ; preds = %175
  %198 = load %struct.input*, %struct.input** %4, align 8
  %199 = getelementptr inbounds %struct.input, %struct.input* %198, i32 0, i32 4
  %200 = load i16, i16* %199, align 2
  %201 = zext i16 %200 to i32
  %202 = load i32, i32* %5, align 4
  %203 = add i32 %202, %201
  store i32 %203, i32* %5, align 4
  br label %204

; <label>:204:                                    ; preds = %197, %155
  %205 = bitcast i32* %2 to i8*
  %206 = call i32 @read_n(i32 0, i8* %205, i64 4)
  %207 = sext i32 %206 to i64
  %208 = icmp ne i64 %207, 4
  br i1 %208, label %212, label %209

; <label>:209:                                    ; preds = %204
  %210 = load i32, i32* %2, align 4
  %211 = icmp ne i32 %210, -1419375888
  br i1 %211, label %212, label %213

; <label>:212:                                    ; preds = %209, %204
  br label %226

; <label>:213:                                    ; preds = %209
  %214 = load i32, i32* %5, align 4
  %215 = zext i32 %214 to i64
  %216 = add i64 %215, 4
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %5, align 4
  %218 = load i32, i32* %5, align 4
  %219 = load %struct.input*, %struct.input** %4, align 8
  %220 = getelementptr inbounds %struct.input, %struct.input* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %218, %221
  br i1 %222, label %223, label %224

; <label>:223:                                    ; preds = %213
  br label %226

; <label>:224:                                    ; preds = %213
  %225 = load %struct.input*, %struct.input** %4, align 8
  store %struct.input* %225, %struct.input** %1, align 8
  br label %228

; <label>:226:                                    ; preds = %223, %212, %196, %174, %154, %144, %128, %118, %103, %90, %56, %46, %30, %20, %11
  %227 = load %struct.input*, %struct.input** %4, align 8
  call void @cleanup_input(%struct.input* %227)
  store %struct.input* null, %struct.input** %1, align 8
  br label %228

; <label>:228:                                    ; preds = %226, %224
  %229 = load %struct.input*, %struct.input** %1, align 8
  ret %struct.input* %229
}

declare i8* @my_malloc(i64) #1

declare %struct.pkk* @parse_pkk(i8*, i32) #1

; Function Attrs: noinline nounwind uwtable
define i32 @embed_text(%struct.pkk*, i8*, i16 zeroext) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pkk*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  store %struct.pkk* %0, %struct.pkk** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16 %2, i16* %7, align 2
  %16 = load %struct.pkk*, %struct.pkk** %5, align 8
  %17 = icmp ne %struct.pkk* %16, null
  br i1 %17, label %18, label %133

; <label>:18:                                     ; preds = %3
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %133

; <label>:21:                                     ; preds = %18
  %22 = load %struct.pkk*, %struct.pkk** %5, align 8
  %23 = getelementptr inbounds %struct.pkk, %struct.pkk* %22, i32 0, i32 2
  %24 = load %struct.pixel*, %struct.pixel** %23, align 8
  %25 = icmp ne %struct.pixel* %24, null
  br i1 %25, label %26, label %133

; <label>:26:                                     ; preds = %21
  %27 = load %struct.pkk*, %struct.pkk** %5, align 8
  %28 = getelementptr inbounds %struct.pkk, %struct.pkk* %27, i32 0, i32 2
  %29 = load %struct.pixel*, %struct.pixel** %28, align 8
  %30 = bitcast %struct.pixel* %29 to i8*
  store i8* %30, i8** %11, align 8
  %31 = load i16, i16* %7, align 2
  %32 = zext i16 %31 to i64
  %33 = add i64 10, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.pkk*, %struct.pkk** %5, align 8
  %36 = getelementptr inbounds %struct.pkk, %struct.pkk* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pkk*, %struct.pkk** %5, align 8
  %39 = getelementptr inbounds %struct.pkk, %struct.pkk* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = mul i32 %37, %40
  %42 = zext i32 %41 to i64
  %43 = mul i64 %42, 3
  %44 = udiv i64 %43, 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %48, label %49

; <label>:48:                                     ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %134

; <label>:49:                                     ; preds = %26
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = call i8* @my_malloc(i64 %51)
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = icmp eq i8* %53, null
  br i1 %54, label %55, label %56

; <label>:55:                                     ; preds = %49
  store i32 -1, i32* %4, align 4
  br label %134

; <label>:56:                                     ; preds = %49
  %57 = load i8*, i8** %9, align 8
  store i8* %57, i8** %10, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = bitcast i8* %58 to i32*
  store i32 -1249692730, i32* %59, align 4
  %60 = load i8*, i8** %10, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 4
  store i8* %61, i8** %10, align 8
  %62 = load i16, i16* %7, align 2
  %63 = load i8*, i8** %10, align 8
  %64 = bitcast i8* %63 to i16*
  store i16 %62, i16* %64, align 2
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 2
  store i8* %66, i8** %10, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i16, i16* %7, align 2
  %70 = zext i16 %69 to i64
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %67, i8* %68, i64 %70, i32 1, i1 false)
  %71 = load i16, i16* %7, align 2
  %72 = zext i16 %71 to i32
  %73 = load i8*, i8** %10, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %73, i64 %74
  store i8* %75, i8** %10, align 8
  %76 = load i8*, i8** %10, align 8
  %77 = bitcast i8* %76 to i32*
  store i32 84385816, i32* %77, align 4
  store i32 0, i32* %12, align 4
  br label %78

; <label>:78:                                     ; preds = %129, %56
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %132

; <label>:82:                                     ; preds = %78
  %83 = load i8*, i8** %9, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  store i8 %87, i8* %14, align 1
  store i32 1, i32* %13, align 4
  br label %88

; <label>:88:                                     ; preds = %125, %82
  %89 = load i32, i32* %13, align 4
  %90 = icmp sle i32 %89, 8
  br i1 %90, label %91, label %128

; <label>:91:                                     ; preds = %88
  %92 = load i8*, i8** %11, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = and i32 %94, 1
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i8, i8* %14, align 1
  %98 = sext i8 %97 to i32
  %99 = load i32, i32* %13, align 4
  %100 = sub nsw i32 8, %99
  %101 = ashr i32 %98, %100
  %102 = and i32 %101, 1
  %103 = icmp ne i32 %96, %102
  br i1 %103, label %104, label %122

; <label>:104:                                    ; preds = %91
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

; <label>:107:                                    ; preds = %104
  %108 = load i8*, i8** %11, align 8
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = and i32 %110, -2
  %112 = trunc i32 %111 to i8
  %113 = load i8*, i8** %11, align 8
  store i8 %112, i8* %113, align 1
  br label %121

; <label>:114:                                    ; preds = %104
  %115 = load i8*, i8** %11, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = or i32 %117, 1
  %119 = trunc i32 %118 to i8
  %120 = load i8*, i8** %11, align 8
  store i8 %119, i8* %120, align 1
  br label %121

; <label>:121:                                    ; preds = %114, %107
  br label %122

; <label>:122:                                    ; preds = %121, %91
  %123 = load i8*, i8** %11, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %11, align 8
  br label %125

; <label>:125:                                    ; preds = %122
  %126 = load i32, i32* %13, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %13, align 4
  br label %88

; <label>:128:                                    ; preds = %88
  br label %129

; <label>:129:                                    ; preds = %128
  %130 = load i32, i32* %12, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %12, align 4
  br label %78

; <label>:132:                                    ; preds = %78
  store i32 0, i32* %4, align 4
  br label %134

; <label>:133:                                    ; preds = %21, %18, %3
  store i32 -1, i32* %4, align 4
  br label %134

; <label>:134:                                    ; preds = %133, %132, %55, %48
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind uwtable
define signext i8 @recover_byte(i8**) #0 {
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store i8** %0, i8*** %2, align 8
  store i8 0, i8* %4, align 1
  store i32 0, i32* %3, align 4
  br label %6

; <label>:6:                                      ; preds = %27, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp slt i32 %7, 8
  br i1 %8, label %9, label %30

; <label>:9:                                      ; preds = %6
  %10 = load i8, i8* %4, align 1
  %11 = sext i8 %10 to i32
  %12 = shl i32 %11, 1
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %4, align 1
  %14 = load i8**, i8*** %2, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = and i32 %17, 1
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i8, i8* %4, align 1
  %21 = sext i8 %20 to i32
  %22 = or i32 %21, %19
  %23 = trunc i32 %22 to i8
  store i8 %23, i8* %4, align 1
  %24 = load i8**, i8*** %2, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %24, align 8
  br label %27

; <label>:27:                                     ; preds = %9
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %6

; <label>:30:                                     ; preds = %6
  %31 = load i8, i8* %4, align 1
  ret i8 %31
}

; Function Attrs: noinline nounwind uwtable
define i32 @extract_text(%struct.pkk*, i8*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pkk*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  store %struct.pkk* %0, %struct.pkk** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.pkk*, %struct.pkk** %4, align 8
  %13 = icmp ne %struct.pkk* %12, null
  br i1 %13, label %14, label %113

; <label>:14:                                     ; preds = %2
  %15 = load i8*, i8** %5, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %17, label %113

; <label>:17:                                     ; preds = %14
  %18 = load %struct.pkk*, %struct.pkk** %4, align 8
  %19 = getelementptr inbounds %struct.pkk, %struct.pkk* %18, i32 0, i32 2
  %20 = load %struct.pixel*, %struct.pixel** %19, align 8
  %21 = icmp ne %struct.pixel* %20, null
  br i1 %21, label %22, label %113

; <label>:22:                                     ; preds = %17
  store i32 0, i32* %10, align 4
  %23 = load %struct.pkk*, %struct.pkk** %4, align 8
  %24 = getelementptr inbounds %struct.pkk, %struct.pkk* %23, i32 0, i32 2
  %25 = load %struct.pixel*, %struct.pixel** %24, align 8
  %26 = bitcast %struct.pixel* %25 to i8*
  store i8* %26, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %27

; <label>:27:                                     ; preds = %43, %22
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %46

; <label>:30:                                     ; preds = %27
  %31 = call signext i8 @recover_byte(i8** %7)
  store i8 %31, i8* %6, align 1
  %32 = load i8, i8* %6, align 1
  %33 = sext i8 %32 to i32
  %34 = load i32, i32* %8, align 4
  %35 = mul nsw i32 8, %34
  %36 = shl i32 %33, %35
  %37 = load i32, i32* %8, align 4
  %38 = mul nsw i32 8, %37
  %39 = shl i32 255, %38
  %40 = and i32 %36, %39
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

; <label>:43:                                     ; preds = %30
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %27

; <label>:46:                                     ; preds = %27
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, -1249692730
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %114

; <label>:50:                                     ; preds = %46
  store i32 0, i32* %8, align 4
  br label %51

; <label>:51:                                     ; preds = %69, %50
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %72

; <label>:54:                                     ; preds = %51
  %55 = call signext i8 @recover_byte(i8** %7)
  store i8 %55, i8* %6, align 1
  %56 = load i8, i8* %6, align 1
  %57 = sext i8 %56 to i32
  %58 = load i32, i32* %8, align 4
  %59 = mul nsw i32 8, %58
  %60 = shl i32 %57, %59
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 8, %61
  %63 = shl i32 255, %62
  %64 = and i32 %60, %63
  %65 = load i16, i16* %11, align 2
  %66 = sext i16 %65 to i32
  %67 = or i32 %66, %64
  %68 = trunc i32 %67 to i16
  store i16 %68, i16* %11, align 2
  br label %69

; <label>:69:                                     ; preds = %54
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %51

; <label>:72:                                     ; preds = %51
  store i32 0, i32* %8, align 4
  br label %73

; <label>:73:                                     ; preds = %85, %72
  %74 = load i32, i32* %8, align 4
  %75 = load i16, i16* %11, align 2
  %76 = sext i16 %75 to i32
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %88

; <label>:78:                                     ; preds = %73
  %79 = call signext i8 @recover_byte(i8** %7)
  store i8 %79, i8* %6, align 1
  %80 = load i8, i8* %6, align 1
  %81 = load i8*, i8** %5, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  store i8 %80, i8* %84, align 1
  br label %85

; <label>:85:                                     ; preds = %78
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  br label %73

; <label>:88:                                     ; preds = %73
  store i32 0, i32* %10, align 4
  store i32 0, i32* %8, align 4
  br label %89

; <label>:89:                                     ; preds = %105, %88
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 4
  br i1 %91, label %92, label %108

; <label>:92:                                     ; preds = %89
  %93 = call signext i8 @recover_byte(i8** %7)
  store i8 %93, i8* %6, align 1
  %94 = load i8, i8* %6, align 1
  %95 = sext i8 %94 to i32
  %96 = load i32, i32* %8, align 4
  %97 = mul nsw i32 8, %96
  %98 = shl i32 %95, %97
  %99 = load i32, i32* %8, align 4
  %100 = mul nsw i32 8, %99
  %101 = shl i32 255, %100
  %102 = and i32 %98, %101
  %103 = load i32, i32* %10, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %10, align 4
  br label %105

; <label>:105:                                    ; preds = %92
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %89

; <label>:108:                                    ; preds = %89
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 84385816
  br i1 %110, label %111, label %112

; <label>:111:                                    ; preds = %108
  store i32 -1, i32* %3, align 4
  br label %114

; <label>:112:                                    ; preds = %108
  store i32 0, i32* %3, align 4
  br label %114

; <label>:113:                                    ; preds = %17, %14, %2
  store i32 -1, i32* %3, align 4
  br label %114

; <label>:114:                                    ; preds = %113, %112, %111, %49
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [1000 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.input*, align 8
  store i32 0, i32* %1, align 4
  %6 = call %struct.input* @parse_input()
  store %struct.input* %6, %struct.input** %5, align 8
  %7 = icmp eq %struct.input* %6, null
  br i1 %7, label %8, label %10

; <label>:8:                                      ; preds = %0
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i32 0, i32 0))
  store i32 -1, i32* %1, align 4
  br label %61

; <label>:10:                                     ; preds = %0
  %11 = load %struct.input*, %struct.input** %5, align 8
  %12 = getelementptr inbounds %struct.input, %struct.input* %11, i32 0, i32 3
  %13 = load i16, i16* %12, align 8
  %14 = zext i16 %13 to i32
  switch i32 %14, label %57 [
    i32 4919, label %15
    i32 29489, label %44
  ]

; <label>:15:                                     ; preds = %10
  %16 = load %struct.input*, %struct.input** %5, align 8
  %17 = getelementptr inbounds %struct.input, %struct.input* %16, i32 0, i32 2
  %18 = load %struct.pkk*, %struct.pkk** %17, align 8
  %19 = load %struct.input*, %struct.input** %5, align 8
  %20 = getelementptr inbounds %struct.input, %struct.input* %19, i32 0, i32 5
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.input*, %struct.input** %5, align 8
  %23 = getelementptr inbounds %struct.input, %struct.input* %22, i32 0, i32 4
  %24 = load i16, i16* %23, align 2
  %25 = call i32 @embed_text(%struct.pkk* %18, i8* %21, i16 zeroext %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

; <label>:27:                                     ; preds = %15
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i32 0, i32 0))
  br label %43

; <label>:29:                                     ; preds = %15
  %30 = load %struct.input*, %struct.input** %5, align 8
  %31 = getelementptr inbounds %struct.input, %struct.input* %30, i32 0, i32 2
  %32 = load %struct.pkk*, %struct.pkk** %31, align 8
  %33 = call i8* @output_pkk(%struct.pkk* %32, i32* %3)
  store i8* %33, i8** %4, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %42

; <label>:36:                                     ; preds = %29
  %37 = load i8*, i8** %4, align 8
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = call i32 @transmit(i32 1, i8* %37, i64 %39, i64* null)
  %41 = load i8*, i8** %4, align 8
  call void @my_free(i8* %41)
  br label %42

; <label>:42:                                     ; preds = %36, %29
  br label %43

; <label>:43:                                     ; preds = %42, %27
  br label %59

; <label>:44:                                     ; preds = %10
  %45 = load %struct.input*, %struct.input** %5, align 8
  %46 = getelementptr inbounds %struct.input, %struct.input* %45, i32 0, i32 2
  %47 = load %struct.pkk*, %struct.pkk** %46, align 8
  %48 = getelementptr inbounds [1000 x i8], [1000 x i8]* %2, i32 0, i32 0
  %49 = call i32 @extract_text(%struct.pkk* %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

; <label>:51:                                     ; preds = %44
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i32 0, i32 0))
  br label %56

; <label>:53:                                     ; preds = %44
  %54 = getelementptr inbounds [1000 x i8], [1000 x i8]* %2, i32 0, i32 0
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i8* %54)
  br label %56

; <label>:56:                                     ; preds = %53, %51
  br label %59

; <label>:57:                                     ; preds = %10
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  br label %59

; <label>:59:                                     ; preds = %57, %56, %43
  %60 = load %struct.input*, %struct.input** %5, align 8
  call void @cleanup_input(%struct.input* %60)
  store i32 0, i32* %1, align 4
  br label %61

; <label>:61:                                     ; preds = %59, %8
  %62 = load i32, i32* %1, align 4
  ret i32 %62
}

declare i32 @printf(i8*, ...) #1

declare i8* @output_pkk(%struct.pkk*, i32*) #1

declare i32 @transmit(i32, i8*, i64, i64*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
