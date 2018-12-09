---
layout: default
title: Crab Pulsar
use_math: true
---


## 4.1 Introduction

While in Sections [2](DispersionMeasure.md) and [3](FourierTransform) we have explored some properties of the pulsar that did not require too much knowledge about the puslar itself, here we focus more on these aspects.

Known pulsars emit short pulses of electromagnetic radio waves with pulse periods between 1.4 ms and 8.5 s. Their radio emission is actually continuous but beamed, so any one observer sees a pulse of radiation each time the beam sweeps across his line-of-sight. Since the pulse periods equal the rotation periods of spinning neutron stars, they are quite stable. Even though the radio emission mechanism is not well understood, radio observations of pulsars have yielded a number of important results because:

1. Neutron stars are physics laboratories providing extreme conditions (deep gravitational potentials, densities exceeding nuclear densities, magnetic field strengths as high as B1014 or even 1015 gauss) not available on Earth.

2. Pulse periods can be measured with accuracies approaching 1 part in 1016, permitting exquisitely sensitive measurements of small quantities such as the power of gravitational radiation emitted by a binary pulsar system or the gravitational perturbations from planetary-mass objects orbiting a pulsar.

## 4.2 Theory

Before pulsars were discovered, astronomers were used to slowly varying or pulsating emission from stars, where the natural period was usually days. There is a lower limit to the rotation period $P$ of a gravitationally bound star, set by the requirement that the centrifugal acceleration at its equator not exceed the gravitational acceleration:

\begin{equation}
\Omega^2 R < \frac{GM}{R^2}
\end{equation}

where $\Omega$ is the angular velocity of the star, $R$ is its radius, $M$ its mass and $G$ the gravitational constant. Therefore, if a star rotates with angular velocity $\Omega = 2 \pi /P$, then
\begin{equation}
P^2 > \bigg( \frac{4\pi R^3}{3} \bigg )\frac{3\pi}{GM}
\end{equation}
and we can have a lower limit on its period. Furthermore, this can be re-written in terms of density as

\begin{equation}
\boxed{\rho > \frac{3\pi}{GP^2}}
\end{equation}

The fastest known pulsar had $P = 1.4\times 10^{-3}$ s, which implies a density limit of $\rho > 10^{14}$ g cm$^{-3}$, the density of nuclear matter. Consider a star of mass greater than Chandrasekhar mass $M_\mathrm{ch} \approx 1.4 M_\mathrm{sun}$, the maximum radius of this star would be

\begin{equation}
R < \bigg ( \frac{3M}{4\pi\rho} \bigg )^{1/3}.
\end{equation}

In the case of the pulsar with $P = 1.4 \times 10^{-3}$ and $\rho > 10^{14}$ g cm$^{-3}$,

\begin{equation}
R < \bigg ( \frac{3\times 1.4 \times 2.0 \times 10^{33} \mathrm{g}}{4\pi \times 10^{14} \mathrm{g cm^{-3}}} \bigg )^{1/3} \approx 20 \mathrm{km}
\end{equation}
which is an order of magnitude apporximation to the radius of a pulsar and is used in the magnetic field calculations. The <mark>canonical neutron star</mark> is defined to have $M \approx 1.4 M_\mathrm{sun}$ and $R \approx 10$ km.

