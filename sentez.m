fs=8192; %�rnekleme frekans�
duraklama=fs*(1/100); %duraklama de�erinin tan�malnas�
oktav_degeri=0;
notalar={}; %notalar dizisi olu�turdum
dosya=fopen('notalar.txt'); %notalar.txt dosyas�n� okumak a�ar.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',',')%notalar.txt deki de�erleri okur
fclose(dosya);%dosyay� kapat�r.

    for j=1:length(oktav) %txt ten �ekti�imiz b�t�n oktavlar i�in.
        oktav(j)=oktav(j)+oktav_degeri; %degistirme de�erini eski oktava ekle.
    end


for i=2:length(nota)
ff=frek(nota{i},oktav(i)); %�ekti�imiz  nota ve oktav de�erleri i�in frek fonksiyonun �a��r�lmas�
[xx,t]=note(ff,olcu{i}); %note fonksiyonun �a��r�lmas�
plot(t,ff,duraklama) 
plot(t,ff,echo,t,duraklama) 
sound(echo)%sesi �almak i�in.
end