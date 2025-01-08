Name			: JEFF RYAN C. RUAM
Course and Year	: BSCPE 4  


I. OBJECTIVES:  

In this laboratory exercise, the students are expected to:  
- Implement HP FIR filter for a given sequence.  


II. MATERIALS:  

- Software: MATLAB  


III. PROCEDURES:  

Algorithm:  
Step I: Enter the pass band frequency (fp) and stop band frequency (fq).  
Step II: Get the sampling frequency (fs), length of window (n).  
Step III: Calculate cut-off frequency.  
Step IV: Use boxcar, hamming, Blackman Commands to design window.  
Step V: Design filter by using above parameters.  
Step VI: Find frequency response of the filter using MATLAB command freqz.  
Step VII: Plot the magnitude response and phase response of the filter.  


Flow Chart:  

![image](https://github.com/user-attachments/assets/e9d17dd8-9240-43b5-a826-d46fa6cf8178)
  


PROGRAM:  

```matlab
clc; 
clear all; 
close all; 
n=20; 
fp=300; 
fq=200; 
fs=1000; 
fn=2*fp/fs; 
window=blackman(n+1); 
b=fir1(n,fn,'high',window); 
[H W]=freqz(b,1,128); 
subplot(2,1,1); 
plot(W/pi,abs(H)); 
title('mag res of lpf'); 
ylabel('gain in db->'); 
xlabel('normalized frequency-->'); 
subplot(2,1,2); 
plot(W/pi,angle(H)); 
title('phase res of lpf'); 
ylabel('angle >'); 
xlabel('normalized frequency-->'); 
```


Expected Waveforms:  

![image](https://github.com/user-attachments/assets/2bc2f9a4-190d-4d89-b6ac-fa72a4264bd2)



VIVA QUESTIONS:  

1. What is a filter  

- A filter is a system that modifies an input signal to produce an output by allowing specific frequencies 
to pass while reducing or blocking others.  

2. Differentiate analog filter and digital filter  

- Analog filter operates on continuous-time signals and is built using electronic components like resistors, 
capacitors, and inductors. Digital filter operates on discrete-time signals and processes them using algorithms on digital systems.  

3. Define FIR filter  

- A finite impulse response filter is a digital filter characterized by having a finite-duration impulse response and no feedback in its structure.  

4. What are the differences between recursive and non-recursive systems  

- Recursive systems use feedback to compute the output, meaning past outputs contribute to 
the current output. Non-recursive systems do not use feedback and rely only on the current and past input values.  

5. List a few applications of FIR filters  

- FIR filters are used in audio processing, image enhancement, communication systems, and biomedical signal analysis.  

6. Explain advantages of FIR filters over IIR filters  

- FIR filters are inherently stable, provide linear-phase response, and are straightforward to design and implement in digital systems.  

7. Explain limitations of FIR filters  

- FIR filters require higher computational resources due to their longer filter order for achieving the same performance as IIR filters.  

8. What are the different methods to design FIR filters  

- Common methods include the windowing technique, frequency sampling method, and least squares method.  

9. Explain different window functions  

- Rectangular window applies equal weighting across all samples but causes high side lobes. Hamming window 
reduces side lobes with a smoother weighting. Blackman window provides even better side lobe suppression by applying more tapered weighting.  

10. Differentiate rectangular, triangular, and Kaiser windows  

- Rectangular window applies uniform weighting, leading to poor selectivity and high side lobes. Triangular 
window uses a linear taper, improving smoothness at the cost of moderate selectivity. Kaiser window offers 
flexibility to balance between main lobe width and side lobe suppression.  
  
