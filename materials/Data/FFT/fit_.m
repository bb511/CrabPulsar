function [yFit, delta, chiSq]= fit_(x, y)
... function ca
... @param x :: no. of harmonics
... @param y :: period values with outliers eliminated

    % Fitting & Error estimate 
    [p,S] = polyfit(x,y,1);
    [yFit,delta]   = polyval(p,x,S);    
    
    % chi-square
    chi = sum(((yFit-y)./std(y)).^2);
    chiSq = chi/(length(y)-2);
    % plot
    figure();
    plot(x, y, 'bo');
    hold on;
    plot(x,yFit, 'r-');
    plot(x,yFit+delta,'m--',x,yFit-delta,'m--')
    title('Period vs No. of Harmonics (Linear Fit)')
    legend('Data','Linear Fit','95% Prediction Interval')
    xlabel('No. of Harmonics');
    ylabel('Period (s)');
end