function [x1, ymatrix1, x2, y1, ymatrix2] = fitting_data(x, y, degree)
    %{
    function does a weighed fit to the dispersion measure
    and plots the data

    @param x :: x input array
    @param y :: y input array
    @param degree :: polynomial degree

    @return ymatrix :: [data, best-fit, confidence_int+, confidence_int- ]
    @return y1 :: dm estimate
    @return :: plot of the fit
    %}
    
    % Fitting & Error estimate 
    [p,S] = polyfit(x,y,degree);
    [yFit, delta]   = polyval(p,x,S);    
    max_y = max(yFit);
    % chi-square
    chisq = sum(((yFit-y)./std(y)).^2);
    chisq_red = chisq/(length(y)-2);
    
    disp(chisq_red);
    % plot variables
    x1 = x;
    ymatrix1 = [y; yFit; yFit+delta; yFit-delta];
    ymatrix1 = ymatrix1';
    
    x2 = x(yFit==max_y);
    y1 = max_y;
        
    ymatrix2 = [(y-yFit); y.*zeros(size(x))];
    ymatrix2 = ymatrix2';

end