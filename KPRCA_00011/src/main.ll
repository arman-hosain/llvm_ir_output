; ModuleID = 'main.c'
source_filename = "main.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.movie = type { i8*, i8*, i32, i32, i32, i32, void (i32, %struct.movie*)* }
%struct.movie_node = type { %struct.movie*, %struct.movie_node* }

@.str = private unnamed_addr constant [25 x i8] c"The Shawshank Redemption\00", align 1
@.str.1 = private unnamed_addr constant [124 x i8] c"Two imprisoned men bond over a number of years, finding solace and eventual\0A     redemption through acts of common decency.\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"The Godfather\00", align 1
@.str.3 = private unnamed_addr constant [121 x i8] c"The aging patriarch of an organized crime dynasty transfers control of his clandestine\0A     empire to his reluctant son.\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"The Dark Knight\00", align 1
@.str.5 = private unnamed_addr constant [199 x i8] c"When Batman, Gordon have Harvey Dent launch an assault on the mob, they let the clown\0A     out of the box, the Joker, bent on turning Gotham on itself and bringing any heroes\0A     down to his level.\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"Inception\00", align 1
@.str.7 = private unnamed_addr constant [152 x i8] c"A thief who steals corporate secrets through use of dream-sharing technology is given the\0A     inverse task of planting an idea into the mind of a CEO.\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"The Matrix\00", align 1
@.str.9 = private unnamed_addr constant [139 x i8] c"A computer hacker learns from mysterious rebels about the true nature of his reality and\0A     his role in the war against its controllers.\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"Modern Times\00", align 1
@.str.11 = private unnamed_addr constant [103 x i8] c"The Tramp struggles to live in modern industrial society with the help of a young\0A     homeless woman.\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"About Time\00", align 1
@.str.13 = private unnamed_addr constant [240 x i8] c"At the age of 21, Tim discovers he can travel in time and change what happens and has\0A     happened in his own life. His decision to make his world a better place by getting\0A     a girlfriend turns out not to be as easy as you might think.\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"Yes Man\00", align 1
@.str.15 = private unnamed_addr constant [72 x i8] c"A guy challenges himself to say \22yes\22 to everything for an entire year.\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"The Conjuring\00", align 1
@.str.17 = private unnamed_addr constant [125 x i8] c"Paranormal investigators Ed and Lorraine Warren work to help a family terrorized\0A     by a dark presence in their farmhouse.\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"The Lion King\00", align 1
@.str.19 = private unnamed_addr constant [167 x i8] c"Lion cub and future king Simba searches for his identity. His eagerness to please others\0A     and penchant for testing his boundaries sometimes gets him into trouble.\00", align 1
@default_movies = global [10 x %struct.movie] [%struct.movie { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.1, i32 0, i32 0), i32 1994, i32 93, i32 5, i32 4, void (i32, %struct.movie*)* null }, %struct.movie { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([121 x i8], [121 x i8]* @.str.3, i32 0, i32 0), i32 1972, i32 92, i32 5, i32 4, void (i32, %struct.movie*)* null }, %struct.movie { i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.5, i32 0, i32 0), i32 2008, i32 90, i32 1, i32 3, void (i32, %struct.movie*)* null }, %struct.movie { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.7, i32 0, i32 0), i32 2010, i32 88, i32 1, i32 3, void (i32, %struct.movie*)* null }, %struct.movie { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str.9, i32 0, i32 0), i32 1999, i32 87, i32 1, i32 4, void (i32, %struct.movie*)* null }, %struct.movie { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.11, i32 0, i32 0), i32 1936, i32 86, i32 3, i32 1, void (i32, %struct.movie*)* null }, %struct.movie { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([240 x i8], [240 x i8]* @.str.13, i32 0, i32 0), i32 2013, i32 78, i32 2, i32 4, void (i32, %struct.movie*)* null }, %struct.movie { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.15, i32 0, i32 0), i32 2008, i32 69, i32 3, i32 3, void (i32, %struct.movie*)* null }, %struct.movie { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.17, i32 0, i32 0), i32 2013, i32 75, i32 4, i32 4, void (i32, %struct.movie*)* null }, %struct.movie { i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.19, i32 0, i32 0), i32 1994, i32 85, i32 5, i32 1, void (i32, %struct.movie*)* null }], align 16
@g_num_movies = global i32 0, align 4
@.str.20 = private unnamed_addr constant [80 x i8] c"\0A   . . . Initializing the inventory . . .\0A         (movie info from IMDb.com)\0A\00", align 1
@g_password = common global [21 x i8] zeroinitializer, align 16
@movies_full = common global %struct.movie_node* null, align 8
@.str.21 = private unnamed_addr constant [38 x i8] c"[ERROR] Initialization failed. Exit.\0A\00", align 1
@print_movie_detail.format = private unnamed_addr constant [40 x i8] c"[%d] %s (%d, %s) - %s [%d/100]\0A  => %s\0A\00", align 16
@.str.22 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"PG\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"PG13\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"Action\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"Romance\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"Comedy\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Horror\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"\0AMovies (Full)\0A--------------\0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"--------------\0A%d movie(s)\0A\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"\0AMovies (Rented)\0A--------------\0A\00", align 1
@movies_rented = common global %struct.movie_node* null, align 8
@.str.35 = private unnamed_addr constant [54 x i8] c"[ERROR] Movie list is empty. Please try again later.\0A\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"Enter movie id: \00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"[ERROR] Invalid movie id. Try again.\0A\00", align 1
@.str.38 = private unnamed_addr constant [69 x i8] c"Sorry, [%s] is already rented at this time. Please try again later.\0A\00", align 1
@.str.39 = private unnamed_addr constant [49 x i8] c"[ERROR] Failed to rent. Please try again later.\0A\00", align 1
@.str.40 = private unnamed_addr constant [34 x i8] c"Successfully rented [%s]! Enjoy!\0A\00", align 1
@.str.41 = private unnamed_addr constant [46 x i8] c"[ERROR] All the movies are in our inventory.\0A\00", align 1
@.str.42 = private unnamed_addr constant [58 x i8] c"Sorry, we have some issues here. Please try again later.\0A\00", align 1
@.str.43 = private unnamed_addr constant [55 x i8] c"[ERROR] Failed to return the movie. Please try again.\0A\00", align 1
@.str.44 = private unnamed_addr constant [40 x i8] c"Successfully returned [%s]! Thank you!\0A\00", align 1
@login.username = private unnamed_addr constant [6 x i8] c"admin\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"username: \00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"[ERROR] Permission Denied: Wrong credentials\0A\00", align 1
@.str.47 = private unnamed_addr constant [11 x i8] c"password: \00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"\0AWelcome, admin!\0A\00", align 1
@.str.49 = private unnamed_addr constant [28 x i8] c"Add a movie\0A--------------\0A\00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Enter Title: \00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"Enter Description: \00", align 1
@.str.52 = private unnamed_addr constant [25 x i8] c"Enter Year (1800-2015): \00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"[ERROR] Invalid year. Try again.\0A\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"Enter Review score (0-100): \00", align 1
@.str.55 = private unnamed_addr constant [36 x i8] c"[ERROR] Invalid rating. Try again.\0A\00", align 1
@.str.56 = private unnamed_addr constant [79 x i8] c"Select a genre\0A 1. Action\0A 2. Romance\0A 3. Comeda\0A 4. Horror\0A 5. Other\0AChoice: \00", align 1
@.str.57 = private unnamed_addr constant [35 x i8] c"[ERROR] Invalid genre. Try again.\0A\00", align 1
@.str.58 = private unnamed_addr constant [71 x i8] c"Select a film rating\0A 1. G\0A 2. PG\0A 3. PG-13\0A 4. R\0A 5. Unknown\0AChoice: \00", align 1
@.str.59 = private unnamed_addr constant [41 x i8] c"[ERROR] Invalid film rating. Try again.\0A\00", align 1
@.str.60 = private unnamed_addr constant [32 x i8] c"[ERROR] Failed to add a movie.\0A\00", align 1
@.str.61 = private unnamed_addr constant [30 x i8] c"[ERROR] Movie list is empty.\0A\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"[ERROR] Failed to remove.\0A\00", align 1
@.str.63 = private unnamed_addr constant [33 x i8] c"Successfully removed the movie!\0A\00", align 1
@.str.64 = private unnamed_addr constant [28 x i8] c"[ERROR] Nothing to update.\0A\00", align 1
@.str.65 = private unnamed_addr constant [75 x i8] c"\0AUpdate a movie\0A--------------\0AJust leave it empty to keep the old value.\0A\00", align 1
@.str.66 = private unnamed_addr constant [34 x i8] c"Enter new title (current: [%s]): \00", align 1
@.str.67 = private unnamed_addr constant [40 x i8] c"Enter new description (current: [%s]): \00", align 1
@.str.68 = private unnamed_addr constant [45 x i8] c"Enter new year (1800-2015) (current: [%d]): \00", align 1
@.str.69 = private unnamed_addr constant [52 x i8] c"Enter new review score (0-100) (current: [%d/100]: \00", align 1
@.str.70 = private unnamed_addr constant [95 x i8] c"Select a genre (current: [%s])\0A 1. Action\0A 2. Romance\0A 3. Comeda\0A 4. Horror\0A 5. Other\0AChoice: \00", align 1
@.str.71 = private unnamed_addr constant [86 x i8] c"Select a film rating (current: [%s]\0A 1. G\0A 2. PG\0A 3. PG-13\0A 4. R\0A 5. Unknown\0AChoice: \00", align 1
@.str.72 = private unnamed_addr constant [45 x i8] c"Successfully updated the movie information!\0A\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"Bye!\0A\00", align 1
@main.welcome = private unnamed_addr constant [46 x i8] c"========= Movie Rental Service v0.1 =========\00", align 16
@main.menu = private unnamed_addr constant [78 x i8] c"\0A1. List movies\0A2. Rent movie\0A3. Return movie\0A4. Admin mode\0A5. Exit\0A\0AChoice: \00", align 16
@main.admin_menu = private unnamed_addr constant [75 x i8] c"\0A1. Add movie\0A2. Remove movie\0A3. Update movie\0A4. Quit admin mode\0A\0AChoice: \00", align 16
@.str.74 = private unnamed_addr constant [46 x i8] c"=============================================\00", align 1
@.str.75 = private unnamed_addr constant [44 x i8] c"[ERROR] Invalid menu. Please select again.\0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define void @initialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca %struct.movie*, align 8
  %5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.20, i32 0, i32 0))
  store i32 0, i32* %1, align 4
  br label %6

