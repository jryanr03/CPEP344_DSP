Name			: JEFF RYAN C. RUAM
Course and Year	: BSCPE 4


I.	OBJECTIVES:


In this laboratory exercise, the students are expected to:

-	compute auto correlation between two sequences

II.	MATERIALS:


-	Software: MATLAB



III.	PROCEDURES:


THEORY: 


Auto Correlation Function 

Auto correlation function is a measure of similarity between a signal & its time delayed version. It is represented with R(k). 

The auto correlation function of x(n) is given by 


R11(k)=R(k)= ![image](https://github.com/user-attachments/assets/32cc254b-0fce-455b-859b-705c666c8e42)




Algorithm: 

Step I : Give input sequence x[n]. 


Step II : Give impulse response sequence h (n) 

Step III: Find auto correlation using the matlab command xcorr. 

Step IV: Plot x[n], h[n], z[n]. 

Step V: Display the results



Flow Chart: 

![image](https://github.com/user-attachments/assets/f41b607c-fbb3-47cf-a362-3a70b4e3a2df)

 

PROGRAM: 

clc; 

close all; 

clear all; 

% two input sequences 

x=input('enter input sequence') 

subplot(1,2,1); 

stem(x); 

xlabel('n'); 

ylabel('x(n)'); 

title('input sequence'); 

% auto correlation of input sequence 

z=xcorr(x,x); 

disp(‘The values of z are = ‘);disp(z); 

subplot(1,2,2); 

stem(z); 

xlabel('n'); 

ylabel('z(n)'); 

title('auto correlation of input sequence'); 



Output: 



enter input sequence [1 2 3 4]

z = [3.99, 11, 20, 30, 20, 11, 3.99]



OUTPUT WAVEFORMS:

![image](https://github.com/user-attachments/assets/162a2808-359f-4843-bc86-c8b46796e9f9)

 
RESULT: 

VIVA QUESTIONS:

1. Write the mathematical formula to find auto-correlation  

- The formula for auto-correlation is:  
  Rxx[k] = Σ x[n] * x[n-k],  
  where x[n] is the signal and k is the lag.  

2. Define auto-correlation  

- Auto-correlation is a method to measure how a signal relates to a delayed version of itself. 
It is useful for identifying patterns, repetitions, or periodicity in the signal.  

3. Define correlation  

- Correlation is a mathematical technique used to assess the relationship or similarity between 
two signals or datasets in terms of their shape and timing.  

4. What is the difference between auto-correlation and convolution  

- Auto-correlation compares a signal with itself to identify repeating patterns or periodic features,
 while convolution combines two signals to evaluate their interaction, often used for system responses.  

5. What is the difference between auto-correlation and cross-correlation  

- Auto-correlation involves comparing a signal with itself, while cross-correlation evaluates the 
similarity between two different signals to determine their relationship or alignment.  

6. Write the mathematical formula to find cross-correlation  

- The formula for cross-correlation is:  
  Rxy[k] = Σ x[n] * y[n-k],  
  where x[n] and y[n] are the two signals being compared.  

7. What is the length of the resultant sequence of auto-correlation  

- The length of the result from auto-correlation is 2N - 1, where N is the length of the original signal.  

8. List a few applications of correlation  

- Correlation is applied in signal detection, synchronization, pattern recognition, speech 
processing, and determining time delays between signals.  

9. Give the properties of auto-correlation  

- Auto-correlation is symmetric (Rxx[k] = Rxx[-k]), has its maximum value at zero lag (Rxx[0]), 
and its value at zero lag represents the signal’s total energy.  

10. Define cross-correlation  

- Cross-correlation is a process to measure the degree of similarity between two signals as one 
is shifted in time relative to the other. It is useful for finding time lags and aligning signals.  
