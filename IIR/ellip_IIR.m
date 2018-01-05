clc,clear
st = mstg();

Fc = 5000;
Fp = 600;
Fs = 700;
Ap = 0.1;
As = 60;
[N,wp] = ellipord(Fp/Fc,Fs/Fc,Ap,As,'s');

[b,a] = ellip(N,Ap,As,wp);
a = filter(b,a,st);
subplot(2,2,1);
plot(a,'k')
axis([0 400 -1.5 1.5])

Wp = [700, 950];
Ws = [600, 1050];
[N,wp] = ellipord(Wp/Fc,Ws/Fc,Ap,As,'s');
[b,a] = ellip(N,Ap,As,wp);
a = filter(b,a,st);
subplot(2,2,2);
plot(a,'k')
axis([0 400 -1.5 1.5])


Wp = 1000;
Ws = 950;

[N,wp] = ellipord(Wp/Fc,Ws/Fc,Ap,As,'s');
[b,a] = ellip(N,Ap,As,wp,'high');
a = filter(b,a,st);
subplot(2,2,3)
plot(a,'k');
axis([0 400 -1.5 1.5])

