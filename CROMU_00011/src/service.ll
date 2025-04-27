; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.setArray = type { %struct.setArray*, %struct.setArray*, [16 x i8], i32, [15 x %struct.setElement*] }
%struct.setElement = type { i8*, i32 }
%struct.splitCommand = type { i8*, i8, i8* }

@root = global %struct.setArray* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"!!Error parsing commandline\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c".l\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"setx = |\22data\22, sety|\09Initialize a set\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"setx = seta+setb\09union\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"setx = seta^setb\09intersect\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"setx = seta-setb\09set difference\0A\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"setx = seta~setb\09symmetric difference\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"seta @@ setb\09\09subset. Returns TRUE or FALSE\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c".h\09\09Print this menu\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c".l\09\09Exit the program\0A\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c".p\09\09Print sets and their elements\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c".ps <setvar>\09Print an expanded set\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c".ps\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"!!Failed to find set: @s\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"@s\0A\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c".p\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"!!Unrecognized command: @s\0A\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"!!Additional variable expected\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"!!Invalid set data length\0A\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"!!Cannot have a non-existant set as an element\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"!!Failed to create element\0A\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"!!Elements must be unique\0A\00", align 1
@.str.24 = private unnamed_addr constant [17 x i8] c"Failed to ad el\0A\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"Failed to cel\0A\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"!!Malformed set\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"!!Invalid set name length\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"!!Create element failed\0A\00", align 1
@.str.29 = private unnamed_addr constant [25 x i8] c"!!Failed to add element\0A\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"!!Improperly formated set\0A\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"!!Invalid character\0A\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"!!Failed to allocate newset\0A\00", align 1
@.str.33 = private unnamed_addr constant [17 x i8] c"!!Unknown error\0A\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"!!Error adding element in intersect\0A\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"!!Failed to allocate new nset\0A\00", align 1
@.str.36 = private unnamed_addr constant [34 x i8] c"!!Failed to add element in union\0A\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"!!!Error in intersect\0A\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"!!!Failed to add element in intersect\0A\00", align 1
@.str.39 = private unnamed_addr constant [22 x i8] c"!!Set parsing failed\0A\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"!!Too many sets\0A\00", align 1
@.str.41 = private unnamed_addr constant [31 x i8] c"!!Only one operation allowed.\0A\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"!!Nonexistant set: @s\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"!!Invalid sets\0A\00", align 1
@.str.44 = private unnamed_addr constant [15 x i8] c"!!Copy failed\0A\00", align 1
@.str.45 = private unnamed_addr constant [31 x i8] c"!!A set cannot contain itself\0A\00", align 1
@.str.46 = private unnamed_addr constant [22 x i8] c"!!Error parsing sets\0A\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"!!Failed to parse left set\0A\00", align 1
@.str.48 = private unnamed_addr constant [29 x i8] c"!!Failed to parse right set\0A\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"FALSE\0A\00", align 1
@.str.50 = private unnamed_addr constant [6 x i8] c"TRUE\0A\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"> \00", align 1

; Function Attrs: noinline nounwind uwtable
define %struct.splitCommand* @parse_command_line(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.splitCommand*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.splitCommand* null, %struct.splitCommand** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %8

; <label>:7:                                      ; preds = %1
  br label %231

; <label>:8:                                      ; preds = %1
  %9 = bitcast %struct.splitCommand** %3 to i8**
  %10 = call i32 @allocate(i64 24, i32 0, i8** %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %8
  store %struct.splitCommand* null, %struct.splitCommand** %3, align 8
  br label %231

; <label>:13:                                     ; preds = %8
  %14 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %15 = bitcast %struct.splitCommand* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* %15, i8 0, i64 24, i32 8, i1 false)
  br label %16

; <label>:16:                                     ; preds = %216, %13
  %17 = load i8*, i8** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

; <label>:24:                                     ; preds = %16
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 256
  br label %27

; <label>:27:                                     ; preds = %24, %16
  %28 = phi i1 [ false, %16 ], [ %26, %24 ]
  br i1 %28, label %29, label %219

; <label>:29:                                     ; preds = %27
  %30 = load i8*, i8** %2, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 61
  br i1 %36, label %45, label %37

; <label>:37:                                     ; preds = %29
  %38 = load i8*, i8** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 64
  br i1 %44, label %45, label %63

; <label>:45:                                     ; preds = %37, %29
  %46 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %47 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %45
  br label %226

; <label>:51:                                     ; preds = %45
  %52 = load i8*, i8** %2, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8, i8* %52, i64 %54
  %56 = load i8, i8* %55, align 1
  %57 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %58 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %57, i32 0, i32 1
  store i8 %56, i8* %58, align 8
  %59 = load i8*, i8** %2, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8 0, i8* %62, align 1
  br label %216

; <label>:63:                                     ; preds = %37
  %64 = load i8*, i8** %2, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp eq i32 %69, 32
  br i1 %70, label %71, label %82

; <label>:71:                                     ; preds = %63
  %72 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %73 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %81

; <label>:76:                                     ; preds = %71
  %77 = load i8*, i8** %2, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  store i8 0, i8* %80, align 1
  br label %81

; <label>:81:                                     ; preds = %76, %71
  br label %215

; <label>:82:                                     ; preds = %63
  %83 = load i8*, i8** %2, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = call i32 @isalnum(i32 %88) #5
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %123

; <label>:91:                                     ; preds = %82
  %92 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %93 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %103

; <label>:96:                                     ; preds = %91
  %97 = load i8*, i8** %2, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %102 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  br label %122

; <label>:103:                                    ; preds = %91
  %104 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %105 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = icmp eq i8* %106, null
  br i1 %107, label %108, label %121

; <label>:108:                                    ; preds = %103
  %109 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %110 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %109, i32 0, i32 1
  %111 = load i8, i8* %110, align 8
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %121

; <label>:114:                                    ; preds = %108
  %115 = load i8*, i8** %2, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %120 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  br label %121

; <label>:121:                                    ; preds = %114, %108, %103
  br label %122

; <label>:122:                                    ; preds = %121, %96
  br label %214

; <label>:123:                                    ; preds = %82
  %124 = load i8*, i8** %2, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8, i8* %124, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp eq i32 %129, 124
  br i1 %130, label %187, label %131

; <label>:131:                                    ; preds = %123
  %132 = load i8*, i8** %2, align 8
  %133 = load i32, i32* %4, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp eq i32 %137, 45
  br i1 %138, label %187, label %139

; <label>:139:                                    ; preds = %131
  %140 = load i8*, i8** %2, align 8
  %141 = load i32, i32* %4, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %140, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 34
  br i1 %146, label %187, label %147

; <label>:147:                                    ; preds = %139
  %148 = load i8*, i8** %2, align 8
  %149 = load i32, i32* %4, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i8, i8* %148, i64 %150
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 44
  br i1 %154, label %187, label %155

; <label>:155:                                    ; preds = %147
  %156 = load i8*, i8** %2, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i8, i8* %156, i64 %158
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %161, 42
  br i1 %162, label %187, label %163

; <label>:163:                                    ; preds = %155
  %164 = load i8*, i8** %2, align 8
  %165 = load i32, i32* %4, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %164, i64 %166
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp eq i32 %169, 94
  br i1 %170, label %187, label %171

; <label>:171:                                    ; preds = %163
  %172 = load i8*, i8** %2, align 8
  %173 = load i32, i32* %4, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8, i8* %172, i64 %174
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 43
  br i1 %178, label %187, label %179

; <label>:179:                                    ; preds = %171
  %180 = load i8*, i8** %2, align 8
  %181 = load i32, i32* %4, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp eq i32 %185, 126
  br i1 %186, label %187, label %212

; <label>:187:                                    ; preds = %179, %171, %163, %155, %147, %139, %131, %123
  %188 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %189 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = icmp eq i8* %190, null
  br i1 %191, label %198, label %192

; <label>:192:                                    ; preds = %187
  %193 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %194 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %193, i32 0, i32 1
  %195 = load i8, i8* %194, align 8
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199

; <label>:198:                                    ; preds = %192, %187
  br label %226

; <label>:199:                                    ; preds = %192
  %200 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %201 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %200, i32 0, i32 2
  %202 = load i8*, i8** %201, align 8
  %203 = icmp eq i8* %202, null
  br i1 %203, label %204, label %211

; <label>:204:                                    ; preds = %199
  %205 = load i8*, i8** %2, align 8
  %206 = load i32, i32* %4, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %205, i64 %207
  %209 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %210 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %209, i32 0, i32 2
  store i8* %208, i8** %210, align 8
  br label %211

; <label>:211:                                    ; preds = %204, %199
  br label %213

; <label>:212:                                    ; preds = %179
  br label %226

; <label>:213:                                    ; preds = %211
  br label %214

; <label>:214:                                    ; preds = %213, %122
  br label %215

; <label>:215:                                    ; preds = %214, %81
  br label %216

; <label>:216:                                    ; preds = %215, %51
  %217 = load i32, i32* %4, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %4, align 4
  br label %16

; <label>:219:                                    ; preds = %27
  %220 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %221 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %220, i32 0, i32 0
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %225

; <label>:224:                                    ; preds = %219
  br label %231

; <label>:225:                                    ; preds = %219
  br label %226

; <label>:226:                                    ; preds = %225, %212, %198, %50
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i32 0, i32 0))
  %228 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %229 = bitcast %struct.splitCommand* %228 to i8*
  %230 = call i32 @deallocate(i8* %229, i64 24)
  store %struct.splitCommand* null, %struct.splitCommand** %3, align 8
  br label %231

; <label>:231:                                    ; preds = %226, %224, %12, %7
  %232 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  ret %struct.splitCommand* %232
}

declare i32 @allocate(i64, i32, i8**) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #3

declare i32 @printf(i8*, ...) #1

declare i32 @deallocate(i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define void @print_sets() #0 {
  %1 = alloca %struct.setArray*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.setArray*, %struct.setArray** @root, align 8
  store %struct.setArray* %3, %struct.setArray** %1, align 8
  store i32 0, i32* %2, align 4
  br label %4

; <label>:4:                                      ; preds = %16, %0
  %5 = load %struct.setArray*, %struct.setArray** %1, align 8
  %6 = icmp ne %struct.setArray* %5, null
  br i1 %6, label %7, label %17

; <label>:7:                                      ; preds = %4
  %8 = load %struct.setArray*, %struct.setArray** %1, align 8
  call void @print_set(%struct.setArray* %8)
  %9 = load %struct.setArray*, %struct.setArray** %1, align 8
  %10 = getelementptr inbounds %struct.setArray, %struct.setArray* %9, i32 0, i32 0
  %11 = load %struct.setArray*, %struct.setArray** %10, align 8
  store %struct.setArray* %11, %struct.setArray** %1, align 8
  %12 = load %struct.setArray*, %struct.setArray** %1, align 8
  %13 = load %struct.setArray*, %struct.setArray** @root, align 8
  %14 = icmp eq %struct.setArray* %12, %13
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %7
  br label %17

; <label>:16:                                     ; preds = %7
  br label %4

; <label>:17:                                     ; preds = %15, %4
  ret void
}

declare void @print_set(%struct.setArray*) #1

; Function Attrs: noinline nounwind uwtable
define i32 @copymem(i8*, i8*, i32, i32) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %10

