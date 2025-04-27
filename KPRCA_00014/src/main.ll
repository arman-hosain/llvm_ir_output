; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmstate_t = type { [16 x i32], [65536 x i8] }

@state = internal global %struct.vmstate_t zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"DONE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"BAD_INIT\00", align 1
@process.opcode_table = internal global [13 x i8*] [i8* blockaddress(@process, %27), i8* blockaddress(@process, %28), i8* blockaddress(@process, %49), i8* blockaddress(@process, %236), i8* blockaddress(@process, %136), i8* blockaddress(@process, %156), i8* blockaddress(@process, %176), i8* blockaddress(@process, %196), i8* blockaddress(@process, %96), i8* blockaddress(@process, %76), i8* blockaddress(@process, %116), i8* blockaddress(@process, %238), i8* blockaddress(@process, %266)], align 16

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.memset.p0i8.i64(i8* bitcast (%struct.vmstate_t* @state to i8*), i8 0, i64 65600, i32 4, i1 false)
  %6 = bitcast i32* %3 to i8*
  %7 = call i32 @read_fully(i8* %6, i64 4)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

; <label>:9:                                      ; preds = %0
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 1767263488
  br i1 %11, label %12, label %13

; <label>:12:                                     ; preds = %9, %0
  br label %54

; <label>:13:                                     ; preds = %9
  %14 = bitcast i32* %4 to i8*
  %15 = call i32 @read_fully(i8* %14, i64 4)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %13
  br label %54

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 31
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

; <label>:22:                                     ; preds = %18
  %23 = call i32 @read_fully(i8* bitcast (%struct.vmstate_t* @state to i8*), i64 64)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

; <label>:25:                                     ; preds = %22
  br label %54

; <label>:26:                                     ; preds = %22
  br label %27

; <label>:27:                                     ; preds = %26, %18
  %28 = load i32, i32* %4, align 4
  %29 = and i32 %28, 65535
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

; <label>:31:                                     ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 65535
  %34 = sext i32 %33 to i64
  %35 = call i32 @read_fully(i8* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 1, i32 0), i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

; <label>:37:                                     ; preds = %31
  br label %54

; <label>:38:                                     ; preds = %31
  br label %39

; <label>:39:                                     ; preds = %38, %27
  br label %40

; <label>:40:                                     ; preds = %39, %50
  %41 = bitcast i32* %5 to i8*
  %42 = call i32 @read_fully(i8* %41, i64 4)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %40
  br label %52

; <label>:45:                                     ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @process(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

; <label>:49:                                     ; preds = %45
  br label %52

; <label>:50:                                     ; preds = %45
  %51 = call i32 @transmit(i32 1, i8* bitcast (%struct.vmstate_t* @state to i8*), i64 64, i64* %2)
  br label %40

; <label>:52:                                     ; preds = %49, %44
  %53 = call i32 @transmit(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i64 4, i64* %2)
  store i32 0, i32* %1, align 4
  br label %56

; <label>:54:                                     ; preds = %37, %25, %17, %12
  %55 = call i32 @transmit(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i64 8, i64* %2)
  store i32 0, i32* %1, align 4
  br label %56

; <label>:56:                                     ; preds = %54, %52
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @read_fully(i8*, i64) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i8*, i8** %4, align 8
  store i8* %8, i8** %6, align 8
  br label %9

; <label>:9:                                      ; preds = %18, %2
  %10 = load i64, i64* %5, align 8
  %11 = icmp ugt i64 %10, 0
  br i1 %11, label %12, label %25

; <label>:12:                                     ; preds = %9
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @receive(i32 0, i8* %13, i64 %14, i64* %7)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %12
  store i32 1, i32* %3, align 4
  br label %26

; <label>:18:                                     ; preds = %12
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %5, align 8
  %21 = sub i64 %20, %19
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  store i8* %24, i8** %6, align 8
  br label %9

; <label>:25:                                     ; preds = %9
  store i32 0, i32* %3, align 4
  br label %26

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @process(i32) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 24
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = ashr i32 %10, 20
  %12 = and i32 %11, 15
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %3, align 4
  %14 = ashr i32 %13, 16
  %15 = and i32 %14, 15
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %3, align 4
  %17 = ashr i32 %16, 0
  %18 = and i32 %17, 65535
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 13
  br i1 %20, label %21, label %26

; <label>:21:                                     ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [13 x i8*], [13 x i8*]* @process.opcode_table, i64 0, i64 %23
  %25 = load i8*, i8** %24, align 8
  br label %296

; <label>:26:                                     ; preds = %1
  br label %27

; <label>:27:                                     ; preds = %26, %296
  store i32 1, i32* %2, align 4
  br label %294

; <label>:28:                                     ; preds = %296
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

; <label>:31:                                     ; preds = %28
  br label %37

; <label>:32:                                     ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  br label %37

; <label>:37:                                     ; preds = %32, %31
  %38 = phi i32 [ 0, %31 ], [ %36, %32 ]
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %38, %39
  %41 = urem i32 %40, 65536
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [65536 x i8], [65536 x i8]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 1), i64 0, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %47
  store i32 %45, i32* %48, align 4
  store i32 0, i32* %2, align 4
  br label %294

