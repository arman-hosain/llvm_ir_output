; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.VGF_PARSED_FILE = type { %struct.VGF_HEADER, %struct.VGF_OBJECT_TABLE*, i8, %struct.VGF_COLOR_HEADER* }
%struct.VGF_HEADER = type <{ i32, i16, i16, i16, i8 }>
%struct.VGF_OBJECT_TABLE = type { %struct.VGF_OBJECT_HEADER, %union.anon, %struct.VGF_OBJECT_TABLE* }
%struct.VGF_OBJECT_HEADER = type { i8, i8, i8, i8 }
%union.anon = type { %struct.VGF_DRAW_TRIANGLE }
%struct.VGF_DRAW_TRIANGLE = type { i16, i16, i16, i16, i16, i16 }
%struct.VGF_COLOR_HEADER = type { i8, i8, i8 }

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.VGF_PARSED_FILE*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @setup_io(i32 0, i32 1)
  %13 = call zeroext i16 @read_u16()
  store i16 %13, i16* %3, align 2
  %14 = load i16, i16* %3, align 2
  %15 = sext i16 %14 to i32
  %16 = icmp sgt i32 %15, 20000
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %0
  call void @_terminate(i32 -3) #3
  unreachable

; <label>:18:                                     ; preds = %0
  %19 = call i8* @my_malloc(i64 20000)
  store i8* %19, i8** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %5, align 4
  br label %20

; <label>:20:                                     ; preds = %31, %18
  %21 = load i32, i32* %5, align 4
  %22 = load i16, i16* %3, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp ult i32 %21, %23
  br i1 %24, label %25, label %34

; <label>:25:                                     ; preds = %20
  %26 = call zeroext i8 @read_u8()
  %27 = load i8*, i8** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i8, i8* %27, i64 %29
  store i8 %26, i8* %30, align 1
  br label %31

; <label>:31:                                     ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %20

; <label>:34:                                     ; preds = %20
  %35 = load i32, i32* %5, align 4
  %36 = load i16, i16* %3, align 2
  %37 = sext i16 %36 to i32
  %38 = icmp ne i32 %35, %37
  br i1 %38, label %39, label %40

; <label>:39:                                     ; preds = %34
  call void @_terminate(i32 -3) #3
  unreachable

; <label>:40:                                     ; preds = %34
  %41 = load i8*, i8** %4, align 8
  %42 = load i16, i16* %3, align 2
  %43 = sext i16 %42 to i32
  %44 = call i32 @vgf_parse_data(i8* %41, i32 %43, %struct.VGF_PARSED_FILE** %2)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %40
  call void @_terminate(i32 -3) #3
  unreachable

; <label>:47:                                     ; preds = %40
  %48 = load i8*, i8** %4, align 8
  call void @my_free(i8* %48)
  %49 = load %struct.VGF_PARSED_FILE*, %struct.VGF_PARSED_FILE** %2, align 8
  %50 = call i32 @vgf_get_render_size(%struct.VGF_PARSED_FILE* %49)
  store i32 %50, i32* %6, align 4
  %51 = icmp sle i32 %50, 0
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %47
  call void @_terminate(i32 -3) #3
  unreachable

; <label>:53:                                     ; preds = %47
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = zext i32 %55 to i64
  %57 = call i8* @my_malloc(i64 %56)
  store i8* %57, i8** %7, align 8
  %58 = load %struct.VGF_PARSED_FILE*, %struct.VGF_PARSED_FILE** %2, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @vgf_render_file(%struct.VGF_PARSED_FILE* %58, i8* %59, i32* %8)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

; <label>:62:                                     ; preds = %53
  call void @_terminate(i32 -3) #3
  unreachable

; <label>:63:                                     ; preds = %53
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.VGF_PARSED_FILE*, %struct.VGF_PARSED_FILE** %2, align 8
  %66 = call zeroext i16 @vgf_get_width(%struct.VGF_PARSED_FILE* %65)
  %67 = zext i16 %66 to i32
  %68 = load %struct.VGF_PARSED_FILE*, %struct.VGF_PARSED_FILE** %2, align 8
  %69 = call zeroext i16 @vgf_get_height(%struct.VGF_PARSED_FILE* %68)
  %70 = zext i16 %69 to i32
  %71 = call i32 @pixelmap_write_file(i8** %10, i32* %9, i8* %64, i32 %67, i32 %70)
  %72 = icmp sle i32 %71, 0
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %63
  call void @_terminate(i32 -3) #3
  unreachable

; <label>:74:                                     ; preds = %63
  %75 = load i8*, i8** %7, align 8
  call void @my_free(i8* %75)
  %76 = load i32, i32* %9, align 4
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %78

; <label>:78:                                     ; preds = %87, %74
  %79 = load i64, i64* %12, align 8
  %80 = load i64, i64* %11, align 8
  %81 = icmp ult i64 %79, %80
  br i1 %81, label %82, label %90

; <label>:82:                                     ; preds = %78
  %83 = load i8*, i8** %10, align 8
  %84 = load i64, i64* %12, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i8, i8* %85, align 1
  call void @write_u8(i8 zeroext %86)
  br label %87

; <label>:87:                                     ; preds = %82
  %88 = load i64, i64* %12, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %12, align 8
  br label %78

; <label>:90:                                     ; preds = %78
  %91 = load i8*, i8** %10, align 8
  call void @my_free(i8* %91)
  %92 = load %struct.VGF_PARSED_FILE*, %struct.VGF_PARSED_FILE** %2, align 8
  call void @vgf_destroy_file(%struct.VGF_PARSED_FILE* %92)
  ret i32 0
}

declare void @setup_io(i32, i32) #1

declare zeroext i16 @read_u16() #1

; Function Attrs: noreturn
declare void @_terminate(i32) #2

declare i8* @my_malloc(i64) #1

declare zeroext i8 @read_u8() #1

declare i32 @vgf_parse_data(i8*, i32, %struct.VGF_PARSED_FILE**) #1

declare void @my_free(i8*) #1

declare i32 @vgf_get_render_size(%struct.VGF_PARSED_FILE*) #1

declare i32 @vgf_render_file(%struct.VGF_PARSED_FILE*, i8*, i32*) #1

declare i32 @pixelmap_write_file(i8**, i32*, i8*, i32, i32) #1

declare zeroext i16 @vgf_get_width(%struct.VGF_PARSED_FILE*) #1

declare zeroext i16 @vgf_get_height(%struct.VGF_PARSED_FILE*) #1

declare void @write_u8(i8 zeroext) #1

declare void @vgf_destroy_file(%struct.VGF_PARSED_FILE*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
