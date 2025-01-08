

Name:  SHAIRA SENDAD

Course and Year:  BSCPE-4

---

I. OBJECTIVES:  

In this laboratory exercise, the students are expected to:  
- Determine the Power Spectrum of a given signal.  

---

II. MATERIALS:  

- Software: MATLAB  

---

III. PROCEDURES:  

THEORY:  
The power spectrum describes how the power of a signal is distributed across different frequencies. It is commonly calculated using the discrete Fourier transform (DFT) or other techniques such as the maximum entropy method. The power spectrum can also be defined as the Fourier transform of the autocorrelation function.  

---

Algorithm:  

1. Input the sequence x.  
2. Provide the sampling frequency, input frequency, and length of the spectrum.  
3. Calculate the power spectrum of the input sequence using the MATLAB `spectrum` function.  
4. Plot the power spectrum using the `specplot` command.  

---
FLOWCHART:

![image](https://github.com/user-attachments/assets/c9cbf11d-5e35-48e5-9569-dd39219bccdd)



PROGRAM:  

```matlab
clc; 
clear all; 
close all; 
N = 1024; 
fs = 8000; 
f = input('Enter the frequency [1 to 5000]: '); 
n = 0:N-1; 
x = sin(2 * pi * (f / fs) * n); 
pxx = spectrum(x, N); 
specplot(pxx, fs); 
grid on; 
xlabel('Frequency (Hz)'); 
ylabel('Magnitude (dB)'); 
title('Power Spectrum of x(n)'); 
```

---

INPUT:  

Enter the frequency [1 to 5000]: 3000  

---

OUTPUT WAVEFORM:  

![image](https://github.com/user-attachments/assets/33e7222e-2826-4e56-9043-1b3f887c348f)

 

---

VIVA QUESTIONS:  

1. Define power signal.  
A power signal is a signal with finite average power over an infinite duration. The power is calculated as the squared magnitude of the signal averaged over time.  

2. Define energy signal.  
An energy signal is a signal with finite energy but zero average power. Its total energy is the sum of the squared magnitudes of the signal over time.  

3. Define power spectral density of a signal.  
The power spectral density (PSD) describes how the power of a signal is distributed across various frequency components. It is the Fourier transform of the autocorrelation function of the signal.  

4. How can the energy of a signal be calculated?  
The energy of a signal can be calculated by integrating the square of the signal's magnitude over time:  
Energy = ∫ |x(t)|^2 dt for continuous signals  
Energy = Σ |x[n]|^2 for discrete signals  

5. Explain the difference between energy spectral density and power spectral density.  
- Energy spectral density (ESD) shows the energy distribution of a signal over frequency and applies to energy signals.  
- Power spectral density (PSD) shows the power distribution of a signal over frequency and applies to power signals.  

6. Explain the PSD plot.  
A PSD plot shows the distribution of a signal's power across various frequency components. The x-axis represents frequency, while the y-axis represents power magnitude, typically in decibels (dB).  

7. What is the importance of PSD?  
PSD is essential for analyzing the frequency content of signals, identifying dominant frequency components, and understanding the behavior of systems in the frequency domain.  

8. What are the applications of PSD?  
- Signal processing and communication  
- Noise analysis  
- Speech and audio analysis  
- Vibration and structural analysis  

9. Explain the MATLAB function randn(size(n)).  
The MATLAB function `randn(size(n))` generates a matrix of random numbers with a normal distribution (mean 0, variance 1) matching the dimensions of `n`.  

10. What is the need to represent the signal in the frequency domain?  
Representing a signal in the frequency domain helps analyze its frequency components, detect periodicities, filter unwanted frequencies, and understand system behavior more effectively.

