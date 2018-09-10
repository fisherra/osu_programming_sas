/* SAS Practice 6 */ 
/* Fisher Ankney */ 

dm 'log; clear; odsresults; clear;';


title 'Homework 6';
title2 'Fisher Ankney';


filename a 'C:\apartment.txt';

data apartment;
infile a firstobs = 2;
input age sqft sd unts gar cp ss fit rent;
label
	age = 'age'
	sqft = 'square footage'
	sd = 'security deposit'
	unts = 'number of units'
	gar = 'garage present'
	cp = 'carport present'
	ss = 'security system present'
	fit = 'fitness facilities present'
	rent = 'monthly rent'
	;


proc freq data = apartment;
	tables gar*fit / plots = none nocum nopercent;
	title3 'Question 2a';
run;


/* the only difference from 2a is the variables and showing the percent? */

proc freq data = apartment;
	tables  cp*ss / plots = none cumcol;
	title3 'Question 2b';
run;

/* 76.47% of apartments have security systems */


proc freq data = apartment;
	tables ss*fit / plots = freqplot(type = dotplot) chisq;
	title3 'Question 3';
run;

/* chi-square value < 3.84, fail to reject null hypothesis
   however, p-value is high, meaning statistically insignificant? */


proc ttest data = apartment plots=none;
	class gar;
	var age;
	title3 'Question 4';
run;

/* 
t value of > 1 meaning a significant difference in means
however p-value is > 0.05 meaning statistically insignificant results 

but the f value is large and the p-value is < 0.05 meaning we should
reject the null hypothesis - means are not the same with or without garage.
*/

quit;