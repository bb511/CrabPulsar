    figure();
    set(gca, 'Fontsize', 14)
    ax1 = subplot(2,1,1);
    % plts data
    plot(ax1, x, y, 'b.');
    hold on;
    % plots best fitting line
    plot(ax1, x,yFit, 'r-', 'Linewidth', 2);
    % plots 95% confidence level
    plot(ax1, x,yFit+delta,'m--',x,yFit-delta,'m--', 'Linewidth', 1.5);
    % plots the maximum point
    plot(ax1, x(yFit==max_y), max_y, 'o',...
        'Markersize', 9, ...
        'MarkerFaceColor', [1, 1, 0], ...
        'MarkerEdgeColor', 'k') 
    
    % setting title, legends and labels
    title({'Disperiosn Measure vs S/N', ...
           ['Polynomial fit with degree: ' num2str(degree)] });
    
    legend('Data','Linear Fit','95% Prediction Interval', ...
            ['Max DM ~' num2str(x(yFit==max_y))]);
    xlabel('Dispersion Measure (pc/cm^{-3})');
    ylabel('Signal to Noise (mJy)');

    % subplot 2
    ax2 = subplot(2,1,2);
    
    plot(ax2, x, (y-yFit), 'b.');
    hold on;
    plot(ax2, x, y.*zeros(size(x)), 'r-', 'Linewidth',2);
    xlabel('Dispersion Measure (pc/cm^{-3})');
    ylabel('Residuals (mJy) ');
    