
%Funktion skrevet 07-01-2022, af Clara og Anton.

function pearsonSim = pearsonSimilarity(xa,xb)

xb(xa==0) = [];
xa(xa==0) = [];
    N = sum((xa-mean(xa)).*(xb-mean(xb)));
    T =(sqrt(sum((xa-mean(xa)).^2)))*(sqrt(sum((xb-mean(xb)).^2)));
    
    pearsonSim = N/T;
  
   
    