; <label>:10:                                     ; preds = %14, %4
  %11 = load i32, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %28

; <label>:14:                                     ; preds = %10
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = load i8*, i8** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  store i8 %19, i8* %23, align 1
  %24 = load i32, i32* %7, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %9, align 4
  br label %10

; <label>:28:                                     ; preds = %10
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind uwtable
define i8* @print_subsets(%struct.setArray*, i32) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.setArray*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3200 x i8], align 16
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i8*], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.setArray*, align 8
  store %struct.setArray* %0, %struct.setArray** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* null, i8** %7, align 8
  %12 = bitcast [2 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* %12, i8 0, i64 16, i32 16, i1 false)
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.setArray*, %struct.setArray** %4, align 8
  %14 = icmp eq %struct.setArray* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %2
  store i8* null, i8** %3, align 8
  br label %171

; <label>:16:                                     ; preds = %2
  %17 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %17, i8 0, i64 3200, i32 16, i1 false)
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i32 0, i32 0
  %22 = load %struct.setArray*, %struct.setArray** %4, align 8
  %23 = getelementptr inbounds %struct.setArray, %struct.setArray* %22, i32 0, i32 2
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.setArray*, %struct.setArray** %4, align 8
  %27 = getelementptr inbounds %struct.setArray, %struct.setArray* %26, i32 0, i32 2
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %27, i32 0, i32 0
  %29 = call i64 @strlen(i8* %28)
  %30 = trunc i64 %29 to i32
  %31 = call i32 @copymem(i8* %21, i8* %24, i32 %25, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i32 0, i32 0
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @copymem(i8* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i32 %33, i32 3)
  store i32 %34, i32* %9, align 4
  br label %35

; <label>:35:                                     ; preds = %20, %16
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i64 0, i64 %38
  store i8 124, i8* %39, align 1
  store i32 0, i32* %10, align 4
  br label %40

; <label>:40:                                     ; preds = %122, %35
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.setArray*, %struct.setArray** %4, align 8
  %43 = getelementptr inbounds %struct.setArray, %struct.setArray* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %125

; <label>:46:                                     ; preds = %40
  %47 = load %struct.setArray*, %struct.setArray** %4, align 8
  %48 = getelementptr inbounds %struct.setArray, %struct.setArray* %47, i32 0, i32 4
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %48, i64 0, i64 %50
  %52 = load %struct.setElement*, %struct.setElement** %51, align 8
  %53 = getelementptr inbounds %struct.setElement, %struct.setElement* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %83

; <label>:56:                                     ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i64 0, i64 %59
  store i8 34, i8* %60, align 1
  %61 = load %struct.setArray*, %struct.setArray** %4, align 8
  %62 = getelementptr inbounds %struct.setArray, %struct.setArray* %61, i32 0, i32 4
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %62, i64 0, i64 %64
  %66 = load %struct.setElement*, %struct.setElement** %65, align 8
  %67 = getelementptr inbounds %struct.setElement, %struct.setElement* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  store i8* %68, i8** %69, align 16
  %70 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i32 0, i32 0
  %71 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %72 = load i8*, i8** %71, align 16
  %73 = load i32, i32* %9, align 4
  %74 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %75 = load i8*, i8** %74, align 16
  %76 = call i64 @strlen(i8* %75)
  %77 = trunc i64 %76 to i32
  %78 = call i32 @copymem(i8* %70, i8* %72, i32 %73, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i64 0, i64 %81
  store i8 34, i8* %82, align 1
  br label %117

; <label>:83:                                     ; preds = %46
  %84 = load %struct.setArray*, %struct.setArray** %4, align 8
  %85 = getelementptr inbounds %struct.setArray, %struct.setArray* %84, i32 0, i32 4
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %85, i64 0, i64 %87
  %89 = load %struct.setElement*, %struct.setElement** %88, align 8
  %90 = getelementptr inbounds %struct.setElement, %struct.setElement* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call %struct.setArray* @retrieve_set(i8* %91)
  store %struct.setArray* %92, %struct.setArray** %11, align 8
  %93 = load %struct.setArray*, %struct.setArray** %11, align 8
  %94 = call i8* @print_subsets(%struct.setArray* %93, i32 0)
  %95 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  store i8* %94, i8** %95, align 16
  %96 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %97 = load i8*, i8** %96, align 16
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %83
  store i8* null, i8** %7, align 8
  br label %169

; <label>:100:                                    ; preds = %83
  %101 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i32 0, i32 0
  %102 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %103 = load i8*, i8** %102, align 16
  %104 = load i32, i32* %9, align 4
  %105 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %106 = load i8*, i8** %105, align 16
  %107 = call i64 @strlen(i8* %106)
  %108 = trunc i64 %107 to i32
  %109 = call i32 @copymem(i8* %101, i8* %103, i32 %104, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %111 = load i8*, i8** %110, align 16
  %112 = getelementptr inbounds [2 x i8*], [2 x i8*]* %8, i64 0, i64 0
  %113 = load i8*, i8** %112, align 16
  %114 = call i64 @strlen(i8* %113)
  %115 = add i64 %114, 1
  %116 = call i32 @deallocate(i8* %111, i64 %115)
  br label %117

; <label>:117:                                    ; preds = %100, %56
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i64 0, i64 %120
  store i8 44, i8* %121, align 1
  br label %122

; <label>:122:                                    ; preds = %117
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %40

; <label>:125:                                    ; preds = %40
  %126 = load i32, i32* %9, align 4
  %127 = sub nsw i32 %126, 1
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %131, 44
  br i1 %132, label %133, label %141

; <label>:133:                                    ; preds = %125
  %134 = load i32, i32* %9, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i64 0, i64 %136
  store i8 124, i8* %137, align 1
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i64 0, i64 %139
  store i8 0, i8* %140, align 1
  br label %149

; <label>:141:                                    ; preds = %125
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i64 0, i64 %143
  store i8 124, i8* %144, align 1
  %145 = load i32, i32* %9, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i64 0, i64 %147
  store i8 0, i8* %148, align 1
  br label %149

; <label>:149:                                    ; preds = %141, %133
  %150 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i32 0, i32 0
  %151 = call i64 @strlen(i8* %150)
  %152 = add i64 %151, 1
  %153 = bitcast i8** %7 to i8*
  %154 = bitcast i8* %153 to i8**
  %155 = call i32 @allocate(i64 %152, i32 0, i8** %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

; <label>:157:                                    ; preds = %149
  store i8* null, i8** %7, align 8
  br label %169

; <label>:158:                                    ; preds = %149
  %159 = load i8*, i8** %7, align 8
  %160 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i32 0, i32 0
  %161 = call i64 @strlen(i8* %160)
  %162 = add i64 %161, 1
  call void @llvm.memset.p0i8.i64(i8* %159, i8 0, i64 %162, i32 1, i1 false)
  %163 = load i8*, i8** %7, align 8
  %164 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i32 0, i32 0
  %165 = getelementptr inbounds [3200 x i8], [3200 x i8]* %6, i32 0, i32 0
  %166 = call i64 @strlen(i8* %165)
  %167 = trunc i64 %166 to i32
  %168 = call i32 @copymem(i8* %163, i8* %164, i32 0, i32 %167)
  br label %169

; <label>:169:                                    ; preds = %158, %157, %99
  %170 = load i8*, i8** %7, align 8
  store i8* %170, i8** %3, align 8
  br label %171

; <label>:171:                                    ; preds = %169, %15
  %172 = load i8*, i8** %3, align 8
  ret i8* %172
}

declare i64 @strlen(i8*) #1

; Function Attrs: noinline nounwind uwtable
define %struct.setArray* @retrieve_set(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.setArray*, align 8
  store i8* %0, i8** %2, align 8
  store %struct.setArray* null, %struct.setArray** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp eq i8* %4, null
  br i1 %5, label %6, label %7

; <label>:6:                                      ; preds = %1
  br label %30

; <label>:7:                                      ; preds = %1
  %8 = load %struct.setArray*, %struct.setArray** @root, align 8
  store %struct.setArray* %8, %struct.setArray** %3, align 8
  br label %9

; <label>:9:                                      ; preds = %28, %7
  %10 = load %struct.setArray*, %struct.setArray** %3, align 8
  %11 = icmp ne %struct.setArray* %10, null
  br i1 %11, label %12, label %29

; <label>:12:                                     ; preds = %9
  %13 = load i8*, i8** %2, align 8
  %14 = load %struct.setArray*, %struct.setArray** %3, align 8
  %15 = getelementptr inbounds %struct.setArray, %struct.setArray* %14, i32 0, i32 2
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i32 0, i32 0
  %17 = call i32 @strcmp(i8* %13, i8* %16)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %12
  br label %30

; <label>:20:                                     ; preds = %12
  %21 = load %struct.setArray*, %struct.setArray** %3, align 8
  %22 = getelementptr inbounds %struct.setArray, %struct.setArray* %21, i32 0, i32 0
  %23 = load %struct.setArray*, %struct.setArray** %22, align 8
  store %struct.setArray* %23, %struct.setArray** %3, align 8
  %24 = load %struct.setArray*, %struct.setArray** %3, align 8
  %25 = load %struct.setArray*, %struct.setArray** @root, align 8
  %26 = icmp eq %struct.setArray* %24, %25
  br i1 %26, label %27, label %28

; <label>:27:                                     ; preds = %20
  store %struct.setArray* null, %struct.setArray** %3, align 8
  br label %30

; <label>:28:                                     ; preds = %20
  br label %9

; <label>:29:                                     ; preds = %9
  br label %30

; <label>:30:                                     ; preds = %29, %27, %19, %6
  %31 = load %struct.setArray*, %struct.setArray** %3, align 8
  ret %struct.setArray* %31
}

; Function Attrs: noinline nounwind uwtable
define i32 @memcmp(i8*, i8*, i32) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

; <label>:9:                                      ; preds = %41, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %44

; <label>:13:                                     ; preds = %9
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8, i8* %14, i64 %16
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %20, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp ne i32 %19, %25
  br i1 %26, label %27, label %41

; <label>:27:                                     ; preds = %13
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = sub nsw i32 %33, %39
  store i32 %40, i32* %4, align 4
  br label %45

; <label>:41:                                     ; preds = %13
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %9

; <label>:44:                                     ; preds = %9
  store i32 0, i32* %4, align 4
  br label %45

; <label>:45:                                     ; preds = %44, %27
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

; Function Attrs: noinline nounwind uwtable
define void @exec_command(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.setArray*, align 8
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.setArray* null, %struct.setArray** %5, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  br label %95

; <label>:9:                                      ; preds = %1
  %10 = load i8*, i8** %2, align 8
  %11 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %9
  call void @_terminate(i32 0) #6
  unreachable

; <label>:14:                                     ; preds = %9
  %15 = load i8*, i8** %2, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0))
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %29

; <label>:18:                                     ; preds = %14
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i32 0, i32 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i32 0, i32 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i32 0, i32 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i32 0, i32 0))
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0))
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i32 0, i32 0))
  br label %93

; <label>:29:                                     ; preds = %14
  %30 = load i8*, i8** %2, align 8
  %31 = call i32 @memcmp(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), i32 3)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %83

; <label>:33:                                     ; preds = %29
  %34 = load i8*, i8** %2, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 3
  store i8* %35, i8** %2, align 8
  br label %36

