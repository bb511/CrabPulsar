%% main.m: ANALYSIS OF DISPERSION MEASURE DATA
... plots and fits the dispersion measure as a function of peak value
... Author : Soumya Shreeram    
... Data-of-start : 28-11-2018

%% Reading the file

[dm_i, sn_i] = read_file('B0329+54_w1')
% need to fit a gaussian
[dm_ii, sn_ii] = read_file('B0531+21_w2')
dm_ii = dm_ii(400:800)
sn_ii = sn_ii(400:800)

% a good polynomian fit shouls be possible for this guy
[dm_iii, sn_iii] = read_file('B1642-03_w3')

%% fitting the data

[x1, ymatrix1, x2, y1, ymatrix2] = fitting_data(dm_i, sn_i, 9)

%% creates pretty plots

createfigure(x1, ymatrix1, x2, y1, ymatrix2, 9)

%% error estimation for 1st Pulsar

best_fit = ymatrix1(:, 2);

err_dm = dm_i(best_fit>0.997*y1);
y_err = best_fit(best_fit>0.997*y1);

figure(1);
hold on
plot(err_dm, y_err, 'y.' );
line([dm_i(1) dm_i(end)], [y_err(1) y_err(1)], ...
    'LineStyle', '--', 'Color', 'r');
line([err_dm(1) err_dm(1)], [0.9 1.5], ...
    'LineStyle', '--', 'Color', 'r');
line([err_dm(end) err_dm(end)], [0.9 1.5], ...
    'LineStyle', '--', 'Color', 'r');

%% printing the final answer

error_dm = x2 - err_dm(1);
sprintf('DM = %0.4f � %0.4f',x2, error_dm)

%% get data from figure
% gets the x and y values from the plot
open('pulsar_something.fig');
h = findobj(gca,'Type','line');
xdata_p2 = get(h,'Xdata');
ydata_p2 = get(h,'Ydata');

% need only the relavant fit data 'cell'
xdata_p2 = xdata_p2(1, 1);
ydata_p2 = ydata_p2(1, 1);

% converts
xdata_p2 = cell2mat(xdata_p2);
ydata_p2 = cell2mat(ydata_p2);

yfit_p2 = ydata_p2(ismember(xdata_p2, dm_ii));

%% plotting the residual and main plot together