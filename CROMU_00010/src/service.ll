; ModuleID = 'service.c'
source_filename = "service.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sList_s = type { %struct.sListNode_s*, i32, i32 }
%struct.sListNode_s = type { [4080 x i8], %struct.sListNode_s*, i32 }
%struct.map_s = type { [32 x i8], %struct.dList_s* }
%struct.dList_s = type { %struct.dListNode_s*, i32 }
%struct.dListNode_s = type { %struct.dListNode_s*, %struct.dListNode_s*, i8*, [128 x i8] }

@.str = private unnamed_addr constant [9 x i8] c"Newville\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"This is Mapper.\00", align 1

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sList_s*, align 8
  %3 = alloca %struct.map_s*, align 8
  store i32 0, i32* %1, align 4
  %4 = call %struct.sList_s* (...) @init_turnList()
  store %struct.sList_s* %4, %struct.sList_s** %2, align 8
  %5 = call %struct.map_s* @init_map(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i32 0, i32 0))
  store %struct.map_s* %5, %struct.map_s** %3, align 8
  call void @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  %6 = load %struct.map_s*, %struct.map_s** %3, align 8
  %7 = load %struct.sList_s*, %struct.sList_s** %2, align 8
  call void @prompt_loop(%struct.map_s* %6, %struct.sList_s* %7)
  ret i32 1
}

declare %struct.sList_s* @init_turnList(...) #1

declare %struct.map_s* @init_map(i8*) #1

declare void @puts(i8*) #1

declare void @prompt_loop(%struct.map_s*, %struct.sList_s*) #1

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
