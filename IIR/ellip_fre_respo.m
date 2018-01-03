
Fc = 5000;
Fp = 600;
Fs = 700;
Ap = 0.1;
As = 60;
[N,wp] = ellipord(Fp/Fc,Fs/Fc,Ap,As,'s');
[b,a] = ellip(N,Ap,As,wp);
freqz(b,a,N)

Wp = [700, 950];
Ws = [600, 1050];
[N,wp] = ellipord(Wp/Fc,Ws/Fc,Ap,As,'s');
[b,a] = ellip(N,Ap,As,wp);
figure 
freqz(b,a,N)


Wp = 1000;
Ws = 950;
[N,wp] = ellipord(Wp/Fc,Ws/Fc,Ap,As,'s');
[b,a] = ellip(N,Ap,As,wp,'high');
figure
freqz(b,a,N)
