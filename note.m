function [x,t]=note(frekans,vurus) 
Fs=8192; %ornekleme frekansı degeri
t=0:1/Fs:((0.25-(1/Fs))/2); %t aralıgı
z=0; %zarf matrisinin ilk degeri
   x=sin(2*pi*frekans*t); %sinyal x e aktarildi
if length(x)==length(z)   %length karsilastirilmasi
       z=[linspace(0,1.5,Fs*vurus*(2/8)),linspace(1.5,1,Fs*vurus*(1/8)),linspace(1,1,Fs*vurus*(4/8)),linspace(1,0,Fs*vurus*(1/8))];%zarf değerlerinin matrisi
end
end