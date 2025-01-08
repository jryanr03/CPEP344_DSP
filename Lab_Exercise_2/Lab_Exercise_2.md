Name			: JEFF RYAN C. RUAM
Course and Year	: BSCPE 4


I.	OBJECTIVES:


In this laboratory exercise, the students are expected to:

-	obtain Linear Convolution of two finite length sequences


II.	MATERIALS:


-	Software: MATLAB


III.	PROCEDURES:


THEORY: 

Convolution is a mathematical operation used to express the relation between 

input and output of an LTI system. It relates input, output and impulse response of an LTI system as 


y(n)=x(n)∗h(n)


Where y (n) = output of LTI 


x (n) = input of LTI 


h (n) = impulse response of LTI 


Discrete Convolution 


y(n)=x(n)∗h(n)


= ![image](https://github.com/user-attachments/assets/2e2d705c-1d5c-4bb1-8902-90335f4afb56)




By using convolution we can find zero state response of the system. 


Algorithm: 

Step I: Give input sequence x[n]. 

Step II: Give impulse response sequence h(n) 

Step III: Find the convolution y[n] using the matlab command conv.

Step IV: Plot x[n],h[n],y[n]


![image](https://github.com/user-attachments/assets/6bb30e41-c6e3-41e4-b143-a3972438d2c0)


 

PROGRAM: 

clc; 

clear all; 

close all; 

x1=input('Enter the first sequence x1(n) = '); 

x2=input('Enter the second sequence x2(n) = '); 

L=length(x1); 

M=length(x2); 

N=L+M-1; 

yn=conv(x1,x2); 

disp(‘The values of yn are= ‘); 

disp(yn); 


n1=0:L-1; 

subplot(311); 

stem(n1,x1); 

grid on; 

xlabel('n1--->'); 

ylabel('amplitude--->'); 

title('First sequence'); 



n2=0:M-1; 

subplot(312); 

stem(n2,x2); 

grid on; 

xlabel('n2--->'); 

ylabel('amplitude--->');

title('Second sequence'); 


n3=0:N-1; 

subplot(313); 

stem(n3,yn); 

grid on; 

xlabel('n3--->'); 

ylabel('amplitude--->'); 

title('Convolved output'); 


-----------------------------------------------------------------------------------------------------------------------------------------------------------------

Output: 

Enter the first sequence x1(n) = [1 2 3 4 5] 

Enter the second sequence x2(n) = [5 8 3 5 4 6] 

The values of yn are= 


5	18	34	55	80	81	59	59	44	30


OUTPUT WAVEFORMS:

![image](https://github.com/user-attachments/assets/ccc13f07-53f7-4aa3-9cf6-c9e0193595d2)


 

RESULT:

VIVA QUESTIONS: 


1. Explain the significance of convolution  

- Convolution is a tool to analyze how a system responds to an input signal by combining two signals. 
It's essential in fields like signal and image processing as it helps study the interaction between signals and systems.  

2. Define linear convolution  

- Linear convolution is the process of merging two signals to see how one modifies the other. 
It provides a combined result, often used to model system outputs in various applications.  

3. Why linear convolution is called as a periodic convolution?  

- Linear convolution and periodic convolution are different concepts. Periodic convolution 
occurs with signals that repeat periodically, such as in Fourier series. Linear convolution works 
with non-repeating signals to analyze their interaction.  

4. Why zero padding is used in linear convolution?  

- Zero padding is applied to ensure the convolution output matches a specific length. It prevents 
signal overlap during processing and maintains accurate results.  

5. What are the four steps to find linear convolution?  

- Reverse one of the signals  
- Shift the reversed signal across the other  
- Multiply the overlapping elements  
- Add the results for each shift  

6. What is the length of the resultant sequence in linear convolution?  

- The length of the output sequence is equal to the sum of the lengths of the two input signals, 
reduced by one. For signals of length M and N, the output has a length of M+N-1.  

7. How linear convolution will be used in calculation of LTI system response?  

- Linear convolution is fundamental in determining the output of an LTI system. By convolving the input 
signal with the system's impulse response, the system's behavior can be accurately predicted.  

8. List few applications of linear convolution in LTI system design  

- Linear convolution is applied in filtering signals, analyzing system performance, processing audio and images, 
and designing communication system responses.  

9. Give the properties of linear convolution  

- Linear convolution is associative, commutative, and distributive. It combines signals based on their 
interaction while preserving the sequence’s linearity.  

10. How the linear convolution will be used to calculate the DFT of a signal?  

- Linear convolution is connected to the DFT through methods like overlap-save or overlap-add. 
These methods use zero padding to perform convolution in the frequency domain efficiently with DFT.  




