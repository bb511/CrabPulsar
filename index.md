---
layout: default
title: Crab Pulsar
use_math: true
---

### 1.1 Introduction to the experiment.

 The experiment provides an introduction to pulsar astronomy and investigates pulsar properties using computer programming in python, MATLAB and mathematica. All data for the experiment was obtained from the 42-ft radio telescope at Jodrell Bank Observatioy, Cheshire. Some parts of the experiment also used the data from the 76-m Lovell telescope. The experiment is divided in three parts:
 1. Calculation of the **'dispersion measure'** and the **distance** to 8 different pulsars using the 42-ft radio telescope.
 2. Using **Fourier analysis techniques** to calculate the _period_ and _width_ of the pulse profile of 6 unknown pulsars using existing data from the 76-m Lovell telescope. 
 3. **Timing** the Crab pulsar to obtain an accurate period mesurements. The analysis involved correction of the arrival times to the barycenter and provided a measurement for the period derivate, age and magnetic field of the pulsar. The same analysis was also applied on 6 other pulsars observed using the 42-ft telescope.

 Details of each part of the experiment is given in the respective tabs at the top of the page. The theory given in the following sections given an overview of the physics and fundamental concepts required to perform the experiment.

### 1.2 Pulsars and their properties

Jocelyn Bell and Anthony Hewish first reported the discovery of Pulsars in [this](https://www.jstor.org/stable/24927533?seq=1#metadata_info_tab_contents) paper published in _Nature_ in October 1968. Depending on the mass of the star, at the end of its evolution, the star could collapse into a white dwarf, neutron star, or a black-hole. Neutron stars were theorized in the 1950's, however, they were poorly understood before the discovery by Hewish and Bell. Today, cutting edge techniques have allowed scientists to go from a sample of one to 200,000 pulsars.

<span style="color: red">PSR</span> stands for **P**ulsating **S**ource of **R**adio and numbers correspond to the pulsar position in Right Ascension and declination. The alphabet B  after PSR refers to the 1950.0 epoch. However, pulsars with J correspond to the 2000.0 epoch. Additionally, the pulsars with J have their declination in minutes. 

### 1.3.1 Data collection with the 42ft telescope

The 13m (42ft) parabolic radio telescope is used to obtain data. Unwanted power or "spillover" is collected from the edges of the dish. An incoming signal, induces an electromagnetic signal in the feed which is converted into useful data after signal processing, as summarized in [Figure 1]. The data is recorded with a bandwidth of 10 MHz centred at the frequency of 610 MHz. A section of the incoming signal received, passes the filter and is Fourier transformed. The decomposition is stored in multiple frequency channels. The power in each channel is computed at intervals of 51 $\mu$s. 

### 1.3.2 Optimal Search techniques

<span style="color: green"><b>Scattering effects</b></span> are less dominant at higher frequencies. The electron density distribution in the interstellar medium obscures the amount of dispersion. It is favorable to set observations at high frequency to lower scattering effects and to detect weak and distant pulsars. The sensitivity of the telescope increases as the square root of the <span style="color: green"><b>integration time</b></span>.