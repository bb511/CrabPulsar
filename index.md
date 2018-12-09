---
layout: default
title: Crab Pulsar
use_math: true
image_sliders:
- Visibility
---

## 1.1 Introduction to the experiment.

 The experiment provides an introduction to pulsar astronomy and investigates pulsar properties using computer programming in Python, MATLAB and Mathematica. All data for the experiment was obtained from the 42-ft radio telescope at Jodrell Bank Observatioy, Cheshire. Some parts of the experiment also used the data from the 76-m Lovell telescope. The experiment is divided in three parts:
 1. Calculation of the **'dispersion measure'** and the **distance** to 8 different pulsars using the 42-ft radio telescope using three different methods.
 2. Using **Fourier analysis techniques** to calculate the _period_ and _width_ of the pulse profile of 6 unknown pulsars using existing data from the 76-m Lovell telescope.
 3. **Timing** the Crab pulsar to obtain an accurate period mesurements. The analysis involved correction of the arrival times to the barycenter and provided a measurement for the period derivate, age and magnetic field of the pulsar. The same analysis was also applied on 6 other pulsars observed using the 42-ft telescope.

 Details of each part of the experiment is given in the respective tabs at the top of the page. The theory given in the following sections given an overview of the physics and fundamental concepts required to perform the experiment.

## 1.2 Pulsars

