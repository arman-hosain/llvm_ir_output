; ModuleID = 'game_sultan.c'
source_filename = "game_sultan.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.player_t = type { i32, i32, i32 }
%struct.card = type { i32, i32 }
%struct.squarerabbit = type { %struct.deck*, %struct.hand*, %struct.hand*, i32, i32, i8, i8, i8, i8 }
%struct.deck = type { [52 x %struct.card], i32 }
%struct.hand = type { %struct.card*, %struct.hand* }

@.str = private unnamed_addr constant [24 x i8] c"Game Sultan: Main Menu\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"1. Square Rabbit\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"2. Quit\0A\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Select:-@ \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"4\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"7\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"8\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"9\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"******************\0A\00", align 1
@.str.21 = private unnamed_addr constant [20 x i8] c"* Square Rabbit! *\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Total Money: $%d\0A\00", align 1
@g_player = internal global %struct.player_t zeroinitializer, align 4
@.str.23 = private unnamed_addr constant [33 x i8] c"\0AType QUIT to exit to main menu\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Place Bet (100, 200, 500, 1000): \00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"Bad Bet\0A\0A\00", align 1
@.str.27 = private unnamed_addr constant [43 x i8] c"Not enough money, bet with a lower amount\0A\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"Square Rabbit!\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"Dealer has a Duck... Insurance? (y\5Cn): \00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"INVALID CHOICE\00", align 1
@.str.31 = private unnamed_addr constant [19 x i8] c"CAN'T DOUBLE DOWN'\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"CAN'T SPLIT\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"Enter a number greater than 0: \00", align 1
@.str.35 = private unnamed_addr constant [15 x i8] c"INVALID INPUT\0A\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"Exiting...\0A\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"*************************\0A\00", align 1
@.str.39 = private unnamed_addr constant [27 x i8] c"*Welcome to Game Sultan!*\0A\00", align 1
@.str.40 = private unnamed_addr constant [28 x i8] c"*************************\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [36 x i8] c"Bad Choice. Select another option\0A\0A\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"Thanks for playing!\0A\00", align 1
@.str.43 = private unnamed_addr constant [18 x i8] c"Dealer: |%s%s|?|\0A\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"----------------\0A\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"Dealer: |\00", align 1
@.str.46 = private unnamed_addr constant [6 x i8] c"%s%s|\00", align 1
@.str.47 = private unnamed_addr constant [15 x i8] c"    Score: %d\0A\00", align 1
@.str.48 = private unnamed_addr constant [33 x i8] c"-------------------------------\0A\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"Player: |\00", align 1
@.str.50 = private unnamed_addr constant [12 x i8] c"Select (H/S\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"/D\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"/X\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"): \00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"Split %d: |\00", align 1
@.str.55 = private unnamed_addr constant [33 x i8] c"  Busted! Better luck next time\0A\00", align 1
@.str.56 = private unnamed_addr constant [11 x i8] c"  Winner!\0A\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"  Pushed.\0A\00", align 1
@.str.58 = private unnamed_addr constant [16 x i8] c"  Dealer Wins.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @print_game_menu() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i32 0, i32 0))
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i32 0, i32 0))
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0))
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind uwtable
define i8* @cardtos(%struct.card*) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.card*, align 8
  store %struct.card* %0, %struct.card** %3, align 8
  %4 = load %struct.card*, %struct.card** %3, align 8
  %5 = getelementptr inbounds %struct.card, %struct.card* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %21 [
    i32 0, label %7
    i32 1, label %8
    i32 2, label %9
    i32 3, label %10
    i32 4, label %11
    i32 5, label %12
    i32 6, label %13
    i32 7, label %14
    i32 8, label %15
    i32 9, label %16
    i32 10, label %17
    i32 11, label %18
    i32 12, label %19
    i32 13, label %20
  ]

; <label>:7:                                      ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:8:                                      ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:9:                                      ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:10:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:11:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:12:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:13:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:14:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:15:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:16:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:17:                                     ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:18:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:19:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:20:                                     ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:21:                                     ; preds = %1
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i32 0, i32 0), i8** %2, align 8
  br label %22

; <label>:22:                                     ; preds = %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

