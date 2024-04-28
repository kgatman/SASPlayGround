proc iml;
	call randseed(601,1);
	y=randfun(100,'binomial',0.2,10);
	print(y[1:10]);
	create d from y[colname={'x'}];
	append from y;
quit;

proc univariate data=d plot freq;
	var x;
	histogram/ kernel(c=1) midpoints=0,1,2,3,4,5,6,7,8,9,10 cfill=blue;
	cdfplot;
	probplot;
run;