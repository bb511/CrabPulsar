---
layout: default
title: Crab Pulsar
use_math: true
image_sliders:
- Corrections
- FFT
- Fit
- Period
- TS
---

## [3.1 Introduction](#31-introduction)

Unknown 'periodic pulse' searches having been crucial for pulsar surveys after the first discoveries at Cambridge and the Molonglo telescope at Australia. The two methods prevalant for searching pulsars are:
1. <span style="color: #400080"><b>Periodogram Analysis</b></span>: This method involves directly looking at a train of regularly spaced pules.
2. <span style="color: #400080"><b>Fourier Analysis</b></span>:
This method involves looking at the Fourier transform of the time series spectrum.

Periodogram analysis requires high sensitivity to detect broad pulses with broad widths $w$, compared to narrow pulses showing high signal to noise ratio. The increase in the signal to noise ratio is given by a factor of $(P/2w)^{1/2}$. For this experiment, the Fourier analysis technique is chosen as it is computationally more economical than the periodogram analysis [[2](About.md#2)].

## [3.2 Theory](#32-theory)

The data from a pulsar for a particular bandwidth is split into a number of independent frequency channels. This stored data is de-dispersed and the time series spectrum is obtained for the required integration time. The Fourier transform of the time series data stream is taken to precisely measure the period. Harmonics are a useful tool used for this measurement. Harmonics occur in the Fourier spectrum at integer multiples of the fundamental frequency. All periodic signals show harmonics. [Figure 1](#figure-1) summarizes the Fourier trasform technique of measuring unkown pulsar periods.

<img  src="{{ site.url }}/materials/ResultPictures2/theory.png" alt="TheoryImg" width="600" height="445" align="center">

#### [Figure 1](#figure-1): The process of measuring the period of an unknown pulsar is shown pictorially. The muti-channel data is first de-dispersed. The de-dispersed time series is then Fourier transformed. Harmonics are observed because of the period pulses from the pulsar. The period is then measured from the obtained information. <span style='color: red'> Note: Right click on the image and open in a new tab to see the zoomed in version of the schematic.</span>

The $n^{th}$ harmonic has a frequency $v_n = Nv$ where $N$ is the total number of harmonics and $v$ is the fundamental frequency at which the first harmonic occurs, as shown in [Figure 2](#figure-2). By definition, the period, $p$, is equal to $1/v$. Therefore, $p$ can be obtained from the information of the harmonics and the frequency at which they occur.

<img src="{{ site.url }}/materials/ResultPictures2/theory2.png" alt="TheoryImg" width="450" height="445">

#### [Figure 2](#figure-2): The Fourier transform of the time series for the Pulsar 1 data set. The red points show the peaks in the power spectrum at different frequencies. They represent the harmnoics of the fundamental frequency $v$.

## 3.3 Fourier transform of the time series

Six data streams of different pulsars, as measured by the 76-m Lovell telescope, were used for analysis. The de-dispersed time-series was plotted, as shown in [Slider 3.1](#slider-31), and the time was calibrated on the x-axis by using the total integration time.


<a name="slider-31"></a>

{% include slider.html selector="TS" %}


#### <center> <b> Slider 3.1</b>: The de-dispersed time series plots for the 6 unknown pulsars.</center>

The discrete Fourier transform $\mathcal{F}$ (DFT) of each time series element ${\mathcal{T(j)}}$ was taken for the $N$ independently sampled data points. DFT of the $k^{th}$ component is given in the frequency domain $\mathcal{F}(k)\ \forall\ k, j\ \epsilon\ [0, N-1]$ is given as,

\begin{equation}
	\mathcal{F}(k) = \sum_{j=0}^{N-1} {\mathcal{T(j)}} {exp}^{-2i \pi jk/N}
\end{equation}
where $i = \sqrt{-1}$. Each $\mathcal{F}(k)$ encodes the amplitude and phase of the sinusoid component ${exp}^{-2i \pi jk/N}$ of the ${\mathcal{T(j)}}$ element and has a frequency defined by $k/N$. The amplitude is given as,

\begin{equation}
	\mathcal{P}(k) = |\mathcal{F}(k)| = \sqrt{Re(\mathcal{F}(k))^2 + Im(\mathcal{F}(k))^2}
\end{equation}

where $\mathcal{P}(k)$ is defined as the power. [Slider 3.2](#slider-32) shows the Fourier transformed power spectrum of the time series elements for the 6 unknown pulsars which were plotted and shown in [Slider 3.1](#slider-31). The width of each frequency bin is given as $1/\tau$ where $\tau$ is the total length of the observattion. It must be noted that $\tau = N t_{samp}$ where $t_{samp}$ is the sampling time. A periodic signal which is buried in noise in the time domain peaks with clarity in the frequency domain and becomes detectable [[3](About.md#3)].

<a name="slider-32"></a>

{% include slider.html selector="FFT" %}


#### <center> <b> Slider 3.2</b>: The Fourier transform of the time series plots for the 6 unknown pulsars. The red points highlight the peaks in the frequency spectrum and their repetition displays the number of observed harmonics. The plot illustrates high sensitivity of the Fourier transform to display periodic signals.</center>

Limitatiions in the DFT arise mainly due to non-uniform frequency responses which don't match the bin centres. Additionally, the width of the bin limits the accuracy with which the peak can be measured. Hence, for all further use, the uncertainty in the frequency was quoted as the minimum resolution of the bins. Few power spectrums were dominated purely by noise at large freuencies, and hence, those frequencies were eliminated.


## 3.4 Corrections to harmonics due to elimination of noise

The peak frequency values in each power spectrum were noted for the 6 values. The harmonic number of each peak was incremented in steps of one. However, major radio interference contributions due to AC domestic currents were observed at multiples of 50 Hz. These frequencies were eliminated to avoid biases in the analysis. Accordingly, the harmonic number had to be corrected to compensate for the lost signal peak in the noise frequency ranges (50 Hz, 100 Hz, 150 Hz, etc.) due to AC currents as shown in [Slider 3.3](#slider-33).

<a name="slider-33"></a>

{% include slider.html selector="Corrections" %}

#### <center> <b> Slider 3.3</b>: The harmonic number for points at which the signal peak was lost was incremented by one. All successive harmonics were also corrected and increased by one until the next noise frequency region was encountered. At the next noise region, the harmonic was again incremented by one and so on. The effect is most prominent in the pulsar 2 data steam.

<br>

## [3.5 <mark>Method 1</mark>: Calculation of the period by fitting peak frequencies vs harmonics](#method1)

The peak frequencies were plotted as a function of the corrected harmonics. A linear model was applied on the data and the residual plots were used as a test to determine the goodness of the fit, as shown in [Slider 3.4](#slider-34). The outlier points arising due to radio interference were easily detected and eliminated. The distribution of the data points shown in the residual plots are consistent with the linear model however, they show a systematic trend. The trend displays the limitation arising due to the finite frequency bin width. The trend can be understood as the carry-over or shift of the peak frequency. This is due to the increments in the amplitude being carried forward to the successive bins. When the increments are of comparable size to the width of the bin, it gets pushed in the successive bin.

<a name="slider-24"></a>

{% include slider.html selector="Fit" %}


#### Slider 2.4: The peak frequncies are obtained from the power spectrum and plotted as a function of the corresponding harmonic number. A linear fit is applied and the residuals for the corresponding fit are plotted to the right. The error bars denote the size of the frequency bin width.


The slope of the line is equal to $1/p$ as explained in [Section 3.2](#32-theory). A weighted fit was performed with the weighs determined by the frequncy bin width. However, the error estimate obtained from the covariance matrix of the best-fitting line were small and unphysical. Hecnce, the successive approach detailed in [Section 3.6](#method2) was used to obtain physical uncertainties on the period and to check the consistency of the calculated periods.
<br>

## [3.6 <mark>Method 2</mark>: Calculation of the period by measuring distances between peaks](#method2)

This method involved calculation of the distance between successive peaks in the power spectrum. The distance is equal to,
$1/p = f_{peak(i+1)} - f_{peak(i)}$, where $f_{peak(i)}$ is the peak frequncy of the $i^{th}$ harmonic. The uncertainties on the $f_{peak(i)}$ arising due to the finite sampling rate or bin width are propogated to obtain the uncertainties in $p_i$, as shown in the plots in [Slider 3.5](#slider-35). The plot of the period as a function of the harmonic number centres about the true period of the pulsar. The standard deviation was used to obtain a physical uncertainty on the mean period. The  values obtained using this method are consistent with those obtained from the slope of the frequncy vs harmonic plots, as detailed in [Section 3.5](#method1).

<a name="slider-35"></a>

{% include slider.html selector="Period" %}

#### Slider 3.5: The reciprocal of the distance between the frequency peaks (defined as the period) in the power spectrum are plotted as a function of the harmonic number. The mean and standard deviation were used for quoting the final results for the period and uncertainty of the pulsar.
<br>

## 3.7 Results

The final results have been quoted in [Table 3.1](#table-31). The corresponding pulsar names for the calculated periods were found from the 'Catalog of 558 Pulsars' published by J.H. Taylor, R. N. Manchester and A. G. Lyne [[4](About.md#4)].


<a name="table-31"></a>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{font-family:Arial, sans-serif;font-size:14px;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg th{font-family:Arial, sans-serif;font-size:14px;font-weight:normal;padding:10px 5px;border-style:solid;border-width:1px;overflow:hidden;word-break:normal;border-color:black;}
.tg .tg-xlw0{background-color:#b19df2;border-color:inherit;text-align:left}
.tg .tg-1o19{background-color:#67fd9a;text-align:left;vertical-align:top}
.tg .tg-lcrt{background-color:#b19df2;border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-m9r4{background-color:#ffffc7;text-align:left;vertical-align:top}
.tg .tg-xldj{border-color:inherit;text-align:left}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
  <tr>
    <th class="tg-xlw0"><span style="font-weight:bold">Pulsar Data</span></th>
    <th class="tg-xlw0"><span style="font-weight:bold">Period</span><br><span style="font-weight:bold">(seconds)</span></th>
    <th class="tg-lcrt"><span style="font-weight:bold">Width</span><br><span style="font-weight:bold">(ms)</span></th>
    <th class="tg-m9r4"><span style="font-weight:bold">Pulsars</span></th>
  </tr>
  <tr>
    <td class="tg-xldj">Pulsar 1</td>
    <td class="tg-xldj">0.2265 ± 0.0002</td>
    <td class="tg-0pky">~ 11</td>
    <td class="tg-1o19">B1929+10</td>
  </tr>
  <tr>
    <td class="tg-xldj">Pulsar 2</td>
    <td class="tg-xldj">0.189 ± 0.003</td>
    <td class="tg-0pky">~ 2</td>
    <td class="tg-1o19">B1821-19</td>
  </tr>
  <tr>
    <td class="tg-xldj">Pulsar 3</td>
    <td class="tg-xldj">0.476 ± 0.001</td>
    <td class="tg-0pky">~ 11</td>
    <td class="tg-1o19">B0626+24</td>
  </tr>
  <tr>
    <td class="tg-xldj">Pulsar 4</td>
    <td class="tg-xldj">0.7397 ± 0.003</td>
    <td class="tg-0pky">~ 19</td>
    <td class="tg-1o19">B1508+55</td>
  </tr>
  <tr>
    <td class="tg-0pky">Pulsar 5</td>
    <td class="tg-0pky">0.2990 ± 0.001</td>
    <td class="tg-0pky">~ 6</td>
    <td class="tg-1o19">B1702-19</td>
  </tr>
  <tr>
    <td class="tg-0pky">Pulsar 6</td>
    <td class="tg-0pky">0.7146 ± 0.001</td>
    <td class="tg-0pky">~ 12</td>
    <td class="tg-1o19">B0329+54<br></td>
  </tr>
</table>

#### Table 3.1: The calculated periods and uncertainties are quoted. The width of the pulse profile was also estimated and the corresponding pulsars with consistent periods were found.