; Function Attrs: noinline nounwind uwtable
define i8* @suittos(%struct.card*) #0 {
  %2 = alloca %struct.card*, align 8
  store %struct.card* %0, %struct.card** %2, align 8
  ret i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i32 0, i32 0)
}

; Function Attrs: noinline nounwind uwtable
define void @play_squarerabbit() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  %5 = alloca [512 x i8], align 16
  store i32 0, i32* %1, align 4
  store i8 0, i8* %4, align 1
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.21, i32 0, i32 0))
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i32 0, i32 0))
  br label %9

; <label>:9:                                      ; preds = %131, %44, %38, %21, %0
  %10 = load i32, i32* %1, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  br i1 %12, label %13, label %135

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 0), align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0), i32 %14)
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.23, i32 0, i32 0))
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.24, i32 0, i32 0))
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %19 = call i32 @readline(i32 0, i8* %18, i64 512)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %13
  br label %9

; <label>:22:                                     ; preds = %13
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %24 = call i32 @memcmp(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.25, i32 0, i32 0), i64 5)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %22
  br label %135

; <label>:27:                                     ; preds = %22
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i32 0, i32 0
  %29 = call i64 @strtol(i8* %28, i8** null, i32 10)
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* %2, align 4
  switch i32 %31, label %34 [
    i32 100, label %32
    i32 200, label %32
    i32 500, label %32
    i32 1000, label %32
  ]

; <label>:32:                                     ; preds = %27, %27, %27, %27
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 2), align 4
  br label %35

; <label>:34:                                     ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %35

; <label>:35:                                     ; preds = %34, %32
  %36 = load i32, i32* %2, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

; <label>:38:                                     ; preds = %35
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0))
  br label %9

; <label>:40:                                     ; preds = %35
  %41 = load i32, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 2), align 4
  %42 = load i32, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 0), align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %46

; <label>:44:                                     ; preds = %40
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.27, i32 0, i32 0))
  br label %9

; <label>:46:                                     ; preds = %40
  %47 = load i32, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 2), align 4
  %48 = call i32 @deal_srabbit(i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load i32, i32* %3, align 4
  switch i32 %49, label %131 [
    i32 0, label %50
    i32 1, label %53
    i32 2, label %55
    i32 3, label %86
  ]

; <label>:50:                                     ; preds = %46
  %51 = call i32 @print_cards()
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0))
  br label %131

; <label>:53:                                     ; preds = %46
  %54 = call i32 @print_cards()
  br label %131

; <label>:55:                                     ; preds = %46
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.29, i32 0, i32 0))
  store i8 0, i8* %4, align 1
  br label %57

; <label>:57:                                     ; preds = %67, %55
  %58 = load i8, i8* %4, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp ne i32 %59, 121
  br i1 %60, label %61, label %65

; <label>:61:                                     ; preds = %57
  %62 = load i8, i8* %4, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 110
  br label %65

; <label>:65:                                     ; preds = %61, %57
  %66 = phi i1 [ false, %57 ], [ %64, %61 ]
  br i1 %66, label %67, label %69

; <label>:67:                                     ; preds = %65
  %68 = call signext i8 @readchar(i32 0)
  store i8 %68, i8* %4, align 1
  br label %57

; <label>:69:                                     ; preds = %65
  %70 = load i8, i8* %4, align 1
  %71 = sext i8 %70 to i32
  %72 = icmp eq i32 %71, 121
  br i1 %72, label %73, label %74

; <label>:73:                                     ; preds = %69
  call void (...) @pay_insurance()
  br label %74

; <label>:74:                                     ; preds = %73, %69
  %75 = call i32 (...) @check_dealer_squarerabbit()
  %76 = call i32 (...) @check_dealer_squarerabbit2()
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

; <label>:78:                                     ; preds = %74
  %79 = call %struct.squarerabbit* (...) @get_srabbit_game()
  %80 = call i32 @check_player_squarerabbit(%struct.squarerabbit* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

; <label>:82:                                     ; preds = %78
  %83 = call i32 @print_cards()
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i32 0, i32 0))
  br label %131

; <label>:85:                                     ; preds = %78, %74
  br label %86

; <label>:86:                                     ; preds = %46, %85
  br label %87

; <label>:87:                                     ; preds = %128, %86
  %88 = call i32 @print_cards()
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %130