; <label>:6:                                      ; preds = %35, %0
  %7 = load i32, i32* %1, align 4
  %8 = zext i32 %7 to i64
  %9 = icmp ule i64 %8, 21
  br i1 %9, label %10, label %38

; <label>:10:                                     ; preds = %6
  %11 = call i32 @cgc_random(i8* %3, i64 1, i64* null)
  %12 = bitcast i32* %2 to i8*
  %13 = call i32 @cgc_random(i8* %12, i64 4, i64* null)
  %14 = load i8, i8* %3, align 1
  %15 = sext i8 %14 to i32
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

; <label>:18:                                     ; preds = %10
  %19 = load i32, i32* %2, align 4
  %20 = urem i32 %19, 26
  %21 = add i32 65, %20
  %22 = trunc i32 %21 to i8
  %23 = load i32, i32* %1, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [21 x i8], [21 x i8]* @g_password, i64 0, i64 %24
  store i8 %22, i8* %25, align 1
  br label %34

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %2, align 4
  %28 = urem i32 %27, 26
  %29 = add i32 97, %28
  %30 = trunc i32 %29 to i8
  %31 = load i32, i32* %1, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [21 x i8], [21 x i8]* @g_password, i64 0, i64 %32
  store i8 %30, i8* %33, align 1
  br label %34

; <label>:34:                                     ; preds = %26, %18
  br label %35

; <label>:35:                                     ; preds = %34
  %36 = load i32, i32* %1, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %6

; <label>:38:                                     ; preds = %6
  %39 = load i32, i32* %1, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds [21 x i8], [21 x i8]* @g_password, i64 0, i64 %40
  store i8 0, i8* %41, align 1
  store i32 0, i32* %1, align 4
  br label %42

; <label>:42:                                     ; preds = %136, %38
  %43 = load i32, i32* %1, align 4
  %44 = zext i32 %43 to i64
  %45 = icmp ult i64 %44, 10
  br i1 %45, label %46, label %139

; <label>:46:                                     ; preds = %42
  %47 = call i8* @my_malloc(i64 40)
  %48 = bitcast i8* %47 to %struct.movie*
  store %struct.movie* %48, %struct.movie** %4, align 8
  %49 = load %struct.movie*, %struct.movie** %4, align 8
  %50 = icmp eq %struct.movie* %49, null
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %46
  br label %140

; <label>:52:                                     ; preds = %46
  %53 = load %struct.movie*, %struct.movie** %4, align 8
  %54 = bitcast %struct.movie* %53 to i8*
  call void @llvm.memset.p0i8.i64(i8* %54, i8 0, i64 40, i32 8, i1 false)
  %55 = load i32, i32* %1, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds [10 x %struct.movie], [10 x %struct.movie]* @default_movies, i64 0, i64 %56
  %58 = getelementptr inbounds %struct.movie, %struct.movie* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i64 @strlen(i8* %59)
  %61 = add i64 %60, 1
  %62 = call i8* @my_malloc(i64 %61)
  %63 = load %struct.movie*, %struct.movie** %4, align 8
  %64 = getelementptr inbounds %struct.movie, %struct.movie* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %1, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds [10 x %struct.movie], [10 x %struct.movie]* @default_movies, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.movie, %struct.movie* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 @strlen(i8* %69)
  %71 = add i64 %70, 1
  %72 = call i8* @my_malloc(i64 %71)
  %73 = load %struct.movie*, %struct.movie** %4, align 8
  %74 = getelementptr inbounds %struct.movie, %struct.movie* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.movie*, %struct.movie** %4, align 8
  %76 = getelementptr inbounds %struct.movie, %struct.movie* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %84, label %79

; <label>:79:                                     ; preds = %52
  %80 = load %struct.movie*, %struct.movie** %4, align 8
  %81 = getelementptr inbounds %struct.movie, %struct.movie* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = icmp eq i8* %82, null
  br i1 %83, label %84, label %85

; <label>:84:                                     ; preds = %79, %52
  br label %140

; <label>:85:                                     ; preds = %79
  %86 = load %struct.movie*, %struct.movie** %4, align 8
  %87 = getelementptr inbounds %struct.movie, %struct.movie* %86, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* %1, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds [10 x %struct.movie], [10 x %struct.movie]* @default_movies, i64 0, i64 %90
  %92 = getelementptr inbounds %struct.movie, %struct.movie* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i8* @strcpy(i8* %88, i8* %93)
  %95 = load %struct.movie*, %struct.movie** %4, align 8
  %96 = getelementptr inbounds %struct.movie, %struct.movie* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load i32, i32* %1, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds [10 x %struct.movie], [10 x %struct.movie]* @default_movies, i64 0, i64 %99
  %101 = getelementptr inbounds %struct.movie, %struct.movie* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i8* @strcpy(i8* %97, i8* %102)
  %104 = load i32, i32* %1, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds [10 x %struct.movie], [10 x %struct.movie]* @default_movies, i64 0, i64 %105
  %107 = getelementptr inbounds %struct.movie, %struct.movie* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.movie*, %struct.movie** %4, align 8
  %110 = getelementptr inbounds %struct.movie, %struct.movie* %109, i32 0, i32 2
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %1, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds [10 x %struct.movie], [10 x %struct.movie]* @default_movies, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.movie, %struct.movie* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.movie*, %struct.movie** %4, align 8
  %117 = getelementptr inbounds %struct.movie, %struct.movie* %116, i32 0, i32 3
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %1, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [10 x %struct.movie], [10 x %struct.movie]* @default_movies, i64 0, i64 %119
  %121 = getelementptr inbounds %struct.movie, %struct.movie* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.movie*, %struct.movie** %4, align 8
  %124 = getelementptr inbounds %struct.movie, %struct.movie* %123, i32 0, i32 4
  store i32 %122, i32* %124, align 8
  %125 = load i32, i32* %1, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds [10 x %struct.movie], [10 x %struct.movie]* @default_movies, i64 0, i64 %126
  %128 = getelementptr inbounds %struct.movie, %struct.movie* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.movie*, %struct.movie** %4, align 8
  %131 = getelementptr inbounds %struct.movie, %struct.movie* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  %132 = load %struct.movie*, %struct.movie** %4, align 8
  %133 = getelementptr inbounds %struct.movie, %struct.movie* %132, i32 0, i32 6
  store void (i32, %struct.movie*)* @print_movie_detail, void (i32, %struct.movie*)** %133, align 8
  %134 = load %struct.movie*, %struct.movie** %4, align 8
  %135 = call i32 @movie_add(%struct.movie_node** @movies_full, %struct.movie* %134)
  br label %136

; <label>:136:                                    ; preds = %85
  %137 = load i32, i32* %1, align 4
  %138 = add i32 %137, 1
  store i32 %138, i32* %1, align 4
  br label %42

; <label>:139:                                    ; preds = %42
  br label %142

; <label>:140:                                    ; preds = %84, %51
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.21, i32 0, i32 0))
  call void @quit()
  br label %142

; <label>:142:                                    ; preds = %140, %139
  ret void
}

declare i32 @printf(i8*, ...) #1

declare i32 @cgc_random(i8*, i64, i64*) #1

declare i8* @my_malloc(i64) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i32, i1) #2

declare i64 @strlen(i8*) #1

declare i8* @strcpy(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @print_movie_detail(i32, %struct.movie*) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.movie*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [40 x i8], align 16
  store i32 %0, i32* %3, align 4
  store %struct.movie* %1, %struct.movie** %4, align 8
  %8 = bitcast [40 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @print_movie_detail.format, i32 0, i32 0), i64 40, i32 16, i1 false)
  %9 = load %struct.movie*, %struct.movie** %4, align 8
  %10 = icmp ne %struct.movie* %9, null
  br i1 %10, label %11, label %47

