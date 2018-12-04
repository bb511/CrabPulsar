---
layout: default
title: Crab Pulsar
use_math: true
image_sliders:
- TS
- FFT
- Corrections
- Fit
- Period
---

## Introduction

Unknown 'periodic pulse' searches were motivated after the discovery of pulsars at Cambridge and the Molonglo telescope at Australia. The two methods prevalant for searching pulsars are:
1. <span style="color: #400080"><b>Periodogram Analysis</b></span>: This method involves directly looking at a train of regularly spaced pules.
2. <span style="color: #400080"><b>Fourier Analysis</b></span>: 
This method involves looking at the Fourier transform of the time series spectrum.

Periodogram analysis requires high sensitivity to detect broad pulse widths $w$, compared to narrow pulses showing high signal to noise ratio. The increase in the signal to noise ratio is given by a factor of $(P/2w)^{1/2}$. For this experiment, the Fourier analysis technique is chosen as it is computationally more economical than the periodogram analysis. 

## Theory 

The data from a pulsar is obtained and stored in channels. This stored data is de-dispersed and the time series spectrum is obtained for the required integration time. The Fourier transform of the time series data stream is taken to precisely measure the period. Harmonics are a useful tool used for this measurement. Harmonics occur in the Fourier spectrum at integer multiples of the fundamental frequency. All periodic signals show harmonics. The pictorial image 1 shows summarizes the Fourier trasform technique of measuring unkown pulsar periods. 

IMAGE GOES HERE. 

The $n^{th}$ harmonic with have a frequency $v_n = Nv$ where $N$ is the total number of harmonics and $v$ is the fundamental frequency at which the first harmonic occurs.

## Time series for all pulsars

A single peak -- core emission beam close to the magnetic axis (core emission model)
double peak -- hollow emission cone surrounding the magnetic axis (cone emission model)
triple peak -- core-cone model

patch model -- all components of the pulse profile caused by scattered emission beams in the shape of a patch

The pulse width can be calculated by measuring the distance between adjacent peaks. 

Emission beam radius $$\rho = 5.4^o P^{-0.5}$$

The FFT of a periodic pulse shows a series of spikes. The distance between the spikes is given as $1/P$. 

<a name="slider-21"></a>

{% include slider.html selector="TS" %}


#### <center> <b> Slider 2.1</b>: The time series plots for the 6 unknown pulsars.</center> 

## Fourier Transform of the time series

<a name="slider-22"></a>

{% include slider.html selector="FFT" %}

#### <center> <b> Slider 2.2</b>: The Fourier transform of the time series plots for the 6 unknown pulsars. The red points highlight the peaks in the frequency spectrum and their repetition displays the number of harmonics.</center> 

## Corrections to harmonics due to elimination of noise

Due to elimation of RFI due AC currents at multiples of 50 Hz,  

<a name="slider-23"></a>

{% include slider.html selector="Corrections" %}

## Method 1: calculation of the period by fitting the frequency vs harmonics

<a name="slider-24"></a>

{% include slider.html selector="Fit" %}

## Method 1: calculation of the period by measuring peak distances

<a name="slider-25"></a>

{% include slider.html selector="Period" %}