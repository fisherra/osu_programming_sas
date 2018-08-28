/*ASSIGNMENT 2*/

dm 'log; clear; odsresults; clear;';

DATA nba_data
INPUT team $ fg fga p3 ft;
Datalines;
Golden_State_Warriors     43.1    87.1    12.0    17.8 
Houston_Rockets           40.3    87.2    14.4    20.3
Denver_Nuggets            41.2    87.7    10.6    18.7
Cleveland_Cavaliers       39.9    84.9    13.0    17.5
Washington_Wizards        41.3    87.0     9.2    17.3
Los Angeles_Clippers      39.5    83.2    10.3    19.3
Boston_Celtics            38.6    85.1    12.0    18.7
Portland_Trail_Blazers    39.5    86.1    10.4    18.5
Phoenix_Suns              39.9    88.5     7.5    20.4
Toronto_Raptors           39.2    84.4     8.8    19.7
Oklahoma_City_Thunder     39.5    87.4     8.4    19.2
Brooklyn_Nets             37.8    85.2    10.7    19.4
Minnesota_Timberwolves    39.5    84.4     7.3    19.3
San_Antonio_Spurs         39.3    83.7     9.2    17.6
Indiana_Pacers            39.3    84.5     8.6    17.9
Charlotte_Hornets         37.7    85.4    10.0    19.4
Los_Angeles_Lakers        39.3    87.4     8.9    17.0
New_Orleans_Pelicans      39.1    87.0     9.4    16.7
New_York_Knicks           39.6    88.5     8.6    16.6
Milwaukee_Bucks           38.8    81.9     8.8    17.2
Miami_Heat                39.0    85.8     9.9    15.2
Atlanta_Hawks             38.1    84.4     8.9    18.1
Chicago_Bulls             38.6    87.1     7.6    18.0
Sacramento_Kings          37.9    82.1     9.0    18.1
Philadelphia_76ers        37.7    85.3    10.1    17.0
Detroit_Pistons           39.9    88.8     7.7    13.9
Orlando_Magic             38.3    87.0     8.5    16.0
Utah_Jazz                 37.0    79.5     9.6    17.1
Memphis_Grizzlies         36.4    83.6     9.4    18.3
Dallas_Mavericks          36.2    82.3    10.7    14.8
Golden_State_Warriors     42.8    85.1    11.3    16.6
Houston_Rockets           38.7    84.2    15.3    19.6
New_Orleans_Pelicans      42.7    88.3    10.2    16.1
Toronto_Raptors           41.3    87.4    11.8    17.3
Cleveland_Cavaliers       40.4    84.8    12.0    18.1
Denver_Nuggets            40.7    86.6    11.5    17.1
Philadelphia_76ers        40.8    86.6    11.0    17.1
Minnesota_Timberwolves    41.0    86.1     8.0    19.4
Los_Angeles_Clippers      40.3    85.4     9.5    19.0
Charlotte_Hornets         39.0    86.7    10.0    20.2
Los_Angeles_Lakers        40.7    88.4    10.0    16.6
Oklahoma_City_Thunder     39.9    88.1    10.7    17.3
Washington_Wizards        39.9    85.6     9.9    16.8
Brooklyn_Nets             38.2    86.8    12.7    17.4
Milwaukee_Bucks           39.7    83.0     8.8    18.3
Portland_Trail_Blazers    39.3    87.0    10.3    16.7
Indiana_Pacers            40.8    86.4     9.0    14.9
New_York_Knicks           40.7    87.7     8.2    14.9
Utah_Jazz                 38.3    82.9    10.8    16.8
Boston_Celtics            38.3    85.1    11.5    16.0
Phoenix_Suns              38.5    87.1     9.3    17.7
Detroit_Pistons           39.1    86.9    10.8    14.7
Miami_Heat                38.8    85.3    11.0    14.7
Orlando_Magic             38.8    85.9    10.3    15.5
Atlanta_Hawks             38.2    85.5    11.2    15.8
Chicago_Bulls             38.7    88.8    11.0    14.6
San_Antonio_Spurs         39.0    85.4     8.5    16.1
Dallas_Mavericks          38.1    85.9    11.8    14.2
Memphis_Grizzlies         36.7    82.8     9.2    16.6
Sacramento_Kings          38.8    86.1     9.0    12.3
;