Name:  JEFF RYAN C. RUAM

Course and Year:  BSCPE 4


I. OBJECTIVES:  

In this laboratory exercise, the students are expected to:  
- Determine the Power Spectrum of a given signal.  


II. MATERIALS:  

- Software: MATLAB  


III. PROCEDURES:  

THEORY:  
The power spectrum describes how the power of a signal is distributed across different frequencies. It is commonly calculated using the discrete Fourier transform (DFT) or other techniques such as the maximum entropy method. The power spectrum can also be defined as the Fourier transform of the autocorrelation function.  


Algorithm:  

1. Input the sequence x.  
2. Provide the sampling frequency, input frequency, and length of the spectrum.  
3. Calculate the power spectrum of the input sequence using the MATLAB `spectrum` function.  
4. Plot the power spectrum using the `specplot` command.  

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


INPUT:  

Enter the frequency [1 to 5000]: 3000  


OUTPUT WAVEFORM:  

![image](https://github.com/user-attachments/assets/33e7222e-2826-4e56-9043-1b3f887c348f)

 


VIVA QUESTIONS:  

1. Define power signal  

   A power signal is a signal that has finite average power, even if it extends over an 
   infinite duration. The power is computed by averaging the squared magnitude of the signal over time.  

2. Define energy signal  

   An energy signal has finite total energy, but its average power is zero. Its energy is 
   the integral of the squared magnitude of the signal over time.  

3. Define power spectral density of a signal  

   Power spectral density (PSD) is a measure of how a signal's power is distributed across 
   different frequencies. It is obtained by taking the Fourier transform of the signal's autocorrelation function.  

4. How can the energy of a signal be calculated  

   The energy of a continuous signal can be calculated as the integral of the squared magnitude of the signal over time:  
   Energy = ∫ |x(t)|^2 dt.  
   For discrete signals, energy is the sum of squared magnitudes:  
   Energy = Σ |x[n]|^2.  

5. Explain the difference between energy spectral density and power spectral density  

   - Energy Spectral Density (ESD) applies to energy signals and shows how the energy of a 
   signal is distributed across frequency components.  
   - Power Spectral Density (PSD) applies to power signals and shows how the power is distributed across frequencies.  

6. Explain the PSD plot  

   A PSD plot visualizes the distribution of a signal’s power over frequencies. The x-axis typically 
   represents frequency, while the y-axis shows the power magnitude, often in decibels (dB).  

7. What is the importance of PSD  

   PSD is important for analyzing the frequency content of signals, detecting dominant frequency components, and understanding how systems respond to different frequency inputs.  

8. What are the applications of PSD  

   - Signal processing and communication systems  
   - Noise analysis in systems  
   - Speech and audio processing  
   - Vibration and structural health monitoring  

9. Explain the MATLAB function randn(size(n))  

   The `randn(size(n))` function in MATLAB generates a matrix of random numbers drawn from a normal 
   distribution with a mean of 0 and variance of 1. The size of the generated matrix matches the dimensions of `n`.  

10. What is the need to represent the signal in the frequency domain  

   Representing a signal in the frequency domain allows for easier analysis of its frequency components, 
   facilitates filtering of undesired frequencies, and helps understand the signal’s behavior in relation to system responses.