; <label>:49:                                     ; preds = %296
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %49
  br label %58

; <label>:53:                                     ; preds = %49
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  br label %58

; <label>:58:                                     ; preds = %53, %52
  %59 = phi i32 [ 0, %52 ], [ %57, %53 ]
  %60 = trunc i32 %59 to i8
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %64

; <label>:63:                                     ; preds = %58
  br label %69

; <label>:64:                                     ; preds = %58
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  br label %69

; <label>:69:                                     ; preds = %64, %63
  %70 = phi i32 [ 0, %63 ], [ %68, %64 ]
  %71 = load i32, i32* %7, align 4
  %72 = add i32 %70, %71
  %73 = urem i32 %72, 65536
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds [65536 x i8], [65536 x i8]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 1), i64 0, i64 %74
  store i8 %60, i8* %75, align 1
  store i32 0, i32* %2, align 4
  br label %294

; <label>:76:                                     ; preds = %296
  %77 = load i32, i32* %6, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %80

; <label>:79:                                     ; preds = %76
  br label %85

; <label>:80:                                     ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  br label %85

; <label>:85:                                     ; preds = %80, %79
  %86 = phi i32 [ 0, %79 ], [ %84, %80 ]
  %87 = load i32, i32* %7, align 4
  %88 = trunc i32 %87 to i16
  %89 = sext i16 %88 to i32
  %90 = or i32 %86, %89
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, %90
  store i32 %95, i32* %93, align 4
  store i32 0, i32* %2, align 4
  br label %294

; <label>:96:                                     ; preds = %296
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %96
  br label %105

; <label>:100:                                    ; preds = %96
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  br label %105

; <label>:105:                                    ; preds = %100, %99
  %106 = phi i32 [ 0, %99 ], [ %104, %100 ]
  %107 = load i32, i32* %7, align 4
  %108 = trunc i32 %107 to i16
  %109 = sext i16 %108 to i32
  %110 = or i32 %106, %109
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %110
  store i32 %115, i32* %113, align 4
  store i32 0, i32* %2, align 4
  br label %294

; <label>:116:                                    ; preds = %296
  %117 = load i32, i32* %6, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %116
  br label %125

; <label>:120:                                    ; preds = %116
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  br label %125

; <label>:125:                                    ; preds = %120, %119
  %126 = phi i32 [ 0, %119 ], [ %124, %120 ]
  %127 = load i32, i32* %7, align 4
  %128 = trunc i32 %127 to i16
  %129 = sext i16 %128 to i32
  %130 = or i32 %126, %129
  %131 = load i32, i32* %5, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = xor i32 %134, %130
  store i32 %135, i32* %133, align 4
  store i32 0, i32* %2, align 4
  br label %294

; <label>:136:                                    ; preds = %296
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %140

; <label>:139:                                    ; preds = %136
  br label %145

; <label>:140:                                    ; preds = %136
  %141 = load i32, i32* %6, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %142
  %144 = load i32, i32* %143, align 4
  br label %145

; <label>:145:                                    ; preds = %140, %139
  %146 = phi i32 [ 0, %139 ], [ %144, %140 ]
  %147 = load i32, i32* %7, align 4
  %148 = trunc i32 %147 to i16
  %149 = sext i16 %148 to i32
  %150 = add i32 %146, %149
  %151 = load i32, i32* %5, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = add i32 %154, %150
  store i32 %155, i32* %153, align 4
  store i32 0, i32* %2, align 4
  br label %294

; <label>:156:                                    ; preds = %296
  %157 = load i32, i32* %6, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %160

; <label>:159:                                    ; preds = %156
  br label %165

