function ff=frek(nota,oktav)  
notalar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notaları dizi içine atadım.
flag=16.35;  %do notasının 0.oktavdaki değerini atadım.
if nargin<2 %argümanların sayısı 2 den küçük ise
     oktav=4; %oktavı 4 e eşitle
end

       for i=1:length(notalar) %aldığımız nota ile dizinin içindeki hangi notanın eşit olduğunu anlamk için döngü kurdum.
           
              if strcmp(nota,notalar{i})%Alınan nota ve dizinin i. elemanı bir birine eşit ise
                  ff=2^oktav*(2^((i-1)/12)*flag);%Frekansı hesapladım.

                  if strcmp(nota,notalar{13})%eğer değer Sus a eşit ise
                      ff=0; %frekansı 0 a eşitledim.
         
              

           
       end
       
    end
     
end

end