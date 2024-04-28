proc iml;
	mu = 45.70;
	stddev = 8.85;
	b = cdf('NORMAL',60,mu,stddev);
	a = cdf('NORMAL',35,mu,stddev);
	workersproportion = b-a;
	print a b workersproportion;
	wage50 = 1 - cdf('NORMAL',50,mu,stddev);
	print wage50;
	quant = quantile('NORMAL',0.9,mu,stddev);
	testing = quantile('NORMAL',0.1,mu,stddev);
	print quant testing;
quit;