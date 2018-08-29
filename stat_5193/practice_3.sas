/*Practice 3*/
/*Fisher Ankney*/


dm 'log; clear; odsresults; clear;';


DATA nba_2017;
INPUT team $ 1-22 fg fga p3 ft;
year = 2017;
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
year = 2018;
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

data nba;
set nba_2017 nba_2018;
proc print data = nba;
title "Problem 1a";


data nba_2;
set nba;
if team in ("Okahoma City Thunder",
"Portland Trail Blazers",
"Denver Nuggets",
"Minnesota Timberwolves", 
"Utah Jazz",
"Los Angeles Clippers",
"Golden State Warriors",
"Phoenix Suns",
"Los Angeles Lakers",
"Sacramento Kings",
"San Antonio Spurs",
"Houston Rockets",
"Dallas Mavericks",
"Memphis Grizzlies",
"New Orleans Pelicans"
) 
then conference = "west";
else conference = "east";
proc print data = nba_2;
title "Problem 1b";
run;
quit;


proc univariate data=nba_2 normal cibasic alpha=0.06 mu0=400;
var ft p3;
class conference;
title "problem 1c, 1d, 1e";
histogram p3/normal (mu=400);
/*P3 for East conferance is normal from the normality test since p values are greater than 0.01*/
/*same with west conference*/ 
/*P3 is significantly different from 400*/
output out=nba_out mean = ft_mean p3_mean median = ft_median p3_median;



proc print data=nba_out;
title "problem 1f";


proc means data=nba mean n std min max;
by year;
output out=PRAC3_2A min=fg_min fga_min p3_min ft_min max=fg_max fga_max p3_max ft_max mean=fg_mean fga_mean
	p3_mean ft_mean N=n_fg n_fga n_p3 n_ft;
title "problem 2a";
proc print data=PRAC3_2A;



proc means data=nba_2 mean n std min max;
class year conference;
output out=PRAC3_2B min=fg_min fga_min p3_min ft_min max=fg_max fga_max p3_max ft_max mean=fg_mean fga_mean
		   			p3_mean ft_mean n= n_fg n_fga n_p3 n_ft;
title "problem 2b";
proc print data=PRAC3_2B;


/*
Problem 2c

The by statement repeats an analysis on each subgroup. The subgroups
are treated as independent samples. if a BY variable defines k groups
the output will contain k copies of every table and graph, 
one copy for the first group, one for the second, 
and so on.

The Class statement includes a categorical variable as part
of an analysis. Often the class variable is used to compare
the groups, such as in a t test or anova test. 
*/

run;
quit;
