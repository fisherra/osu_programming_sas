/*SAS Practice 1*/
/*Fisher Ankney */

DATA practice;
INPUT Gender $ Class $ GPA;
DATALINES;
M FR 3.25
M JR 3.15
F SO 2.89
F SR 3.75
F FR 2.21
M SR 2.43
F JR 3.09
M JR 4.00
F SO 3.89
F FR 3.5
M SR 2.66
M JR 2.39
M FR 2.00
F JR 3.22
M SR 2.96
F FR 3.20
;

/*sort the data by descending GPA within (ascending) student classification (CLASS). Print the sorted data.*/
PROC SORT DATA=practice;
BY Class DESCENDING GPA;
PROC PRINT DATA=practice;
TITLE "Problem 2";


PROC PRINT DATA=practice NOOBS;
BY Class;
VAR Class GPA;
TITLE "Problem 3";


PROC SORT DATA=practice;
BY Class Gender;
PROC PRINT DATA=practice;
Title "Problem 4";

RUN;
QUIT;