The Sun and many other stars are known to possess roughly dipolar magnetic fields. Stellar interiors are mostly ionized gas and hence good electrical conductors. Charged particles are constrained to move along magnetic field lines and, conversely, field lines are tied to the particle mass distribution. When the core of a star collapses from a size $10^11$ cm to $10^6$ cm, its magnetic flux is conserved and the initial magnetic field strength is multiplied by $10^10$, the factor by which the cross-sectional area falls. An initial magnetic field strength of $B \approx 100$ G becomes $B \approx 10^12$ G after collapse, so young neutron stars should have very strong dipolar fields.
If the magnetic dipole of such a neutron star is inclined by some angle $\alpha > 0$  from the rotation axis, it emits low-frequency electromagnetic radiation. The Larmor formula for the power from an electric dipole is:
\begin{equation}
P_\mathrm{rad} = \frac{2q^2dot{\nu}^2}{3c^3} = \frac{2(q\ddot{r}\mathrm{sin}\alpha)^2}{3c^3} = \frac{2(\ddot{p_{\perp}})^2}{3c^3}
\end{equation}
where $p_\perp$ is the perpendicular component of the electric dipole moment. By analogy, the magnetic dipole radiation from an inclined dipole is
\begin{equation}
\boxed{P_\mathrm{rad} = \frac{2(\ddot{m_\perp})}{3c^3}}
\end{equation}
where $m_\perp$ is the perpendicular component of the magnetic dipole moment. For a uniformly magnetized sphere with radius $R$ and surface magnetic field strangth B, the magnetic diple memnt is $m = BR^3$. If the inclined dipole rotates with angular velocity $\Omega$, then
\begin{equation}
\ddot{m} = \Omega ^2 m_0 \mathrm{exp}(-i\Omega t) = \Omega ^2 m
\end{equation}
and hence, the power can be expressed as
\begin{equation}
P_\mathrm{rad} = \frac{2}{3c^3}(BR^3\mathrm{sin}\alpha)^2\bigg ( \frac{2\pi}{P} \bigg )^4
\end{equation}
where we have expressed $\Omega$ in terms of the pulsar period $P$. This electromagnetic radiation will appear at the very low frequency < 1 kHz. This is so low that it cannot be observed because it does not propagate through the ionized Inter-Stellar Medium. The large power radiated is responsible for pulsar slowdown as it extracts rotational kinetic energy from the neutron star. The absorbed radiation can also light up a surrounding nebula, the Crab nebula for example.

The rotational kinetic energy $E_\mathrm{rot}$ is related to the moment of inertia $I$ by
\begin{equation}
E_\mathrm{rot} = \frac{1}{2}I\Omega ^2 = \frac{2\pi ^2 I}{P^2}
\end{equation}
and thus the moment of inertia for the canonical pulsar can be calculated, giving
\begin{equation}
\boxed{I = \frac{2}{5}MR^2 \approx 10^{38} \hspace{0.1cm} \mathrm{kg m^2}}
\end{equation}

The pulsars that we obesrve today are slowing down gradually (i.e. period derivative is larger than 0). From the obesrved period and period derivative, one can estimate the rate at which the rotational energy is decreasing. By using Equation (10), we obtain
\begin{equation}
\frac{dE_\mathrm{rot}}{dt} = \frac{-4\pi^2 I \dot{P}}{P^3}
\end{equation}

If we use the Equation (10) to estimate $P_\mathrm{rad}$, we can invert Larmor's formula for magnetic dipole radiation to get a lower limit on the surface magnetic field strength, since one does not generally know the inclination angle $\alpha$. By equating expressions (9) and (12) and doing some algebra, one arrives at
\begin{equation}
B > \bigg( \frac{3c^3 I}{8\pi^2 R^6}P\dot{P} \bigg )
\end{equation}

If $B \mathrm{sin}\alpha$ does not change significantly with time, we can estimate a pulsar's age $\tau$ from $P\dot{P}$ by assuming that the pulsar's initial period $P_0$ was much shorter than the current period. Re-expressing Equation (13), this time with an equal sign, gives
\begin{equation}
P\dot{P} = \frac{8\pi^2 R^6 (B\mathrm{sin}\alpha)^2}{3c^3 I}
\end{equation}
that does not change with time. Considering that $PdP = P \dot{P}dt$ and integrating over the pulsar's lifetime gives
\begin{equation}
\int_{P_0}^{P} PdP = \int_0^\tau P\dot{P}dt = P\dot{P}\int_0^\tau dt
\end{equation}

since $P\dot{P}$ is assumed to be constant over time. Therefore,
\begin{equation}
\frac{P^2 - P_0^2}{2} = P\dot{P}\tau
\end{equation}
and the characteristic age, assuming that $P_0^2 \ll P^2$, is
\begin{equation}
\boxed{A = \frac{P}{2\dot{P}}}
\end{equation}
which is a good approximation for the actual age.

## 4.3 Interpolation of Barycenter Data

A table with the barycenter position with respect to the Earth at midnight of every day in 2018 was available. Because our observations did not always take place at midnight, an interpolation of this table was required.
## 4.4 Earth Delay

## 4.5 Barycenter Delay

## 4.6 Period Calculation

## 4.7 Period Derivative Calculation

## 4.8 Summary