; <label>:36:                                     ; preds = %41, %33
  %37 = load i8*, i8** %2, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 32
  br i1 %40, label %41, label %44

; <label>:41:                                     ; preds = %36
  %42 = load i8*, i8** %2, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %2, align 8
  br label %36

; <label>:44:                                     ; preds = %36
  br label %45

; <label>:45:                                     ; preds = %54, %44
  %46 = load i8*, i8** %2, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %46, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = call i32 @isalnum(i32 %51) #5
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

; <label>:54:                                     ; preds = %45
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %4, align 4
  br label %45

; <label>:57:                                     ; preds = %45
  %58 = load i8*, i8** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %58, i64 %60
  store i8 0, i8* %61, align 1
  %62 = load i8*, i8** %2, align 8
  %63 = call %struct.setArray* @retrieve_set(i8* %62)
  store %struct.setArray* %63, %struct.setArray** %5, align 8
  %64 = load %struct.setArray*, %struct.setArray** %5, align 8
  %65 = icmp eq %struct.setArray* %64, null
  br i1 %65, label %66, label %69

; <label>:66:                                     ; preds = %57
  %67 = load i8*, i8** %2, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i32 0, i32 0), i8* %67)
  br label %95

; <label>:69:                                     ; preds = %57
  %70 = load %struct.setArray*, %struct.setArray** %5, align 8
  %71 = call i8* @print_subsets(%struct.setArray* %70, i32 1)
  store i8* %71, i8** %3, align 8
  %72 = load i8*, i8** %3, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %82

; <label>:74:                                     ; preds = %69
  %75 = load i8*, i8** %3, align 8
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i32 0, i32 0), i8* %75)
  %77 = load i8*, i8** %3, align 8
  %78 = load i8*, i8** %3, align 8
  %79 = call i64 @strlen(i8* %78)
  %80 = add i64 %79, 1
  %81 = call i32 @deallocate(i8* %77, i64 %80)
  br label %82

; <label>:82:                                     ; preds = %74, %69
  br label %92

; <label>:83:                                     ; preds = %29
  %84 = load i8*, i8** %2, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0))
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

; <label>:87:                                     ; preds = %83
  call void @print_sets()
  br label %91

; <label>:88:                                     ; preds = %83
  %89 = load i8*, i8** %2, align 8
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i8* %89)
  br label %95

; <label>:91:                                     ; preds = %87
  br label %92

; <label>:92:                                     ; preds = %91, %82
  br label %93

; <label>:93:                                     ; preds = %92, %18
  br label %94

; <label>:94:                                     ; preds = %93
  br label %95

; <label>:95:                                     ; preds = %94, %88, %66, %8
  ret void
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noreturn
declare void @_terminate(i32) #4

; Function Attrs: noinline nounwind uwtable
define void @add_set(%struct.setArray*) #0 {
  %2 = alloca %struct.setArray*, align 8
  store %struct.setArray* %0, %struct.setArray** %2, align 8
  %3 = load %struct.setArray*, %struct.setArray** %2, align 8
  %4 = icmp eq %struct.setArray* %3, null
  br i1 %4, label %5, label %6

; <label>:5:                                      ; preds = %1
  br label %34

; <label>:6:                                      ; preds = %1
  %7 = load %struct.setArray*, %struct.setArray** @root, align 8
  %8 = icmp eq %struct.setArray* %7, null
  br i1 %8, label %9, label %17

; <label>:9:                                      ; preds = %6
  %10 = load %struct.setArray*, %struct.setArray** %2, align 8
  store %struct.setArray* %10, %struct.setArray** @root, align 8
  %11 = load %struct.setArray*, %struct.setArray** %2, align 8
  %12 = load %struct.setArray*, %struct.setArray** %2, align 8
  %13 = getelementptr inbounds %struct.setArray, %struct.setArray* %12, i32 0, i32 0
  store %struct.setArray* %11, %struct.setArray** %13, align 8
  %14 = load %struct.setArray*, %struct.setArray** %2, align 8
  %15 = load %struct.setArray*, %struct.setArray** %2, align 8
  %16 = getelementptr inbounds %struct.setArray, %struct.setArray* %15, i32 0, i32 1
  store %struct.setArray* %14, %struct.setArray** %16, align 8
  br label %17

; <label>:17:                                     ; preds = %9, %6
  %18 = load %struct.setArray*, %struct.setArray** @root, align 8
  %19 = load %struct.setArray*, %struct.setArray** %2, align 8
  %20 = getelementptr inbounds %struct.setArray, %struct.setArray* %19, i32 0, i32 0
  store %struct.setArray* %18, %struct.setArray** %20, align 8
  %21 = load %struct.setArray*, %struct.setArray** @root, align 8
  %22 = getelementptr inbounds %struct.setArray, %struct.setArray* %21, i32 0, i32 1
  %23 = load %struct.setArray*, %struct.setArray** %22, align 8
  %24 = load %struct.setArray*, %struct.setArray** %2, align 8
  %25 = getelementptr inbounds %struct.setArray, %struct.setArray* %24, i32 0, i32 1
  store %struct.setArray* %23, %struct.setArray** %25, align 8
  %26 = load %struct.setArray*, %struct.setArray** %2, align 8
  %27 = load %struct.setArray*, %struct.setArray** @root, align 8
  %28 = getelementptr inbounds %struct.setArray, %struct.setArray* %27, i32 0, i32 1
  %29 = load %struct.setArray*, %struct.setArray** %28, align 8
  %30 = getelementptr inbounds %struct.setArray, %struct.setArray* %29, i32 0, i32 0
  store %struct.setArray* %26, %struct.setArray** %30, align 8
  %31 = load %struct.setArray*, %struct.setArray** %2, align 8
  %32 = load %struct.setArray*, %struct.setArray** @root, align 8
  %33 = getelementptr inbounds %struct.setArray, %struct.setArray* %32, i32 0, i32 1
  store %struct.setArray* %31, %struct.setArray** %33, align 8
  br label %34

; <label>:34:                                     ; preds = %17, %5
  ret void
}

; Function Attrs: noinline nounwind uwtable
define %struct.setArray* @parse_set(i8*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.setArray*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.setElement*, align 8
  %9 = alloca %struct.setArray*, align 8
  %10 = alloca [256 x i8], align 16
  store i8* %0, i8** %2, align 8
  store %struct.setArray* null, %struct.setArray** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store %struct.setElement* null, %struct.setElement** %8, align 8
  store %struct.setArray* null, %struct.setArray** %9, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = icmp eq i8* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %1
  br label %275

; <label>:14:                                     ; preds = %1
  %15 = bitcast %struct.setArray** %3 to i8**
  %16 = call i32 @allocate(i64 160, i32 0, i8** %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %14
  store %struct.setArray* null, %struct.setArray** %3, align 8
  br label %275

; <label>:19:                                     ; preds = %14
  %20 = load %struct.setArray*, %struct.setArray** %3, align 8
  %21 = bitcast %struct.setArray* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 160, i32 8, i1 false)
  %22 = load i8*, i8** %2, align 8
  store i8* %22, i8** %4, align 8
  br label %23

; <label>:23:                                     ; preds = %271, %19
  %24 = load i8*, i8** %4, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

; <label>:28:                                     ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 8
  br i1 %30, label %31, label %34

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 2
  br label %34

; <label>:34:                                     ; preds = %31, %28, %23
  %35 = phi i1 [ false, %28 ], [ false, %23 ], [ %33, %31 ]
  br i1 %35, label %36, label %274

; <label>:36:                                     ; preds = %34
  %37 = load i8*, i8** %4, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 124
  br i1 %40, label %41, label %98

; <label>:41:                                     ; preds = %36
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %96 [
    i32 0, label %43
    i32 3, label %44
    i32 5, label %45
    i32 6, label %47
  ]

; <label>:43:                                     ; preds = %41
  store i32 1, i32* %7, align 4
  br label %97

; <label>:44:                                     ; preds = %41
  br label %97

; <label>:45:                                     ; preds = %41
  store i32 8, i32* %7, align 4
  %46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.19, i32 0, i32 0))
  br label %97

; <label>:47:                                     ; preds = %41
  %48 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 256, i32 16, i1 false)
  %49 = load i8*, i8** %4, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = ptrtoint i8* %49 to i64
  %52 = ptrtoint i8* %50 to i64
  %53 = sub i64 %51, %52
  %54 = icmp sgt i64 %53, 10
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %47
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %275

; <label>:57:                                     ; preds = %47
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = call i32 @memcpy(i8* %58, i8* %59, i64 %64)
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  %67 = call %struct.setArray* @retrieve_set(i8* %66)
  store %struct.setArray* %67, %struct.setArray** %9, align 8
  %68 = load %struct.setArray*, %struct.setArray** %9, align 8
  %69 = icmp eq %struct.setArray* %68, null
  br i1 %69, label %70, label %72

; <label>:70:                                     ; preds = %57
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %97

; <label>:72:                                     ; preds = %57
  %73 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  %74 = call %struct.setElement* @create_element(i8* %73, i32 0)
  store %struct.setElement* %74, %struct.setElement** %8, align 8
  %75 = load %struct.setElement*, %struct.setElement** %8, align 8
  %76 = icmp eq %struct.setElement* %75, null
  br i1 %76, label %77, label %79

; <label>:77:                                     ; preds = %72
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %97

; <label>:79:                                     ; preds = %72
  %80 = load %struct.setArray*, %struct.setArray** %3, align 8
  %81 = load %struct.setElement*, %struct.setElement** %8, align 8
  %82 = call i32 @element_in_set(%struct.setArray* %80, %struct.setElement* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

; <label>:84:                                     ; preds = %79
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0))
  %86 = load %struct.setElement*, %struct.setElement** %8, align 8
  call void @free_element(%struct.setElement* %86)
  %87 = load %struct.setArray*, %struct.setArray** %3, align 8
  call void @free_set_array(%struct.setArray* %87)
  store %struct.setElement* null, %struct.setElement** %8, align 8
  store %struct.setArray* null, %struct.setArray** %3, align 8
  store i32 8, i32* %7, align 4
  br label %275

; <label>:88:                                     ; preds = %79
  %89 = load %struct.setArray*, %struct.setArray** %3, align 8
  %90 = load %struct.setElement*, %struct.setElement** %8, align 8
  %91 = call i32 @add_element_to_set(%struct.setArray* %89, %struct.setElement* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

; <label>:93:                                     ; preds = %88
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %275

; <label>:95:                                     ; preds = %88
  br label %96

; <label>:96:                                     ; preds = %41, %95
  store i32 2, i32* %7, align 4
  br label %97

; <label>:97:                                     ; preds = %96, %77, %70, %45, %44, %43
  br label %271

; <label>:98:                                     ; preds = %36
  %99 = load i8*, i8** %4, align 8
  %100 = load i8, i8* %99, align 1
  %101 = sext i8 %100 to i32
  %102 = icmp eq i32 %101, 34
  br i1 %102, label %103, label %153

; <label>:103:                                    ; preds = %98
  %104 = load i32, i32* %7, align 4
  switch i32 %104, label %149 [
    i32 3, label %105
    i32 7, label %147
    i32 6, label %147
    i32 4, label %147
  ]

; <label>:105:                                    ; preds = %103
  store i32 4, i32* %7, align 4
  %106 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %106, i8 0, i64 256, i32 16, i1 false)
  %107 = load i8*, i8** %4, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = ptrtoint i8* %107 to i64
  %110 = ptrtoint i8* %108 to i64
  %111 = sub i64 %109, %110
  %112 = icmp sgt i64 %111, 10
  br i1 %112, label %113, label %115

