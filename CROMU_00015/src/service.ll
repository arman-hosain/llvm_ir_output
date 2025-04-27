; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Planet = type { [20 x i8], double, double, double, double, double, double, double, double, i32, i32, [30 x %struct.Country*] }
%struct.Country = type { [20 x i8], [20 x i8], i32, i32, [10 x i8*], i32, [100 x %struct.Border*], i32, [10 x %struct.Territory*] }
%struct.Border = type { double, double, double, double }
%struct.Territory = type { [20 x i8], [30 x i8], i32, i32, i32, [100 x %struct.Border*], i32, [10 x %struct.County*] }
%struct.County = type { [20 x i8], [20 x i8], i32, double, double, i32, [20 x %struct.City*], i32, [20 x %struct.Border*] }
%struct.City = type { [20 x i8], [30 x i8], [30 x i8], i32, i32, [10 x %struct.Border*] }
%struct.string = type { i8*, i32, i32 }

@solarSystem = common global [10 x %struct.Planet*] zeroinitializer, align 16
@.str = private unnamed_addr constant [30 x i8] c"\0APlanet Markup Language Main\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"1) Print Planets\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"2) Add PML\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"3) Add Planet\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"4) Select Planet\0A\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"5) Exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Selection: \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"PML: \00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"\0A-> \00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"@d) @s\0A\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"Invalid\0A\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"Exitting..\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"Invalid...\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [30 x i8], align 16
  %4 = alloca %struct.string*, align 8
  %5 = alloca %struct.Planet*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.Planet*, align 8
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  store %struct.string* null, %struct.string** %4, align 8
  store %struct.Planet* null, %struct.Planet** %5, align 8
  store i8* null, i8** %6, align 8
  call void @llvm.memset.p0i8.i64(i8* bitcast ([10 x %struct.Planet*]* @solarSystem to i8*), i8 0, i64 80, i32 16, i1 false)
  br label %8

; <label>:8:                                      ; preds = %0, %45, %57, %63, %119, %188, %197, %217
  %9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0))
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0))
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i32 0, i32 0))
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0))
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i32 0, i32 0))
  %16 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %16, i8 0, i64 30, i32 16, i1 false)
  %17 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i32 0, i32 0
  %18 = call i64 @receive_until(i8* %17, i8 signext 10, i64 4)
  %19 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i32 0, i32 0
  %20 = call i32 @atoi(i8* %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %2, align 4
  switch i32 %21, label %215 [
    i32 1, label %22
    i32 2, label %42
    i32 3, label %98
    i32 4, label %152
    i32 5, label %213
  ]

; <label>:22:                                     ; preds = %8
  store i32 0, i32* %2, align 4
  br label %23

; <label>:23:                                     ; preds = %38, %22
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 10
  br i1 %25, label %26, label %41

; <label>:26:                                     ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [10 x %struct.Planet*], [10 x %struct.Planet*]* @solarSystem, i64 0, i64 %28
  %30 = load %struct.Planet*, %struct.Planet** %29, align 8
  %31 = icmp ne %struct.Planet* %30, null
  br i1 %31, label %32, label %37

; <label>:32:                                     ; preds = %26
  %33 = load i32, i32* %2, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [10 x %struct.Planet*], [10 x %struct.Planet*]* @solarSystem, i64 0, i64 %34
  %36 = load %struct.Planet*, %struct.Planet** %35, align 8
  call void @printPlanetInfo(%struct.Planet* %36)
  br label %37

; <label>:37:                                     ; preds = %32, %26
  br label %38

; <label>:38:                                     ; preds = %37
  %39 = load i32, i32* %2, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %2, align 4
  br label %23

; <label>:41:                                     ; preds = %23
  br label %217

; <label>:42:                                     ; preds = %8
  %43 = call i32 @allocate(i64 4096, i32 0, i8** %6)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

; <label>:45:                                     ; preds = %42
  store i8* null, i8** %6, align 8
  br label %8

; <label>:46:                                     ; preds = %42
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i32 0, i32 0))
  %48 = load i8*, i8** %6, align 8
  call void @llvm.memset.p0i8.i64(i8* %48, i8 0, i64 4096, i32 1, i1 false)
  %49 = load i8*, i8** %6, align 8
  %50 = call i64 @receive_until(i8* %49, i8 signext 10, i64 4095)
  %51 = load i8*, i8** %6, align 8
  %52 = call %struct.string* @initString(i8* %51)
  store %struct.string* %52, %struct.string** %4, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @deallocate(i8* %53, i64 4096)
  %55 = load %struct.string*, %struct.string** %4, align 8
  %56 = icmp eq %struct.string* %55, null
  br i1 %56, label %57, label %58

; <label>:57:                                     ; preds = %46
  br label %8

; <label>:58:                                     ; preds = %46
  %59 = load %struct.string*, %struct.string** %4, align 8
  %60 = getelementptr inbounds %struct.string, %struct.string* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %67

