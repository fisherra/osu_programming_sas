/*ASSIGNMENT 2*/
/*Fisher Ankney*/

dm 'log; clear; odsresults; clear;';


DATA nba_2017;
INPUT team $ 1-22 fg fga p3 ft;
Datalines;
Golden State Warriors     43.1    87.1    12.0    17.8
Houston Rockets           40.3    87.2    14.4    20.3
Denver Nuggets            41.2    87.7    10.6    18.7
Cleveland Cavaliers       39.9    84.9    13.0    17.5
Washington Wizards        41.3    87.0     9.2    17.3
Los Angeles Clippers      39.5    83.2    10.3    19.3
Boston Celtics            38.6    85.1    12.0    18.7
Portland Trail Blazers    39.5    86.1    10.4    18.5
Phoenix Suns              39.9    88.5     7.5    20.4
Toronto Raptors           39.2    84.4     8.8    19.7
Oklahoma City Thunder     39.5    87.4     8.4    19.2
Brooklyn Nets             37.8    85.2    10.7    19.4
Minnesota Timberwolves    39.5    84.4     7.3    19.3
San Antonio Spurs         39.3    83.7     9.2    17.6
Indiana Pacers            39.3    84.5     8.6    17.9
Charlotte Hornets         37.7    85.4    10.0    19.4
Los Angeles Lakers        39.3    87.4     8.9    17.0
New Orleans Pelicans      39.1    87.0     9.4    16.7
New York Knicks           39.6    88.5     8.6    16.6
Milwaukee Bucks           38.8    81.9     8.8    17.2
Miami Heat                39.0    85.8     9.9    15.2
Atlanta Hawks             38.1    84.4     8.9    18.1
Chicago Bulls             38.6    87.1     7.6    18.0
Sacramento Kings          37.9    82.1     9.0    18.1
Philadelphia 76ers        37.7    85.3    10.1    17.0
Detroit Pistons           39.9    88.8     7.7    13.9
Orlando Magic             38.3    87.0     8.5    16.0
Utah Jazz                 37.0    79.5     9.6    17.1
Memphis Grizzlies         36.4    83.6     9.4    18.3
Dallas Mavericks          36.2    82.3    10.7    14.8
;


DATA nba_2018;
INPUT team $ 1-22 fg fga p3 ft;
Datalines;
Golden State Warriors     42.8    85.1    11.3    16.6
Houston Rockets           38.7    84.2    15.3    19.6
New Orleans Pelicans      42.7    88.3    10.2    16.1
Toronto Raptors           41.3    87.4    11.8    17.3
Cleveland Cavaliers       40.4    84.8    12.0    18.1
Denver Nuggets            40.7    86.6    11.5    17.1
Philadelphia 76ers        40.8    86.6    11.0    17.1
Minnesota Timberwolves    41.0    86.1     8.0    19.4
Los Angeles Clippers      40.3    85.4     9.5    19.0
Charlotte Hornets         39.0    86.7    10.0    20.2
Los Angeles Lakers        40.7    88.4    10.0    16.6
Oklahoma City Thunder     39.9    88.1    10.7    17.3
Washington Wizards        39.9    85.6     9.9    16.8
Brooklyn Nets             38.2    86.8    12.7    17.4
Milwaukee Bucks           39.7    83.0     8.8    18.3
Portland Trail Blazers    39.3    87.0    10.3    16.7
Indiana Pacers            40.8    86.4     9.0    14.9
New York Knicks           40.7    87.7     8.2    14.9
Utah Jazz                 38.3    82.9    10.8    16.8
Boston Celtics            38.3    85.1    11.5    16.0
Phoenix Suns              38.5    87.1     9.3    17.7
Detroit Pistons           39.1    86.9    10.8    14.7
Miami Heat                38.8    85.3    11.0    14.7
Orlando Magic             38.8    85.9    10.3    15.5
Atlanta Hawks             38.2    85.5    11.2    15.8
Chicago Bulls             38.7    88.8    11.0    14.6
San Antonio Spurs         39.0    85.4     8.5    16.1
Dallas Mavericks          38.1    85.9    11.8    14.2
Memphis Grizzlies         36.7    82.8     9.2    16.6
Sacramento Kings          38.8    86.1     9.0    12.3
;

title "Fisher Ankney";
title2 "Assignment 2";
title3 "Problem 2";
proc sort data=nba_2017;
by descending ft;
proc print data=nba_2017;

proc sort data=nba_2018;
by descending ft;
proc print data=nba_2018;


run;


