function [P, dP, W, dW] = calPW(period, N)
... Function calculates the period, and width of the pulsar with uncertainties
... @param P :: period array
... @param N :: no. of harmonics
... 
... @return P, dP :: period and uncertainty value
...         W, dW :: width and uncertainty of the pulse

P   = mean(period);
dP  = std(period);
Width   = P./(2*N);
W = mean(Width);
dW  = std(W);

end