; <label>:113:                                    ; preds = %105
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.20, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %275

; <label>:115:                                    ; preds = %105
  %116 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  %117 = load i8*, i8** %5, align 8
  %118 = load i8*, i8** %4, align 8
  %119 = load i8*, i8** %5, align 8
  %120 = ptrtoint i8* %118 to i64
  %121 = ptrtoint i8* %119 to i64
  %122 = sub i64 %120, %121
  %123 = call i32 @memcpy(i8* %116, i8* %117, i64 %122)
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  %125 = call %struct.setElement* @create_element(i8* %124, i32 1)
  store %struct.setElement* %125, %struct.setElement** %8, align 8
  %126 = load %struct.setElement*, %struct.setElement** %8, align 8
  %127 = icmp eq %struct.setElement* %126, null
  br i1 %127, label %128, label %130

; <label>:128:                                    ; preds = %115
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %275

; <label>:130:                                    ; preds = %115
  %131 = load %struct.setArray*, %struct.setArray** %3, align 8
  %132 = load %struct.setElement*, %struct.setElement** %8, align 8
  %133 = call i32 @element_in_set(%struct.setArray* %131, %struct.setElement* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

; <label>:135:                                    ; preds = %130
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0))
  %137 = load %struct.setElement*, %struct.setElement** %8, align 8
  call void @free_element(%struct.setElement* %137)
  %138 = load %struct.setArray*, %struct.setArray** %3, align 8
  call void @free_set_array(%struct.setArray* %138)
  store %struct.setElement* null, %struct.setElement** %8, align 8
  store %struct.setArray* null, %struct.setArray** %3, align 8
  store i32 8, i32* %7, align 4
  br label %275

; <label>:139:                                    ; preds = %130
  %140 = load %struct.setArray*, %struct.setArray** %3, align 8
  %141 = load %struct.setElement*, %struct.setElement** %8, align 8
  %142 = call i32 @add_element_to_set(%struct.setArray* %140, %struct.setElement* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

; <label>:144:                                    ; preds = %139
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.24, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %275

; <label>:146:                                    ; preds = %139
  br label %152

; <label>:147:                                    ; preds = %103, %103, %103
  store i32 8, i32* %7, align 4
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0))
  br label %152

; <label>:149:                                    ; preds = %103
  store i32 3, i32* %7, align 4
  %150 = load i8*, i8** %4, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  store i8* %151, i8** %5, align 8
  br label %152

; <label>:152:                                    ; preds = %149, %147, %146
  br label %270

; <label>:153:                                    ; preds = %98
  %154 = load i8*, i8** %4, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 32
  br i1 %157, label %158, label %205

; <label>:158:                                    ; preds = %153
  %159 = load i32, i32* %7, align 4
  switch i32 %159, label %203 [
    i32 6, label %160
  ]

; <label>:160:                                    ; preds = %158
  %161 = load i8*, i8** %4, align 8
  store i8* %161, i8** %6, align 8
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %162, i8 0, i64 256, i32 16, i1 false)
  %163 = load i8*, i8** %4, align 8
  %164 = load i8*, i8** %5, align 8
  %165 = ptrtoint i8* %163 to i64
  %166 = ptrtoint i8* %164 to i64
  %167 = sub i64 %165, %166
  %168 = icmp sgt i64 %167, 15
  br i1 %168, label %169, label %171

; <label>:169:                                    ; preds = %160
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %275

; <label>:171:                                    ; preds = %160
  %172 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  %173 = load i8*, i8** %5, align 8
  %174 = load i8*, i8** %4, align 8
  %175 = load i8*, i8** %5, align 8
  %176 = ptrtoint i8* %174 to i64
  %177 = ptrtoint i8* %175 to i64
  %178 = sub i64 %176, %177
  %179 = call i32 @memcpy(i8* %172, i8* %173, i64 %178)
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  %181 = call %struct.setElement* @create_element(i8* %180, i32 0)
  store %struct.setElement* %181, %struct.setElement** %8, align 8
  %182 = load %struct.setElement*, %struct.setElement** %8, align 8
  %183 = icmp eq %struct.setElement* %182, null
  br i1 %183, label %184, label %186

; <label>:184:                                    ; preds = %171
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %275

; <label>:186:                                    ; preds = %171
  %187 = load %struct.setArray*, %struct.setArray** %3, align 8
  %188 = load %struct.setElement*, %struct.setElement** %8, align 8
  %189 = call i32 @element_in_set(%struct.setArray* %187, %struct.setElement* %188)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

; <label>:191:                                    ; preds = %186
  %192 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0))
  %193 = load %struct.setElement*, %struct.setElement** %8, align 8
  call void @free_element(%struct.setElement* %193)
  %194 = load %struct.setArray*, %struct.setArray** %3, align 8
  call void @free_set_array(%struct.setArray* %194)
  store %struct.setElement* null, %struct.setElement** %8, align 8
  store %struct.setArray* null, %struct.setArray** %3, align 8
  store i32 8, i32* %7, align 4
  br label %275

; <label>:195:                                    ; preds = %186
  %196 = load %struct.setArray*, %struct.setArray** %3, align 8
  %197 = load %struct.setElement*, %struct.setElement** %8, align 8
  %198 = call i32 @add_element_to_set(%struct.setArray* %196, %struct.setElement* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

; <label>:200:                                    ; preds = %195
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %275

; <label>:202:                                    ; preds = %195
  store i32 7, i32* %7, align 4
  br label %204

; <label>:203:                                    ; preds = %158
  br label %204

; <label>:204:                                    ; preds = %203, %202
  br label %269

; <label>:205:                                    ; preds = %153
  %206 = load i8*, i8** %4, align 8
  %207 = load i8, i8* %206, align 1
  %208 = sext i8 %207 to i32
  %209 = icmp eq i32 %208, 44
  br i1 %209, label %210, label %260

; <label>:210:                                    ; preds = %205
  %211 = load i32, i32* %7, align 4
  switch i32 %211, label %258 [
    i32 1, label %212
    i32 6, label %214
    i32 3, label %256
  ]

; <label>:212:                                    ; preds = %210
  store i32 8, i32* %7, align 4
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.26, i32 0, i32 0))
  br label %259

; <label>:214:                                    ; preds = %210
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %215, i8 0, i64 256, i32 16, i1 false)
  %216 = load i8*, i8** %4, align 8
  %217 = load i8*, i8** %5, align 8
  %218 = ptrtoint i8* %216 to i64
  %219 = ptrtoint i8* %217 to i64
  %220 = sub i64 %218, %219
  %221 = icmp sgt i64 %220, 15
  br i1 %221, label %222, label %224

; <label>:222:                                    ; preds = %214
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %275

; <label>:224:                                    ; preds = %214
  %225 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  %226 = load i8*, i8** %5, align 8
  %227 = load i8*, i8** %4, align 8
  %228 = load i8*, i8** %5, align 8
  %229 = ptrtoint i8* %227 to i64
  %230 = ptrtoint i8* %228 to i64
  %231 = sub i64 %229, %230
  %232 = call i32 @memcpy(i8* %225, i8* %226, i64 %231)
  %233 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i32 0
  %234 = call %struct.setElement* @create_element(i8* %233, i32 0)
  store %struct.setElement* %234, %struct.setElement** %8, align 8
  %235 = load %struct.setElement*, %struct.setElement** %8, align 8
  %236 = icmp eq %struct.setElement* %235, null
  br i1 %236, label %237, label %239

; <label>:237:                                    ; preds = %224
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %275

; <label>:239:                                    ; preds = %224
  %240 = load %struct.setArray*, %struct.setArray** %3, align 8
  %241 = load %struct.setElement*, %struct.setElement** %8, align 8
  %242 = call i32 @element_in_set(%struct.setArray* %240, %struct.setElement* %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %248

; <label>:244:                                    ; preds = %239
  %245 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0))
  %246 = load %struct.setElement*, %struct.setElement** %8, align 8
  call void @free_element(%struct.setElement* %246)
  %247 = load %struct.setArray*, %struct.setArray** %3, align 8
  call void @free_set_array(%struct.setArray* %247)
  store %struct.setElement* null, %struct.setElement** %8, align 8
  store %struct.setArray* null, %struct.setArray** %3, align 8
  store i32 8, i32* %7, align 4
  br label %275

; <label>:248:                                    ; preds = %239
  %249 = load %struct.setArray*, %struct.setArray** %3, align 8
  %250 = load %struct.setElement*, %struct.setElement** %8, align 8
  %251 = call i32 @add_element_to_set(%struct.setArray* %249, %struct.setElement* %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %255

; <label>:253:                                    ; preds = %248
  %254 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.29, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %275

; <label>:255:                                    ; preds = %248
  store i32 5, i32* %7, align 4
  br label %259

; <label>:256:                                    ; preds = %210
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i32 0, i32 0))
  store i32 8, i32* %7, align 4
  br label %275

; <label>:258:                                    ; preds = %210
  store i32 5, i32* %7, align 4
  br label %259

; <label>:259:                                    ; preds = %258, %255, %212
  br label %268

; <label>:260:                                    ; preds = %205
  %261 = load i32, i32* %7, align 4
  switch i32 %261, label %266 [
    i32 1, label %262
    i32 5, label %262
    i32 4, label %264
  ]

; <label>:262:                                    ; preds = %260, %260
  store i32 6, i32* %7, align 4
  %263 = load i8*, i8** %4, align 8
  store i8* %263, i8** %5, align 8
  br label %267

; <label>:264:                                    ; preds = %260
  store i32 8, i32* %7, align 4
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.31, i32 0, i32 0))
  br label %275

; <label>:266:                                    ; preds = %260
  br label %267

; <label>:267:                                    ; preds = %266, %262
  br label %268

; <label>:268:                                    ; preds = %267, %259
  br label %269

; <label>:269:                                    ; preds = %268, %204
  br label %270

; <label>:270:                                    ; preds = %269, %152
  br label %271

; <label>:271:                                    ; preds = %270, %97
  %272 = load i8*, i8** %4, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %4, align 8
  br label %23

; <label>:274:                                    ; preds = %34
  br label %275

; <label>:275:                                    ; preds = %274, %264, %256, %253, %244, %237, %222, %200, %191, %184, %169, %144, %135, %128, %113, %93, %84, %55, %18, %13
  %276 = load i32, i32* %7, align 4
  %277 = icmp ne i32 %276, 2
  br i1 %277, label %278, label %280

; <label>:278:                                    ; preds = %275
  %279 = load %struct.setArray*, %struct.setArray** %3, align 8
  call void @free_set_array(%struct.setArray* %279)
  store %struct.setArray* null, %struct.setArray** %3, align 8
  br label %280

; <label>:280:                                    ; preds = %278, %275
  %281 = load %struct.setArray*, %struct.setArray** %3, align 8
  ret %struct.setArray* %281
}

declare i32 @memcpy(i8*, i8*, i64) #1

declare %struct.setElement* @create_element(i8*, i32) #1

declare i32 @element_in_set(%struct.setArray*, %struct.setElement*) #1

declare void @free_element(%struct.setElement*) #1