; <label>:63:                                     ; preds = %58
  %64 = load %struct.string*, %struct.string** %4, align 8
  %65 = bitcast %struct.string* %64 to i8*
  %66 = call i32 @deallocate(i8* %65, i64 16)
  br label %8

; <label>:67:                                     ; preds = %58
  br label %68

; <label>:68:                                     ; preds = %67
  store i32 0, i32* %2, align 4
  br label %69

; <label>:69:                                     ; preds = %93, %78, %68
  %70 = load i32, i32* %2, align 4
  %71 = icmp slt i32 %70, 10
  br i1 %71, label %72, label %96

; <label>:72:                                     ; preds = %69
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [10 x %struct.Planet*], [10 x %struct.Planet*]* @solarSystem, i64 0, i64 %74
  %76 = load %struct.Planet*, %struct.Planet** %75, align 8
  %77 = icmp ne %struct.Planet* %76, null
  br i1 %77, label %78, label %81

; <label>:78:                                     ; preds = %72
  %79 = load i32, i32* %2, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %2, align 4
  br label %69

; <label>:81:                                     ; preds = %72
  %82 = load %struct.string*, %struct.string** %4, align 8
  %83 = call %struct.Planet* @planetTopLevel(%struct.string* %82)
  %84 = load i32, i32* %2, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [10 x %struct.Planet*], [10 x %struct.Planet*]* @solarSystem, i64 0, i64 %85
  store %struct.Planet* %83, %struct.Planet** %86, align 8
  %87 = load i32, i32* %2, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [10 x %struct.Planet*], [10 x %struct.Planet*]* @solarSystem, i64 0, i64 %88
  %90 = load %struct.Planet*, %struct.Planet** %89, align 8
  %91 = icmp eq %struct.Planet* %90, null
  br i1 %91, label %92, label %93

; <label>:92:                                     ; preds = %81
  br label %96

; <label>:93:                                     ; preds = %81
  %94 = load i32, i32* %2, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %2, align 4
  br label %69

; <label>:96:                                     ; preds = %92, %69
  %97 = load %struct.string*, %struct.string** %4, align 8
  call void @freeString(%struct.string* %97)
  br label %217

; <label>:98:                                     ; preds = %8
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %100 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %100, i8 0, i64 30, i32 16, i1 false)
  %101 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i32 0, i32 0
  %102 = call i64 @receive_until(i8* %101, i8 signext 10, i64 29)
  store i32 0, i32* %2, align 4
  br label %103

; <label>:103:                                    ; preds = %113, %98
  %104 = load i32, i32* %2, align 4
  %105 = icmp slt i32 %104, 10
  br i1 %105, label %106, label %116

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %2, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [10 x %struct.Planet*], [10 x %struct.Planet*]* @solarSystem, i64 0, i64 %108
  %110 = load %struct.Planet*, %struct.Planet** %109, align 8
  %111 = icmp eq %struct.Planet* %110, null
  br i1 %111, label %112, label %113

; <label>:112:                                    ; preds = %106
  br label %116

; <label>:113:                                    ; preds = %106
  %114 = load i32, i32* %2, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %2, align 4
  br label %103

; <label>:116:                                    ; preds = %112, %103
  %117 = load i32, i32* %2, align 4
  %118 = icmp eq i32 %117, 10
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %116
  br label %8

