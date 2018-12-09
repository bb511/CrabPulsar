---
layout: default
title: Crab Pulsar
use_math: true
image_sliders:
- DensityPlots
- IntegratedProfiles
- DMCurves
- RowGrids
- SpectrumFits
- MonteCarlo
---


## 2.1 Introduction

Pulsars are relatively weak radio sources due to their small size. They usually emit their largest intensity at low radio frequencies around 400 MHz. However, at such frequencies, the pulses suffer from propagation effects when they travel through the interstellar medium to reach Earth [[4](About.md#3)].

The phenomenon is quantified in a term called the Dispersion Measure (DM). The DM is important in pulsar astronomy since it is one of the most fundamental property that characterizes a pulsar [[5](About.md#5)]. Furthermore, once measured, the dispersion measure of a pulsar can be used to approximate the distance to that pulsar [[6,7](About.md#6)].

## 2.2 Theory

For an electromagnetic (EM) wave of frequency $\nu$ emitted at a discance $d$ from the observer and propagating through an electron plasma with uniform density $n_e$, the travel time of a pulse has the form
\begin{equation}
t_p = \frac{d}{c} + \frac{e^2}{2\pi m_e c}\frac{\int_{0}^{d} n_e dl}{\nu^2}.
\end{equation}
Therefore, the time delay is expressed as
<a name="eq-2"></a>
\begin{equation}
t_d = 4150 \times\frac{DM}{\nu^2} \hspace{0.5em}\mathrm{s}
\end{equation}
where $DM$ is the _disperion measure_  in $\mathrm{cm}^{-3}\mathrm{pc}$, or the integrated column density of free electrons along the line of sight [[1](About.md#1)].

Thus, it can be seen that the speed at which an electromagnetic wave propagates through the medium depends on its frequency. A pulsar source emits an EM pulse composed of several different frequencies. The intervening interstellar medium causes lower frequencies to travel more slowly. Thus, if we are observing a pulsar signal, we will see the higher frequencies arrive at us first, followed by the lower frequencies [[2](About.md#2)]. The light is dispersed by the ISM.
In this view, the dispersion measure is simply a constant of proportionality relating the frequency of the light to the extra amount of time (relative to vacuum) required to reach the observer due to dispersion. It depends on two quantities: the (electron) number density $n_e$ and the path length through the medium $d$ [[1](About.md#1)]. For example, a large DM value would tell us that the source is either relatively nearby but is traveling through a dense plasma, or it is far away, and traveling through a relatively less dense plasma. A visual representation of this process is shown in [Figure 2.1](#figure-21).

<a name="figure-21"></a>

![Theory1](/materials/ResultPictures1/theory1.png)

#### [Figure 2.1](#figure-21): Signal measured from a pulsar [[3](About.md#3)]. The top parts show the power measured per channel as a function of time, showing clear frequency-dependent arrival times, or dispersion. The bottom shows the dispersion-corrected pulse (sharp pulse).

## 2.3 Initial estimation of $DM$ using optimisation algorithm

<mark>Add stuff here.</mark>

## 2.4 Calculation of disperion measure

Ten pulsars were observed in the experiment using the 42-ft radio telescope, as detailed in [Table 2.1](index.md#table-11).
The Dispersion measure of each observed pulsar was calculated. The raw data for every considered pulsar is shown in [Slider 2.1](#slider-21).

<a name="slider-21"></a>

{% include slider.html selector="DensityPlots" %}

#### [Slider 2.1](#slider-21): The raw data of every pulsar visualised using matplotlib imshow. The color of each pixel indicates the power at a particular frequency and phase. The tilt observed in the pulse implies the pulse is highly dispersed.

This raw data was then processed using three methods to get the dispersion measure. Essentialy, the right dispersion measure is obtained when the green line in the above plots sits vertically straight. The integrated profile (integrating over frequency) corresponding to each of the raw data plots is presented in [Slider 2.2](#slider-22)

<a name="slider-22"></a>

{% include slider.html selector="IntegratedProfiles" %}

#### [Slider 2.2](#slider-22): The integrated profile corresponding to each raw data file. The peak of this graph is used to determine the signal to noise.

In the following section we detail these methods, along with the results obtained for each pulsar.

## 2.4.1 <mark>Method 1</mark> - Fitting the Peak

This method consists of trying a range of DMs and plotting a graph of the corresponding integrated profile peaks. A peak is defined by the maximum y value of a figure from [Slider 2.2](#slider-22).
The DMs are sequentially applied to the raw data which results in systematic rotations of the green line in [Slider 2.1](#slider-21). When the green line sits exactly vertical, the maximum signal to noise is achieved, the dispersion measure is correct and the value of the integrated profile peak is at a maximum. Graphs of the peaks against DMs of every pulsar are presented in [Slider 2.3](#slider-23).

<a name="slider-23"></a>

{% include slider.html selector="DMCurves" %}

#### [Slider 2.3](#slider-23): Dispersion measure against the peak of the integrated profile was plotted using MATLAB. The maximum value, represented by the yellow point, of these graphs were taken as the value for the DM. The black points represent the measured data while the red line is the best-fit. The red-dashed lines represent the uncertainty bounds chosen for each measured $DM$. The residuals are also plotted for each fit.

A polynomial fit was applied to all pulsars except the Crab <span style="color: red">B0531+21</span>. For the Crab pulsar, a sum of gaussians was fitted to calculate the maximum of the $DM$ curve. The goodness of each fit was judged by the residual plot. The uncertainty bounds on each measured $DM$ was decided by chosing the points which lied at $97\%$ of the maxima on either sides. 
All pulsar DM values obtained this way, with their associated uncertainties, are presented in [Table 2.1](#table-21).

## 2.4.2 <mark>Method 2</mark> - Fitting the Spectrum

Each frequency channel (row) of the [Slider 2.1](#slider-21) is considered separately. [Slider 2.4](#slider-24) shows a visual representation of this for every pulsar we analysed i.e. plots the pulse profile for every frequency channel.

<a name="slider-24"></a>

{% include slider.html selector="RowGrids" %}

#### [Slider 2.4](#slider-24): Grid of every frequency channel (row) of figures in [Slider 2.1](#slider-21) plotted against the period of the pulsar. The position of the peak on the x axis is when the pulse arrived for a certain frequency channel.

The grids in [Slider 2.4](#slider-24) were filtered to only include rows which present a distinguishable peak. The time coordinate of each peak was then recorded. These times correspond to the times in the left hand side of [Equation (2)](#eq-2). Therefore, this could be plotted against the inverse squared frequency, times the constant 4150 (dispersion constant) to obtain a straight line. The straight line was then fitted with a linear model to obtain the dispersion measure, as obvious from [Equation (2)](#eq-2). Figures of these fits for each pulsar are presented in [Slider 2.5](#slider-25).

<a name="slider-25"></a>

{% include slider.html selector="SpectrumFits" %}

#### [Slider 2.5](#slider-25): Fits of times against the inverse frequency squared times a constant (dispersion constant). The errors on the points were obtained from the frequency resolution.

Initially, the FWHM of every peak was calculated and that was considered as the error on the times in the above slider. However, it was immediately apparent that the errors were to large and unphysical. Hence, the width of a frequency bin was considered to be the error on these points instead.

The DMs obtained from each of these fits together with their associated errors (taken from the error on the slope of the fitted line) are presented in [Table 2.1](#table-21).

## 2.4.3 <mark>Method 3</mark> - Monte Carlo Simulation

The final and most elegant method applied for calculating the $DM$ was performed by simulating 100 data sets by adding noise to the measured data. Each of these data sets are equally likely to be measured and the $DM$ was calculated for each of them. The following section details the methodology used to execute the analysis. 

In order the add noise to the measured data, the nature of the white noise in the data was studied. As shown in [Figure 2.2](#figure-22), the standard deviation in the noise was calculated in the integrated profile for each pulsar.

<a name="fig-noise1"></a>

![Noise1](/materials/ResultPictures1/noise1.png)

#### [Figure 2.2](#figure-22): The white noise in the integrated profile of <span style='color: red'>PSR B0329+54</span>. The red-dashed lines, in the zoomed in plot of the integration profile (also shown in [Slider 2.2](#slider-22)), represent the measured standard deviation of the white noise in the data.

By understanding the nature of the white-noise, new noise data sets were simulated. As shown in [Figure 2.3](#figure-23), the simulated data sets resemble the white noise in the measured data (shown in red) very closely.

<a name="fig-noise2"></a>

![Noise2](/materials/ResultPictures1/noise2.png)

#### [Figure 2.3](#figure-23): The simulated noise (blue and green lines) are plotted with the white noise in the data (shown in red).

100 such noise data sets were generated for each pulsar and added to the measured integrated profile data for each pulsar, which were shown in [Slider 2.2](#slider-22). This generated 100 simulated *signal data* sets of which 2 arbitary sets are shown in [Slider 2.6](#slider-26). As detailed in Method 1 in section 2.4.1, each data set was fitted with a polynomial function, or a sum of Gaussian functions in case of the Crab Pulsar, and the $DM$ was calculated. The calculated $DM$ for for all the 100 data sets was stored in an array and the mean $DM$ was measured. The uncertainty was quoted as the standard deviation in the obtained $DM$ values.   

{% include slider.html selector="MonteCarlo" %}

#### [Slider 2.6](#slider-26): Two of the 100 aribitary data sets were generated by adding white noise are plotted together to display the influence of noise in the data. 

All the results obtained using this method have been states in [Table 2.1](#table-21).

## 2.5 Results for the dispersion measure

The results of the dispersion measure obtained using the three methods are stated below.

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-4p0o{font-weight:bold;background-color:#7f99fb;border-color:inherit;text-align:center}
.tg .tg-opee{font-weight:bold;background-color:#ffffc7;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-w60v{font-weight:bold;background-color:#7f99fb;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-b2bz{background-color:#ffccc9;color:#9b9b9b;border-color:inherit;text-align:center}
.tg .tg-ggp2{background-color:#ffccc9;color:#9b9b9b;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-mfhl{background-color:#ffffc7;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-xldj{border-color:inherit;text-align:left}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-dw9n{background-color:#ffffff;color:#9b9b9b;border-color:inherit;text-align:center}
.tg .tg-6zks{background-color:#ffccc9;color:#c0c0c0;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-5po2{background-color:#ffffff;color:#c0c0c0;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-45hq{background-color:#ffccc9;color:#c0c0c0;border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-opee" rowspan="2">Pulsar Names</th>
    <th class="tg-mfhl" colspan="3"><span style="font-weight:700">Dispersion Measure</span></th>
  </tr>
  <tr>
    <td class="tg-4p0o">Fitting the curve</td>
    <td class="tg-w60v">Fitting the spectrum</td>
    <td class="tg-w60v">Monte Carlo</td>
  </tr>
  <tr>
    <td class="tg-xldj">B0329+54</td>
    <td class="tg-xldj">25.6757 ± 3.2703</td>
    <td class="tg-0pky">29.473 ± 2.489</td>
    <td class="tg-0pky">26.0490 ± 0.3591</td>
  </tr>
  <tr>
    <td class="tg-xldj">B0531+21(i)</td>
    <td class="tg-xldj">55.5045 ± 1.1892</td>
    <td class="tg-0pky">55.834 ± 0.410</td>
    <td class="tg-0pky">55.6937 ± 0.0946</td>
  </tr>
  <tr>
    <td class="tg-0pky">B0531+21(ii)</td>
    <td class="tg-0pky">55.8018 ± 1.1892</td>
    <td class="tg-0pky">55.656 ± 0.238</td>
    <td class="tg-0pky">55.8819 ± 0.0805</td>
  </tr>
  <tr>
    <td class="tg-0pky">B0531+21(iii)</td>
    <td class="tg-0pky">56.0000 ± 1.3874</td>
    <td class="tg-0pky">55.725 ± 0.385</td>
    <td class="tg-0pky">55.9550 ± 0.0762</td>
  </tr>
  <tr>
    <td class="tg-xldj">B1642-03</td>
    <td class="tg-xldj">33.3063 ± 6.1441</td>
    <td class="tg-0pky">32.434 ± 1.379</td>
    <td class="tg-0pky">32.0871 ± 0.4578</td>
  </tr>
  <tr>
    <td class="tg-b2bz">B1929+10<br></td>
    <td class="tg-dw9n" colspan="2">RFI</td>
    <td class="tg-ggp2">1.6116 ± 0.8074</td>
  </tr>
  <tr>
    <td class="tg-0pky">B1933+16</td>
    <td class="tg-0pky">150.9510 ± 7.4074</td>
    <td class="tg-0pky">158.009 ± 7.981</td>
    <td class="tg-0pky">151.1997 ± 1.5803</td>
  </tr>
  <tr>
    <td class="tg-6zks">B2016+28<br></td>
    <td class="tg-5po2" colspan="2"><span style="font-weight:700">RFI</span></td>
    <td class="tg-45hq">1.4712 ± 3.4911</td>
  </tr>
  <tr>
    <td class="tg-0pky">B2020+28</td>
    <td class="tg-0pky">22.7027 ± 2.1802</td>
    <td class="tg-0pky">20.061 ± 3.532</td>
    <td class="tg-0pky">23.3594 ± 0.4248</td>
  </tr>
  <tr>
    <td class="tg-0pky">B2111+46</td>
    <td class="tg-0pky">98.6486 ± 3.4034</td>
    <td class="tg-0pky">too noisy</td>
    <td class="tg-0pky">98.3332 ± 21.4281</td>
  </tr>
</table>

#### [Table 2.1](#table-21): The $DM$ values calculated for all observed pulsars duing the 4-week duration of the experiment. Three-methods were adopted to measure $DM$ and the answers are consistent with each other. 

## 2.6 Distance from Electron Density Models

The distance to the pulsar was estimated with the obtained values of $DM$ from [Table 1.1](#table-11). As stated in [Eqn. 1](#eq-1), an electron density model needs to be assumed in order to calculate the distance. Generally, the mean Galactic electron density $n_e$ is the assumed to be $0.03\ cm^{-1}$. However, a more through approach was adopted for calculating the distance to pulsars using the two models detailed below:

1. First, the <span style="color: green">NE2001 model developed by Corder-Lazio</span> [[6](About.md#6)] was applied. The model develops on the understanding of the ISM based on various measurements in the radio and x-ray band. By using 112 independedntly measured pulsar distances and scattering measures (SMs), the model successfully predicts large scale fluctuations (which cause scattering) and the smooth $n_e$ distribution. It also adds clumps and voids towards the pulsar based on the measured $DM$ values.

2. The <span style="color: green">YMW16 model developed by Yao, Manchester and Wang</span> [[7](About.md#6)] was also attempted. The model is built on the NE2001, however, has some differences. For example, the four-armed spiral pattern of the Galaxy is considered. It also considers many local features in the galaxy like the Local Bubble (LB), enhances regions of $n_e$ at the edges of the LB, etc. It additionally, discards prior SMs measurements and does not assume any clump or void formations based on $DM$ values.

[Table 2.2](#table-22) shows the final results obtained using the measured $DM$ values from the Monte-Carlo method and using the NE2001 and YMW16 models respectively. 

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-6m3n{background-color:#c4ecc4;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-opee{font-weight:bold;background-color:#ffffc7;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-mfhl{background-color:#ffffc7;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-xldj{border-color:inherit;text-align:left}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-opee" rowspan="2">Pulsar Names</th>
    <th class="tg-mfhl" colspan="2"><span style="font-weight:bold">Distance (kpc)</span></th>
  </tr>
  <tr>
    <td class="tg-6m3n"><span style="font-weight:700">Cordes-Lazio </span><span style="font-weight:bold">NE2001</span><br><span style="font-weight:bold">(electron density model 1)</span></td>
    <td class="tg-6m3n"><span style="font-weight:bold">YMW16</span><br><span style="font-weight:700">(electron density model 2)</span><br></td>
  </tr>
  <tr>
    <td class="tg-xldj">B0329+54</td>
    <td class="tg-0pky">1.088 ± 0.147</td>
    <td class="tg-0pky">1.162 ± 0.116</td>
  </tr>
  <tr>
    <td class="tg-xldj">B0531+21(i)</td>
    <td class="tg-0pky">1.709 ± 0.298</td>
    <td class="tg-0pky">1.282 ± 0.128</td>
  </tr>
  <tr>
    <td class="tg-0pky">B0531+21(ii)</td>
    <td class="tg-0pky">1.714 ± <span style="font-weight:lighter">0.299</span><br></td>
    <td class="tg-0pky">1.286 ± 0.127</td>
  </tr>
  <tr>
    <td class="tg-0pky">B0531+21(iii)</td>
    <td class="tg-0pky">1.715 ± 0.298</td>
    <td class="tg-0pky">1.287 ± 0.129</td>
  </tr>
  <tr>
    <td class="tg-xldj">B1642-03</td>
    <td class="tg-0pky">1.057 ± 0.198</td>
    <td class="tg-0pky">0.973 ± 0. 098</td>
  </tr>
  <tr>
    <td class="tg-0pky">B1933+16</td>
    <td class="tg-0pky">5.484 ± 0.803</td>
    <td class="tg-0pky">4.231 ± 0.423</td>
  </tr>
  <tr>
    <td class="tg-0pky">B2020+28</td>
    <td class="tg-0pky">2.004 ± 0.389</td>
    <td class="tg-0pky">1.617 ± 0.162</td>
  </tr>
  <tr>
    <td class="tg-0pky">B2111+46</td>
    <td class="tg-0pky">3.890 ± 0.458</td>
    <td class="tg-0pky">3.646 ± 0.365</td>
  </tr>
</table>

#### [Table 2.2](#table-22): The distance calculated for all observed pulsars using the NE2001 and YMW16 electron density models are stated. The uncertainties quoted are obtained from the accuracy of the models.

The distances $d$ calculated using YMW16 for <span style="color: red">PSR B0329+54, B0531+21, B1933+16, B2020+28, and B2111+46</span> are <span style="color: green">consistent with accepted values</span> quoted in the ATNF Pulsar Catalogue [[8](About.md#8)].

However, $d$ to B1642-03 shows consistency with the accepted value ($DM = 35.76\ pc\ cm^{-3}$, $d = 1.3\ kpc$) only when the NE2001 model was used to calculate $d$, the value obtained using YMW16 is inconsistent with the accepted value [[8](About.md#8)].