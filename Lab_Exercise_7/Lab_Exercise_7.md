Name			: JEFF RYAN C. RUAM
Course and Year	: BSCPE 4


I. OBJECTIVES:  

In this laboratory exercise, the students are expected to:  
- Implement LP FIR filter for a given sequence.  


II. MATERIALS:  

- Software: MATLAB  


III. PROCEDURES:  

THEORY:  
FIR filters are digital filters with finite impulse response. They are also known as non-recursive digital filters as they do not have the feedback.  

An FIR filter has two important advantages over an IIR design:  
Firstly, there is no feedback loop in the structure of an FIR filter. Due to not having a feedback loop, an FIR filter is inherently stable. Meanwhile, for an IIR filter, we need to check the stability.  

Secondly, an FIR filter can provide a linear-phase response. As a matter of fact, a linear-phase response is the main advantage of an FIR filter over an IIR design otherwise, for the same filtering specifications, an IIR filter will lead to a lower order.  

FIR FILTER DESIGN:  
An FIR filter is designed by finding the coefficients and filter order that meet certain specifications, which can be in the time-domain (e.g., a matched filter) and/or the frequency domain (most common). Matched filters perform a cross-correlation between the input signal and a known pulse-shape. The FIR convolution is a cross-correlation between the input signal and a time-reversed copy of the impulse-response. Therefore, the matched-filter's impulse response is "designed" by sampling the known pulse-shape and using those samples in reverse order as the coefficients of the filter.  

When a particular frequency response is desired, several different design methods are common:  
1. Window design method  
2. Frequency Sampling method  
3. Weighted least squares design  

WINDOW DESIGN METHOD:  
In the window design method, one first designs an ideal IIR filter and then truncates the infinite impulse response by multiplying it with a finite length window function. The result is a finite impulse response filter whose frequency response is modified from that of the IIR filter.  

![image](https://github.com/user-attachments/assets/61c84252-984d-4b95-9cc3-1a472162d12c)


Algorithm:  

Step I : Enter the pass band frequency (fp) and stop band frequency (fq).  
Step II : Get the sampling frequency (fs), length of window (n).  
Step III : Calculate the cut off frequency, fn  
Step IV : Use boxcar, hamming, blackman Commands to design window.  
Step V : Design filter by using above parameters.  
Step VI : Find frequency response of the filter using matlab command freqz.  
Step VII : Plot the magnitude response and phase response of the filter.  


Flow Chart:  

![image](https://github.com/user-attachments/assets/980d8f47-157b-429b-af5c-3587c5900374)


PROGRAM:  

clc;  
clear all;  
close all;  
n=20;  
fp=200;  
fq=300;  
fs=1000;  
fn=2*fp/fs;  
window=blackman(n+1);  
b=fir1(n,fn,window);  
[H W]=freqz(b,1,128);  
subplot(2,1,1);  
plot(W/pi,abs(H));  
title('magnitude response of lpf');  
ylabel('gain in db->');  
xlabel('normalized frequency-->');  
subplot(2,1,2);  
plot(W/pi,angle(H));  
title('phase response of lpf');  
ylabel('angle >');  
xlabel('normalized frequency-->');  


EXPECTED WAVEFORMS:  

![image](https://github.com/user-attachments/assets/18083c10-4660-4d07-81d3-a0914a2834e7)


VIVA QUESTIONS:  

1. Define filter  

- A filter is a system or device designed to process a signal by removing unwanted components 
or features, such as noise, while allowing desired components to pass.  

2. What are the different types of filters  

- Filters are classified as low-pass filter, high-pass filter, band-pass filter, band-stop filter, and all-pass filter.  

3. Why are FIR filters generally preferred over IIR filters in multirate systems  

- Finite impulse response filters are preferred because they ensure linear phase and are inherently 
stable, which is crucial for applications involving decimation and interpolation.  

4. Difference between IIR and FIR filters  

- Infinite impulse response filters use feedback, are more computationally efficient, but can be 
unstable. Finite impulse response filters do not use feedback, are always stable, and provide a linear phase response.  

5. Differentiate ideal filter and practical filter responses  

- An ideal filter has a perfect cutoff and transition, which is not achievable in reality. A practical 
filter closely approximates the ideal response with a gradual transition between passband and stopband.  

6. What is the filter specifications required to design the analog filters  

- Specifications for analog filter design include passband frequency, stopband frequency, passband ripple, 
stopband attenuation, and the sampling frequency.  

7. What is meant by frequency response of filter  

- Frequency response describes how a filter modifies the amplitude and phase of signals at different frequencies.  

8. What is meant by magnitude response  

- Magnitude response indicates the amount of gain or attenuation a filter applies to signals at various frequencies.  

9. What is meant by phase response  

- Phase response shows how the filter shifts the phase of signals at different frequencies, which affects the timing of the waveform.  

10. Difference between FIR low pass filter and high pass filter  

- A low-pass filter allows frequencies below a certain cutoff to pass while attenuating higher frequencies. 
A high-pass filter allows frequencies above a certain cutoff to pass while attenuating lower frequencies.  
  
