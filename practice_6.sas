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
	tables gar*fit / plots = none nocum nopercent norow nocol;
	title3 'Question 2a';
run;



proc freq data = apartment;
	tables  cp*ss / plots = none nocum nopercent nocol;
	title3 'Question 2b';
run;


proc freq data = apartment;
	tables ss*fit / plots = freqplot(type = dotplot) chisq;
	title3 'Question 3';
run;

/* 

Chi-SQ test should not be trusted, not enough observations, results inconclusive

*/


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