; <label>:11:                                     ; preds = %2
  %12 = load %struct.movie*, %struct.movie** %4, align 8
  %13 = getelementptr inbounds %struct.movie, %struct.movie* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %19 [
    i32 1, label %15
    i32 2, label %16
    i32 3, label %17
    i32 4, label %18
  ]

; <label>:15:                                     ; preds = %11
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:16:                                     ; preds = %11
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.23, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:17:                                     ; preds = %11
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:18:                                     ; preds = %11
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:19:                                     ; preds = %11
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0), i8** %5, align 8
  br label %20

; <label>:20:                                     ; preds = %19, %18, %17, %16, %15
  %21 = load %struct.movie*, %struct.movie** %4, align 8
  %22 = getelementptr inbounds %struct.movie, %struct.movie* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %28 [
    i32 1, label %24
    i32 2, label %25
    i32 3, label %26
    i32 4, label %27
  ]

; <label>:24:                                     ; preds = %20
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i32 0, i32 0), i8** %6, align 8
  br label %29

; <label>:25:                                     ; preds = %20
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8** %6, align 8
  br label %29

; <label>:26:                                     ; preds = %20
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.29, i32 0, i32 0), i8** %6, align 8
  br label %29

; <label>:27:                                     ; preds = %20
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0), i8** %6, align 8
  br label %29

; <label>:28:                                     ; preds = %20
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i32 0, i32 0), i8** %6, align 8
  br label %29

; <label>:29:                                     ; preds = %28, %27, %26, %25, %24
  %30 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i32 0, i32 0
  %31 = load i32, i32* %3, align 4
  %32 = load %struct.movie*, %struct.movie** %4, align 8
  %33 = getelementptr inbounds %struct.movie, %struct.movie* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.movie*, %struct.movie** %4, align 8
  %36 = getelementptr inbounds %struct.movie, %struct.movie* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.movie*, %struct.movie** %4, align 8
  %41 = getelementptr inbounds %struct.movie, %struct.movie* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.movie*, %struct.movie** %4, align 8
  %44 = getelementptr inbounds %struct.movie, %struct.movie* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @printf(i8* %30, i32 %31, i8* %34, i32 %37, i8* %38, i8* %39, i32 %42, i8* %45)
  br label %47

; <label>:47:                                     ; preds = %29, %2
  ret void
}

declare i32 @movie_add(%struct.movie_node**, %struct.movie*) #1

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

declare i32 @receive(i32, i8*, i64, i64*) #1

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i32, i1) #2

; Function Attrs: noinline nounwind uwtable
define void @list_movies() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.movie_node*, align 8
  store i32 0, i32* %1, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0))
  %4 = load %struct.movie_node*, %struct.movie_node** @movies_full, align 8
  store %struct.movie_node* %4, %struct.movie_node** %2, align 8
  br label %5

; <label>:5:                                      ; preds = %20, %0
  %6 = load %struct.movie_node*, %struct.movie_node** %2, align 8
  %7 = icmp ne %struct.movie_node* %6, null
  br i1 %7, label %8, label %24

; <label>:8:                                      ; preds = %5
  %9 = load i32, i32* %1, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* %1, align 4
  %11 = load %struct.movie_node*, %struct.movie_node** %2, align 8
  %12 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %11, i32 0, i32 0
  %13 = load %struct.movie*, %struct.movie** %12, align 8
  %14 = getelementptr inbounds %struct.movie, %struct.movie* %13, i32 0, i32 6
  %15 = load void (i32, %struct.movie*)*, void (i32, %struct.movie*)** %14, align 8
  %16 = load i32, i32* %1, align 4
  %17 = load %struct.movie_node*, %struct.movie_node** %2, align 8
  %18 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %17, i32 0, i32 0
  %19 = load %struct.movie*, %struct.movie** %18, align 8
  call void %15(i32 %16, %struct.movie* %19)
  br label %20

; <label>:20:                                     ; preds = %8
  %21 = load %struct.movie_node*, %struct.movie_node** %2, align 8
  %22 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %21, i32 0, i32 1
  %23 = load %struct.movie_node*, %struct.movie_node** %22, align 8
  store %struct.movie_node* %23, %struct.movie_node** %2, align 8
  br label %5

; <label>:24:                                     ; preds = %5
  %25 = load i32, i32* %1, align 4
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i32 %25)
  store i32 0, i32* %1, align 4
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0))
  %28 = load %struct.movie_node*, %struct.movie_node** @movies_rented, align 8
  store %struct.movie_node* %28, %struct.movie_node** %2, align 8
  br label %29

; <label>:29:                                     ; preds = %44, %24
  %30 = load %struct.movie_node*, %struct.movie_node** %2, align 8
  %31 = icmp ne %struct.movie_node* %30, null
  br i1 %31, label %32, label %48

; <label>:32:                                     ; preds = %29
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  %35 = load %struct.movie_node*, %struct.movie_node** %2, align 8
  %36 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %35, i32 0, i32 0
  %37 = load %struct.movie*, %struct.movie** %36, align 8
  %38 = getelementptr inbounds %struct.movie, %struct.movie* %37, i32 0, i32 6
  %39 = load void (i32, %struct.movie*)*, void (i32, %struct.movie*)** %38, align 8
  %40 = load i32, i32* %1, align 4
  %41 = load %struct.movie_node*, %struct.movie_node** %2, align 8
  %42 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %41, i32 0, i32 0
  %43 = load %struct.movie*, %struct.movie** %42, align 8
  call void %39(i32 %40, %struct.movie* %43)
  br label %44

; <label>:44:                                     ; preds = %32
  %45 = load %struct.movie_node*, %struct.movie_node** %2, align 8
  %46 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %45, i32 0, i32 1
  %47 = load %struct.movie_node*, %struct.movie_node** %46, align 8
  store %struct.movie_node* %47, %struct.movie_node** %2, align 8
  br label %29

; <label>:48:                                     ; preds = %29
  %49 = load i32, i32* %1, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i32 %49)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define void @rent_movie() #0 {
  %1 = alloca %struct.movie_node*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [256 x i8], align 16
  %5 = alloca %struct.movie_node*, align 8
  %6 = alloca %struct.movie*, align 8
  store i32 0, i32* %3, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0))
  %8 = load %struct.movie_node*, %struct.movie_node** @movies_full, align 8
  store %struct.movie_node* %8, %struct.movie_node** %1, align 8
  br label %9

; <label>:9:                                      ; preds = %24, %0
  %10 = load %struct.movie_node*, %struct.movie_node** %1, align 8
  %11 = icmp ne %struct.movie_node* %10, null
  br i1 %11, label %12, label %28

; <label>:12:                                     ; preds = %9
  %13 = load i32, i32* %3, align 4
  %14 = add i32 %13, 1
  store i32 %14, i32* %3, align 4
  %15 = load %struct.movie_node*, %struct.movie_node** %1, align 8
  %16 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %15, i32 0, i32 0
  %17 = load %struct.movie*, %struct.movie** %16, align 8
  %18 = getelementptr inbounds %struct.movie, %struct.movie* %17, i32 0, i32 6
  %19 = load void (i32, %struct.movie*)*, void (i32, %struct.movie*)** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.movie_node*, %struct.movie_node** %1, align 8
  %22 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %21, i32 0, i32 0
  %23 = load %struct.movie*, %struct.movie** %22, align 8
  call void %19(i32 %20, %struct.movie* %23)
  br label %24

; <label>:24:                                     ; preds = %12
  %25 = load %struct.movie_node*, %struct.movie_node** %1, align 8
  %26 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %25, i32 0, i32 1
  %27 = load %struct.movie_node*, %struct.movie_node** %26, align 8
  store %struct.movie_node* %27, %struct.movie_node** %1, align 8
  br label %9

; <label>:28:                                     ; preds = %9
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

; <label>:33:                                     ; preds = %28
  %34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.35, i32 0, i32 0))
  br label %94

; <label>:35:                                     ; preds = %28
  br label %36

; <label>:36:                                     ; preds = %35, %53
  %37 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0))
  %38 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0
  %39 = call i32 @readuntil(i32 0, i8* %38, i64 256, i8 signext 10)
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

; <label>:41:                                     ; preds = %36
  br label %94

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i32 0, i32 0
  %44 = call i64 @strtoul(i8* %43, i8** null, i32 10)
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %2, align 4
  %46 = load i32, i32* %2, align 4
  %47 = icmp uge i32 %46, 1
  br i1 %47, label %48, label %53

; <label>:48:                                     ; preds = %42
  %49 = load i32, i32* %2, align 4
  %50 = load i32, i32* %3, align 4
  %51 = icmp ule i32 %49, %50
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %48
  br label %55

; <label>:53:                                     ; preds = %48, %42
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i32 0, i32 0))
  br label %36

