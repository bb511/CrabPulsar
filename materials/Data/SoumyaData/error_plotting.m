function error_plotting(best_fit, dm, x, limits, x2, percent)
    %{
    function plots the error estimates on the fit
    
    @param best_fit :: best-fit y input array
    @param dm :: x input array
    @param x :: figure on which the errors need to be plotted
    @param limits :: [lower_lim upper_lim] on the y axis of the plot

    @return :: the plot with the uncertainty line
    %}
    

    y1 = max(best_fit);
    err_dm = dm(best_fit>percent*y1);
    y_err = best_fit(best_fit>percent*y1);

    figure(x);
    hold on
    plot(err_dm, y_err, 'y.' );
    line([dm(1) dm(end)], [y_err(1) y_err(1)], ...
        'LineStyle', '--', 'Color', 'r');
    line([err_dm(1) err_dm(1)], limits, ...
        'LineStyle', '--', 'Color', 'r');
    line([err_dm(end) err_dm(end)], limits, ...
        'LineStyle', '--', 'Color', 'r');

    error_dm = x2 - err_dm(1);
    sprintf('DM = %0.4f ± %0.4f',x2, error_dm)

end