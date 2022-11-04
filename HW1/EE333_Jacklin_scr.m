% Lisa Jacklin
%EE 333
% 9/6/2022
% Homework 1.9

% Calculate and Plot Carrier Density for Intrinsic Semiconductors
%code from demo!
% Boltzmann's Constant (eV/K)
    k=1.38e-23 / 1.6e-19;
% Energy Gaps (eV)
    Eg_Si   = 1.1;
    Eg_Ge   = 1.4;
    Eg_GaAs = 0.66;
% Constants for Saha Equation (cm-3 K-1.5)
    B_Si   = 5.23e15;
    B_Ge   = 2.10e14;
    B_GaAs = 1.66e15;
% Create Temperature Array
%temperature here is in Kelvin. need celsius
   % Temp = 200:10:500;
   Temp = -55:10:175; %should give Celsius array
% Calculate Carrier Densities
%in each of these equations, I change the temperature to Kelvin
    n_Si   = B_Si   * (Temp+273.15).^1.5 .* exp(-Eg_Si   ./ (2*k*(Temp+273.15)));
    n_Ge   = B_Ge   * (Temp+273.15).^1.5 .* exp(-Eg_Ge   ./ (2*k*(Temp+273.15)));
    n_GaAs = B_GaAs * (Temp+273.15).^1.5 .* exp(-Eg_GaAs ./ (2*k*(Temp+273.15)));
%resistivity calculations!
    R_Si = 1/(1.602e-19*n_Si*1830);
    R_Ge = 1/(1.602e-19*n_Ge*1830);
    R_GaAs = 1/(1.602e-19*n_GaAs*1830);
% Create Plots
    semilogy(Temp,R_Si,Temp,R_Ge,Temp,R_GaAs)
    xlabel('Temperature (K)')
    ylabel('Resistivity (Ohm-cm)')
    grid