%%                              MainFile.m
%                 Pulsar experiment, 3rd-year Laboratory, 
%                    The University of Manchester.
%                           November 2018
%% Plotting with Outliers: Period vs Harmonics

[yFit0, delta0] = fitOutliers(NoHarmonDes0, periodDes0, OutlierHarm0, outlier0);
[yFit1, delta1] = fitOutliers(NoHarmonDes1, periodDes1, OutlierHarm1, outlier1);
[yFit2, delta2] = fitOutliers(NoHarmonDes2, periodDes2, OutlierHarm2, outlier2);
[yFit3, delta3] = fitOutliers(NoHarmonDes3, periodDes3, OutlierHarm3, outlier3);
[yFit4, delta4] = fitOutliers(NoHarmonDes4, periodDes4, OutlierHarm4, outlier4);
[yFit5, delta5] = fitOutliers(NoHarmonDes5, periodDes5, OutlierHarm5, outlier5);

%% Plotting withOut Outliers: Period vs Harmonics

[yFit0, delta0, chiSq0] = fit_(NoHarmonDes0, periodDes0);
[yFit1, delta1, chiSq1] = fit_(NoHarmonDes1, periodDes1);
[yFit2, delta2, chiSq2] = fit_(NoHarmonDes2, periodDes2);
[yFit3, delta3, chiSq3] = fit_(NoHarmonDes3, periodDes3);
[yFit4, delta4, chiSq4] = fit_(NoHarmonDes4, periodDes4);
[yFit5, delta5, chiSq5] = fit_(NoHarmonDes5, periodDes5);

%% Plotting frequency vs harmonics

fit_(1:length(peakF0), peakF0);
fit_(1:length(peakF1), peakF1);
fit_(1:length(peakF2), peakF2);
fit_(1:length(peakF3), peakF3);
fit_(1:length(peakF4), peakF4);
fit_(1:length(peakF5), peakF5);

%% period and width calculation

[P0, dP0, W0, dW0] = calPW(periodDes0, NoHarmonDes0);
[P1, dP1, W1, dW1] = calPW(periodDes1, NoHarmonDes1);
[P2, dP2, W2, dW2] = calPW(periodDes2, NoHarmonDes2);
[P3, dP3, W3, dW3] = calPW(periodDes3, NoHarmonDes3);
[P4, dP4, W4, dW4] = calPW(periodDes4, NoHarmonDes4);
[P5, dP5, W5, dW5] = calPW(periodDes5, NoHarmonDes5);
