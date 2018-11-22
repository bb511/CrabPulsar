function [yFit, delta]= fitOutliers(x, y, rawX, rawY)
... function ca
... @param x :: no. of harmonics
... @param y :: period values with outliers eliminated

    % Fitting & Error estimate 
    [p,S] = polyfit(x,y,1);
    [yFit,delta]   = polyval(p,x,S);    
    figure();
    plot(x, y, 'bo');
    hold on;
    plot(x,yFit, 'r-');
    plot(x,yFit+delta,'m--',x,yFit-delta,'m--')
    plot(rawX,rawY, 'g*')
    title('Period vs No. of Harmonics (Linear Fit)')
    legend('Data','Linear Fit','95% Prediction Interval', 'Outliers')
    xlabel('No. of Harmonics');
    ylabel('Period (s)');
end