; <label>:55:                                     ; preds = %52
  %56 = load %struct.movie_node*, %struct.movie_node** @movies_full, align 8
  %57 = load i32, i32* %2, align 4
  %58 = call %struct.movie_node* @movie_find_by_id(%struct.movie_node* %56, i32 %57)
  store %struct.movie_node* %58, %struct.movie_node** %5, align 8
  %59 = load %struct.movie_node*, %struct.movie_node** %5, align 8
  %60 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %59, i32 0, i32 0
  %61 = load %struct.movie*, %struct.movie** %60, align 8
  store %struct.movie* %61, %struct.movie** %6, align 8
  %62 = load %struct.movie_node*, %struct.movie_node** @movies_rented, align 8
  %63 = load %struct.movie*, %struct.movie** %6, align 8
  %64 = getelementptr inbounds %struct.movie, %struct.movie* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call %struct.movie_node* @movie_find(%struct.movie_node* %62, i8* %65)
  store %struct.movie_node* %66, %struct.movie_node** %5, align 8
  %67 = load %struct.movie_node*, %struct.movie_node** %5, align 8
  %68 = icmp ne %struct.movie_node* %67, null
  br i1 %68, label %69, label %76

; <label>:69:                                     ; preds = %55
  %70 = load %struct.movie_node*, %struct.movie_node** %5, align 8
  %71 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %70, i32 0, i32 0
  %72 = load %struct.movie*, %struct.movie** %71, align 8
  %73 = getelementptr inbounds %struct.movie, %struct.movie* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.38, i32 0, i32 0), i8* %74)
  br label %94

; <label>:76:                                     ; preds = %55
  %77 = load %struct.movie_node*, %struct.movie_node** @movies_full, align 8
  %78 = load i32, i32* %2, align 4
  %79 = call %struct.movie_node* @movie_find_by_id(%struct.movie_node* %77, i32 %78)
  store %struct.movie_node* %79, %struct.movie_node** %5, align 8
  %80 = load %struct.movie_node*, %struct.movie_node** %5, align 8
  %81 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %80, i32 0, i32 0
  %82 = load %struct.movie*, %struct.movie** %81, align 8
  %83 = call i32 @movie_add(%struct.movie_node** @movies_rented, %struct.movie* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

; <label>:85:                                     ; preds = %76
  %86 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.39, i32 0, i32 0))
  br label %94

; <label>:87:                                     ; preds = %76
  %88 = load %struct.movie_node*, %struct.movie_node** %5, align 8
  %89 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %88, i32 0, i32 0
  %90 = load %struct.movie*, %struct.movie** %89, align 8
  %91 = getelementptr inbounds %struct.movie, %struct.movie* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.40, i32 0, i32 0), i8* %92)
  br label %94

; <label>:94:                                     ; preds = %33, %41, %69, %87, %85
  ret void
}

declare i64 @strtoul(i8*, i8**, i32) #1

declare %struct.movie_node* @movie_find_by_id(%struct.movie_node*, i32) #1

declare %struct.movie_node* @movie_find(%struct.movie_node*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @return_movie() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.movie_node*, align 8
  %5 = alloca %struct.movie_node*, align 8
  store i32 0, i32* %3, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.34, i32 0, i32 0))
  %7 = load %struct.movie_node*, %struct.movie_node** @movies_rented, align 8
  store %struct.movie_node* %7, %struct.movie_node** %4, align 8
  br label %8

; <label>:8:                                      ; preds = %23, %0
  %9 = load %struct.movie_node*, %struct.movie_node** %4, align 8
  %10 = icmp ne %struct.movie_node* %9, null
  br i1 %10, label %11, label %27

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %3, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %3, align 4
  %14 = load %struct.movie_node*, %struct.movie_node** %4, align 8
  %15 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %14, i32 0, i32 0
  %16 = load %struct.movie*, %struct.movie** %15, align 8
  %17 = getelementptr inbounds %struct.movie, %struct.movie* %16, i32 0, i32 6
  %18 = load void (i32, %struct.movie*)*, void (i32, %struct.movie*)** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.movie_node*, %struct.movie_node** %4, align 8
  %21 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %20, i32 0, i32 0
  %22 = load %struct.movie*, %struct.movie** %21, align 8
  call void %18(i32 %19, %struct.movie* %22)
  br label %23

; <label>:23:                                     ; preds = %11
  %24 = load %struct.movie_node*, %struct.movie_node** %4, align 8
  %25 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %24, i32 0, i32 1
  %26 = load %struct.movie_node*, %struct.movie_node** %25, align 8
  store %struct.movie_node* %26, %struct.movie_node** %4, align 8
  br label %8

; <label>:27:                                     ; preds = %8
  %28 = load i32, i32* %3, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %27
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.41, i32 0, i32 0))
  br label %75

; <label>:34:                                     ; preds = %27
  br label %35

; <label>:35:                                     ; preds = %34, %52
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0))
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %38 = call i32 @readuntil(i32 0, i8* %37, i64 256, i8 signext 10)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %35
  br label %75

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %43 = call i64 @strtoul(i8* %42, i8** null, i32 10)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp uge i32 %45, 1
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %41
  %48 = load i32, i32* %2, align 4
  %49 = load i32, i32* %3, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %47
  br label %54

; <label>:52:                                     ; preds = %47, %41
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i32 0, i32 0))
  br label %35

; <label>:54:                                     ; preds = %51
  %55 = load %struct.movie_node*, %struct.movie_node** @movies_rented, align 8
  %56 = load i32, i32* %2, align 4
  %57 = call %struct.movie_node* @movie_find_by_id(%struct.movie_node* %55, i32 %56)
  store %struct.movie_node* %57, %struct.movie_node** %5, align 8
  %58 = load %struct.movie_node*, %struct.movie_node** %5, align 8
  %59 = icmp eq %struct.movie_node* %58, null
  br i1 %59, label %60, label %62

; <label>:60:                                     ; preds = %54
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.42, i32 0, i32 0))
  br label %75

; <label>:62:                                     ; preds = %54
  %63 = load i32, i32* %2, align 4
  %64 = call i32 @movie_delete(%struct.movie_node** @movies_rented, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

; <label>:66:                                     ; preds = %62
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.43, i32 0, i32 0))
  br label %75

; <label>:68:                                     ; preds = %62
  %69 = load %struct.movie_node*, %struct.movie_node** %5, align 8
  %70 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %69, i32 0, i32 0
  %71 = load %struct.movie*, %struct.movie** %70, align 8
  %72 = getelementptr inbounds %struct.movie, %struct.movie* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.44, i32 0, i32 0), i8* %73)
  br label %75

; <label>:75:                                     ; preds = %68, %66, %60, %40, %32
  ret void
}

declare i32 @movie_delete(%struct.movie_node**, i32) #1

; Function Attrs: noinline nounwind uwtable
define i32 @login() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [64 x i8], align 16
  %4 = alloca [6 x i8], align 1
  store i32 0, i32* %2, align 4
  %5 = bitcast [6 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @login.username, i32 0, i32 0), i64 6, i32 1, i1 false)
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0))
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0
  %8 = call i32 @readuntil(i32 0, i8* %7, i64 64, i8 signext 10)
  %9 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i32 0, i32 0
  %10 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0
  %11 = call i32 @strcmp(i8* %9, i8* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

; <label>:13:                                     ; preds = %0
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.46, i32 0, i32 0))
  %15 = load i32, i32* %2, align 4
  store i32 %15, i32* %1, align 4
  br label %29

; <label>:16:                                     ; preds = %0
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.47, i32 0, i32 0))
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0
  %19 = call i32 @readuntil(i32 0, i8* %18, i64 68, i8 signext 10)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i32 0, i32 0
  %21 = call i32 @strcmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @g_password, i32 0, i32 0), i8* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

; <label>:23:                                     ; preds = %16
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.46, i32 0, i32 0))
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %1, align 4
  br label %29

; <label>:26:                                     ; preds = %16
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.48, i32 0, i32 0))
  store i32 1, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* %1, align 4
  br label %29

; <label>:29:                                     ; preds = %26, %23, %13
  %30 = load i32, i32* %1, align 4
  ret i32 %30
}

declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @add_movie() #0 {
  %1 = alloca [1024 x i8], align 16
  %2 = alloca %struct.movie*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i8* @my_malloc(i64 40)
  %7 = bitcast i8* %6 to %struct.movie*
  store %struct.movie* %7, %struct.movie** %2, align 8
  %8 = load %struct.movie*, %struct.movie** %2, align 8
  %9 = icmp ne %struct.movie* %8, null
  br i1 %9, label %11, label %10

; <label>:10:                                     ; preds = %0
  br label %210

; <label>:11:                                     ; preds = %0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.49, i32 0, i32 0))
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.50, i32 0, i32 0))
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %15 = call i32 @readuntil(i32 0, i8* %14, i64 1024, i8 signext 10)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

; <label>:17:                                     ; preds = %11
  br label %185

; <label>:18:                                     ; preds = %11
  %19 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %20 = call i64 @strlen(i8* %19)
  %21 = add i64 %20, 1
  %22 = call i8* @my_malloc(i64 %21)
  %23 = load %struct.movie*, %struct.movie** %2, align 8
  %24 = getelementptr inbounds %struct.movie, %struct.movie* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  %25 = load %struct.movie*, %struct.movie** %2, align 8
  %26 = getelementptr inbounds %struct.movie, %struct.movie* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %30