declare void @free_set_array(%struct.setArray*) #1

declare i32 @add_element_to_set(%struct.setArray*, %struct.setElement*) #1

; Function Attrs: noinline nounwind uwtable
define %struct.setArray* @symmetric_difference(%struct.setArray*, %struct.setArray*) #0 {
  %3 = alloca %struct.setArray*, align 8
  %4 = alloca %struct.setArray*, align 8
  %5 = alloca %struct.setArray*, align 8
  %6 = alloca %struct.setArray*, align 8
  %7 = alloca %struct.setArray*, align 8
  %8 = alloca i32, align 4
  store %struct.setArray* %0, %struct.setArray** %3, align 8
  store %struct.setArray* %1, %struct.setArray** %4, align 8
  store %struct.setArray* null, %struct.setArray** %5, align 8
  store %struct.setArray* null, %struct.setArray** %6, align 8
  store %struct.setArray* null, %struct.setArray** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.setArray*, %struct.setArray** %3, align 8
  %10 = icmp eq %struct.setArray* %9, null
  br i1 %10, label %14, label %11

; <label>:11:                                     ; preds = %2
  %12 = load %struct.setArray*, %struct.setArray** %4, align 8
  %13 = icmp eq %struct.setArray* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %11, %2
  br label %36

; <label>:15:                                     ; preds = %11
  %16 = load %struct.setArray*, %struct.setArray** %3, align 8
  %17 = load %struct.setArray*, %struct.setArray** %4, align 8
  %18 = call %struct.setArray* @set_difference(%struct.setArray* %16, %struct.setArray* %17)
  store %struct.setArray* %18, %struct.setArray** %6, align 8
  %19 = load %struct.setArray*, %struct.setArray** %6, align 8
  %20 = icmp eq %struct.setArray* %19, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %15
  br label %36

; <label>:22:                                     ; preds = %15
  %23 = load %struct.setArray*, %struct.setArray** %4, align 8
  %24 = load %struct.setArray*, %struct.setArray** %3, align 8
  %25 = call %struct.setArray* @set_difference(%struct.setArray* %23, %struct.setArray* %24)
  store %struct.setArray* %25, %struct.setArray** %7, align 8
  %26 = load %struct.setArray*, %struct.setArray** %7, align 8
  %27 = icmp eq %struct.setArray* %26, null
  br i1 %27, label %28, label %30

; <label>:28:                                     ; preds = %22
  %29 = load %struct.setArray*, %struct.setArray** %6, align 8
  call void @free_set_array(%struct.setArray* %29)
  store %struct.setArray* null, %struct.setArray** %6, align 8
  br label %36

; <label>:30:                                     ; preds = %22
  %31 = load %struct.setArray*, %struct.setArray** %6, align 8
  %32 = load %struct.setArray*, %struct.setArray** %7, align 8
  %33 = call %struct.setArray* @unionset(%struct.setArray* %31, %struct.setArray* %32)
  store %struct.setArray* %33, %struct.setArray** %5, align 8
  %34 = load %struct.setArray*, %struct.setArray** %6, align 8
  call void @free_set_array(%struct.setArray* %34)
  %35 = load %struct.setArray*, %struct.setArray** %7, align 8
  call void @free_set_array(%struct.setArray* %35)
  br label %36

; <label>:36:                                     ; preds = %30, %28, %21, %14
  %37 = load %struct.setArray*, %struct.setArray** %5, align 8
  ret %struct.setArray* %37
}

; Function Attrs: noinline nounwind uwtable
define %struct.setArray* @set_difference(%struct.setArray*, %struct.setArray*) #0 {
  %3 = alloca %struct.setArray*, align 8
  %4 = alloca %struct.setArray*, align 8
  %5 = alloca %struct.setArray*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.setArray* %0, %struct.setArray** %3, align 8
  store %struct.setArray* %1, %struct.setArray** %4, align 8
  store %struct.setArray* null, %struct.setArray** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.setArray*, %struct.setArray** %3, align 8
  %9 = icmp eq %struct.setArray* %8, null
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %2
  %11 = load %struct.setArray*, %struct.setArray** %4, align 8
  %12 = icmp eq %struct.setArray* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %10, %2
  br label %62

; <label>:14:                                     ; preds = %10
  %15 = bitcast %struct.setArray** %5 to i8**
  %16 = call i32 @allocate(i64 160, i32 0, i8** %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

; <label>:18:                                     ; preds = %14
  store %struct.setArray* null, %struct.setArray** %5, align 8
  br label %62

; <label>:19:                                     ; preds = %14
  %20 = load %struct.setArray*, %struct.setArray** %5, align 8
  %21 = bitcast %struct.setArray* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* %21, i8 0, i64 160, i32 8, i1 false)
  br label %22

; <label>:22:                                     ; preds = %58, %19
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.setArray*, %struct.setArray** %3, align 8
  %25 = getelementptr inbounds %struct.setArray, %struct.setArray* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %61

; <label>:28:                                     ; preds = %22
  %29 = load %struct.setArray*, %struct.setArray** %4, align 8
  %30 = load %struct.setArray*, %struct.setArray** %3, align 8
  %31 = getelementptr inbounds %struct.setArray, %struct.setArray* %30, i32 0, i32 4
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %31, i64 0, i64 %33
  %35 = load %struct.setElement*, %struct.setElement** %34, align 8
  %36 = call i32 @element_in_set(%struct.setArray* %29, %struct.setElement* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %28
  %40 = load %struct.setArray*, %struct.setArray** %5, align 8
  call void @free_set_array(%struct.setArray* %40)
  store %struct.setArray* null, %struct.setArray** %5, align 8
  br label %62

; <label>:41:                                     ; preds = %28
  %42 = load i32, i32* %7, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %58

; <label>:44:                                     ; preds = %41
  %45 = load %struct.setArray*, %struct.setArray** %5, align 8
  %46 = load %struct.setArray*, %struct.setArray** %3, align 8
  %47 = getelementptr inbounds %struct.setArray, %struct.setArray* %46, i32 0, i32 4
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %47, i64 0, i64 %49
  %51 = load %struct.setElement*, %struct.setElement** %50, align 8
  %52 = call %struct.setElement* @copy_element(%struct.setElement* %51)
  %53 = call i32 @add_element_to_set(%struct.setArray* %45, %struct.setElement* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

; <label>:55:                                     ; preds = %44
  %56 = load %struct.setArray*, %struct.setArray** %5, align 8
  call void @free_set_array(%struct.setArray* %56)
  store %struct.setArray* null, %struct.setArray** %5, align 8
  br label %62

; <label>:57:                                     ; preds = %44
  br label %58

; <label>:58:                                     ; preds = %57, %41
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %22

; <label>:61:                                     ; preds = %22
  br label %62

; <label>:62:                                     ; preds = %61, %55, %39, %18, %13
  %63 = load %struct.setArray*, %struct.setArray** %5, align 8
  ret %struct.setArray* %63
}

; Function Attrs: noinline nounwind uwtable
define %struct.setArray* @unionset(%struct.setArray*, %struct.setArray*) #0 {
  %3 = alloca %struct.setArray*, align 8
  %4 = alloca %struct.setArray*, align 8
  %5 = alloca %struct.setArray*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.setArray* %0, %struct.setArray** %3, align 8
  store %struct.setArray* %1, %struct.setArray** %4, align 8
  store %struct.setArray* null, %struct.setArray** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.setArray*, %struct.setArray** %3, align 8
  %9 = icmp eq %struct.setArray* %8, null
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %2
  %11 = load %struct.setArray*, %struct.setArray** %4, align 8
  %12 = icmp eq %struct.setArray* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %10, %2
  br label %90

; <label>:14:                                     ; preds = %10
  %15 = bitcast %struct.setArray** %5 to i8**
  %16 = call i32 @allocate(i64 160, i32 0, i8** %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %14
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i32 0, i32 0))
  store %struct.setArray* null, %struct.setArray** %5, align 8
  br label %90

; <label>:20:                                     ; preds = %14
  %21 = load %struct.setArray*, %struct.setArray** %5, align 8
  %22 = bitcast %struct.setArray* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 160, i32 8, i1 false)
  br label %23

; <label>:23:                                     ; preds = %43, %20
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.setArray*, %struct.setArray** %3, align 8
  %26 = getelementptr inbounds %struct.setArray, %struct.setArray* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %46

; <label>:29:                                     ; preds = %23
  %30 = load %struct.setArray*, %struct.setArray** %5, align 8
  %31 = load %struct.setArray*, %struct.setArray** %3, align 8
  %32 = getelementptr inbounds %struct.setArray, %struct.setArray* %31, i32 0, i32 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %32, i64 0, i64 %34
  %36 = load %struct.setElement*, %struct.setElement** %35, align 8
  %37 = call %struct.setElement* @copy_element(%struct.setElement* %36)
  %38 = call i32 @add_element_to_set(%struct.setArray* %30, %struct.setElement* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %29
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.36, i32 0, i32 0))
  %42 = load %struct.setArray*, %struct.setArray** %5, align 8
  call void @free_set_array(%struct.setArray* %42)
  store %struct.setArray* null, %struct.setArray** %5, align 8
  br label %90

; <label>:43:                                     ; preds = %29
  %44 = load i32, i32* %6, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %23

; <label>:46:                                     ; preds = %23
  store i32 0, i32* %6, align 4
  br label %47

; <label>:47:                                     ; preds = %86, %46
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.setArray*, %struct.setArray** %4, align 8
  %50 = getelementptr inbounds %struct.setArray, %struct.setArray* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %89

; <label>:53:                                     ; preds = %47
  %54 = load %struct.setArray*, %struct.setArray** %5, align 8
  %55 = load %struct.setArray*, %struct.setArray** %4, align 8
  %56 = getelementptr inbounds %struct.setArray, %struct.setArray* %55, i32 0, i32 4
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %56, i64 0, i64 %58
  %60 = load %struct.setElement*, %struct.setElement** %59, align 8
  %61 = call i32 @element_in_set(%struct.setArray* %54, %struct.setElement* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %67

; <label>:64:                                     ; preds = %53
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0))
  %66 = load %struct.setArray*, %struct.setArray** %5, align 8
  call void @free_set_array(%struct.setArray* %66)
  store %struct.setArray* null, %struct.setArray** %5, align 8
  br label %90

; <label>:67:                                     ; preds = %53
  %68 = load i32, i32* %7, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %85

; <label>:70:                                     ; preds = %67
  %71 = load %struct.setArray*, %struct.setArray** %5, align 8
  %72 = load %struct.setArray*, %struct.setArray** %4, align 8
  %73 = getelementptr inbounds %struct.setArray, %struct.setArray* %72, i32 0, i32 4
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %73, i64 0, i64 %75
  %77 = load %struct.setElement*, %struct.setElement** %76, align 8
  %78 = call %struct.setElement* @copy_element(%struct.setElement* %77)
  %79 = call i32 @add_element_to_set(%struct.setArray* %71, %struct.setElement* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

; <label>:81:                                     ; preds = %70
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i32 0, i32 0))
  %83 = load %struct.setArray*, %struct.setArray** %5, align 8
  call void @free_set_array(%struct.setArray* %83)
  store %struct.setArray* null, %struct.setArray** %5, align 8
  br label %90

; <label>:84:                                     ; preds = %70
  br label %85

