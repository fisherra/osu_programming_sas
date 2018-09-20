dm 'log; clear; odsresults; clear;' ;

title 'Fisher Ankney';
title2 'Assignment 6';


filename arch 'C:\architecture.txt';

data arch;
	infile arch firstobs = 2;
	input subj bldg sat bty fnc int dig cst fsh;
	label
		subj = "subjects"
		bldg = "buildings"
		sat = "overall"
		bty = "beauty"
		fnc = "function"
		int = "intimacy"
		dig = "dignity"
		cst = "cost"
		fsh = "fashion"
	;


proc sort data = arch;
	by bldg;
run;

proc freq data = arch;
	table cst / plots = freqplot;
	by bldg;
	title3 "Problem 2";
run;


proc freq data=arch; 
	table bldg*cst / nocum nopercent nocol chisq;
	title3 "Problem 3"
run;




quit;
