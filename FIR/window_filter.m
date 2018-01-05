clc,clear
xt = xtg;
fcut = 130;
fc = 1000;
b = fir1(40,fcut/(fc/2),'low');
a =  filter(b,1,xt);
subplot(1,2,1)
plot(a,'k','LineWidth',1)
axis([0 500 -2 2])

dft_signal = fft(a);
subplot(1,2,2)
plot(abs(dft_signal),'k')

figure
freqz(b,1)