; <label>:85:                                     ; preds = %84, %67
  br label %86

; <label>:86:                                     ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %47

; <label>:89:                                     ; preds = %47
  br label %90

; <label>:90:                                     ; preds = %89, %81, %64, %40, %18, %13
  %91 = load %struct.setArray*, %struct.setArray** %5, align 8
  ret %struct.setArray* %91
}

declare %struct.setElement* @copy_element(%struct.setElement*) #1

; Function Attrs: noinline nounwind uwtable
define %struct.setArray* @intersect(%struct.setArray*, %struct.setArray*) #0 {
  %3 = alloca %struct.setArray*, align 8
  %4 = alloca %struct.setArray*, align 8
  %5 = alloca %struct.setArray*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.setArray* %0, %struct.setArray** %3, align 8
  store %struct.setArray* %1, %struct.setArray** %4, align 8
  store %struct.setArray* null, %struct.setArray** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.setArray*, %struct.setArray** %3, align 8
  %9 = icmp eq %struct.setArray* %8, null
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %2
  %11 = load %struct.setArray*, %struct.setArray** %4, align 8
  %12 = icmp eq %struct.setArray* %11, null
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %10, %2
  br label %66

; <label>:14:                                     ; preds = %10
  %15 = bitcast %struct.setArray** %5 to i8**
  %16 = call i32 @allocate(i64 160, i32 0, i8** %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

; <label>:18:                                     ; preds = %14
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.32, i32 0, i32 0))
  store %struct.setArray* null, %struct.setArray** %5, align 8
  br label %66

; <label>:20:                                     ; preds = %14
  %21 = load %struct.setArray*, %struct.setArray** %5, align 8
  %22 = bitcast %struct.setArray* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* %22, i8 0, i64 160, i32 8, i1 false)
  br label %23

; <label>:23:                                     ; preds = %62, %20
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.setArray*, %struct.setArray** %3, align 8
  %26 = getelementptr inbounds %struct.setArray, %struct.setArray* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %65

; <label>:29:                                     ; preds = %23
  %30 = load %struct.setArray*, %struct.setArray** %4, align 8
  %31 = load %struct.setArray*, %struct.setArray** %3, align 8
  %32 = getelementptr inbounds %struct.setArray, %struct.setArray* %31, i32 0, i32 4
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %32, i64 0, i64 %34
  %36 = load %struct.setElement*, %struct.setElement** %35, align 8
  %37 = call i32 @element_in_set(%struct.setArray* %30, %struct.setElement* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

; <label>:40:                                     ; preds = %29
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.33, i32 0, i32 0))
  %42 = load %struct.setArray*, %struct.setArray** %5, align 8
  call void @free_set_array(%struct.setArray* %42)
  store %struct.setArray* null, %struct.setArray** %5, align 8
  br label %66

; <label>:43:                                     ; preds = %29
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %61

; <label>:46:                                     ; preds = %43
  %47 = load %struct.setArray*, %struct.setArray** %5, align 8
  %48 = load %struct.setArray*, %struct.setArray** %3, align 8
  %49 = getelementptr inbounds %struct.setArray, %struct.setArray* %48, i32 0, i32 4
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %49, i64 0, i64 %51
  %53 = load %struct.setElement*, %struct.setElement** %52, align 8
  %54 = call %struct.setElement* @copy_element(%struct.setElement* %53)
  %55 = call i32 @add_element_to_set(%struct.setArray* %47, %struct.setElement* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

; <label>:57:                                     ; preds = %46
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i32 0, i32 0))
  %59 = load %struct.setArray*, %struct.setArray** %5, align 8
  call void @free_set_array(%struct.setArray* %59)
  store %struct.setArray* null, %struct.setArray** %5, align 8
  br label %66

; <label>:60:                                     ; preds = %46
  br label %61

; <label>:61:                                     ; preds = %60, %43
  br label %62

; <label>:62:                                     ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %23

; <label>:65:                                     ; preds = %23
  br label %66

; <label>:66:                                     ; preds = %65, %57, %40, %18, %13
  %67 = load %struct.setArray*, %struct.setArray** %5, align 8
  ret %struct.setArray* %67
}

; Function Attrs: noinline nounwind uwtable
define %struct.setArray* @parse_operations(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.setArray*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.setArray*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.setArray*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.setArray* null, %struct.setArray** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.setArray* null, %struct.setArray** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store %struct.setArray* null, %struct.setArray** %12, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = icmp eq i8* %15, null
  br i1 %16, label %20, label %17

; <label>:17:                                     ; preds = %2
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %17, %2
  br label %277

; <label>:21:                                     ; preds = %17
  br label %22

; <label>:22:                                     ; preds = %186, %179, %21
  %23 = load i8*, i8** %4, align 8
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %26, label %189

; <label>:26:                                     ; preds = %22
  %27 = load i8*, i8** %4, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 124
  br i1 %30, label %31, label %81

; <label>:31:                                     ; preds = %26
  %32 = load %struct.setArray*, %struct.setArray** %5, align 8
  %33 = icmp eq %struct.setArray* %32, null
  br i1 %33, label %34, label %54

; <label>:34:                                     ; preds = %31
  %35 = load i8*, i8** %4, align 8
  %36 = call %struct.setArray* @parse_set(i8* %35)
  store %struct.setArray* %36, %struct.setArray** %5, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %4, align 8
  %39 = load %struct.setArray*, %struct.setArray** %5, align 8
  %40 = icmp ne %struct.setArray* %39, null
  br i1 %40, label %41, label %51

; <label>:41:                                     ; preds = %34
  br label %42

; <label>:42:                                     ; preds = %47, %41
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 124
  br i1 %46, label %47, label %50

; <label>:47:                                     ; preds = %42
  %48 = load i8*, i8** %4, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %4, align 8
  br label %42

; <label>:50:                                     ; preds = %42
  store i32 1, i32* %6, align 4
  br label %53

; <label>:51:                                     ; preds = %34
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0))
  br label %277

; <label>:53:                                     ; preds = %50
  br label %80

; <label>:54:                                     ; preds = %31
  %55 = load %struct.setArray*, %struct.setArray** %7, align 8
  %56 = icmp eq %struct.setArray* %55, null
  br i1 %56, label %57, label %77

; <label>:57:                                     ; preds = %54
  %58 = load i8*, i8** %4, align 8
  %59 = call %struct.setArray* @parse_set(i8* %58)
  store %struct.setArray* %59, %struct.setArray** %7, align 8
  %60 = load i8*, i8** %4, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %4, align 8
  %62 = load %struct.setArray*, %struct.setArray** %7, align 8
  %63 = icmp ne %struct.setArray* %62, null
  br i1 %63, label %64, label %74

; <label>:64:                                     ; preds = %57
  br label %65

; <label>:65:                                     ; preds = %70, %64
  %66 = load i8*, i8** %4, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 124
  br i1 %69, label %70, label %73

; <label>:70:                                     ; preds = %65
  %71 = load i8*, i8** %4, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %4, align 8
  br label %65

; <label>:73:                                     ; preds = %65
  store i32 1, i32* %8, align 4
  br label %76

; <label>:74:                                     ; preds = %57
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.39, i32 0, i32 0))
  br label %277

; <label>:76:                                     ; preds = %73
  br label %79

; <label>:77:                                     ; preds = %54
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0))
  br label %277

; <label>:79:                                     ; preds = %76
  br label %80

; <label>:80:                                     ; preds = %79, %53
  br label %186

; <label>:81:                                     ; preds = %26
  %82 = load i8*, i8** %4, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 94
  br i1 %85, label %101, label %86

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %4, align 8
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 43
  br i1 %90, label %101, label %91

; <label>:91:                                     ; preds = %86
  %92 = load i8*, i8** %4, align 8
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 45
  br i1 %95, label %101, label %96

; <label>:96:                                     ; preds = %91
  %97 = load i8*, i8** %4, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 126
  br i1 %100, label %101, label %110

; <label>:101:                                    ; preds = %96, %91, %86, %81
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

; <label>:104:                                    ; preds = %101
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.41, i32 0, i32 0))
  br label %277

; <label>:106:                                    ; preds = %101
  %107 = load i8*, i8** %4, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  store i32 %109, i32* %10, align 4
  br label %185

; <label>:110:                                    ; preds = %96
  %111 = load i8*, i8** %4, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = call i32 @isalnum(i32 %113) #5
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %174

; <label>:116:                                    ; preds = %110
  %117 = load i8*, i8** %4, align 8
  store i8* %117, i8** %13, align 8
  br label %118

; <label>:118:                                    ; preds = %124, %116
  %119 = load i8*, i8** %4, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  %122 = call i32 @isalnum(i32 %121) #5
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

; <label>:124:                                    ; preds = %118
  %125 = load i8*, i8** %4, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %4, align 8
  br label %118

; <label>:127:                                    ; preds = %118
  %128 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %128, i8 0, i64 16, i32 16, i1 false)
  %129 = load i8*, i8** %4, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %11, align 4
  %135 = load i8*, i8** %4, align 8
  %136 = getelementptr inbounds i8, i8* %135, i32 -1
  store i8* %136, i8** %4, align 8
  %137 = load i32, i32* %11, align 4
  %138 = icmp sgt i32 %137, 15
  br i1 %138, label %139, label %141

; <label>:139:                                    ; preds = %127
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i32 0, i32 0))
  br label %277

; <label>:141:                                    ; preds = %127
  %142 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 0
  %143 = load i8*, i8** %13, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = call i32 @memcpy(i8* %142, i8* %143, i64 %145)
  %147 = load %struct.setArray*, %struct.setArray** %5, align 8
  %148 = icmp eq %struct.setArray* %147, null
  br i1 %148, label %149, label %158

; <label>:149:                                    ; preds = %141
  %150 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 0
  %151 = call %struct.setArray* @retrieve_set(i8* %150)
  store %struct.setArray* %151, %struct.setArray** %5, align 8
  %152 = load %struct.setArray*, %struct.setArray** %5, align 8
  %153 = icmp eq %struct.setArray* %152, null
  br i1 %153, label %154, label %157

; <label>:154:                                    ; preds = %149
  %155 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 0
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0), i8* %155)
  br label %277

; <label>:157:                                    ; preds = %149
  br label %173

; <label>:158:                                    ; preds = %141
  %159 = load %struct.setArray*, %struct.setArray** %7, align 8
  %160 = icmp eq %struct.setArray* %159, null
  br i1 %160, label %161, label %170

; <label>:161:                                    ; preds = %158
  %162 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 0
  %163 = call %struct.setArray* @retrieve_set(i8* %162)
  store %struct.setArray* %163, %struct.setArray** %7, align 8
  %164 = load %struct.setArray*, %struct.setArray** %7, align 8
  %165 = icmp eq %struct.setArray* %164, null
  br i1 %165, label %166, label %169

; <label>:166:                                    ; preds = %161
  %167 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i32 0, i32 0
  %168 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i32 0, i32 0), i8* %167)
  br label %277

; <label>:169:                                    ; preds = %161
  br label %172

; <label>:170:                                    ; preds = %158
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.40, i32 0, i32 0))
  br label %277

; <label>:172:                                    ; preds = %169
  br label %173

; <label>:173:                                    ; preds = %172, %157
  br label %184

