fs = 8192; %frekansin orneklemesi
pause = fs * (1/100); %pause degeri
octave_value = 0;
notalar = {}; %notalar dizissi
dosya = fopen('notalar.txt'); %notalar text dosyasinin acilmasi
[nota , oktav , olcu] = textread('notalar.txt' , '%s%d%s' , 'delimiter' , ',') %txt deki deðerlerin okunmasi
fclose( dosya ) ; %dosya kapatma

    for j = 1 : length ( oktav ) %txtdeki tum oktavlari gez
        oktav ( j ) =oktav ( j ) + octave_value ; %eski oktava degistirme degerini ekle
    end

	for i = 2:length(nota)

ff=frek ( nota{i} , oktav(i) ) ; %alinan nota ve oktavlar icin frek fonksiyonunun cagirilmasi
[xx,t] = note (ff , olcu{i} ) ; %note fonksiyonun çaðýrýlmasý
plot (t , ff , pause ) 
plot (t , ff , echo , t , pause ) 
sound ( echo )%sesi cal

	end