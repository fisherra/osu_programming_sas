/*Assignment 1 Final*/
/*Fisher Ankney*/

dm 'odsresults; clear';
dm 'log; clear;';

DATA
DATA assignment_1; 
INPUT Group Dosage_Level $ Response;
DATALINES;
1 Low 6.9
1 Low 8.3
1 Medium 23.5
1 Medium 19.2
1 High 21.0
1 High 24.0
2 Low 10.7
2 Low 5.3
2 Medium 8.9
2 Medium 11.2
2 High 15.6
2 High 18.3
;


TITLE "Question 2";
TITLE2 "Fisher Ankney";
PROC SORT DATA = assignment_1;
BY Group DESCENDING Response;
PROC PRINT DATA = assignment_1 NOOBS;

RUN;



TITLE "Question 3";
TITLE2 "Fisher Ankney";
PROC SORT DATA = assigment_1;
BY Group DESCENDING Dosage_Level;
PROC PRINT DATA = assignment_1;
VAR Group Response;
BY Group;

RUN;




TITLE "Question 4";
TITLE2 "Fisher Ankney";
PROC SORT DATA = assignment_1;
BY Dosage_Level Group;
PROC PRINT Data = assignment_1;

RUN;
QUIT;