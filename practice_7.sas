dm 'log; clear; odsresults; clear;' ;


title 'Fisher Ankney';
title2 'practice 7';



data mesonet18 ; 
input Month $ DAY MAXTEMP MINTEMP MAXHUMID MINHUMID WINDDIR $ SPEEDAVG ; 
datalines; 
Jan 1 18 3 75 35 NNE 7.2
Jan 2 22 11 62 40 NE 4.1
Jan 3 39 15 84 38 NNW 5.5
Jan 4 42 18 85 32 SE 3.9
Jan 5 52 16 91 30 NE 3.3
Jan 6 52 23 63 37 NE 7.3
Jan 7 50 37 98 48 SSE 7.9
Jan 8 55 28 96 36 NW 3.3
Jan 9 56 26 97 52 SSE 7.5
Jan 10 61 42 92 51 SSE 11.7
Jan 11 53 18 97 55 NNW 14.0
Jan 12 33 12 70 34 NNW 8.3
Jan 13 33 18 68 29 NNW 5.9
Jan 14 50 25 62 29 SE 5.4
Jan 15 40 12 80 39 N 11.8
Jan 16 20 5 87 38 NNW 7.5
Jan 17 35 2 88 25 SSE 3.8
Jan 18 52 19 57 17 SSE 7.5
Jan 19 61 26 84 24 SSE 8.6
Jan 20 69 48 88 38 S 9.4
Jan 21 70 45 92 16 SSW 12.6
Jan 22 48 38 63 33 WNW 14.9
Jan 23 52 24 81 22 WNW 4.8
Jan 24 60 21 93 20 SSE 4.3
Jan 25 68 40 43 10 S 10.6
Jan 26 63 47 96 31 S 12.0
Jan 27 59 26 92 16 N 5.6
Jan 28 64 19 93 11 NNW 4.6
Jan 29 41 21 78 33 NNW 6.5
Jan 30 60 23 75 21 SSE 9.4
Jan 31 68 39 69 22 SSW 8.0
Feb 1 48 25 70 25 NNE 12.3
Feb 2 46 21 51 21 SSE 6.8
Feb 3 56 30 80 34 SSE 7.3
Feb 4 38 16 92 40 NNE 11.3
Feb 5 41 12 84 44 SSW 6.1
Feb 6 31 17 75 46 NNE 8.8
Feb 7 43 17 75 29 N 5.0
Feb 8 62 17 84 23 S 6.6
Feb 9 62 30 74 35 SSE 7.8
Feb 10 30 19 93 64 N 11.9
Feb 11 34 12 90 38 NNW 6.5
Feb 12 46 6 90 33 ESE 6.1
Feb 13 55 21 89 40 SSE 6.3
Feb 14 74 45 97 36 S 8.7
Feb 15 80 55 84 36 SSW 11.7
Feb 16 55 34 72 37 N 12.4
Feb 17 60 33 98 32 W 4.8
Feb 18 62 31 98 68 SSE 10.2
Feb 19 70 40 95 71 S 10.4
Feb 20 40 24 98 87 NNW .
Feb 21 28 21 97 84 . .
Feb 22 33 28 99 96 . .
Feb 23 40 33 99 92 NE .
Feb 24 50 29 100 64 W 5.1
Feb 25 63 24 99 30 SSW 4.4
Feb 26 69 27 98 13 SSE 4.9
Feb 27 56 . 99 74 SSE 6.9
Feb 28 72 49 100 42 SW 7.1
Mar 1 61 33 90 21 N 9.9
Mar 2 68 27 97 26 SSE 6.1
Mar 3 71 44 83 44 SE 11.6
Mar 4 . . 89 53 SSE 11.6
Mar 5 63 33 92 12 NW 11.0
Mar 6 58 31 84 14 WNW 12.2
Mar 7 54 28 85 22 NW 6.1
Mar 8 66 23 94 20 SSE 5.5
Mar 9 . 44 87 35 S 6.1
Mar 10 . . 96 53 SE 3.8
Mar 11 54 33 81 41 N 13.2
Mar 12 53 27 91 31 NNW 5.4
Mar 13 59 24 95 17 N 4.7
Mar 14 68 22 92 15 S 5.4
Mar 15 79 46 61 29 SSE 11.6
Mar 16 78 50 79 13 S 11.6
Mar 17 60 37 82 37 NW 5.3
Mar 18 64 41 94 47 ENE 7.5
Mar 19 60 43 98 43 NW 12.6
Mar 20 57 35 92 38 NW 8.5
Mar 21 64 29 97 27 ESE .
Mar 22 80 41 71 21 SSE 9.5
Mar 23 79 57 72 48 SSE 10.6
Mar 24 71 48 79 41 N 9.4
Mar 25 60 42 89 71 E 9.9
Mar 26 83 52 98 24 SSE 9.1
Mar 27 53 44 96 85 N 8.7
Mar 28 61 44 98 66 ESE 4.2
Mar 29 55 38 98 64 NNW 7.4
Mar 30 65 34 99 29 SSE 4.1
Mar 31 75 42 65 43 SSE 10.5
Apr 1 42 32 78 57 NNE 12.2
Apr 2 62 31 92 65 S 7.1
Apr 3 67 31 87 23 NNW 15.9
Apr 4 59 25 86 23 SSE 5.4
Apr 5 72 39 70 31 SSE 7.4
Apr 6 53 31 90 52 NNE 13.4
Apr 7 46 24 81 24 NNE 11.4
Apr 8 53 28 89 44 S 5.8
Apr 9 62 35 93 35 N 6.1
Apr 10 71 30 97 22 S 5.5
Apr 11 84 55 53 24 SSW 12.1
Apr 12 88 64 66 35 S 14.1
Apr 13 88 44 77 8 S 16.3
Apr 14 45 34 56 41 WNW 15.5
Apr 15 55 28 67 20 NW 11.2
Apr 16 69 26 86 24 ESE 7.3
Apr 17 90 49 83 20 S 11.5
Apr 18 74 39 76 20 NW 12.0
Apr 19 64 34 87 29 N 7.5
Apr 20 69 42 71 29 ESE 11.0
Apr 21 56 47 96 60 NNE 9.3
; 
　