; <label>:174:                                    ; preds = %110
  %175 = load i8*, i8** %4, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp eq i32 %177, 32
  br i1 %178, label %179, label %182

; <label>:179:                                    ; preds = %174
  %180 = load i8*, i8** %4, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %4, align 8
  br label %22

; <label>:182:                                    ; preds = %174
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i32 0, i32 0))
  br label %277

; <label>:184:                                    ; preds = %173
  br label %185

; <label>:185:                                    ; preds = %184, %106
  br label %186

; <label>:186:                                    ; preds = %185, %80
  %187 = load i8*, i8** %4, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %4, align 8
  br label %22

; <label>:189:                                    ; preds = %22
  %190 = load i32, i32* %10, align 4
  %191 = icmp eq i32 %190, 43
  br i1 %191, label %192, label %196

; <label>:192:                                    ; preds = %189
  %193 = load %struct.setArray*, %struct.setArray** %5, align 8
  %194 = load %struct.setArray*, %struct.setArray** %7, align 8
  %195 = call %struct.setArray* @unionset(%struct.setArray* %193, %struct.setArray* %194)
  store %struct.setArray* %195, %struct.setArray** %12, align 8
  br label %228

; <label>:196:                                    ; preds = %189
  %197 = load i32, i32* %10, align 4
  %198 = icmp eq i32 %197, 94
  br i1 %198, label %199, label %203

; <label>:199:                                    ; preds = %196
  %200 = load %struct.setArray*, %struct.setArray** %5, align 8
  %201 = load %struct.setArray*, %struct.setArray** %7, align 8
  %202 = call %struct.setArray* @intersect(%struct.setArray* %200, %struct.setArray* %201)
  store %struct.setArray* %202, %struct.setArray** %12, align 8
  br label %227

; <label>:203:                                    ; preds = %196
  %204 = load i32, i32* %10, align 4
  %205 = icmp eq i32 %204, 45
  br i1 %205, label %206, label %210

; <label>:206:                                    ; preds = %203
  %207 = load %struct.setArray*, %struct.setArray** %5, align 8
  %208 = load %struct.setArray*, %struct.setArray** %7, align 8
  %209 = call %struct.setArray* @set_difference(%struct.setArray* %207, %struct.setArray* %208)
  store %struct.setArray* %209, %struct.setArray** %12, align 8
  br label %226

; <label>:210:                                    ; preds = %203
  %211 = load i32, i32* %10, align 4
  %212 = icmp eq i32 %211, 126
  br i1 %212, label %213, label %217

; <label>:213:                                    ; preds = %210
  %214 = load %struct.setArray*, %struct.setArray** %5, align 8
  %215 = load %struct.setArray*, %struct.setArray** %7, align 8
  %216 = call %struct.setArray* @symmetric_difference(%struct.setArray* %214, %struct.setArray* %215)
  store %struct.setArray* %216, %struct.setArray** %12, align 8
  br label %225

; <label>:217:                                    ; preds = %210
  %218 = load %struct.setArray*, %struct.setArray** %5, align 8
  %219 = call %struct.setArray* @copy_set(%struct.setArray* %218)
  store %struct.setArray* %219, %struct.setArray** %12, align 8
  %220 = load %struct.setArray*, %struct.setArray** %12, align 8
  %221 = icmp eq %struct.setArray* %220, null
  br i1 %221, label %222, label %224

; <label>:222:                                    ; preds = %217
  %223 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.44, i32 0, i32 0))
  br label %277

; <label>:224:                                    ; preds = %217
  br label %225

; <label>:225:                                    ; preds = %224, %213
  br label %226

; <label>:226:                                    ; preds = %225, %206
  br label %227

; <label>:227:                                    ; preds = %226, %199
  br label %228

; <label>:228:                                    ; preds = %227, %192
  %229 = load %struct.setArray*, %struct.setArray** %12, align 8
  %230 = icmp eq %struct.setArray* %229, null
  br i1 %230, label %231, label %232

; <label>:231:                                    ; preds = %228
  br label %277

; <label>:232:                                    ; preds = %228
  %233 = load %struct.setArray*, %struct.setArray** %12, align 8
  %234 = getelementptr inbounds %struct.setArray, %struct.setArray* %233, i32 0, i32 2
  %235 = getelementptr inbounds [16 x i8], [16 x i8]* %234, i32 0, i32 0
  %236 = load i8*, i8** %3, align 8
  %237 = call i8* @strncpy(i8* %235, i8* %236, i64 15)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %14, align 4
  br label %238

; <label>:238:                                    ; preds = %273, %232
  %239 = load i32, i32* %14, align 4
  %240 = load %struct.setArray*, %struct.setArray** %12, align 8
  %241 = getelementptr inbounds %struct.setArray, %struct.setArray* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 8
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %276

; <label>:244:                                    ; preds = %238
  %245 = load %struct.setArray*, %struct.setArray** %12, align 8
  %246 = getelementptr inbounds %struct.setArray, %struct.setArray* %245, i32 0, i32 4
  %247 = load i32, i32* %14, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %246, i64 0, i64 %248
  %250 = load %struct.setElement*, %struct.setElement** %249, align 8
  %251 = getelementptr inbounds %struct.setElement, %struct.setElement* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %272

; <label>:254:                                    ; preds = %244
  %255 = load %struct.setArray*, %struct.setArray** %12, align 8
  %256 = getelementptr inbounds %struct.setArray, %struct.setArray* %255, i32 0, i32 4
  %257 = load i32, i32* %14, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %256, i64 0, i64 %258
  %260 = load %struct.setElement*, %struct.setElement** %259, align 8
  %261 = getelementptr inbounds %struct.setElement, %struct.setElement* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = load %struct.setArray*, %struct.setArray** %12, align 8
  %264 = getelementptr inbounds %struct.setArray, %struct.setArray* %263, i32 0, i32 2
  %265 = getelementptr inbounds [16 x i8], [16 x i8]* %264, i32 0, i32 0
  %266 = call i32 @strcmp(i8* %262, i8* %265)
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %271

; <label>:268:                                    ; preds = %254
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.45, i32 0, i32 0))
  %270 = load %struct.setArray*, %struct.setArray** %12, align 8
  call void @free_set_array(%struct.setArray* %270)
  store %struct.setArray* null, %struct.setArray** %12, align 8
  br label %277

; <label>:271:                                    ; preds = %254
  br label %272

; <label>:272:                                    ; preds = %271, %244
  br label %273

; <label>:273:                                    ; preds = %272
  %274 = load i32, i32* %14, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %14, align 4
  br label %238

; <label>:276:                                    ; preds = %238
  br label %277

; <label>:277:                                    ; preds = %276, %268, %231, %222, %182, %170, %166, %154, %139, %104, %77, %74, %51, %20
  %278 = load %struct.setArray*, %struct.setArray** %7, align 8
  %279 = icmp ne %struct.setArray* %278, null
  br i1 %279, label %280, label %285

; <label>:280:                                    ; preds = %277
  %281 = load i32, i32* %8, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %285

; <label>:283:                                    ; preds = %280
  %284 = load %struct.setArray*, %struct.setArray** %7, align 8
  call void @free_set_array(%struct.setArray* %284)
  store %struct.setArray* null, %struct.setArray** %7, align 8
  br label %285

; <label>:285:                                    ; preds = %283, %280, %277
  %286 = load %struct.setArray*, %struct.setArray** %5, align 8
  %287 = icmp ne %struct.setArray* %286, null
  br i1 %287, label %288, label %293

; <label>:288:                                    ; preds = %285
  %289 = load i32, i32* %6, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

; <label>:291:                                    ; preds = %288
  %292 = load %struct.setArray*, %struct.setArray** %5, align 8
  call void @free_set_array(%struct.setArray* %292)
  store %struct.setArray* null, %struct.setArray** %5, align 8
  br label %293

; <label>:293:                                    ; preds = %291, %288, %285
  %294 = load %struct.setArray*, %struct.setArray** %12, align 8
  ret %struct.setArray* %294
}

declare %struct.setArray* @copy_set(%struct.setArray*) #1

declare i8* @strncpy(i8*, i8*, i64) #1

; Function Attrs: noinline nounwind uwtable
define i32 @handle_set_var(%struct.splitCommand*) #0 {
  %2 = alloca %struct.splitCommand*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.setArray*, align 8
  %5 = alloca %struct.setArray*, align 8
  store %struct.splitCommand* %0, %struct.splitCommand** %2, align 8
  store i32 -1, i32* %3, align 4
  store %struct.setArray* null, %struct.setArray** %4, align 8
  store %struct.setArray* null, %struct.setArray** %5, align 8
  %6 = load %struct.splitCommand*, %struct.splitCommand** %2, align 8
  %7 = icmp eq %struct.splitCommand* %6, null
  br i1 %7, label %8, label %9

; <label>:8:                                      ; preds = %1
  br label %96

; <label>:9:                                      ; preds = %1
  %10 = load %struct.splitCommand*, %struct.splitCommand** %2, align 8
  %11 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

; <label>:14:                                     ; preds = %9
  br label %96

; <label>:15:                                     ; preds = %9
  %16 = load %struct.splitCommand*, %struct.splitCommand** %2, align 8
  %17 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

; <label>:20:                                     ; preds = %15
  br label %96

; <label>:21:                                     ; preds = %15
  %22 = load %struct.splitCommand*, %struct.splitCommand** %2, align 8
  %23 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.splitCommand*, %struct.splitCommand** %2, align 8
  %26 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %25, i32 0, i32 2
  %27 = load i8*, i8** %26, align 8
  %28 = call %struct.setArray* @parse_operations(i8* %24, i8* %27)
  store %struct.setArray* %28, %struct.setArray** %4, align 8
  %29 = load %struct.setArray*, %struct.setArray** %4, align 8
  %30 = icmp eq %struct.setArray* %29, null
  br i1 %30, label %31, label %33

; <label>:31:                                     ; preds = %21
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.46, i32 0, i32 0))
  br label %96

; <label>:33:                                     ; preds = %21
  %34 = load %struct.setArray*, %struct.setArray** %4, align 8
  %35 = getelementptr inbounds %struct.setArray, %struct.setArray* %34, i32 0, i32 2
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %35, i32 0, i32 0
  %37 = call %struct.setArray* @retrieve_set(i8* %36)
  store %struct.setArray* %37, %struct.setArray** %5, align 8
  %38 = load %struct.setArray*, %struct.setArray** %5, align 8
  %39 = icmp eq %struct.setArray* %38, null
  br i1 %39, label %40, label %42

; <label>:40:                                     ; preds = %33
  %41 = load %struct.setArray*, %struct.setArray** %4, align 8
  call void @add_set(%struct.setArray* %41)
  br label %95

; <label>:42:                                     ; preds = %33
  store i32 0, i32* %3, align 4
  br label %43

; <label>:43:                                     ; preds = %61, %42
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.setArray*, %struct.setArray** %5, align 8
  %46 = getelementptr inbounds %struct.setArray, %struct.setArray* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %64

; <label>:49:                                     ; preds = %43
  %50 = load %struct.setArray*, %struct.setArray** %5, align 8
  %51 = getelementptr inbounds %struct.setArray, %struct.setArray* %50, i32 0, i32 4
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %51, i64 0, i64 %53
  %55 = load %struct.setElement*, %struct.setElement** %54, align 8
  call void @free_element(%struct.setElement* %55)
  %56 = load %struct.setArray*, %struct.setArray** %5, align 8
  %57 = getelementptr inbounds %struct.setArray, %struct.setArray* %56, i32 0, i32 4
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %57, i64 0, i64 %59
  store %struct.setElement* null, %struct.setElement** %60, align 8
  br label %61

