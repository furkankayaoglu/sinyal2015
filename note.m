function [x,t] = note(f,olcu)

 %% not fonksiyonu

    fs = 8192; % ornekleme frekansi
    a = 1;
    topla = 0;
    harmonik = {1 0.8 0.4 0.1}; % harmonik dizisi
    t = 0:1/fs:olcu-(1/fs); %t aral???

 %% gercege yakin ses elde etme
 
    for h = 1:length(harmonik)
       x = harmonik{h}*sin(2*pi*f*t*a); %harmonigi hesapla
       topla = topla+x; % harmonikleri topla
       a = a+1;
    end
    
 %% vektorleri olustur
 
    % z1 => 0'dan t aralýðýnýn çeyreðine kadar 5 eleman oluþtur 
    z1 = linspace(0,1.5,length(t)/4);
    z2 = linspace(1.5,1,length(t)/8);
    z3 = linspace(1,1,length(t)/2);
    z4 = linspace(1,0,length(t)/8);

    zarf = [z1 z2 z3 z4];

    x = topla.*zarf;
       
end