/* Fisher Ankney */ 
/* Assignment 11 */

/* Problem 1 */

dm 'odsresults; clear; log; clear;';

title 'Fisher Ankney';
title2 'Assignment 11';
title3 'Question 1';



PROC IMPORT OUT = mesonet 
            DATAFILE= "C:\Users\fankney\Downloads\Assignment_11_data.xlsx"
            DBMS=EXCEL REPLACE;
     GETNAMES=YES;
     MIXED=YES;
     SCANTEXT=YES;
     USEDATE=YES;
     SCANTIME=YES;
RUN;



data meso_c;
	set mesonet;
		array a{4} SODSOIL BARESOIL MAXTEMP MINTEMP;
		array b{4} sodsoilc baresoilc maxtempc mintempc;
		do i=1 to 4;
			b{i}=(5/9)*(a{i} - 32);
		end;
	label
		sodsoilc='Avg Temp sod soil in C'
		baresoilc='Avg Temp bare soil in C'
		maxtempc='Max Temp in C'
		mintempc='Min Temp in C'
		;
	drop maxtemp mintemp sodsoil baresoil;
run;

proc print data=meso_c label;
run;



/* Question 2 */

data ran_call;
seed = 1;
  do j = 1 to 10;
	do i = 1 to 15;
	 call ranuni(seed, z);
	 z = 10*z + 10;
	output;
   end;
end;

proc means data = ran_call;
title3 'Question 2';
	class j;
	var z;
run;



/* Question 3 */

data ran_fun;
seed = 10;
	do i = 1 to 100;	
		z = rannor(seed);
		z = z*8 + 150;
		output;
	end;
run;

proc gchart data = ran_fun;
	title3 'Question 3';
	vbar z / midpoints = 132, 136, 140, 144, 148, 152, 156, 160, 164. 168;
run;





quit;

