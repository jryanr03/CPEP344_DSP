%MATLAB program to plot the frequency response (magnitude and phase response) of a given difference equation. 
clc;
clear all; 
b=input('Enter the numerator coefficients:'); 
a=input('Enter the denominator coefficients:'); 
[h,w]=freqz(b,a); 
subplot(2,1,1); 
plot(w/pi,abs(h)); 
grid; 
xlabel('Normalised Frequency'); 
ylabel('Magnitude in dB'); 
title('Magnitude Response'); 
subplot(2,1,2); 
plot(w/pi,angle(h)); 
grid; 
xlabel('Normalised Frequency'); 
ylabel('phase in radians'); 
title('Phase Response');
