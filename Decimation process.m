clc;
clearall;
closeall;

disp('Let us take a sinusoidal sequence which has to be decimated: ');
fm=input('Enter the signal frequency fm: ');
fs=input('Enetr the sampling frequnecyfs: ');
 T=input('Enter the duration of the signal in seconds T: ');
dt=1/fs;
 t=dt:dt:T;
M=length(t);
 m=cos(2*pi*fm*t);

r=input('Enter the factor by which the sampling frequency has to be reduced r: ');
md=decimate(m,r);

figure(1);
subplot(3,1,1);
plot(t,m);
grid;
xlabel('t-->');
ylabel('Amplitude-->');
title('Sinusoidal signal before sampling');

subplot(3,1,2);
stem(m);
grid;
xlabel('n-->');
ylabel('Amplitudes of m -->');
title('Sinusoidal signal after sampling before decimation');

subplot(3,1,3);
stem(md);
grid;

title('Sinusoidal after decimation');
xlabel('n/r-->');
ylabel('Amplitude of md-->');
