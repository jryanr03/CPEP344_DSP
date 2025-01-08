clc; 
close all;
% two input sequences 
x=input('enter input sequence');
subplot(1,2,1); 
stem(x); 
xlabel('n'); 
ylabel('x(n)'); 
title('input sequence'); 
% auto correlation of input sequence 
z=xcorr(x,x); 
disp('The values of z are = ');disp(z); 
subplot(1,2,2); 
stem(z); 
xlabel('n'); 
ylabel('z(n)'); 
title('auto correlation of input sequence'); 

