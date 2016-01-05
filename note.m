%%harmonik dizi tanimlamasi ve frekans orneklemesi
function [xx,t]=note(ff,olcu) 
fs=8192; %frekansin orneklenmesi
harmonikx=0;
harmonik={1,0.8,0.4,0.1}; %harmonik dizisi tanımlanması
t=0:1/olcu:olcu-(1/fs); %t araliğinin hesaplanması.
%%Her harmonik degeri icin uzerine toplayip ekleme
for h=1:length(harmonik)%Her harmoniğin hesaplanması için kurduğum döngü
   xx=harmonik{h}*sin(2*pi*ff*t); %Harmonik hesaplama
   harmonikx=harmonikx+x;% Her değer için toplayıp üzerine ekleme

end
%%sinyalin zarflanmasi
   z1=linspace(0,1.5,length(t)/4);
   z2=linspace(1.5,1,length(t)/8);
   z3=linspace(1,1,length(t)/2);
   z4=linspace(1,0,length(t)/8);
   zarf=[z1 z2 z3 z4];
   xx=topla.*zarf; %Harmoniklendikten sonra sinyalin zarflanması
end