; <label>:29:                                     ; preds = %18
  br label %185

; <label>:30:                                     ; preds = %18
  %31 = load %struct.movie*, %struct.movie** %2, align 8
  %32 = getelementptr inbounds %struct.movie, %struct.movie* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %35 = call i8* @strcpy(i8* %33, i8* %34)
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0))
  %37 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %38 = call i32 @readuntil(i32 0, i8* %37, i64 1024, i8 signext 10)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %30
  br label %185

; <label>:41:                                     ; preds = %30
  %42 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %43 = call i64 @strlen(i8* %42)
  %44 = add i64 %43, 1
  %45 = call i8* @my_malloc(i64 %44)
  %46 = load %struct.movie*, %struct.movie** %2, align 8
  %47 = getelementptr inbounds %struct.movie, %struct.movie* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.movie*, %struct.movie** %2, align 8
  %49 = getelementptr inbounds %struct.movie, %struct.movie* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %53

; <label>:52:                                     ; preds = %41
  br label %185

; <label>:53:                                     ; preds = %41
  %54 = load %struct.movie*, %struct.movie** %2, align 8
  %55 = getelementptr inbounds %struct.movie, %struct.movie* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %58 = call i8* @strcpy(i8* %56, i8* %57)
  br label %59

; <label>:59:                                     ; preds = %53, %81
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.52, i32 0, i32 0))
  %61 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %62 = call i32 @readuntil(i32 0, i8* %61, i64 1024, i8 signext 10)
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %59
  br label %185

; <label>:65:                                     ; preds = %59
  %66 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %67 = call i64 @strtoul(i8* %66, i8** null, i32 10)
  %68 = trunc i64 %67 to i32
  %69 = load %struct.movie*, %struct.movie** %2, align 8
  %70 = getelementptr inbounds %struct.movie, %struct.movie* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.movie*, %struct.movie** %2, align 8
  %72 = getelementptr inbounds %struct.movie, %struct.movie* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp sge i32 %73, 1800
  br i1 %74, label %75, label %81

; <label>:75:                                     ; preds = %65
  %76 = load %struct.movie*, %struct.movie** %2, align 8
  %77 = getelementptr inbounds %struct.movie, %struct.movie* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp sle i32 %78, 2015
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %75
  br label %83

; <label>:81:                                     ; preds = %75, %65
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0))
  br label %59

; <label>:83:                                     ; preds = %80
  br label %84

; <label>:84:                                     ; preds = %83, %106
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.54, i32 0, i32 0))
  %86 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %87 = call i32 @readuntil(i32 0, i8* %86, i64 1024, i8 signext 10)
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

; <label>:89:                                     ; preds = %84
  br label %185

; <label>:90:                                     ; preds = %84
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %92 = call i64 @strtoul(i8* %91, i8** null, i32 10)
  %93 = trunc i64 %92 to i32
  %94 = load %struct.movie*, %struct.movie** %2, align 8
  %95 = getelementptr inbounds %struct.movie, %struct.movie* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.movie*, %struct.movie** %2, align 8
  %97 = getelementptr inbounds %struct.movie, %struct.movie* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp sge i32 %98, 0
  br i1 %99, label %100, label %106

; <label>:100:                                    ; preds = %90
  %101 = load %struct.movie*, %struct.movie** %2, align 8
  %102 = getelementptr inbounds %struct.movie, %struct.movie* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp sle i32 %103, 100
  br i1 %104, label %105, label %106

; <label>:105:                                    ; preds = %100
  br label %108

; <label>:106:                                    ; preds = %100, %90
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0))
  br label %84

; <label>:108:                                    ; preds = %105
  store i32 0, i32* %3, align 4
  br label %109

; <label>:109:                                    ; preds = %141, %108
  %110 = load i32, i32* %3, align 4
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br i1 %112, label %113, label %142

; <label>:113:                                    ; preds = %109
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.56, i32 0, i32 0))
  %115 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %116 = call i32 @readuntil(i32 0, i8* %115, i64 1024, i8 signext 10)
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

; <label>:118:                                    ; preds = %113
  br label %185

; <label>:119:                                    ; preds = %113
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %121 = call i64 @strtoul(i8* %120, i8** null, i32 10)
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %4, align 4
  store i32 1, i32* %3, align 4
  %123 = load i32, i32* %4, align 4
  switch i32 %123, label %139 [
    i32 1, label %124
    i32 2, label %127
    i32 3, label %130
    i32 4, label %133
    i32 5, label %136
  ]

; <label>:124:                                    ; preds = %119
  %125 = load %struct.movie*, %struct.movie** %2, align 8
  %126 = getelementptr inbounds %struct.movie, %struct.movie* %125, i32 0, i32 4
  store i32 1, i32* %126, align 8
  br label %141

; <label>:127:                                    ; preds = %119
  %128 = load %struct.movie*, %struct.movie** %2, align 8
  %129 = getelementptr inbounds %struct.movie, %struct.movie* %128, i32 0, i32 4
  store i32 2, i32* %129, align 8
  br label %141

; <label>:130:                                    ; preds = %119
  %131 = load %struct.movie*, %struct.movie** %2, align 8
  %132 = getelementptr inbounds %struct.movie, %struct.movie* %131, i32 0, i32 4
  store i32 3, i32* %132, align 8
  br label %141

; <label>:133:                                    ; preds = %119
  %134 = load %struct.movie*, %struct.movie** %2, align 8
  %135 = getelementptr inbounds %struct.movie, %struct.movie* %134, i32 0, i32 4
  store i32 4, i32* %135, align 8
  br label %141

; <label>:136:                                    ; preds = %119
  %137 = load %struct.movie*, %struct.movie** %2, align 8
  %138 = getelementptr inbounds %struct.movie, %struct.movie* %137, i32 0, i32 4
  store i32 5, i32* %138, align 8
  br label %141

; <label>:139:                                    ; preds = %119
  store i32 0, i32* %3, align 4
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0))
  br label %141

; <label>:141:                                    ; preds = %139, %136, %133, %130, %127, %124
  br label %109

; <label>:142:                                    ; preds = %109
  store i32 0, i32* %3, align 4
  br label %143

; <label>:143:                                    ; preds = %175, %142
  %144 = load i32, i32* %3, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  br i1 %146, label %147, label %176

; <label>:147:                                    ; preds = %143
  %148 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.58, i32 0, i32 0))
  %149 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %150 = call i32 @readuntil(i32 0, i8* %149, i64 1024, i8 signext 10)
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

; <label>:152:                                    ; preds = %147
  br label %185

; <label>:153:                                    ; preds = %147
  %154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %1, i32 0, i32 0
  %155 = call i64 @strtoul(i8* %154, i8** null, i32 10)
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %5, align 4
  store i32 1, i32* %3, align 4
  %157 = load i32, i32* %5, align 4
  switch i32 %157, label %173 [
    i32 1, label %158
    i32 2, label %161
    i32 3, label %164
    i32 4, label %167
    i32 5, label %170
  ]

; <label>:158:                                    ; preds = %153
  %159 = load %struct.movie*, %struct.movie** %2, align 8
  %160 = getelementptr inbounds %struct.movie, %struct.movie* %159, i32 0, i32 5
  store i32 1, i32* %160, align 4
  br label %175

; <label>:161:                                    ; preds = %153
  %162 = load %struct.movie*, %struct.movie** %2, align 8
  %163 = getelementptr inbounds %struct.movie, %struct.movie* %162, i32 0, i32 5
  store i32 2, i32* %163, align 4
  br label %175

; <label>:164:                                    ; preds = %153
  %165 = load %struct.movie*, %struct.movie** %2, align 8
  %166 = getelementptr inbounds %struct.movie, %struct.movie* %165, i32 0, i32 5
  store i32 3, i32* %166, align 4
  br label %175

; <label>:167:                                    ; preds = %153
  %168 = load %struct.movie*, %struct.movie** %2, align 8
  %169 = getelementptr inbounds %struct.movie, %struct.movie* %168, i32 0, i32 5
  store i32 4, i32* %169, align 4
  br label %175

; <label>:170:                                    ; preds = %153
  %171 = load %struct.movie*, %struct.movie** %2, align 8
  %172 = getelementptr inbounds %struct.movie, %struct.movie* %171, i32 0, i32 5
  store i32 5, i32* %172, align 4
  br label %175

; <label>:173:                                    ; preds = %153
  store i32 0, i32* %3, align 4
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.59, i32 0, i32 0))
  br label %175

; <label>:175:                                    ; preds = %173, %170, %167, %164, %161, %158
  br label %143

; <label>:176:                                    ; preds = %143
  %177 = load %struct.movie*, %struct.movie** %2, align 8
  %178 = getelementptr inbounds %struct.movie, %struct.movie* %177, i32 0, i32 6
  store void (i32, %struct.movie*)* @print_movie_detail, void (i32, %struct.movie*)** %178, align 8
  %179 = load %struct.movie*, %struct.movie** %2, align 8
  %180 = call i32 @movie_add(%struct.movie_node** @movies_full, %struct.movie* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

; <label>:182:                                    ; preds = %176
  %183 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.60, i32 0, i32 0))
  br label %185

