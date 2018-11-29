%% main.m: ANALYSIS OF DISPERSION MEASURE DATA
... plots and fits the dispersion measure as a function of peak value
... Author : Soumya Shreeram    
... Data-of-start : 28-11-2018

%% Reading the file

[dm_i, sn_i] = read_file('B0329+54_w1')

%% fitting the data

[x1, ymatrix1, x2, y1, ymatrix2] = fitting_data(dm_i, sn_i, 9)

%% creates pretty plots

createfigure(x1, ymatrix1, x2, y1, ymatrix2, 9)