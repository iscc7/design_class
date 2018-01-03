clc,clear
xt = xtg()
f = [12 150];
fc = 1000;
As = 60;
Ap = 0.1;
a = [1 0];
dev = [(10^(Ap/20)-1)/(10^(Ap/20)+1)  10^(-As/20)];
[n,fo,ao,w] = firpmord(f,a,dev,fc);
b = firpm(n,fo,ao,w);
signal = filter(b,1,xt);
subplot(1,2,1)
plot(signal)
subplot(1,2,2)
plot(abs(fft(signal)))