; <label>:184:                                    ; preds = %176
  br label %210

; <label>:185:                                    ; preds = %182, %152, %118, %89, %64, %52, %40, %29, %17
  %186 = load %struct.movie*, %struct.movie** %2, align 8
  %187 = icmp ne %struct.movie* %186, null
  br i1 %187, label %188, label %209

; <label>:188:                                    ; preds = %185
  %189 = load %struct.movie*, %struct.movie** %2, align 8
  %190 = getelementptr inbounds %struct.movie, %struct.movie* %189, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %193, label %197

; <label>:193:                                    ; preds = %188
  %194 = load %struct.movie*, %struct.movie** %2, align 8
  %195 = getelementptr inbounds %struct.movie, %struct.movie* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  call void @my_free(i8* %196)
  br label %197

; <label>:197:                                    ; preds = %193, %188
  %198 = load %struct.movie*, %struct.movie** %2, align 8
  %199 = getelementptr inbounds %struct.movie, %struct.movie* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %206

; <label>:202:                                    ; preds = %197
  %203 = load %struct.movie*, %struct.movie** %2, align 8
  %204 = getelementptr inbounds %struct.movie, %struct.movie* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  call void @my_free(i8* %205)
  br label %206

; <label>:206:                                    ; preds = %202, %197
  %207 = load %struct.movie*, %struct.movie** %2, align 8
  %208 = bitcast %struct.movie* %207 to i8*
  call void @my_free(i8* %208)
  br label %209

; <label>:209:                                    ; preds = %206, %185
  br label %210

; <label>:210:                                    ; preds = %209, %184, %10
  ret void
}

declare void @my_free(i8*) #1

; Function Attrs: noinline nounwind uwtable
define void @remove_movie() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.movie_node*, align 8
  %5 = alloca %struct.movie*, align 8
  store i32 0, i32* %2, align 4
  %6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0))
  %7 = load %struct.movie_node*, %struct.movie_node** @movies_full, align 8
  store %struct.movie_node* %7, %struct.movie_node** %4, align 8
  br label %8

; <label>:8:                                      ; preds = %23, %0
  %9 = load %struct.movie_node*, %struct.movie_node** %4, align 8
  %10 = icmp ne %struct.movie_node* %9, null
  br i1 %10, label %11, label %27

; <label>:11:                                     ; preds = %8
  %12 = load i32, i32* %2, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %2, align 4
  %14 = load %struct.movie_node*, %struct.movie_node** %4, align 8
  %15 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %14, i32 0, i32 0
  %16 = load %struct.movie*, %struct.movie** %15, align 8
  %17 = getelementptr inbounds %struct.movie, %struct.movie* %16, i32 0, i32 6
  %18 = load void (i32, %struct.movie*)*, void (i32, %struct.movie*)** %17, align 8
  %19 = load i32, i32* %2, align 4
  %20 = load %struct.movie_node*, %struct.movie_node** %4, align 8
  %21 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %20, i32 0, i32 0
  %22 = load %struct.movie*, %struct.movie** %21, align 8
  call void %18(i32 %19, %struct.movie* %22)
  br label %23

; <label>:23:                                     ; preds = %11
  %24 = load %struct.movie_node*, %struct.movie_node** %4, align 8
  %25 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %24, i32 0, i32 1
  %26 = load %struct.movie_node*, %struct.movie_node** %25, align 8
  store %struct.movie_node* %26, %struct.movie_node** %4, align 8
  br label %8

; <label>:27:                                     ; preds = %8
  %28 = load i32, i32* %2, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i32 %28)
  %30 = load i32, i32* %2, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

; <label>:32:                                     ; preds = %27
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.61, i32 0, i32 0))
  br label %71

; <label>:34:                                     ; preds = %27
  br label %35

; <label>:35:                                     ; preds = %34, %52
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0))
  %37 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %38 = call i32 @readuntil(i32 0, i8* %37, i64 256, i8 signext 10)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %35
  br label %71

; <label>:41:                                     ; preds = %35
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i32 0, i32 0
  %43 = call i64 @strtoul(i8* %42, i8** null, i32 10)
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = icmp uge i32 %45, 1
  br i1 %46, label %47, label %52

; <label>:47:                                     ; preds = %41
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp ule i32 %48, %49
  br i1 %50, label %51, label %52

; <label>:51:                                     ; preds = %47
  br label %54

; <label>:52:                                     ; preds = %47, %41
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i32 0, i32 0))
  br label %35

; <label>:54:                                     ; preds = %51
  %55 = load %struct.movie_node*, %struct.movie_node** @movies_full, align 8
  %56 = load i32, i32* %3, align 4
  %57 = call %struct.movie_node* @movie_find_by_id(%struct.movie_node* %55, i32 %56)
  store %struct.movie_node* %57, %struct.movie_node** %4, align 8
  %58 = load %struct.movie_node*, %struct.movie_node** %4, align 8
  %59 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %58, i32 0, i32 0
  %60 = load %struct.movie*, %struct.movie** %59, align 8
  store %struct.movie* %60, %struct.movie** %5, align 8
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @movie_delete(%struct.movie_node** @movies_full, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

; <label>:64:                                     ; preds = %54
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i32 0, i32 0))
  br label %71

; <label>:66:                                     ; preds = %54
  %67 = load i32, i32* @g_num_movies, align 4
  %68 = add i32 %67, -1
  store i32 %68, i32* @g_num_movies, align 4
  %69 = load %struct.movie*, %struct.movie** %5, align 8
  call void @free_movie(%struct.movie* %69)
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.63, i32 0, i32 0))
  br label %71

; <label>:71:                                     ; preds = %32, %40, %66, %64
  ret void
}

declare void @free_movie(%struct.movie*) #1

; Function Attrs: noinline nounwind uwtable
define void @update_movie() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [1024 x i8], align 16
  %6 = alloca %struct.movie_node*, align 8
  %7 = alloca %struct.movie*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0))
  %14 = load %struct.movie_node*, %struct.movie_node** @movies_full, align 8
  store %struct.movie_node* %14, %struct.movie_node** %6, align 8
  br label %15

; <label>:15:                                     ; preds = %30, %0
  %16 = load %struct.movie_node*, %struct.movie_node** %6, align 8
  %17 = icmp ne %struct.movie_node* %16, null
  br i1 %17, label %18, label %34

; <label>:18:                                     ; preds = %15
  %19 = load i32, i32* %2, align 4
  %20 = add i32 %19, 1
  store i32 %20, i32* %2, align 4
  %21 = load %struct.movie_node*, %struct.movie_node** %6, align 8
  %22 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %21, i32 0, i32 0
  %23 = load %struct.movie*, %struct.movie** %22, align 8
  %24 = getelementptr inbounds %struct.movie, %struct.movie* %23, i32 0, i32 6
  %25 = load void (i32, %struct.movie*)*, void (i32, %struct.movie*)** %24, align 8
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.movie_node*, %struct.movie_node** %6, align 8
  %28 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %27, i32 0, i32 0
  %29 = load %struct.movie*, %struct.movie** %28, align 8
  call void %25(i32 %26, %struct.movie* %29)
  br label %30

; <label>:30:                                     ; preds = %18
  %31 = load %struct.movie_node*, %struct.movie_node** %6, align 8
  %32 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %31, i32 0, i32 1
  %33 = load %struct.movie_node*, %struct.movie_node** %32, align 8
  store %struct.movie_node* %33, %struct.movie_node** %6, align 8
  br label %15

; <label>:34:                                     ; preds = %15
  %35 = load i32, i32* %2, align 4
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i32 0, i32 0), i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %41

; <label>:39:                                     ; preds = %34
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.64, i32 0, i32 0))
  br label %298

; <label>:41:                                     ; preds = %34
  br label %42

; <label>:42:                                     ; preds = %41, %59
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i32 0, i32 0))
  %44 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %45 = call i32 @readuntil(i32 0, i8* %44, i64 1024, i8 signext 10)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

; <label>:47:                                     ; preds = %42
  br label %298

; <label>:48:                                     ; preds = %42
  %49 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %50 = call i64 @strtoul(i8* %49, i8** null, i32 10)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %1, align 4
  %52 = load i32, i32* %1, align 4
  %53 = icmp uge i32 %52, 1
  br i1 %53, label %54, label %59

; <label>:54:                                     ; preds = %48
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* %2, align 4
  %57 = icmp ule i32 %55, %56
  br i1 %57, label %58, label %59

; <label>:58:                                     ; preds = %54
  br label %61

; <label>:59:                                     ; preds = %54, %48
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i32 0, i32 0))
  br label %42

