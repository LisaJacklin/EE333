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
   Temp = 40; %should give Celsius array
% Calculate Carrier Densities
%in each of these equations, I change the temperature to Kelvin
    n_Si   = B_Si   * (Temp+273.15).^1.5 .* exp(-Eg_Si   ./ (2*k*(Temp+273.15)));
    n_Ge   = B_Ge   * (Temp+273.15).^1.5 .* exp(-Eg_Ge   ./ (2*k*(Temp+273.15)));
    n_GaAs = B_GaAs * (Temp+273.15).^1.5 .* exp(-Eg_GaAs ./ (2*k*(Temp+273.15)));
disp(n_Si)