fs=8192; %örnekleme frekansý
duraklama=fs*(1/100); %duraklama deðerinin tanýmalnasý
oktav_degeri=0;
notalar={}; %notalar dizisi oluþturdum
dosya=fopen('notalar.txt'); %notalar.txt dosyasýný okumak açar.
[nota,oktav,olcu]=textread('notalar.txt','%s%d%s','delimiter',',')%notalar.txt deki deðerleri okur
fclose(dosya);%dosyayý kapatýr.

    for j=1:length(oktav) %txt ten çektiðimiz bütün oktavlar için.
        oktav(j)=oktav(j)+oktav_degeri; %degistirme deðerini eski oktava ekle.
    end


for i=2:length(nota)
ff=frek(nota{i},oktav(i)); %Çektiðimiz  nota ve oktav deðerleri için frek fonksiyonun çaðýrýlmasý
[xx,t]=note(ff,olcu{i}); %note fonksiyonun çaðýrýlmasý
plot(t,ff,duraklama) 
plot(t,ff,echo,t,duraklama) 
sound(echo)%sesi çalmak için.
end