; <label>:61:                                     ; preds = %58
  %62 = load %struct.movie_node*, %struct.movie_node** @movies_full, align 8
  %63 = load i32, i32* %1, align 4
  %64 = call %struct.movie_node* @movie_find_by_id(%struct.movie_node* %62, i32 %63)
  store %struct.movie_node* %64, %struct.movie_node** %6, align 8
  %65 = load %struct.movie_node*, %struct.movie_node** %6, align 8
  %66 = getelementptr inbounds %struct.movie_node, %struct.movie_node* %65, i32 0, i32 0
  %67 = load %struct.movie*, %struct.movie** %66, align 8
  store %struct.movie* %67, %struct.movie** %7, align 8
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.65, i32 0, i32 0))
  %69 = load %struct.movie*, %struct.movie** %7, align 8
  %70 = getelementptr inbounds %struct.movie, %struct.movie* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.66, i32 0, i32 0), i8* %71)
  %73 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %74 = call i32 @readuntil(i32 0, i8* %73, i64 1024, i8 signext 10)
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

; <label>:76:                                     ; preds = %61
  br label %298

; <label>:77:                                     ; preds = %61
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %79 = call i64 @strlen(i8* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %99

; <label>:81:                                     ; preds = %77
  %82 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %83 = call i64 @strlen(i8* %82)
  %84 = add i64 %83, 1
  %85 = call i8* @my_malloc(i64 %84)
  store i8* %85, i8** %3, align 8
  %86 = load i8*, i8** %3, align 8
  %87 = icmp eq i8* %86, null
  br i1 %87, label %88, label %89

; <label>:88:                                     ; preds = %81
  br label %282

; <label>:89:                                     ; preds = %81
  %90 = load i8*, i8** %3, align 8
  %91 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %92 = call i8* @strcpy(i8* %90, i8* %91)
  %93 = load %struct.movie*, %struct.movie** %7, align 8
  %94 = getelementptr inbounds %struct.movie, %struct.movie* %93, i32 0, i32 0
  %95 = load i8*, i8** %94, align 8
  call void @my_free(i8* %95)
  %96 = load i8*, i8** %3, align 8
  %97 = load %struct.movie*, %struct.movie** %7, align 8
  %98 = getelementptr inbounds %struct.movie, %struct.movie* %97, i32 0, i32 0
  store i8* %96, i8** %98, align 8
  br label %99

; <label>:99:                                     ; preds = %89, %77
  %100 = load %struct.movie*, %struct.movie** %7, align 8
  %101 = getelementptr inbounds %struct.movie, %struct.movie* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.67, i32 0, i32 0), i8* %102)
  %104 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %105 = call i32 @readuntil(i32 0, i8* %104, i64 1024, i8 signext 10)
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

; <label>:107:                                    ; preds = %99
  br label %298

; <label>:108:                                    ; preds = %99
  %109 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %110 = call i64 @strlen(i8* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %130

; <label>:112:                                    ; preds = %108
  %113 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %114 = call i64 @strlen(i8* %113)
  %115 = add i64 %114, 1
  %116 = call i8* @my_malloc(i64 %115)
  store i8* %116, i8** %4, align 8
  %117 = load i8*, i8** %4, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %120

; <label>:119:                                    ; preds = %112
  br label %282

; <label>:120:                                    ; preds = %112
  %121 = load i8*, i8** %4, align 8
  %122 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %123 = call i8* @strcpy(i8* %121, i8* %122)
  %124 = load %struct.movie*, %struct.movie** %7, align 8
  %125 = getelementptr inbounds %struct.movie, %struct.movie* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  call void @my_free(i8* %126)
  %127 = load i8*, i8** %4, align 8
  %128 = load %struct.movie*, %struct.movie** %7, align 8
  %129 = getelementptr inbounds %struct.movie, %struct.movie* %128, i32 0, i32 1
  store i8* %127, i8** %129, align 8
  br label %130

; <label>:130:                                    ; preds = %120, %108
  br label %131

; <label>:131:                                    ; preds = %130, %160
  %132 = load %struct.movie*, %struct.movie** %7, align 8
  %133 = getelementptr inbounds %struct.movie, %struct.movie* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.68, i32 0, i32 0), i32 %134)
  %136 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %137 = call i32 @readuntil(i32 0, i8* %136, i64 1024, i8 signext 10)
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %140

; <label>:139:                                    ; preds = %131
  br label %282

; <label>:140:                                    ; preds = %131
  %141 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %142 = call i64 @strlen(i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %159

; <label>:144:                                    ; preds = %140
  %145 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %146 = call i64 @strtoul(i8* %145, i8** null, i32 10)
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = icmp sge i32 %148, 1800
  br i1 %149, label %150, label %157

; <label>:150:                                    ; preds = %144
  %151 = load i32, i32* %8, align 4
  %152 = icmp sle i32 %151, 2015
  br i1 %152, label %153, label %157

; <label>:153:                                    ; preds = %150
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.movie*, %struct.movie** %7, align 8
  %156 = getelementptr inbounds %struct.movie, %struct.movie* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  br label %161

; <label>:157:                                    ; preds = %150, %144
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.53, i32 0, i32 0))
  br label %160

; <label>:159:                                    ; preds = %140
  br label %161

; <label>:160:                                    ; preds = %157
  br label %131

; <label>:161:                                    ; preds = %159, %153
  br label %162

; <label>:162:                                    ; preds = %161, %191
  %163 = load %struct.movie*, %struct.movie** %7, align 8
  %164 = getelementptr inbounds %struct.movie, %struct.movie* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.69, i32 0, i32 0), i32 %165)
  %167 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %168 = call i32 @readuntil(i32 0, i8* %167, i64 1024, i8 signext 10)
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

; <label>:170:                                    ; preds = %162
  br label %282

; <label>:171:                                    ; preds = %162
  %172 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %173 = call i64 @strlen(i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %190

; <label>:175:                                    ; preds = %171
  %176 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %177 = call i64 @strtoul(i8* %176, i8** null, i32 10)
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %188

; <label>:181:                                    ; preds = %175
  %182 = load i32, i32* %9, align 4
  %183 = icmp sle i32 %182, 100
  br i1 %183, label %184, label %188

; <label>:184:                                    ; preds = %181
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.movie*, %struct.movie** %7, align 8
  %187 = getelementptr inbounds %struct.movie, %struct.movie* %186, i32 0, i32 3
  store i32 %185, i32* %187, align 4
  br label %192

; <label>:188:                                    ; preds = %181, %175
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.55, i32 0, i32 0))
  br label %191

; <label>:190:                                    ; preds = %171
  br label %192

; <label>:191:                                    ; preds = %188
  br label %162

; <label>:192:                                    ; preds = %190, %184
  store i32 0, i32* %10, align 4
  br label %193

; <label>:193:                                    ; preds = %235, %192
  %194 = load i32, i32* %10, align 4
  %195 = icmp ne i32 %194, 0
  %196 = xor i1 %195, true
  br i1 %196, label %197, label %236

; <label>:197:                                    ; preds = %193
  %198 = load %struct.movie*, %struct.movie** %7, align 8
  %199 = getelementptr inbounds %struct.movie, %struct.movie* %198, i32 0, i32 4
  %200 = load i32, i32* %199, align 8
  %201 = call i8* @movie_g2s(i32 %200)
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.70, i32 0, i32 0), i8* %201)
  %203 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %204 = call i32 @readuntil(i32 0, i8* %203, i64 1024, i8 signext 10)
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %207

; <label>:206:                                    ; preds = %197
  br label %282

; <label>:207:                                    ; preds = %197
  %208 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %209 = call i64 @strlen(i8* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %234

; <label>:211:                                    ; preds = %207
  %212 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %213 = call i64 @strtoul(i8* %212, i8** null, i32 10)
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %11, align 4
  store i32 1, i32* %10, align 4
  %215 = load i32, i32* %11, align 4
  switch i32 %215, label %231 [
    i32 1, label %216
    i32 2, label %219
    i32 3, label %222
    i32 4, label %225
    i32 5, label %228
  ]

; <label>:216:                                    ; preds = %211
  %217 = load %struct.movie*, %struct.movie** %7, align 8
  %218 = getelementptr inbounds %struct.movie, %struct.movie* %217, i32 0, i32 4
  store i32 1, i32* %218, align 8
  br label %233

; <label>:219:                                    ; preds = %211
  %220 = load %struct.movie*, %struct.movie** %7, align 8
  %221 = getelementptr inbounds %struct.movie, %struct.movie* %220, i32 0, i32 4
  store i32 2, i32* %221, align 8
  br label %233

; <label>:222:                                    ; preds = %211
  %223 = load %struct.movie*, %struct.movie** %7, align 8
  %224 = getelementptr inbounds %struct.movie, %struct.movie* %223, i32 0, i32 4
  store i32 3, i32* %224, align 8
  br label %233

; <label>:225:                                    ; preds = %211
  %226 = load %struct.movie*, %struct.movie** %7, align 8
  %227 = getelementptr inbounds %struct.movie, %struct.movie* %226, i32 0, i32 4
  store i32 4, i32* %227, align 8
  br label %233

; <label>:228:                                    ; preds = %211
  %229 = load %struct.movie*, %struct.movie** %7, align 8
  %230 = getelementptr inbounds %struct.movie, %struct.movie* %229, i32 0, i32 4
  store i32 5, i32* %230, align 8
  br label %233

; <label>:231:                                    ; preds = %211
  store i32 0, i32* %10, align 4
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.57, i32 0, i32 0))
  br label %233

; <label>:233:                                    ; preds = %231, %228, %225, %222, %219, %216
  br label %235

