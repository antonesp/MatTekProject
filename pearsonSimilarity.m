
function pearsonSim = pearsonSimilarity(xa,xb)
    N = sum((xa-mean(xa)).*(xb-mean(xb)));
    T =(sqrt(sum((xa-mean(xa)).^2)))*(sqrt(sum((xb-mean(xb)).^2)));
    
    pearsonSim = N/T;
  
   
    