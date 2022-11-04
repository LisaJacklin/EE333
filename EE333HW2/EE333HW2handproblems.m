Nd = 1.3e16;
un = 1350;
up = 480;
ni = 1.5e10;

mcd = ((ni)^2)/Nd;
disp(mcd)
conduct = (1.602e-19)*(Nd^2*un + ni^2*up);
disp(conduct);