; <label>:90:                                     ; preds = %87
  %91 = call signext i8 @readchar(i32 0)
  store i8 %91, i8* %4, align 1
  %92 = load i8, i8* %4, align 1
  %93 = sext i8 %92 to i32
  switch i32 %93, label %126 [
    i32 72, label %94
    i32 83, label %100
    i32 68, label %106
    i32 88, label %116
  ]

; <label>:94:                                     ; preds = %90
  %95 = call i32 (...) @hit()
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %99

; <label>:97:                                     ; preds = %94
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0))
  br label %99

; <label>:99:                                     ; preds = %97, %94
  br label %128

; <label>:100:                                    ; preds = %90
  %101 = call i32 (...) @stand()
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %105

; <label>:103:                                    ; preds = %100
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0))
  br label %105

; <label>:105:                                    ; preds = %103, %100
  br label %128

; <label>:106:                                    ; preds = %90
  %107 = load i32, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 0), align 4
  %108 = load i32, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 2), align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %113, label %110

; <label>:110:                                    ; preds = %106
  %111 = call i32 (...) @double_down()
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

; <label>:113:                                    ; preds = %110, %106
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.31, i32 0, i32 0))
  br label %115

; <label>:115:                                    ; preds = %113, %110
  br label %128

; <label>:116:                                    ; preds = %90
  %117 = load i32, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 0), align 4
  %118 = load i32, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 2), align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %123, label %120

; <label>:120:                                    ; preds = %116
  %121 = call i32 (...) @split()
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %125

; <label>:123:                                    ; preds = %120, %116
  %124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0))
  br label %125

; <label>:125:                                    ; preds = %123, %120
  br label %128

; <label>:126:                                    ; preds = %90
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i32 0, i32 0))
  br label %128

; <label>:128:                                    ; preds = %126, %125, %115, %105, %99
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0))
  br label %87

; <label>:130:                                    ; preds = %87
  br label %131

; <label>:131:                                    ; preds = %130, %46, %82, %53, %50
  %132 = call i32 (...) @srabbit_payout()
  %133 = load i32, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 0), align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 0), align 4
  br label %9

; <label>:135:                                    ; preds = %26, %9
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal i32 @readline(i32, i8*, i64) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %10

; <label>:10:                                     ; preds = %32, %3
  %11 = load i64, i64* %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %35

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %5, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @receive(i32 %15, i8* %16, i64 1, i64* %9)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

; <label>:19:                                     ; preds = %14
  %20 = load i64, i64* %9, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %19, %14
  br label %35

; <label>:23:                                     ; preds = %19
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %29

; <label>:28:                                     ; preds = %23
  br label %35

; <label>:29:                                     ; preds = %23
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %6, align 8
  br label %32

; <label>:32:                                     ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %10

; <label>:35:                                     ; preds = %28, %22, %10
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %45

; <label>:39:                                     ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp ne i32 %42, 10
  br i1 %43, label %44, label %45

; <label>:44:                                     ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %55

; <label>:45:                                     ; preds = %39, %35
  %46 = load i8*, i8** %6, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 10
  br i1 %49, label %50, label %51

; <label>:50:                                     ; preds = %45
  store i32 1, i32* %4, align 4
  br label %55

; <label>:51:                                     ; preds = %45
  %52 = load i8*, i8** %6, align 8
  store i8 0, i8* %52, align 1
  br label %53

; <label>:53:                                     ; preds = %51
  br label %54

; <label>:54:                                     ; preds = %53
  store i32 0, i32* %4, align 4
  br label %55

; <label>:55:                                     ; preds = %54, %50, %44
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare i32 @memcmp(i8*, i8*, i64) #1

declare i64 @strtol(i8*, i8**, i32) #1

declare i32 @deal_srabbit(i32) #1

; Function Attrs: noinline nounwind uwtable
define internal signext i8 @readchar(i32) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @receive(i32 %7, i8* %5, i64 1, i64* %4)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

; <label>:10:                                     ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

; <label>:13:                                     ; preds = %10, %1
  store i8 -1, i8* %2, align 1
  br label %29

; <label>:14:                                     ; preds = %10
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @receive(i32 %15, i8* %6, i64 1, i64* %4)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

; <label>:18:                                     ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

; <label>:21:                                     ; preds = %18, %14
  store i8 -1, i8* %2, align 1
  br label %29

