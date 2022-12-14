%% Problema 1
clear
load('incognita.mat')
%%
L=fs/Vbit;
% Eleccion de la ventana
w=hamming(L);
nfft=2*L;
spectrogram(incognita(1:500),w,0,nfft,fs)
[S,F,T] = spectrogram(incognita,w,0,nfft,fs);
S=abs(S);
%% Calculo de los bines de la FTT. Wk=2*pi*Fk; Wk=w/T=w*fs;
%%wk=2*pi*K/nfft => k=wk*nfft/2*pi; k= Wk*(1/fs)*nfft/2*pi;
%%k=2*pi*Fk*nfft/fs*2*pi; k=nfft*Fk/fs;
k0=round((nfft*f0)/fs);
k1=round((nfft*f1)/fs);
%%
[a,t]=size(S)
vect=zeros(t,8);
for n=1:t
    [Max,Pos]=max([S(k0,n),S(k1,n)]);
    vect(n)=Pos-1;
 end

poema=bin2txt(vect)






