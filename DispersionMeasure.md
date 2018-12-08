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
In this view, the dispersion measure is simply a constant of proportionality relating the frequency of the light to the extra amount of time (relative to vacuum) required to reach the observer due to dispersion. It depends on two quantities: the (electron) number density $n_e$ and the path length through the medium $d$ [[1](About.md#1)]. For example, a large DM value would tell us that the source is either relatively nearby but is traveling through a dense plasma, or it is far away, and traveling through a relatively less dense plasma. A visual representation of this process is shown in [Figure 1](#figure-1).

<a name="figure-1"></a>

![Theory1](/materials/ResultPictures1/theory1.png)

#### [Figure 1](#figure-1): Signal measured from a pulsar [[3](About.md#3)]. The top parts show the power measured per channel as a function of time, showing clear frequency-dependent arrival times, or dispersion. The bottom shows the dispersion-corrected pulse (sharp pulse).


## 2.3 Calculation of disperion measure

The Dispersion measure of each observed pulsar was calculated. The raw data for every considered pulsar is shown in [Slider 3.1](#slider-31).

<a name="slider-31"></a>

{% include slider.html selector="DensityPlots" %}

#### [Slider 3.1](#slider-31): The raw data of every pulsar visualised using matplotlib imshow. The color of each pixel indicates the power at a particular frequency and phase. The tilt of the

This raw data was then processed using three methods to get the dispersion measure. Essentialy, the right dispersion measure is obtained when the green line in the above plots sits vertically straight. The integrated profile (integrating over frequency) corresponding to each of the raw data plots is presented in [Slider 3.2](#slider-32)

<a name="slider-32"></a>

{% include slider.html selector="IntegratedProfiles" %}

#### [Slider 3.2](#slider-32): The integrated profile corresponding to each raw data file. The peak of this graph is used to determine the signal to noise.

In the following section we detail these methods, along with the results obtained for each pulsar.

## 2.4 Method 1 - Fitting the Peak

This method consists of trying a range of DMs and plotting a graph of the corresponding integrated profile peaks. A peak is defined by the maximum y value of a figure from [Slider 3.2](#slider-32).
The DMs are sequentially applied to the raw data which results in systematic rotations of the green line in [Slider 3.1](#slider-31). When the green line sits exactly vertical, the maximum signal to noise is achieved, the dispersion measure is correct and the value of the integrated profile peak is at a maximum. Graphs of the peaks against DMs of every pulsar are presented in [Slider 4.1](#slider-41).

<a name="slider-41"></a>

{% include slider.html selector="DMCurves" %}

#### [Slider 4.1](#slider-41): Dispersion measure against the peak of the integrated profile. The maximum value of this graph was taken as the value for the DM.

<mark>Explain how the errors were obtained for this method</mark>

All pulsar DM values obtained this way, with their associated uncertainties, are presented in [Table 4.1](#table-41).

<a name="table-41"></a>

<mark>Table comes here</mark>

## 2.5 Method 2 - Fitting the Spectrum

Each frequency channel (row) of a [Slider 3.1](#slider-31) figure is considered separately. [Slider 5.1](#5.1) shows a visual representation of this for every pulsar we analysed.

<a name="slider-51"></a>

{% include slider.html selector="RowGrids" %}

#### [Slider 5.1](#slider-51): Grid of every frequency channel (row) of figure in [Slider 3.1](#slider-31) plotted against the period of the pulsar. The position of the peak on the x axis is when the pulse arrived for a certain frequency channel.

The grids in [Slider 5.1](#slider-51) were filtered to only include rows which present a distinguishable peak. The time coordinate of each peak was then recorded. These times correspond to the times in the left hand side of [Equation (2)](#eq-2). Therefore, this could be plotted against the inverse squared frequency, times the constant 4150 (dispersion constant) to obtain a straight line. The straight line was then fitted with a linear model to obtain the dispersion measure, as obvious from [Equation (2)](#eq-2). Figures of these fits for each pulsar are presented in [Slider 5.2](#slider-52).

<a name="slider-52"></a>

{% include slider.html selector="SpectrumFits" %}

#### [Slider 5.2](#slider-52): Fits of times against the inverse frequency squared times a constant (dispersion constant). The errors on the points were obtained from the frequency resolution.

Initially, the FWHM of every peak was calculated and that was considered as the error on the times in the above slider. However, it was immediately apparent that the errors were to large. Hence, the width of a frequency bin was considered to be the error on this points instead.
The DMs obtained from each of these fits together with their associated errors (taken from the error on the slope of the fitted line) are presented in [Table 2](#table-2).

## 2.6 Method 3 - Monte Carlo Simulation

<a name="figure-1"></a>

![Noise1](/materials/ResultPictures1/noise1.png)

<a name="figure-1"></a>

![Noise2](/materials/ResultPictures1/noise2.png)


{% include slider.html selector="MonteCarlo" %}

#### [Slider 5.2](#slider-52): Fits of times against the inverse frequency squared times a constant (dispersion constant). The errors on the points were obtained from the frequency resolution.

## 2.8 Distance from Electron Density Models

content goes here.

## 2.9 Results Summary

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
    <td class="tg-6m3n"><span style="font-weight:700">Cordes-Lazio </span><span style="font-weight:bold">NE2001</span><br><span style="font-weight:bold">(electron density model)</span></td>
    <td class="tg-6m3n"><span style="font-weight:bold">YMW16</span><br><span style="font-weight:700">(electron density model)</span><br></td>
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
