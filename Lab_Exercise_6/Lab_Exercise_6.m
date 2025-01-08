clc;            % Clear the command window
clear all;      % Clear variables from the workspace
close all;      % Close all open figures

% Parameters
N = 1024;        % Number of samples
fs = 8000;       % Sampling frequency
f = input('Enter the frequency [1 to 5000]: '); 

% Validate the frequency range
if f < 1 || f > 5000
    error('Frequency must be between 1 and 5000 Hz.');
end

% Generate the sinusoidal signal
n = 0:N-1; 
x = sin(2*pi*(f/fs)*n);

% Compute the Power Spectrum
[pxx, f_axis] = periodogram(x, [], N, fs); % Empty window argument uses default rectangular

% Convert magnitude to decibels and plot on a log scale
figure('Color', [0.8 0.8 0.8]); % Set a light gray background
semilogy(f_axis, pxx, 'r', 'LineWidth', 1.5); % Red curve with log y-axis
grid on;
set(gca, 'GridColor', [0.5 0.5 0.5], 'GridAlpha', 0.7); % Custom grid color
xlabel('Frequency (Hz)', 'FontSize', 12, 'FontWeight', 'bold');
ylabel('Magnitude (dB)', 'FontSize', 12, 'FontWeight', 'bold');
title('Power Spectrum of x(n)', 'FontSize', 14, 'FontWeight', 'bold');
xlim([0, fs/2]); % Limit frequency axis to Nyquist frequency