function ff=frek(note,octave)  
notelar={'Do','Dod','Re','Mib','Mi','Fa','Fad','Sol','Sold','La','Sib','Si','Sus'}; %notalarin dizi icine atilmasi
flag=16.35;  %do notesının 0.oktavdaki degerine atanmasi
if nargin<2 %argümanların sayısı 2 den küçük ise
     octave=4; %oktav 4
end

       for i=1:length(notelar) %aldığımız note ile dizinin içindeki hangi notenın eşit olduğunu anlamk için döngü kurdum.
           
              if strcmp(note,notelar{i})%note ve dizinin i. elemanı bir birine eşit ise
                  ff=2^octave*(2^((i-1)/12)*flag);%frekansin hesaplanmasi

                  if strcmp(note,notelar{13})%Dur susa esitse
                      ff=0; %frekansın 0 a esitlenmesi
         
              

           
       end
       
    end
     
end

end