; <label>:160:                                    ; preds = %156
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  br label %165

; <label>:165:                                    ; preds = %160, %159
  %166 = phi i32 [ 0, %159 ], [ %164, %160 ]
  %167 = load i32, i32* %7, align 4
  %168 = trunc i32 %167 to i16
  %169 = sext i16 %168 to i32
  %170 = add i32 %166, %169
  %171 = load i32, i32* %5, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = sub i32 %174, %170
  store i32 %175, i32* %173, align 4
  store i32 0, i32* %2, align 4
  br label %294

; <label>:176:                                    ; preds = %296
  %177 = load i32, i32* %6, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

; <label>:179:                                    ; preds = %176
  br label %185

; <label>:180:                                    ; preds = %176
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %182
  %184 = load i32, i32* %183, align 4
  br label %185

; <label>:185:                                    ; preds = %180, %179
  %186 = phi i32 [ 0, %179 ], [ %184, %180 ]
  %187 = load i32, i32* %7, align 4
  %188 = trunc i32 %187 to i16
  %189 = sext i16 %188 to i32
  %190 = add i32 %186, %189
  %191 = load i32, i32* %5, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = mul i32 %194, %190
  store i32 %195, i32* %193, align 4
  store i32 0, i32* %2, align 4
  br label %294

; <label>:196:                                    ; preds = %296
  %197 = load i32, i32* %6, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %200

; <label>:199:                                    ; preds = %196
  br label %205

; <label>:200:                                    ; preds = %196
  %201 = load i32, i32* %6, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %202
  %204 = load i32, i32* %203, align 4
  br label %205

; <label>:205:                                    ; preds = %200, %199
  %206 = phi i32 [ 0, %199 ], [ %204, %200 ]
  %207 = load i32, i32* %7, align 4
  %208 = trunc i32 %207 to i16
  %209 = sext i16 %208 to i32
  %210 = add i32 %206, %209
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %213

; <label>:212:                                    ; preds = %205
  store i32 1, i32* %2, align 4
  br label %294

; <label>:213:                                    ; preds = %205
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %6, align 4
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %221

; <label>:220:                                    ; preds = %213
  br label %226

; <label>:221:                                    ; preds = %213
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %223
  %225 = load i32, i32* %224, align 4
  br label %226

; <label>:226:                                    ; preds = %221, %220
  %227 = phi i32 [ 0, %220 ], [ %225, %221 ]
  %228 = load i32, i32* %7, align 4
  %229 = trunc i32 %228 to i16
  %230 = sext i16 %229 to i32
  %231 = add i32 %227, %230
  %232 = udiv i32 %217, %231
  %233 = load i32, i32* %5, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %234
  store i32 %232, i32* %235, align 4
  store i32 0, i32* %2, align 4
  br label %294

; <label>:236:                                    ; preds = %296
  %237 = call i32 @process_syscall()
  store i32 %237, i32* %2, align 4
  br label %294

; <label>:238:                                    ; preds = %296
  %239 = load i32, i32* %6, align 4
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %242

; <label>:241:                                    ; preds = %238
  br label %247

; <label>:242:                                    ; preds = %238
  %243 = load i32, i32* %6, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %244
  %246 = load i32, i32* %245, align 4
  br label %247

; <label>:247:                                    ; preds = %242, %241
  %248 = phi i32 [ 0, %241 ], [ %246, %242 ]
  %249 = load i32, i32* %7, align 4
  %250 = and i32 %249, 15
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %253

; <label>:252:                                    ; preds = %247
  br label %259

; <label>:253:                                    ; preds = %247
  %254 = load i32, i32* %7, align 4
  %255 = and i32 %254, 15
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %256
  %258 = load i32, i32* %257, align 4
  br label %259

; <label>:259:                                    ; preds = %253, %252
  %260 = phi i32 [ 0, %252 ], [ %258, %253 ]
  %261 = icmp ult i32 %248, %260
  %262 = zext i1 %261 to i32
  %263 = load i32, i32* %5, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %264
  store i32 %262, i32* %265, align 4
  store i32 0, i32* %2, align 4
  br label %294

; <label>:266:                                    ; preds = %296
  %267 = load i32, i32* %6, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %270

; <label>:269:                                    ; preds = %266
  br label %275

; <label>:270:                                    ; preds = %266
  %271 = load i32, i32* %6, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %272
  %274 = load i32, i32* %273, align 4
  br label %275

