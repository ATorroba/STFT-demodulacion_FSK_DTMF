%% Problema 2
clear 

%% Numero 1
load telef1;
%%
L=181;
f1=704;
f2=792;
f3=872;
f4=956;
f5=1224;
f6=1368;
f7=1512;
% Eleccion de la ventana
w=hamming(L);
nfft=2*L;
spectrogram(telef(1:7100),w,0,nfft,fs)
[S,F,T] = spectrogram(telef,w,0,nfft,fs);
S=abs(S);
%% Calculo de los bines de la FTT.
k1=round((nfft*f1)/fs);
k2=round((nfft*f2)/fs);
k3=round((nfft*f3)/fs);
k4=round((nfft*f4)/fs);
k5=round((nfft*f5)/fs);
k6=round((nfft*f6)/fs);
k7=round((nfft*f7)/fs);
%%
[a,b]=size(S);
vect1=zeros(1,b);
vect2=zeros(1,b);
for n=1:b
    [Max,Pos1]=max([S(k1,n),S(k2,n),S(k3,n),S(k4,n)]);
    [Max,Pos2]=max([S(k5,n),S(k6,n),S(k7,n)]);
    vect1(n)=Pos1;
    vect2(n)=Pos2;
 end
for n=1:length(vect1)
    if(vect1(n)==1)
        if(vect2(n)==1)
            numero1(n)='1';
        elseif(vect2(n)==2)
            numero1(n)='2';
        elseif(vect2(n)==3)
            numero1(n)='3';
        end
    elseif(vect1(n)==2)
        if(vect2(n)==1)
            numero1(n)='4';
        elseif(vect2(n)==2)
            numero1(n)='5';
        elseif(vect2(n)==3)
            numero1(n)='6'; 
        end
    elseif(vect1(n)==3)
        if(vect2(n)==1)
            numero1(n)='7';
        elseif(vect2(n)==2)
            numero1(n)='8';
        elseif(vect2(n)==3)
            numero1(n)='9'; 
        end
     elseif(vect1(n)==4)
        if(vect2(n)==1)
            numero1(n)='#';
        elseif(vect2(n)==2)
            numero1(n)='0';
        elseif(vect2(n)==3)
            numero1(n)='*';
        end
    end

end
numero1



%% Numero 2
load telef2;

[S,F,T] = spectrogram(telef,w,0,nfft,fs);
%%
[a,b]=size(S);
vect3=zeros(1,b);
vect4=zeros(1,b);
for n=1:b
    [Max,Pos3]=max([S(k1,n),S(k2,n),S(k3,n),S(k4,n)]);
    [Max,Pos4]=max([S(k5,n),S(k6,n),S(k7,n)]);
    vect3(n)=Pos3;
    vect4(n)=Pos4;
 end
for n=1:length(vect3)
    if(vect3(n)==1)
        if(vect4(n)==1)
            numero2(n)='1';
        elseif(vect4(n)==2)
            numero2(n)='2';
        elseif(vect4(n)==3)
            numero2(n)='3';
        end
    elseif(vect3(n)==2)
        if(vect4(n)==1)
            numero2(n)='4';
        elseif(vect4(n)==2)
            numero2(n)='5';
        elseif(vect4(n)==3)
            numero2(n)='6'; 
        end
    elseif(vect3(n)==3)
        if(vect4(n)==1)
            numero2(n)='7';
        elseif(vect4(n)==2)
            numero2(n)='8';
        elseif(vect4(n)==3)
            numero2(n)='9'; 
        end
     elseif(vect3(n)==4)
        if(vect4(n)==1)
            numero2(n)='#';
        elseif(vect4(n)==2)
            numero2(n)='0';
        elseif(vect4(n)==3)
            numero2(n)='*';
        end
    end

end
numero2