proc sort data = mesonet18;
    by Month;
run;


proc means data = mesonet18 mean;
    var MAXTEMP MAXHUMID SPEEDAVG;
    class Month;
    output out = avg_out mean = max_temp_avg max_hum_avg speed_avg_avg;
run;
　
proc report data = avg_out;
    column max_temp_avg max_hum_avg speed_avg_avg;
    by Month;
    where Month ne '';
    define max_temp_avg / 'Average Maximum Temperature';
    define max_hum_avg / 'Average Maximum Humidity';
    define speed_avg_avg / 'Average Wind Speed';
    title3 'Question 1';
run;



data mesonet18;
    set mesonet18;
    DOY = _n_;
    if WINDDIR = 'N'
        then WIND2 = 'N';
    if WINDDIR = 'NE'
        then WIND2 = 'N';
    if WINDDIR = 'NW'
        then WIND2 = 'N';
    if WINDDIR = 'NNE'
        then WIND2 = 'N';
    if WINDDIR = 'NNW'
        then WIND2 = 'N';
    if WINDDIR = 'S'
        then WIND2 = 'S';
    if WINDDIR = 'SE'
        then WIND2 = 'S';
    if WINDDIR = 'SW'
        then WIND2 = 'S';
    if WINDDIR = 'SSE'
        then WIND2 = 'S';
    if WINDDIR = 'SSW'
        then WIND2 = 'S';
    if WINDDIR = 'E'
        then WIND2 = 'E';
    if WINDDIR = 'ESE'
        then WIND2 = 'E';
    if WINDDIR = 'ENE'
        then WIND2 = 'E';
    if WINDDIR = 'W'
        then WIND2 = 'W';
    if WINDDIR = 'WSW'
        then WIND2 = 'E';
    if WINDDIR = 'WNW'
        then WIND2 = 'W';
run;


proc sort data = mesonet18;
    by descending MAXTEMP;
run;


proc report data = mesonet18;
    where MAXTEMP > 0;
    column DOY MAXTEMP;
    title3 'Question 3';
    define DOY / "day of the year";
    define MAXTEMP / "maximum temperature";
run;

　
proc sort data = mesonet18;
    by Month descending WIND2 descending SPEEDAVG;
run;


proc report data = mesonet18;
    by Month;
    column WIND2 SPEEDAVG;
    define WIND2 / "Wind Direction";
    title3 'Question 4';
run;



quit;
