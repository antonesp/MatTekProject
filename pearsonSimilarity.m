
%Funktion skrevet 07-01-2022, af Clara og Anton.

function pearsonSim = pearsonSimilarity(xa,xb)

%Tjekker for gyldige vektorer
lxa = length(xa);
lxb = length(xb);
if (lxb ~= lxa) || (ischar(xa)) || (ischar(xb))
    disp('Fejl ikke gyldige vektorer')
else
%En score på 0 andgiver at man ikke har set filmen, og dataene fjernes.
xb(xa==0) = [];
xa(xa==0) = [];
    N = sum((xa-mean(xa)).*(xb-mean(xb)));
    T =(sqrt(sum((xa-mean(xa)).^2)))*(sqrt(sum((xb-mean(xb)).^2)));
    
    pearsonSim = N/T;
end
end

  
   
    