; <label>:234:                                    ; preds = %207
  br label %236

; <label>:235:                                    ; preds = %233
  br label %193

; <label>:236:                                    ; preds = %234, %193
  store i32 0, i32* %10, align 4
  br label %237

; <label>:237:                                    ; preds = %279, %236
  %238 = load i32, i32* %10, align 4
  %239 = icmp ne i32 %238, 0
  %240 = xor i1 %239, true
  br i1 %240, label %241, label %280

; <label>:241:                                    ; preds = %237
  %242 = load %struct.movie*, %struct.movie** %7, align 8
  %243 = getelementptr inbounds %struct.movie, %struct.movie* %242, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = call i8* @movie_r2s(i32 %244)
  %246 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.71, i32 0, i32 0), i8* %245)
  %247 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %248 = call i32 @readuntil(i32 0, i8* %247, i64 1024, i8 signext 10)
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %251

; <label>:250:                                    ; preds = %241
  br label %282

; <label>:251:                                    ; preds = %241
  %252 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %253 = call i64 @strlen(i8* %252)
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %278

; <label>:255:                                    ; preds = %251
  %256 = getelementptr inbounds [1024 x i8], [1024 x i8]* %5, i32 0, i32 0
  %257 = call i64 @strtoul(i8* %256, i8** null, i32 10)
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %12, align 4
  store i32 1, i32* %10, align 4
  %259 = load i32, i32* %12, align 4
  switch i32 %259, label %275 [
    i32 1, label %260
    i32 2, label %263
    i32 3, label %266
    i32 4, label %269
    i32 5, label %272
  ]

; <label>:260:                                    ; preds = %255
  %261 = load %struct.movie*, %struct.movie** %7, align 8
  %262 = getelementptr inbounds %struct.movie, %struct.movie* %261, i32 0, i32 5
  store i32 1, i32* %262, align 4
  br label %277

; <label>:263:                                    ; preds = %255
  %264 = load %struct.movie*, %struct.movie** %7, align 8
  %265 = getelementptr inbounds %struct.movie, %struct.movie* %264, i32 0, i32 5
  store i32 2, i32* %265, align 4
  br label %277

; <label>:266:                                    ; preds = %255
  %267 = load %struct.movie*, %struct.movie** %7, align 8
  %268 = getelementptr inbounds %struct.movie, %struct.movie* %267, i32 0, i32 5
  store i32 3, i32* %268, align 4
  br label %277

; <label>:269:                                    ; preds = %255
  %270 = load %struct.movie*, %struct.movie** %7, align 8
  %271 = getelementptr inbounds %struct.movie, %struct.movie* %270, i32 0, i32 5
  store i32 4, i32* %271, align 4
  br label %277

; <label>:272:                                    ; preds = %255
  %273 = load %struct.movie*, %struct.movie** %7, align 8
  %274 = getelementptr inbounds %struct.movie, %struct.movie* %273, i32 0, i32 5
  store i32 5, i32* %274, align 4
  br label %277

; <label>:275:                                    ; preds = %255
  store i32 0, i32* %10, align 4
  %276 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.59, i32 0, i32 0))
  br label %277

; <label>:277:                                    ; preds = %275, %272, %269, %266, %263, %260
  br label %279

; <label>:278:                                    ; preds = %251
  br label %280

; <label>:279:                                    ; preds = %277
  br label %237

; <label>:280:                                    ; preds = %278, %237
  %281 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.72, i32 0, i32 0))
  br label %298

; <label>:282:                                    ; preds = %250, %206, %170, %139, %119, %88
  %283 = load i8*, i8** %3, align 8
  %284 = icmp ne i8* %283, null
  br i1 %284, label %285, label %287

; <label>:285:                                    ; preds = %282
  %286 = load i8*, i8** %3, align 8
  call void @my_free(i8* %286)
  br label %287

; <label>:287:                                    ; preds = %285, %282
  %288 = load i8*, i8** %4, align 8
  %289 = icmp ne i8* %288, null
  br i1 %289, label %290, label %292

; <label>:290:                                    ; preds = %287
  %291 = load i8*, i8** %4, align 8
  call void @my_free(i8* %291)
  br label %292

; <label>:292:                                    ; preds = %290, %287
  %293 = load %struct.movie*, %struct.movie** %7, align 8
  %294 = icmp ne %struct.movie* %293, null
  br i1 %294, label %295, label %298

; <label>:295:                                    ; preds = %292
  %296 = load %struct.movie*, %struct.movie** %7, align 8
  %297 = bitcast %struct.movie* %296 to i8*
  call void @my_free(i8* %297)
  br label %298

; <label>:298:                                    ; preds = %39, %47, %76, %107, %280, %295, %292
  ret void
}

declare i8* @movie_g2s(i32) #1

declare i8* @movie_r2s(i32) #1

; Function Attrs: noinline nounwind uwtable
define void @quit() #0 {
  %1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.73, i32 0, i32 0))
  call void @exit(i32 0)
  ret void
}

; Function Attrs: noinline nounwind uwtable
define internal void @exit(i32) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  call void @_terminate(i32 %3) #4
  unreachable
                                                  ; No predecessors!
  ret void
}

; Function Attrs: noinline nounwind uwtable
define i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [46 x i8], align 16
  %5 = alloca [78 x i8], align 16
  %6 = alloca [75 x i8], align 16
  store i32 0, i32* %1, align 4
  store i32 0, i32* %2, align 4
  %7 = bitcast [46 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @main.welcome, i32 0, i32 0), i64 46, i32 16, i1 false)
  %8 = bitcast [78 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %8, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @main.menu, i32 0, i32 0), i64 78, i32 16, i1 false)
  %9 = bitcast [75 x i8]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* %9, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @main.admin_menu, i32 0, i32 0), i64 75, i32 16, i1 false)
  %10 = getelementptr inbounds [46 x i8], [46 x i8]* %4, i32 0, i32 0
  %11 = call i32 (i8*, ...) @printf(i8* %10)
  call void @initialize()
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.74, i32 0, i32 0))
  br label %13

; <label>:13:                                     ; preds = %0, %54
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %34

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds [75 x i8], [75 x i8]* %6, i32 0, i32 0
  %18 = call i32 (i8*, ...) @printf(i8* %17)
  %19 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0
  %20 = call i32 @readuntil(i32 0, i8* %19, i64 4096, i8 signext 10)
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

; <label>:22:                                     ; preds = %16
  call void @quit()
  br label %23

; <label>:23:                                     ; preds = %22, %16
  %24 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %25 = load i8, i8* %24, align 16
  %26 = sext i8 %25 to i32
  switch i32 %26, label %31 [
    i32 49, label %27
    i32 50, label %28
    i32 51, label %29
    i32 52, label %30
  ]

; <label>:27:                                     ; preds = %23
  call void @add_movie()
  br label %33

; <label>:28:                                     ; preds = %23
  call void @remove_movie()
  br label %33

; <label>:29:                                     ; preds = %23
  call void @update_movie()
  br label %33

; <label>:30:                                     ; preds = %23
  store i32 0, i32* %2, align 4
  br label %33

; <label>:31:                                     ; preds = %23
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i32 0, i32 0))
  br label %33

; <label>:33:                                     ; preds = %31, %30, %29, %28, %27
  br label %54

; <label>:34:                                     ; preds = %13
  %35 = getelementptr inbounds [78 x i8], [78 x i8]* %5, i32 0, i32 0
  %36 = call i32 (i8*, ...) @printf(i8* %35)
  %37 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i32 0, i32 0
  %38 = call i32 @readuntil(i32 0, i8* %37, i64 4096, i8 signext 10)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %41

; <label>:40:                                     ; preds = %34
  call void @quit()
  br label %41

; <label>:41:                                     ; preds = %40, %34
  %42 = getelementptr inbounds [4096 x i8], [4096 x i8]* %3, i64 0, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = sext i8 %43 to i32
  switch i32 %44, label %51 [
    i32 49, label %45
    i32 50, label %46
    i32 51, label %47
    i32 52, label %48
    i32 53, label %50
  ]

; <label>:45:                                     ; preds = %41
  call void @list_movies()
  br label %53

; <label>:46:                                     ; preds = %41
  call void @rent_movie()
  br label %53

; <label>:47:                                     ; preds = %41
  call void @return_movie()
  br label %53

; <label>:48:                                     ; preds = %41
  %49 = call i32 @login()
  store i32 %49, i32* %2, align 4
  br label %53

; <label>:50:                                     ; preds = %41
  call void @quit()
  br label %53

; <label>:51:                                     ; preds = %41
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.75, i32 0, i32 0))
  br label %53

; <label>:53:                                     ; preds = %51, %50, %48, %47, %46, %45
  br label %54

; <label>:54:                                     ; preds = %53, %33
  br label %13
                                                  ; No predecessors!
  %56 = load i32, i32* %1, align 4
  ret i32 %56
}

; Function Attrs: noreturn
declare void @_terminate(i32) #3

attributes #0 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = !{!"Obfuscator-LLVM clang version 4.0.1  (based on Obfuscator-LLVM 4.0.1)"}