; <label>:275:                                    ; preds = %270, %269
  %276 = phi i32 [ 0, %269 ], [ %274, %270 ]
  %277 = load i32, i32* %7, align 4
  %278 = and i32 %277, 15
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %280, label %281

; <label>:280:                                    ; preds = %275
  br label %287

; <label>:281:                                    ; preds = %275
  %282 = load i32, i32* %7, align 4
  %283 = and i32 %282, 15
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %284
  %286 = load i32, i32* %285, align 4
  br label %287

; <label>:287:                                    ; preds = %281, %280
  %288 = phi i32 [ 0, %280 ], [ %286, %281 ]
  %289 = icmp ule i32 %276, %288
  %290 = zext i1 %289 to i32
  %291 = load i32, i32* %5, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [16 x i32], [16 x i32]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0), i64 0, i64 %292
  store i32 %290, i32* %293, align 4
  store i32 0, i32* %2, align 4
  br label %294

; <label>:294:                                    ; preds = %287, %259, %236, %226, %212, %185, %165, %145, %125, %105, %85, %69, %37, %27
  %295 = load i32, i32* %2, align 4
  ret i32 %295

; <label>:296:                                    ; preds = %21
  %297 = phi i8* [ %25, %21 ]
  indirectbr i8* %297, [label %27, label %28, label %49, label %236, label %136, label %156, label %176, label %196, label %96, label %76, label %116, label %238, label %266]
}

declare i32 @transmit(i32, i8*, i64, i64*) #2

declare i32 @receive(i32, i8*, i64, i64*) #2

; Function Attrs: noinline nounwind uwtable
define internal i32 @process_syscall() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = load i32, i32* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0, i64 1), align 4
  switch i32 %7, label %50 [
    i32 0, label %8
    i32 1, label %29
  ]

; <label>:8:                                      ; preds = %0
  %9 = load i32, i32* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0, i64 2), align 4
  %10 = trunc i32 %9 to i16
  store i16 %10, i16* %3, align 2
  %11 = load i32, i32* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0, i64 3), align 4
  %12 = trunc i32 %11 to i16
  store i16 %12, i16* %4, align 2
  %13 = load i16, i16* %3, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* %4, align 2
  %16 = zext i16 %15 to i32
  %17 = add nsw i32 %14, %16
  %18 = icmp sgt i32 %17, 65536
  br i1 %18, label %19, label %20

; <label>:19:                                     ; preds = %8
  store i32 1, i32* %1, align 4
  br label %51

; <label>:20:                                     ; preds = %8
  %21 = load i16, i16* %3, align 2
  %22 = zext i16 %21 to i32
  %23 = srem i32 %22, 65536
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [65536 x i8], [65536 x i8]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 1), i64 0, i64 %24
  %26 = load i16, i16* %4, align 2
  %27 = zext i16 %26 to i64
  %28 = call i32 @transmit(i32 1, i8* %25, i64 %27, i64* %2)
  store i32 0, i32* %1, align 4
  br label %51

; <label>:29:                                     ; preds = %0
  %30 = load i32, i32* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0, i64 2), align 4
  %31 = trunc i32 %30 to i16
  store i16 %31, i16* %5, align 2
  %32 = load i32, i32* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 0, i64 3), align 4
  %33 = trunc i32 %32 to i16
  store i16 %33, i16* %6, align 2
  %34 = load i16, i16* %5, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* %6, align 2
  %37 = zext i16 %36 to i32
  %38 = add nsw i32 %35, %37
  %39 = icmp sgt i32 %38, 65536
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %29
  store i32 1, i32* %1, align 4
  br label %51

; <label>:41:                                     ; preds = %29
  %42 = load i16, i16* %5, align 2
  %43 = zext i16 %42 to i32
  %44 = srem i32 %43, 65536
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [65536 x i8], [65536 x i8]* getelementptr inbounds (%struct.vmstate_t, %struct.vmstate_t* @state, i32 0, i32 1), i64 0, i64 %45
  %47 = load i16, i16* %6, align 2
  %48 = zext i16 %47 to i64
  %49 = call i32 @read_fully(i8* %46, i64 %48)
  store i32 0, i32* %1, align 4
  br label %51

; <label>:50:                                     ; preds = %0
  store i32 1, i32* %1, align 4
  br label %51

; <label>:51:                                     ; preds = %50, %41, %40, %20, %19
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
