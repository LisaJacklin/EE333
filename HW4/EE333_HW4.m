
k = 1.38e-23;
T = 300;
q = 1.60e-19;

Vt = (k*T)/q;
%disp(Vt);

B = 5.23e15;
Eg = 1.1;
kq=1.38e-23 / 1.6e-19;

 Ni  = B* (T).^1.5 .* exp(-Eg ./ (2*kq*(T)));
%disp(Ni);

na = 1e17;
nd = 5e15;
x = (na*nd)/(Ni)^2;

Vbi= Vt * log(x);
%disp(Vbi);

cjo = 0.6;
Vr = 5;
cj = cjo * (1+Vr/Vbi)^-(1/2);
disp(cj);