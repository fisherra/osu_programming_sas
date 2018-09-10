/*Practice 2*/

dm 'log; clear; odsresults; clear;';


TITLE;
DATA rank;
INPUT gender $ class $ gpa;
Datalines;
F SO 2.89
F SR 3.75
F FR 2.21
M SR 2.43
F JR 3.04
M JR 4.00
F SO 3.89 
F FR 3.5
M SR 2.66
M JR 2.39
M FR 2.00
F JR 3.22
M SR 2.96
F FR 3.2
;


/*OBJ1*/

TITLE "Objective 1";
PROC UNIVARIATE DATA=rank;
OUTPUT OUT=check_1 MEAN=gpa_mean MEDIAN=gpa_median MIN=gpa_min MAX=gpa_max ;
PROC PRINT DATA = check_1;

RUN;



/*OBJ2*/

TITLE "Objective 2";
PROC UNIVARIATE DATA=rank CIBASIC ALPHA=.04;
CLASS gender;
OUTPUT OUT = check_2 MEAN=gpa_mean MEDIAN=gpa_median MIN=gpa_min MAX=gpa_max;
PROC PRINT DATA = check_2;
RUN;

/*Doesn't require a sort*/




/*OBJ3*/

TITLE "Objective 3";
PROC SORT DATA = rank;
BY class;

PROC UNIVARIATE DATA=rank;
BY class;
HISTOGRAM gpa / NORMAL;
OUTPUT OUT=check_3 MEAN=gpa_mean MEDIAN=gpa_median MIN=gpa_min MAX=gpa_max;

PROC PRINT data=check_3;
RUN;
QUIT;

/* REQUIRES PROC SORT in a compatable fashion FIRST */