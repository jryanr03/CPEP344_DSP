Name			: JEFF RYAN C. RUAM

Course and Year	: BSCPE 4


I. OBJECTIVES:  

In this laboratory exercise, the students are expected to:  
- Find the FFT of a given sequence.  



II. MATERIALS:  

- Software: MATLAB  



III. PROCEDURES:  

THEORY: 
DFT of a sequence 
 
  ![image](https://github.com/user-attachments/assets/77590f76-8af5-4c50-b94a-f9b6ebf38d6f)





Where N= Length of sequence. 

K= Frequency Coefficient. 

n = Samples in time domain.
 

FFT: -Fast Fourier transform. 

There are two methods. 


1. Decimation in time (DIT ) FFT. 

2. Decimation in Frequency (DIF) FFT. 

Why we need FFT? 

The no of multiplications in DFT = N2. 

The no of Additions in DFT = N (N-1). 

For FFT. 

The no of multiplication = N/2 log 2N. 

The no of additions = N log2 N.






Algorithm: 

Step I : Give input sequence x[n]. 

Step II : Find the length of the input sequence using length command. 

Step III : Find FFT and IFFT using matlab commands fft and ifft. 

Step IV : Plot magnitude and phase response 

Step V : Display the results


FLOWCHART:

![image](https://github.com/user-attachments/assets/473a54fe-f4d3-40ec-8b7e-26c9a72587db)


PROGRAM:  

```matlab
clc; 
clear all; 
close all; 
x = input('Enter the sequence: '); 
N = length(x); 
xK = fft(x, N); 
xn = ifft(xK); 
n = 0:N-1; 
subplot(2, 2, 1); 
stem(n, x); 
xlabel('n -->'); 
ylabel('Amplitude'); 
title('Input Sequence'); 
subplot(2, 2, 2); 
stem(n, abs(xK)); 
xlabel('n -->'); 
ylabel('Magnitude'); 
title('Magnitude Response'); 
subplot(2, 2, 3); 
stem(n, angle(xK)); 
xlabel('n -->'); 
ylabel('Phase'); 
title('Phase Response'); 
subplot(2, 2, 4); 
stem(n, xn); 
xlabel('n -->'); 
ylabel('Amplitude'); 
title('IFFT'); 
```



OUTPUT:  

Input:  
Enter the sequence: [1 2 3 4 5]  

Output:  
x = [1 2 3 4 5]  
N = 5  
xK = [15.0000, -2.5000 + 3.4410i, -2.5000 + 0.8123i, -2.5000 - 0.8123i, -2.5000 - 3.4410i]  
xn = [1 2 3 4 5]  

Output Waveforms:  
![image](https://github.com/user-attachments/assets/0e4f0c9c-96be-484d-a1f5-4c0a06e75b36)



QUESTIONS AND ANSWERS:  

1. Define transform. What is the need for transform  

- A transform is a mathematical operation that converts a signal from one domain 
such as time to another domain such as frequency. Transforms are used to simplify 
the analysis and processing of signals by making their properties easier to understand in a different domain.  

2. Differentiate Fourier transform and discrete Fourier transform  

- Fourier transform is applied to continuous-time signals and produces a continuous 
spectrum. Discrete Fourier transform is used for discrete-time signals and generates a 
discrete set of frequency components.  

3. Differentiate DFT and DTFT  

- Discrete Fourier transform provides a finite set of discrete frequency components for a 
discrete-time signal. Discrete time Fourier transform offers a continuous frequency spectrum for the same discrete-time signal.  

4. What are the advantages of FFT over DFT  

- Fast Fourier transform reduces the number of computations required compared to directly 
calculating the discrete Fourier transform. This makes it faster and more efficient for practical applications.  

5. Differentiate DITFFT and DIFFFT algorithms  

- Decimation in time FFT divides the input sequence into smaller time-domain subsequences for 
processing. Decimation in frequency FFT splits the sequence into smaller frequency-domain subsequences.  

6. What is meant by radix  

- Radix refers to the base used in fast Fourier transform algorithms. For example, radix two FFT 
divides the computation into two parts, while radix four divides it into four parts.  

7. What is meant by twiddle factor and give its properties  

- The twiddle factor is a complex exponential term used in fast Fourier transform computations. 
Its properties include periodicity and symmetry, which help simplify calculations in the algorithm.  

8. How is FFT useful to represent a signal  

- Fast Fourier transform breaks a signal into its frequency components. This makes it easier to 
analyze, filter, or modify the signal in the frequency domain.  

9. Compare FFT and DFT with respect to the number of calculations required  

- Discrete Fourier transform requires a number of operations proportional to the square of the signal 
length. Fast Fourier transform reduces this to a number proportional to the signal length multiplied by the logarithm of the signal length.  

10. How is the original signal reconstructed from the FFT of a signal  

- The original signal is reconstructed using the inverse fast Fourier transform. This reverses the 
frequency domain transformation back to the time domain.  
