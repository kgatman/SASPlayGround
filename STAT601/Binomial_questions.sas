proc iml;
	n=10;
    p=0.2;
    q=1-p;
	a = pdf('binomial',3,p,n);
	b = pdf('binomial',7,p,n);
	c = cdf('binomial',3,p,n);
	d = 1-cdf('binomial',4,p,n);
	mean = n*p;
	variance = n*p*q;
	std_dev = sqrt(variance); 
	print n /*trials*/ 
		  p /*successes*/
		  q /*1 - p*/
		  a b c d mean variance std_dev;
	title "Ne ke re ke leke feela ke bone";
run;