; <label>:22:                                     ; preds = %18
  %23 = load i8, i8* %6, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 10
  br i1 %25, label %26, label %27

; <label>:26:                                     ; preds = %22
  store i8 -1, i8* %2, align 1
  br label %29

; <label>:27:                                     ; preds = %22
  %28 = load i8, i8* %5, align 1
  store i8 %28, i8* %2, align 1
  br label %29

; <label>:29:                                     ; preds = %27, %26, %21, %13
  %30 = load i8, i8* %2, align 1
  ret i8 %30
}

declare void @pay_insurance(...) #1

declare i32 @check_dealer_squarerabbit(...) #1

declare i32 @check_dealer_squarerabbit2(...) #1

declare i32 @check_player_squarerabbit(%struct.squarerabbit*) #1

declare %struct.squarerabbit* @get_srabbit_game(...) #1

declare i32 @hit(...) #1

declare i32 @stand(...) #1

declare i32 @double_down(...) #1

declare i32 @split(...) #1

declare i32 @srabbit_payout(...) #1

; Function Attrs: noinline nounwind uwtable
define void @play_poker() #0 {
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [512 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 0, i32* %1, align 4
  store i32 0, i32* %3, align 4
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0))
  %6 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  %7 = call i32 @readline(i32 0, i8* %6, i64 512)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

; <label>:9:                                      ; preds = %0
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0))
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %42

; <label>:12:                                     ; preds = %0
  %13 = getelementptr inbounds [512 x i8], [512 x i8]* %2, i32 0, i32 0
  %14 = call i64 @strtol(i8* %13, i8** null, i32 10)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

; <label>:18:                                     ; preds = %12
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.35, i32 0, i32 0))
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %42

; <label>:21:                                     ; preds = %12
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i32 0, i32 0))
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0))
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.39, i32 0, i32 0))
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.40, i32 0, i32 0))
  call void @init_player()
  call void @init_squarerabbit(i32* %3)
  store i8 48, i8* %4, align 1
  br label %26

; <label>:26:                                     ; preds = %39, %21
  %27 = load i8, i8* %4, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp ne i32 %28, 50
  br i1 %29, label %30, label %40

; <label>:30:                                     ; preds = %26
  call void @print_game_menu()
  %31 = call signext i8 @readchar(i32 0)
  store i8 %31, i8* %4, align 1
  %32 = load i8, i8* %4, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %37 [
    i32 49, label %34
    i32 50, label %35
    i32 51, label %36
  ]

; <label>:34:                                     ; preds = %30
  call void @play_squarerabbit()
  br label %39

; <label>:35:                                     ; preds = %30
  br label %39

; <label>:36:                                     ; preds = %30
  br label %37

; <label>:37:                                     ; preds = %30, %36
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.41, i32 0, i32 0))
  br label %39

; <label>:39:                                     ; preds = %37, %35, %34
  br label %26

; <label>:40:                                     ; preds = %26
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0))
  br label %42

; <label>:42:                                     ; preds = %40, %18, %9
  %43 = load i32, i32* %1, align 4
  ret i32 %43
}

declare void @init_squarerabbit(i32*) #1

declare i32 @receive(i32, i8*, i64, i64*) #1

; Function Attrs: noinline nounwind uwtable
define internal i32 @print_cards() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.card*, align 8
  %6 = alloca %struct.squarerabbit*, align 8
  %7 = alloca %struct.squarerabbit*, align 8
  %8 = alloca %struct.hand*, align 8
  %9 = alloca %struct.hand*, align 8
  %10 = alloca %struct.squarerabbit*, align 8
  store i32 1, i32* %2, align 4
  %11 = call %struct.squarerabbit* (...) @get_srabbit_game()
  store %struct.squarerabbit* %11, %struct.squarerabbit** %6, align 8
  %12 = call %struct.squarerabbit* (...) @get_split_hand()
  store %struct.squarerabbit* %12, %struct.squarerabbit** %7, align 8
  %13 = load %struct.squarerabbit*, %struct.squarerabbit** %6, align 8
  %14 = getelementptr inbounds %struct.squarerabbit, %struct.squarerabbit* %13, i32 0, i32 2
  %15 = load %struct.hand*, %struct.hand** %14, align 8
  store %struct.hand* %15, %struct.hand** %8, align 8
  %16 = load %struct.squarerabbit*, %struct.squarerabbit** %6, align 8
  %17 = getelementptr inbounds %struct.squarerabbit, %struct.squarerabbit* %16, i32 0, i32 1
  %18 = load %struct.hand*, %struct.hand** %17, align 8
  store %struct.hand* %18, %struct.hand** %9, align 8
  %19 = load %struct.hand*, %struct.hand** %8, align 8
  %20 = call i32 @calc_score(%struct.hand* %19, i32* null)
  store i32 %20, i32* %4, align 4
  %21 = call i32 (...) @is_player_finished()
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

