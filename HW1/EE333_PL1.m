%EE333_demo02.m
%J. Hawkins
%2012-09-06
    clear all       %clears all variables from workspace 

% Demonstration program to illustrate calculations with phasors using
% complex numbers

% Generates plot of Current versus Frequency for series RLC circuit

% define constants for circuit elements
    V = 1;           % amplitude of phasor voltage (phase is zero)
    R = 5;
    L = 4E-3;
    C = 1E-7;
    
% build arrays to plot
    F = [1E3 : 1E2 : 1E5]; 	% creates frequency vector; 100 Hz increments
    XL = 2*pi*F*L;            % inductive reactance vector
    XC = 1 ./ (2*pi*F*C);     % capacitive reactance vector
    Z  = R + j*(XL - XC);     % series impedance vector
    I  = abs (V ./ Z);        % absolute value of current vector
    
% plot I versus F with linear scales
    plot(F, I)
    xlabel('Frequency (Hz)')
    ylabel('Current (A)')
    axis tight           % sets axis limits to the range of data  
    grid                 % adds gridlines to plot
    
% You can also try the following plot commands to look at the data with
% Log X and Log-Log axes... which one best illustrates the desired the
% behavior of the resonant circuits?
%     semilogx(F,I)
%     loglog(F,I)
%     grid
