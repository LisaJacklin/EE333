%Lisa Jacklin
%EE 333 HW 2.6
%9/12/2022

%part 1: plot the diode current as a function...

%ideal factor?

Is = 1*10^-12;  % diode reverse saturated current
q = 1.602*10^-19;    % electron charge
K = 1.38*10^-23; %Boltzmann constant
T = 300;    % Absolute temperature
fs=100;
dv=1/fs;
v0=0.5 ;
vend=0.8;
Vd=v0:dv:vend;


Id = Is*(exp((q*Vd)./(1.65*K*T))-1);
plot(Vd,Id) ; 
semilogx(Vd) %this should show the yaxis for current 
grid ;
xlabel(' Diode Voltage in V ' ) ;
ylabel(' Diode Current in Amp. ')