; <label>:23:                                     ; preds = %0
  %24 = load %struct.squarerabbit*, %struct.squarerabbit** %6, align 8
  %25 = getelementptr inbounds %struct.squarerabbit, %struct.squarerabbit* %24, i32 0, i32 1
  %26 = load %struct.hand*, %struct.hand** %25, align 8
  %27 = getelementptr inbounds %struct.hand, %struct.hand* %26, i32 0, i32 0
  %28 = load %struct.card*, %struct.card** %27, align 8
  store %struct.card* %28, %struct.card** %5, align 8
  %29 = load %struct.card*, %struct.card** %5, align 8
  %30 = call i8* @cardtos(%struct.card* %29)
  %31 = load %struct.card*, %struct.card** %5, align 8
  %32 = call i8* @suittos(%struct.card* %31)
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.43, i32 0, i32 0), i8* %30, i8* %32)
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.44, i32 0, i32 0))
  br label %59

; <label>:35:                                     ; preds = %0
  %36 = call i32 (...) @dealer_hit()
  %37 = load %struct.hand*, %struct.hand** %9, align 8
  %38 = call i32 @calc_score(%struct.hand* %37, i32* null)
  store i32 %38, i32* %3, align 4
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.45, i32 0, i32 0))
  br label %40

; <label>:40:                                     ; preds = %43, %35
  %41 = load %struct.hand*, %struct.hand** %9, align 8
  %42 = icmp ne %struct.hand* %41, null
  br i1 %42, label %43, label %55

; <label>:43:                                     ; preds = %40
  %44 = load %struct.hand*, %struct.hand** %9, align 8
  %45 = getelementptr inbounds %struct.hand, %struct.hand* %44, i32 0, i32 0
  %46 = load %struct.card*, %struct.card** %45, align 8
  store %struct.card* %46, %struct.card** %5, align 8
  %47 = load %struct.card*, %struct.card** %5, align 8
  %48 = call i8* @cardtos(%struct.card* %47)
  %49 = load %struct.card*, %struct.card** %5, align 8
  %50 = call i8* @suittos(%struct.card* %49)
  %51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* %48, i8* %50)
  %52 = load %struct.hand*, %struct.hand** %9, align 8
  %53 = getelementptr inbounds %struct.hand, %struct.hand* %52, i32 0, i32 1
  %54 = load %struct.hand*, %struct.hand** %53, align 8
  store %struct.hand* %54, %struct.hand** %9, align 8
  br label %40

; <label>:55:                                     ; preds = %40
  %56 = load i32, i32* %3, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i32 %56)
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.48, i32 0, i32 0))
  br label %59

; <label>:59:                                     ; preds = %55, %23
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.49, i32 0, i32 0))
  br label %61

; <label>:61:                                     ; preds = %64, %59
  %62 = load %struct.hand*, %struct.hand** %8, align 8
  %63 = icmp ne %struct.hand* %62, null
  br i1 %63, label %64, label %76

; <label>:64:                                     ; preds = %61
  %65 = load %struct.hand*, %struct.hand** %8, align 8
  %66 = getelementptr inbounds %struct.hand, %struct.hand* %65, i32 0, i32 0
  %67 = load %struct.card*, %struct.card** %66, align 8
  store %struct.card* %67, %struct.card** %5, align 8
  %68 = load %struct.card*, %struct.card** %5, align 8
  %69 = call i8* @cardtos(%struct.card* %68)
  %70 = load %struct.card*, %struct.card** %5, align 8
  %71 = call i8* @suittos(%struct.card* %70)
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* %69, i8* %71)
  %73 = load %struct.hand*, %struct.hand** %8, align 8
  %74 = getelementptr inbounds %struct.hand, %struct.hand* %73, i32 0, i32 1
  %75 = load %struct.hand*, %struct.hand** %74, align 8
  store %struct.hand* %75, %struct.hand** %8, align 8
  br label %61

