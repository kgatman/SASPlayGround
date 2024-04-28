Title "Example 1 - SummerSchool";
data SummerSchool;
	input Gender $ Internship $ Enrollment $ Count @@;
	datalines;
Boys Yes Yes 35 Boys Yes No 29
Boys No Yes 14 Boys No No 27
Girls Yes Yes 32 Girls Yes No 10
Girls No Yes 53 Girls No No 23
;
run;

proc print data=SummerSchool;
run;

proc freq data=SummerSchool;
	tables Gender Internship Enrollment;
	weight Count;
run;