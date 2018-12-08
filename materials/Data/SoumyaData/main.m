%% main.m: ANALYSIS OF DISPERSION MEASURE DATA
... plots and fits the dispersion measure as a function of peak value
... Author : Soumya Shreeram    
... Data-of-start : 28-11-2018

%% Reading the file

[dm_i, sn_i] = read_file('B0329+54_w1')
% need to fit a gaussian
[dm_ii, sn_ii] = read_file('B0531+21_w4')
dm_ii = dm_ii(400:800)
sn_ii = sn_ii(400:800)

% a good polynomian fit shouls be possible for this guy
[dm_iii, sn_iii] = read_file('B1642-03_w3')

[dm_iv, sn_iv] = read_file('B1933+16_w2')

[dm_v, sn_v] = read_file('B2020+28_w2')
dm_v = dm_v(150:800)
sn_v = sn_v(150:800)

[dm_vi, sn_vi] = read_file('B2111+46_w4')
dm_vi = dm_vi(250:800)
sn_vi = sn_vi(250:800)
%% fitting the data

%[x1, ymatrix1, x2, y1, ymatrix2] = fitting_data(dm_i, sn_i, 9);
%[x3, ymatrix3i, x3, y3, ymatrix3ii] = fitting_data(dm_iii, sn_iii, 4);
%[x4, ymatrix4i, x4, y4, ymatrix4ii] = fitting_data(dm_iv, sn_iv, 8);
%[x5i, ymatrix5i, x5, y5, ymatrix5ii] = fitting_data(dm_v, sn_v, 12);
%[x6i, ymatrix6i, x6, y6, ymatrix6ii] = fitting_data(dm_vi, sn_vi, 9);
%% creates pretty plots

%createfigure(x1, ymatrix1, x2, y1, ymatrix2, 9, 'B0329+54_w1')
%createfigure(dm_iii, ymatrix3i, x3, y3, ymatrix3ii, 'B1642-03')
%createfigure(dm_iv, ymatrix4i, x4, y4, ymatrix4ii, 'B1933+16')
%createfigure(x5i, ymatrix5i, x5, y5, ymatrix5ii, 'B2020+28');
%createfigure(x6i, ymatrix6i, x6, y6, ymatrix6ii, 'B2111+46');


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
sprintf('DM = %0.4f ± %0.4f',x2, error_dm)

%% get data from figure
% gets the x and y values from the plot
open('crab3.fig');
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

%% ---------- PULSAR 2 ----------------------------------------------------
% plotting the residual and main plot together
maxy_p2 = max(yfit_p2);
dm_p2 = dm_ii(yfit_p2==maxy_p2);
y2matrix = [yfit_p2-sn_ii; yfit_p2.*zeros(size(yfit_p2))];

createfigure1(dm_ii, [sn_ii; yfit_p2].',dm_p2 ,maxy_p2, y2matrix, ...
    'B0531+21')

%% plotting the error lines
error_plotting(yfit_p2, dm_ii, 11, [0.004 0.022], dm_p2, 0.95)


%% ---------- PULSAR 3 ----------------------------------------------------
% plotting the residual and main plot together

yfit_p3 = ymatrix3i(:, 2);

error_plotting(yfit_p3, dm_iii, 1, [0.03 0.08], x3, 0.99)

%% ---------- PULSAR 4 ----------------------------------------------------
% plotting the residual and main plot together

yfit_p4 = ymatrix4i(:, 2);

error_plotting(yfit_p4, dm_iv, 5, [0.016 0.028], x4, 0.98)

%% ---------- PULSAR 5 ----------------------------------------------------
% plotting the residual and main plot together

yfit_p5 = ymatrix5i(:, 2);

error_plotting(yfit_p5, dm_v, 13, [0.01 0.026], x5, 0.975)

%% ---------- PULSAR 5 ----------------------------------------------------
% plotting the residual and main plot together

yfit_p6 = ymatrix6i(:, 2);

error_plotting(yfit_p6, dm_vi, 3, [0.01 0.02], x6, 0.975)