; <label>:76:                                     ; preds = %61
  %77 = load i32, i32* %4, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i32 %77)
  %79 = load %struct.squarerabbit*, %struct.squarerabbit** %6, align 8
  %80 = getelementptr inbounds %struct.squarerabbit, %struct.squarerabbit* %79, i32 0, i32 5
  %81 = load i8, i8* %80, align 8
  %82 = icmp ne i8 %81, 0
  br i1 %82, label %103, label %83

; <label>:83:                                     ; preds = %76
  %84 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0))
  %85 = load %struct.squarerabbit*, %struct.squarerabbit** %6, align 8
  %86 = getelementptr inbounds %struct.squarerabbit, %struct.squarerabbit* %85, i32 0, i32 6
  %87 = load i8, i8* %86, align 1
  %88 = icmp ne i8 %87, 0
  br i1 %88, label %89, label %101

; <label>:89:                                     ; preds = %83
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  %91 = load %struct.squarerabbit*, %struct.squarerabbit** %6, align 8
  %92 = call i32 @can_split(%struct.squarerabbit* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

; <label>:94:                                     ; preds = %89
  %95 = call i32 (...) @split_len()
  %96 = call i32 (...) @max_split()
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %100

; <label>:98:                                     ; preds = %94
  %99 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0))
  br label %100

; <label>:100:                                    ; preds = %98, %94, %89
  br label %101

; <label>:101:                                    ; preds = %100, %83
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0))
  store i32 1, i32* %1, align 4
  br label %182

; <label>:103:                                    ; preds = %76
  %104 = call i32 (...) @is_player_finished()
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

; <label>:106:                                    ; preds = %103
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %3, align 4
  call void @print_winner(i32 %107, i32 %108)
  br label %109

; <label>:109:                                    ; preds = %106, %103
  br label %110

; <label>:110:                                    ; preds = %109
  store i32 0, i32* %2, align 4
  br label %111

; <label>:111:                                    ; preds = %178, %110
  %112 = load i32, i32* %2, align 4
  %113 = call i32 (...) @split_len()
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %181

; <label>:115:                                    ; preds = %111
  %116 = load %struct.squarerabbit*, %struct.squarerabbit** %7, align 8
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.squarerabbit, %struct.squarerabbit* %116, i64 %118
  store %struct.squarerabbit* %119, %struct.squarerabbit** %10, align 8
  %120 = load %struct.squarerabbit*, %struct.squarerabbit** %10, align 8
  %121 = getelementptr inbounds %struct.squarerabbit, %struct.squarerabbit* %120, i32 0, i32 2
  %122 = load %struct.hand*, %struct.hand** %121, align 8
  store %struct.hand* %122, %struct.hand** %8, align 8
  %123 = load %struct.hand*, %struct.hand** %8, align 8
  %124 = call i32 @calc_score(%struct.hand* %123, i32* null)
  store i32 %124, i32* %4, align 4
  %125 = load i32, i32* %2, align 4
  %126 = add nsw i32 %125, 1
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.54, i32 0, i32 0), i32 %126)
  br label %128

; <label>:128:                                    ; preds = %131, %115
  %129 = load %struct.hand*, %struct.hand** %8, align 8
  %130 = icmp ne %struct.hand* %129, null
  br i1 %130, label %131, label %143

; <label>:131:                                    ; preds = %128
  %132 = load %struct.hand*, %struct.hand** %8, align 8
  %133 = getelementptr inbounds %struct.hand, %struct.hand* %132, i32 0, i32 0
  %134 = load %struct.card*, %struct.card** %133, align 8
  store %struct.card* %134, %struct.card** %5, align 8
  %135 = load %struct.card*, %struct.card** %5, align 8
  %136 = call i8* @cardtos(%struct.card* %135)
  %137 = load %struct.card*, %struct.card** %5, align 8
  %138 = call i8* @suittos(%struct.card* %137)
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.46, i32 0, i32 0), i8* %136, i8* %138)
  %140 = load %struct.hand*, %struct.hand** %8, align 8
  %141 = getelementptr inbounds %struct.hand, %struct.hand* %140, i32 0, i32 1
  %142 = load %struct.hand*, %struct.hand** %141, align 8
  store %struct.hand* %142, %struct.hand** %8, align 8
  br label %128