; <label>:120:                                    ; preds = %116
  %121 = bitcast %struct.Planet** %5 to i8**
  %122 = call i32 @allocate(i64 336, i32 0, i8** %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

; <label>:124:                                    ; preds = %120
  store %struct.Planet* null, %struct.Planet** %5, align 8
  br label %217

; <label>:125:                                    ; preds = %120
  %126 = load %struct.Planet*, %struct.Planet** %5, align 8
  call void @initPlanet(%struct.Planet* %126)
  %127 = load %struct.Planet*, %struct.Planet** %5, align 8
  %128 = load i32, i32* %2, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds [10 x %struct.Planet*], [10 x %struct.Planet*]* @solarSystem, i64 0, i64 %129
  store %struct.Planet* %127, %struct.Planet** %130, align 8
  store i32 0, i32* %2, align 4
  br label %131

; <label>:131:                                    ; preds = %139, %125
  %132 = load i32, i32* %2, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i64 0, i64 %133
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = call i32 @isalnum(i32 %136) #4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %151

; <label>:139:                                    ; preds = %131
  %140 = load i32, i32* %2, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i64 0, i64 %141
  %143 = load i8, i8* %142, align 1
  %144 = load %struct.Planet*, %struct.Planet** %5, align 8
  %145 = getelementptr inbounds %struct.Planet, %struct.Planet* %144, i32 0, i32 0
  %146 = load i32, i32* %2, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [20 x i8], [20 x i8]* %145, i64 0, i64 %147
  store i8 %143, i8* %148, align 1
  %149 = load i32, i32* %2, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %2, align 4
  br label %131

; <label>:151:                                    ; preds = %131
  br label %217

; <label>:152:                                    ; preds = %8
  store i32 0, i32* %2, align 4
  br label %153

; <label>:153:                                    ; preds = %173, %152
  %154 = load i32, i32* %2, align 4
  %155 = icmp slt i32 %154, 10
  br i1 %155, label %156, label %176

; <label>:156:                                    ; preds = %153
  %157 = load i32, i32* %2, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [10 x %struct.Planet*], [10 x %struct.Planet*]* @solarSystem, i64 0, i64 %158
  %160 = load %struct.Planet*, %struct.Planet** %159, align 8
  %161 = icmp ne %struct.Planet* %160, null
  br i1 %161, label %162, label %172

; <label>:162:                                    ; preds = %156
  %163 = load i32, i32* %2, align 4
  %164 = add nsw i32 %163, 1
  %165 = load i32, i32* %2, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [10 x %struct.Planet*], [10 x %struct.Planet*]* @solarSystem, i64 0, i64 %166
  %168 = load %struct.Planet*, %struct.Planet** %167, align 8
  %169 = getelementptr inbounds %struct.Planet, %struct.Planet* %168, i32 0, i32 0
  %170 = getelementptr inbounds [20 x i8], [20 x i8]* %169, i32 0, i32 0
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i32 0, i32 0), i32 %164, i8* %170)
  br label %172

; <label>:172:                                    ; preds = %162, %156
  br label %173

; <label>:173:                                    ; preds = %172
  %174 = load i32, i32* %2, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %2, align 4
  br label %153

; <label>:176:                                    ; preds = %153
  %177 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i32 0, i32 0
  call void @llvm.memset.p0i8.i64(i8* %177, i8 0, i64 30, i32 16, i1 false)
  %178 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0))
  %179 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i32 0, i32 0
  %180 = call i64 @receive_until(i8* %179, i8 signext 10, i64 4)
  %181 = getelementptr inbounds [30 x i8], [30 x i8]* %3, i32 0, i32 0
  %182 = call i32 @atoi(i8* %181)
  store i32 %182, i32* %2, align 4
  %183 = load i32, i32* %2, align 4
  %184 = icmp slt i32 %183, 1
  br i1 %184, label %188, label %185

; <label>:185:                                    ; preds = %176
  %186 = load i32, i32* %2, align 4
  %187 = icmp sgt i32 %186, 10
  br i1 %187, label %188, label %190

; <label>:188:                                    ; preds = %185, %176
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  br label %8

; <label>:190:                                    ; preds = %185
  %191 = load i32, i32* %2, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds [10 x %struct.Planet*], [10 x %struct.Planet*]* @solarSystem, i64 0, i64 %193
  %195 = load %struct.Planet*, %struct.Planet** %194, align 8
  %196 = icmp eq %struct.Planet* %195, null
  br i1 %196, label %197, label %199

; <label>:197:                                    ; preds = %190
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0))
  br label %8

; <label>:199:                                    ; preds = %190
  %200 = load i32, i32* %2, align 4
  %201 = sub nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [10 x %struct.Planet*], [10 x %struct.Planet*]* @solarSystem, i64 0, i64 %202
  %204 = load %struct.Planet*, %struct.Planet** %203, align 8
  %205 = call i32 @planetMenu(%struct.Planet* %204)
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %212

; <label>:207:                                    ; preds = %199
  %208 = load i32, i32* %2, align 4
  %209 = sub nsw i32 %208, 1
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [10 x %struct.Planet*], [10 x %struct.Planet*]* @solarSystem, i64 0, i64 %210
  store %struct.Planet* null, %struct.Planet** %211, align 8
  br label %212

; <label>:212:                                    ; preds = %207, %199
  br label %217

; <label>:213:                                    ; preds = %8
  %214 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i32 0, i32 0))
  ret i32 0

; <label>:215:                                    ; preds = %8
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i32 0, i32 0))
  br label %217

; <label>:217:                                    ; preds = %215, %212, %151, %124, %96, %41
  br label %8
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #1

declare i32 @printf(i8*, ...) #2

declare i64 @receive_until(i8*, i8 signext, i64) #2

declare i32 @atoi(i8*) #2

declare void @printPlanetInfo(%struct.Planet*) #2

declare i32 @allocate(i64, i32, i8**) #2

declare %struct.string* @initString(i8*) #2

declare i32 @deallocate(i8*, i64) #2

declare %struct.Planet* @planetTopLevel(%struct.string*) #2

declare void @freeString(%struct.string*) #2

declare void @initPlanet(%struct.Planet*) #2

; Function Attrs: nounwind readonly
declare i32 @isalnum(i32) #3

declare i32 @planetMenu(%struct.Planet*) #2

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