Jocelyn Bell and Anthony Hewish first reported the discovery of Pulsars in [this](https://www.jstor.org/stable/24927533?seq=1#metadata_info_tab_contents) paper published in _Nature_ in October 1968. Depending on the mass of the star, at the end of its evolution, the star could collapse into a white dwarf, neutron star, or a black-hole. Neutron stars were theorized in the 1950's, however, they were poorly understood before the discovery by Hewish and Bell. Today, cutting edge techniques have allowed scientists to go from a sample of one to 200,000 pulsars. A pulsar is a neutron star whose beam sweeps across the observer at well-defined periods. They are extremely stable and yeild many important results. Some of the properties of pulsars have been discussed in the [Pulsar Timing](CrabTiming.md#41-introduction) section.

Pulsar nomenclature follow a standard procedure. <span style="color: red">PSR</span> stands for **P**ulsating **S**ource of **R**adio and numbers correspond to the pulsar position in Right Ascension and declination. The alphabet B  after PSR refers to the 1950.0 epoch. However, pulsars with J correspond to the 2000.0 epoch. Additionally, the pulsars with J have their declination in minutes.

## 1.3 Data collection and search techniques

The 13m (42ft) parabolic radio telescope is used to obtain data. Unwanted power or "spillover" is collected from the edges of the dish. An incoming signal, induces an electromagnetic signal in the feed which is converted into useful data after signal processing. The data is recorded with a bandwidth of 10 MHz centred at the frequency of 610 MHz. A section of the incoming signal received, passes the filter and is Fourier transformed. The decomposition is stored in multiple frequency channels. The power in each channel is computed at intervals of 51 $\mu$s. This defines the sampling rate of the incoming data.

The choice of the optimal frequency and bandwidth are crucial for pulsar searches. <span style="color: green"><b>Scattering effects</b></span> are less dominant at higher frequencies. The electron density distribution in the interstellar medium obscures the amount of dispersion. It is favorable to set observations at high frequency to lower scattering effects and to detect weak and distant pulsars. The sensitivity of the telescope increases as the square root of the <span style="color: green"><b>integration time</b></span> which has been discussed in detail in [section 1.4](#14-pulsar-observations-and-visibility-calculations).

## 1.4 Pulsars observations and visibility calculations

### <u>1.4.1 Integration time</u>

The experiemnt lasted for 4 weeks (November-2018) and 10 pulsars were observed during this period using the 43-ft telescope at Jodrell Bank Observatory, as detailed in [Table 1.1](#table-11). Random motions of electrons in the receiver ciircuits produce a power $P_{circuit}$, which is given by the Nyquist's theorem as, $P_{circuit} = k_B T$, where $T$ corresponds to the noise temperature.
If the <i>antenna temperature</i> $T_A = T$, the flux from the source $S$ follows,
\begin{equation}
	S = \frac{2k_B T_A}{A_e} = \frac{T_A}{G}
\end{equation}
where $A_e = \eta A$ is the effective collecting area of the telescope, $\eta$ is the efficiency $\approx55\%$, $A$ is the total collecting area and $G = A_e/(2k_B)$ is the $gain$. For the 42-ft telescope $G$ was calculated to be,
\begin{equation}
	\boxed{G = 0.0256\ K/Jy}
\end{equation}
where $1\ Jy = 10^{-26} W m^{-2} Hz^{-1}$.

The source flux $S=S_{source}$ can be defined in terms of an equivalent <i>source temperature</i> as $T_{source} = G S_{source}$. Due to $G$ limitations for the telescope, the strongest pulsars $\approx 50\ mJy$ show $T_{source}\lesssim\ 1\ K$. The observed signal has a <i>background system temperature</i> defined as,
\begin{equation}
	T_{system} = T_{rec} + T_{spill} + T_{sky}
\end{equation}

where $T_{rec} \approx\ 100\ K$ is the receiver noise temperature, $T_{spill} \approx 10\ K$ is the spillover temperature and $T_{sky} \approx 10\ K$ is the sky and atmospheric temperature. Thus $T_{source}$ has to compete with various background sources to be detected.  After calibrating the receiver, the most dominant effect competing with the pulsar signal is the root mean square fluctuations $\Delta T_{sys}$ which is given by the **radiometer equation** as,

\begin{equation}
	\Delta T_{sys} = \frac{T_{sys}}{\sqrt{n_pt\Delta f}}
\end{equation}

where $\Delta f$ is the observing bandwidth, $t$ is the integration time and $n_p=2$ for orthogonal polarisations being summed [[2, 3](About.md#52-references)].

The 'system-equivalent flux density (SFED)' is a measure of the sensitivity of a source with temperature equal to $\Delta T_{sys}$, i.e. SFED $= S_{sys} = T_{sys}/(\sqrt{n_pt\Delta f}G)$. Therefore, lower SFED indicate more sensitive systems which are able to detect faint and distant pulsars. Therefore, the minimum $t$ required to detect a source of $1\ Jy$ i.e. signal-to-noise ratio of 1, was calculated to using the formula,
\begin{equation}
	t_{min} = {\bigg[\frac{T_{sys}}{G\sqrt{n_p \Delta f}})\bigg]}^2.
\end{equation}

Additionally, the repeating signal of a pulsar contributed to increase the signal-to-noise by a factor of $\sqrt{\frac{P-W}{P}}$. The integration times and the corresponding signal-to-noise ratios for all the observed pulsars are given in [Table 1.1](#table-11).

<a name="table-11"></a>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-bab8{background-color:#c3ffd7;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-cjtp{background-color:#ecf4ff;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-qjc1{background-color:#c3ffd7;border-color:inherit;text-align:center}
.tg .tg-7e68{background-color:#c9fb8c;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-c3ow{border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-dup2{background-color:#c3ffd7;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-5w3z{background-color:#ecf4ff;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-fgdu{font-weight:bold;background-color:#ecf4ff;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-7btt{font-weight:bold;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-hafo{background-color:#fffc9e;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-elvq{background-color:#fffc9e;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-p6l2{font-style:italic;text-decoration:underline;background-color:#c3ffd7;border-color:inherit;text-align:center}
.tg .tg-2pvn{font-style:italic;text-decoration:underline;background-color:#c3ffd7;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-bolj{background-color:#ffccc9;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-90e1{background-color:#ffccc9;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-ark0{background-color:#ffccc9;color:#343434;border-color:inherit;text-align:center;vertical-align:top}
.tg .tg-aw1e{background-color:#c9fb8c;border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-cjtp"><span style="font-weight:bold">Week Number</span></th>
    <th class="tg-fgdu">Pulsar Names</th>
    <th class="tg-5w3z"><span style="font-weight:bold">Integration Time</span><br><span style="font-weight:bold">(seconds)</span><br></th>
    <th class="tg-cjtp"><span style="font-weight:bold">Signal to Noise ratio</span></th>
  </tr>
  <tr>
    <td class="tg-c3ow"><span style="font-weight:bold">1 </span></td>
    <td class="tg-qjc1">B0329+54</td>
    <td class="tg-bab8">2149</td>
    <td class="tg-bab8">85</td>
  </tr>
  <tr>
    <td class="tg-7btt" rowspan="4"><br><br><br>2<br><br></td>
    <td class="tg-hafo">B0355+54</td>
    <td class="tg-elvq">6236</td>
    <td class="tg-elvq">10</td>
  </tr>
  <tr>
    <td class="tg-p6l2">B0531+21(i)</td>
    <td class="tg-bab8">16241</td>
    <td class="tg-bab8">5</td>
  </tr>
  <tr>
    <td class="tg-dup2">B2020+28</td>
    <td class="tg-bab8">7278</td>
    <td class="tg-bab8">15</td>
  </tr>
  <tr>
    <td class="tg-dup2">B1933+16</td>
    <td class="tg-bab8">7527</td>
    <td class="tg-bab8">15</td>
  </tr>
  <tr>
    <td class="tg-7btt" rowspan="4"><br><br><br>3<br><br></td>
    <td class="tg-2pvn">B0531+21(ii)</td>
    <td class="tg-bab8">16241</td>
    <td class="tg-bab8">10</td>
  </tr>
  <tr>
    <td class="tg-bolj">B2016+28</td>
    <td class="tg-90e1">8848</td>
    <td class="tg-90e1">15</td>
  </tr>
  <tr>
    <td class="tg-qjc1">B1642-03</td>
    <td class="tg-bab8">7208</td>
    <td class="tg-bab8">15</td>
  </tr>
  <tr>
    <td class="tg-hafo">B2021+51</td>
    <td class="tg-elvq">5646</td>
    <td class="tg-elvq">15</td>
  </tr>
  <tr>
    <td class="tg-7btt" rowspan="3"><br><br><br>4<br></td>
    <td class="tg-2pvn">B0531+21(iii)</td>
    <td class="tg-bab8">16241</td>
    <td class="tg-bab8">5</td>
  </tr>
  <tr>
    <td class="tg-ark0">B1929+10</td>
    <td class="tg-90e1">7563</td>
    <td class="tg-90e1">15</td>
  </tr>
  <tr>
    <td class="tg-7e68">B2111+46</td>
    <td class="tg-aw1e">5720</td>
    <td class="tg-aw1e">7</td>
  </tr>
</table>

#### [Table 1.1](#table-11): All the pulsars observed are summarized. The green boxes signify the good measurements. The yellow boxes signify the measurements which were dominated by noise. Red boxes correspond to measurement which were discarded due to strong radio interference, RFI, of earth signals during the time of measurement. The yellow-green box signifies the noise dominated signal which was weakly detected. Note: due to bad weather conditions in week 4, observations suffered due to interference.

### <u>1.4.2 Visibility</u>

The visibility of the pulsars was calculated by calculating their elevation from Jodrell Bank for every day of the experiment in the month of November. Grids with all the considered pulsar visibilities are presented in [Slider 1.4.2](#slider-142). A link to download all the grids and zoom in on individual pulsars can be found in the [Downloads](Downloads.md) section.

<a name="slider-142"></a>

{% include slider.html selector="Visibility" %}

&nbsp;

#### [Slider 1.4.2](#slider-142) Grids with the visibility of each potential pulsar that would be observable with the 42-ft telescope. The time in the day is plotted on the x-axis while the elevation of the pulsar is plotted on the y-axis. The pulsar should be observed when its elevation is between the two black dashed lines. Observations might be noisy if the pulsar is between the black dashed line and the red dashed line. When the elevation is below the red line, the pulsar is unobservable. A grid was generated for every day from the start of the second week of experiment to the end of the experiment.

In the rest of this section we will go through all the calculations that were performed to obtained the elevation of a certain pulsar from Jodrell Bank, located at a $\mathrm{lat} = 53.2369^∘$ and $\mathrm{lon} = -2.3075^∘$.
First, one needs to calculate the Sidereal Time (ST). The conversion between Universal Time and ST at a particular location on Earth is obtained throught the formula
\begin{equation}
ST = [100.46 + 0.985647 \times (JD - 51546) + lon + 15\times \mathrm{UT}] \mod 360
\end{equation}

Where $\mathrm{JD}$ is the Reduced Julian Date,  relative to noon on November 16 1858, $lon$ is the longitude of the location and $\mathrm{UT}$ is the universal time.
From this, the hour angle of a certain celestial object can be calculated through the expression
\begin{equation}
HA = [ST - RA] \mod 360
\end{equation}
where $RA$ is the right angle of the object, or in this case pulsar.
Finally the altitude of a pulsar at a certain $HA$, from Jodrell Bank, was calculated using
\begin{equation}
ALT = \mathrm{arcsin} \big [ \mathrm{sin}(lat)\mathrm{sin}(dec) + \mathrm{cos}(lat)\mathrm{cos}(dec)\mathrm{cos}(HA)\big ]
\end{equation}
where $lat$ is the latitude of the pulsar and $dec$ is its declination.