data nba_comb;
input team $ 1-22 fg fga p3 ft;
datalines;
Golden State Warriors     43.1    87.1    12.0    17.8 
Houston Rockets           40.3    87.2    14.4    20.3
Denver Nuggets            41.2    87.7    10.6    18.7
Cleveland Cavaliers       39.9    84.9    13.0    17.5
Washington Wizards        41.3    87.0     9.2    17.3
Los Angeles Clippers      39.5    83.2    10.3    19.3
Boston Celtics            38.6    85.1    12.0    18.7
Portland Trail Blazers    39.5    86.1    10.4    18.5
Phoenix Suns              39.9    88.5     7.5    20.4
Toronto Raptors           39.2    84.4     8.8    19.7
Oklahoma City Thunder     39.5    87.4     8.4    19.2
Brooklyn Nets             37.8    85.2    10.7    19.4
Minnesota Timberwolves    39.5    84.4     7.3    19.3
San Antonio Spurs         39.3    83.7     9.2    17.6
Indiana Pacers            39.3    84.5     8.6    17.9
Charlotte Hornets         37.7    85.4    10.0    19.4
Los Angeles Lakers        39.3    87.4     8.9    17.0
New Orleans Pelicans      39.1    87.0     9.4    16.7
New York Knicks           39.6    88.5     8.6    16.6
Milwaukee Bucks           38.8    81.9     8.8    17.2
Miami Heat                39.0    85.8     9.9    15.2
Atlanta Hawks             38.1    84.4     8.9    18.1
Chicago Bulls             38.6    87.1     7.6    18.0
Sacramento Kings          37.9    82.1     9.0    18.1
Philadelphia 76ers        37.7    85.3    10.1    17.0
Detroit Pistons           39.9    88.8     7.7    13.9
Orlando Magic             38.3    87.0     8.5    16.0
Utah Jazz                 37.0    79.5     9.6    17.1
Memphis Grizzlies         36.4    83.6     9.4    18.3
Dallas Mavericks          36.2    82.3    10.7    14.8
Golden State Warriors     42.8    85.1    11.3    16.6
Houston Rockets           38.7    84.2    15.3    19.6
New Orleans Pelicans      42.7    88.3    10.2    16.1
Toronto Raptors           41.3    87.4    11.8    17.3
Cleveland Cavaliers       40.4    84.8    12.0    18.1
Denver Nuggets            40.7    86.6    11.5    17.1
Philadelphia 76ers        40.8    86.6    11.0    17.1
Minnesota Timberwolves    41.0    86.1     8.0    19.4
Los Angeles Clippers      40.3    85.4     9.5    19.0
Charlotte Hornets         39.0    86.7    10.0    20.2
Los Angeles Lakers        40.7    88.4    10.0    16.6
Oklahoma City Thunder     39.9    88.1    10.7    17.3
Washington Wizards        39.9    85.6     9.9    16.8
Brooklyn Nets             38.2    86.8    12.7    17.4
Milwaukee Bucks           39.7    83.0     8.8    18.3
Portland Trail Blazers    39.3    87.0    10.3    16.7
Indiana Pacers            40.8    86.4     9.0    14.9
New York Knicks           40.7    87.7     8.2    14.9
Utah Jazz                 38.3    82.9    10.8    16.8
Boston Celtics            38.3    85.1    11.5    16.0
Phoenix Suns              38.5    87.1     9.3    17.7
Detroit Pistons           39.1    86.9    10.8    14.7
Miami Heat                38.8    85.3    11.0    14.7
Orlando Magic             38.8    85.9    10.3    15.5
Atlanta Hawks             38.2    85.5    11.2    15.8
Chicago Bulls             38.7    88.8    11.0    14.6
San Antonio Spurs         39.0    85.4     8.5    16.1
Dallas Mavericks          38.1    85.9    11.8    14.2
Memphis Grizzlies         36.7    82.8     9.2    16.6
Sacramento Kings          38.8    86.1     9.0    12.3
;

title "Fisher Ankney";
title2 "Assignment 2";
title3 "Problem 3";

proc sort data=nba_comb;
by fg;

proc print data=nba_comb noobs;
var team fg;

run;


title "Fisher Ankney";
title2 "Assignment 2";
title3 "Problem 4";
proc univariate data=nba_comb cibasic alpha=.08 normal alpha=0.01;
var ft fg;
histogram fg / normal;
output out=nba_comb_out mean=ft_mean fg_mean median=ft_median fg_median;
proc print data=nba_comb_out;
run;


quit;

