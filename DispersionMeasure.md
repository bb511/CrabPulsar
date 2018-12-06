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
---


## 2.1 Introduction

Pulsars are relatively weak radio sources due to their small size. They usually emit their largest intensity at low radio frequencies around 400 MHz. However, at such frequencies, the pulses suffer from propagation effects when they through the interstellar medium to reach Earth [[4](About.md#3)].

The phenomenon is quantified in a term called the Dispersion Measure (DM). The DM is important in pulsar astronomy since it is one of the most definite facts that characterizes a pulsar [[5](About.md#5)]. Furthermore, once measured, the dispersion measure of a pulsar can be used to approximate the distance to that pulsar [[6,7](About.md#6)].

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

A single peak in the pulse profile implies that core emission beam is close to the magnetic axis (core emission model). A double peak model implies hollow emission cone surrounding the magnetic axis (cone emission model). While a triple peak profile is explained by the core-cone model. The patch model states that all components of the pulse profile are caused by scattered emission beams in the shape of a patch.
Emission beam radius is given as, $$\rho = 5.4^o P^{-0.5}$$ <mark>Aside: need to check if we can calculate this.</mark>

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

content goes here

## 2.8 Distance from Electron Density Models

content goes here.

## 2.9 Results Summary

content goes here.