; <label>:143:                                    ; preds = %128
  %144 = load i32, i32* %4, align 4
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.47, i32 0, i32 0), i32 %144)
  %146 = load %struct.squarerabbit*, %struct.squarerabbit** %10, align 8
  %147 = getelementptr inbounds %struct.squarerabbit, %struct.squarerabbit* %146, i32 0, i32 5
  %148 = load i8, i8* %147, align 8
  %149 = icmp ne i8 %148, 0
  br i1 %149, label %170, label %150

; <label>:150:                                    ; preds = %143
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.50, i32 0, i32 0))
  %152 = load %struct.squarerabbit*, %struct.squarerabbit** %10, align 8
  %153 = getelementptr inbounds %struct.squarerabbit, %struct.squarerabbit* %152, i32 0, i32 6
  %154 = load i8, i8* %153, align 1
  %155 = icmp ne i8 %154, 0
  br i1 %155, label %156, label %168

; <label>:156:                                    ; preds = %150
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.51, i32 0, i32 0))
  %158 = load %struct.squarerabbit*, %struct.squarerabbit** %10, align 8
  %159 = call i32 @can_split(%struct.squarerabbit* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %167

; <label>:161:                                    ; preds = %156
  %162 = call i32 (...) @split_len()
  %163 = call i32 (...) @max_split()
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %167

; <label>:165:                                    ; preds = %161
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.52, i32 0, i32 0))
  br label %167

; <label>:167:                                    ; preds = %165, %161, %156
  br label %168

; <label>:168:                                    ; preds = %167, %150
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.53, i32 0, i32 0))
  store i32 1, i32* %1, align 4
  br label %182

; <label>:170:                                    ; preds = %143
  %171 = call i32 (...) @is_player_finished()
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

; <label>:173:                                    ; preds = %170
  %174 = load i32, i32* %4, align 4
  %175 = load i32, i32* %3, align 4
  call void @print_winner(i32 %174, i32 %175)
  br label %176

; <label>:176:                                    ; preds = %173, %170
  br label %177

; <label>:177:                                    ; preds = %176
  br label %178

; <label>:178:                                    ; preds = %177
  %179 = load i32, i32* %2, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %2, align 4
  br label %111

; <label>:181:                                    ; preds = %111
  store i32 0, i32* %1, align 4
  br label %182

; <label>:182:                                    ; preds = %181, %168, %101
  %183 = load i32, i32* %1, align 4
  ret i32 %183
}

declare %struct.squarerabbit* @get_split_hand(...) #1

declare i32 @calc_score(%struct.hand*, i32*) #1

declare i32 @is_player_finished(...) #1

declare i32 @dealer_hit(...) #1

declare i32 @can_split(%struct.squarerabbit*) #1

declare i32 @split_len(...) #1

declare i32 @max_split(...) #1

; Function Attrs: noinline nounwind uwtable
define internal void @print_winner(i32, i32) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sgt i32 %5, 21
  br i1 %6, label %7, label %9

; <label>:7:                                      ; preds = %2
  %8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.55, i32 0, i32 0))
  br label %28

; <label>:9:                                      ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp sgt i32 %10, %11
  br i1 %12, label %16, label %13

; <label>:13:                                     ; preds = %9
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 21
  br i1 %15, label %16, label %18

; <label>:16:                                     ; preds = %13, %9
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.56, i32 0, i32 0))
  br label %27

; <label>:18:                                     ; preds = %13
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

; <label>:22:                                     ; preds = %18
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.57, i32 0, i32 0))
  br label %26

; <label>:24:                                     ; preds = %18
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.58, i32 0, i32 0))
  br label %26

; <label>:26:                                     ; preds = %24, %22
  br label %27

; <label>:27:                                     ; preds = %26, %16
  br label %28

; <label>:28:                                     ; preds = %27, %7
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @init_player() #0 {
  store i32 100000, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.player_t, %struct.player_t* @g_player, i32 0, i32 2), align 4
  ret void
}

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