; <label>:61:                                     ; preds = %49
  %62 = load i32, i32* %3, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %43

; <label>:64:                                     ; preds = %43
  store i32 0, i32* %3, align 4
  br label %65

; <label>:65:                                     ; preds = %83, %64
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.setArray*, %struct.setArray** %4, align 8
  %68 = getelementptr inbounds %struct.setArray, %struct.setArray* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %86

; <label>:71:                                     ; preds = %65
  %72 = load %struct.setArray*, %struct.setArray** %4, align 8
  %73 = getelementptr inbounds %struct.setArray, %struct.setArray* %72, i32 0, i32 4
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %73, i64 0, i64 %75
  %77 = load %struct.setElement*, %struct.setElement** %76, align 8
  %78 = load %struct.setArray*, %struct.setArray** %5, align 8
  %79 = getelementptr inbounds %struct.setArray, %struct.setArray* %78, i32 0, i32 4
  %80 = load i32, i32* %3, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %79, i64 0, i64 %81
  store %struct.setElement* %77, %struct.setElement** %82, align 8
  br label %83

; <label>:83:                                     ; preds = %71
  %84 = load i32, i32* %3, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %3, align 4
  br label %65

; <label>:86:                                     ; preds = %65
  %87 = load %struct.setArray*, %struct.setArray** %4, align 8
  %88 = getelementptr inbounds %struct.setArray, %struct.setArray* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.setArray*, %struct.setArray** %5, align 8
  %91 = getelementptr inbounds %struct.setArray, %struct.setArray* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.setArray*, %struct.setArray** %4, align 8
  %93 = bitcast %struct.setArray* %92 to i8*
  %94 = call i32 @deallocate(i8* %93, i64 160)
  br label %95

; <label>:95:                                     ; preds = %86, %40
  store i32 0, i32* %3, align 4
  br label %96

; <label>:96:                                     ; preds = %95, %31, %20, %14, %8
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

; Function Attrs: noinline nounwind uwtable
define void @issubset(i8*, i8*) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.setArray*, align 8
  %7 = alloca %struct.setArray*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.setArray* null, %struct.setArray** %6, align 8
  store %struct.setArray* null, %struct.setArray** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %15, label %12

; <label>:12:                                     ; preds = %2
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

; <label>:15:                                     ; preds = %12, %2
  br label %158

; <label>:16:                                     ; preds = %12
  br label %17

; <label>:17:                                     ; preds = %29, %16
  %18 = load i8*, i8** %3, align 8
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %17
  %23 = load i8*, i8** %3, align 8
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br label %27

; <label>:27:                                     ; preds = %22, %17
  %28 = phi i1 [ false, %17 ], [ %26, %22 ]
  br i1 %28, label %29, label %32

; <label>:29:                                     ; preds = %27
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %17

; <label>:32:                                     ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 124
  br i1 %37, label %38, label %41

; <label>:38:                                     ; preds = %32
  %39 = load i8*, i8** %3, align 8
  %40 = call %struct.setArray* @parse_set(i8* %39)
  store %struct.setArray* %40, %struct.setArray** %6, align 8
  br label %70

; <label>:41:                                     ; preds = %32
  br label %42

; <label>:42:                                     ; preds = %60, %41
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 32
  br i1 %49, label %50, label %58

; <label>:50:                                     ; preds = %42
  %51 = load i8*, i8** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br label %58

; <label>:58:                                     ; preds = %50, %42
  %59 = phi i1 [ false, %42 ], [ %57, %50 ]
  br i1 %59, label %60, label %63

; <label>:60:                                     ; preds = %58
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %42

; <label>:63:                                     ; preds = %58
  %64 = load i8*, i8** %3, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  store i8 0, i8* %67, align 1
  %68 = load i8*, i8** %3, align 8
  %69 = call %struct.setArray* @retrieve_set(i8* %68)
  store %struct.setArray* %69, %struct.setArray** %6, align 8
  br label %70

; <label>:70:                                     ; preds = %63, %38
  %71 = load %struct.setArray*, %struct.setArray** %6, align 8
  %72 = icmp eq %struct.setArray* %71, null
  br i1 %72, label %73, label %75

; <label>:73:                                     ; preds = %70
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0))
  br label %158

; <label>:75:                                     ; preds = %70
  br label %76

; <label>:76:                                     ; preds = %88, %75
  %77 = load i8*, i8** %4, align 8
  %78 = load i8, i8* %77, align 1
  %79 = sext i8 %78 to i32
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

; <label>:81:                                     ; preds = %76
  %82 = load i8*, i8** %4, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp eq i32 %84, 32
  br label %86

; <label>:86:                                     ; preds = %81, %76
  %87 = phi i1 [ false, %76 ], [ %85, %81 ]
  br i1 %87, label %88, label %91

; <label>:88:                                     ; preds = %86
  %89 = load i8*, i8** %4, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %4, align 8
  br label %76

; <label>:91:                                     ; preds = %86
  %92 = load i8*, i8** %4, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 124
  br i1 %96, label %97, label %100

; <label>:97:                                     ; preds = %91
  %98 = load i8*, i8** %4, align 8
  %99 = call %struct.setArray* @parse_set(i8* %98)
  store %struct.setArray* %99, %struct.setArray** %7, align 8
  br label %129

; <label>:100:                                    ; preds = %91
  store i32 0, i32* %5, align 4
  br label %101

; <label>:101:                                    ; preds = %119, %100
  %102 = load i8*, i8** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp ne i32 %107, 32
  br i1 %108, label %109, label %117

; <label>:109:                                    ; preds = %101
  %110 = load i8*, i8** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %110, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br label %117

; <label>:117:                                    ; preds = %109, %101
  %118 = phi i1 [ false, %101 ], [ %116, %109 ]
  br i1 %118, label %119, label %122

; <label>:119:                                    ; preds = %117
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %5, align 4
  br label %101

; <label>:122:                                    ; preds = %117
  %123 = load i8*, i8** %4, align 8
  %124 = load i32, i32* %5, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  store i8 0, i8* %126, align 1
  %127 = load i8*, i8** %4, align 8
  %128 = call %struct.setArray* @retrieve_set(i8* %127)
  store %struct.setArray* %128, %struct.setArray** %7, align 8
  br label %129

; <label>:129:                                    ; preds = %122, %97
  %130 = load %struct.setArray*, %struct.setArray** %7, align 8
  %131 = icmp eq %struct.setArray* %130, null
  br i1 %131, label %132, label %134

; <label>:132:                                    ; preds = %129
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.48, i32 0, i32 0))
  br label %158

; <label>:134:                                    ; preds = %129
  store i32 0, i32* %5, align 4
  br label %135

; <label>:135:                                    ; preds = %153, %134
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.setArray*, %struct.setArray** %6, align 8
  %138 = getelementptr inbounds %struct.setArray, %struct.setArray* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %136, %139
  br i1 %140, label %141, label %156

; <label>:141:                                    ; preds = %135
  %142 = load %struct.setArray*, %struct.setArray** %7, align 8
  %143 = load %struct.setArray*, %struct.setArray** %6, align 8
  %144 = getelementptr inbounds %struct.setArray, %struct.setArray* %143, i32 0, i32 4
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [15 x %struct.setElement*], [15 x %struct.setElement*]* %144, i64 0, i64 %146
  %148 = load %struct.setElement*, %struct.setElement** %147, align 8
  %149 = call i32 @element_in_set(%struct.setArray* %142, %struct.setElement* %148)
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

; <label>:151:                                    ; preds = %141
  %152 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0))
  br label %158

; <label>:153:                                    ; preds = %141
  %154 = load i32, i32* %5, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %5, align 4
  br label %135

; <label>:156:                                    ; preds = %135
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.50, i32 0, i32 0))
  br label %158

; <label>:158:                                    ; preds = %156, %151, %132, %73, %15
  %159 = load %struct.setArray*, %struct.setArray** %7, align 8
  %160 = icmp ne %struct.setArray* %159, null
  br i1 %160, label %161, label %169

; <label>:161:                                    ; preds = %158
  %162 = load %struct.setArray*, %struct.setArray** %7, align 8
  %163 = getelementptr inbounds %struct.setArray, %struct.setArray* %162, i32 0, i32 0
  %164 = load %struct.setArray*, %struct.setArray** %163, align 8
  %165 = icmp eq %struct.setArray* %164, null
  br i1 %165, label %166, label %168

; <label>:166:                                    ; preds = %161
  %167 = load %struct.setArray*, %struct.setArray** %7, align 8
  call void @free_set_array(%struct.setArray* %167)
  store %struct.setArray* null, %struct.setArray** %7, align 8
  br label %168

; <label>:168:                                    ; preds = %166, %161
  br label %169

; <label>:169:                                    ; preds = %168, %158
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @command_loop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca %struct.splitCommand*, align 8
  store i32 0, i32* %1, align 4
  store %struct.splitCommand* null, %struct.splitCommand** %3, align 8
  br label %4

; <label>:4:                                      ; preds = %0, %49
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %5, i8 0, i64 256, i32 16, i1 false)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  %8 = call i64 @receive_until(i8* %7, i8 signext 10, i64 255)
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %1, align 4
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0
  %11 = load i8, i8* %10, align 16
  %12 = sext i8 %11 to i32
  %13 = icmp eq i32 %12, 46
  br i1 %13, label %14, label %16

; <label>:14:                                     ; preds = %4
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  call void @exec_command(i8* %15)
  br label %49

; <label>:16:                                     ; preds = %4
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i32 0, i32 0
  %18 = call %struct.splitCommand* @parse_command_line(i8* %17)
  store %struct.splitCommand* %18, %struct.splitCommand** %3, align 8
  %19 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %20 = icmp eq %struct.splitCommand* %19, null
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %16
  call void @_terminate(i32 0) #6
  unreachable

; <label>:22:                                     ; preds = %16
  %23 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %24 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %23, i32 0, i32 1
  %25 = load i8, i8* %24, align 8
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 61
  br i1 %27, label %28, label %31

; <label>:28:                                     ; preds = %22
  %29 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %30 = call i32 @handle_set_var(%struct.splitCommand* %29)
  br label %45

; <label>:31:                                     ; preds = %22
  %32 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %33 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %32, i32 0, i32 1
  %34 = load i8, i8* %33, align 8
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 64
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %31
  %38 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %39 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %42 = getelementptr inbounds %struct.splitCommand, %struct.splitCommand* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  call void @issubset(i8* %40, i8* %43)
  br label %44

; <label>:44:                                     ; preds = %37, %31
  br label %45

; <label>:45:                                     ; preds = %44, %28
  %46 = load %struct.splitCommand*, %struct.splitCommand** %3, align 8
  %47 = bitcast %struct.splitCommand* %46 to i8*
  %48 = call i32 @deallocate(i8* %47, i64 24)
  br label %49

; <label>:49:                                     ; preds = %45, %14
  br label %4
                                                  ; No predecessors!
  ret void
}

declare i64 @receive_until(i8*, i8 signext, i64) #1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @command_loop()
  ret i32 0
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
