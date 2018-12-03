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


## Time series for all pulsars

single peak -- core emission beam close to the magnetic axis (core emission model)
double peak -- hollow emission cone surrounding the magnetic axis (cone emission model)
triple peak -- core-cone model

patch model -- all components of the pulse profile caused by scattered emission beams in the shape of a patch

The pulse width can be calculated by measuring the distance between adjacent peaks. 

Emission beam radius $$\rho = 5.4^o P^{-0.5}$$

The FFT of a periodic pulse shows a series of spikes. The distance between the spikes is given as $1/P$. 

{% include slider.html selector="TS" %}

## Fourier Transform of the time series

slider 1 

{% include slider.html selector="FFT" %}

content goes here.

## Corrections to harmonics due to elimination of noise

{% include slider.html selector="Corrections" %}

## Method 1: calculation of the period by fitting the frequency vs harmonics

{% include slider.html selector="Fit" %}

## Method 1: calculation of the period by measuring peak distances

{% include slider.html selector="Period" %}