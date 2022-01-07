
function predictedScore = moviePredictions(movieRatings,predictionType)

%Dato 07-01-2022 af Anton og Clara
%size andgiver matrixens længde og bredde som en vektor A x B

mBL = size(movieRatings);

mL = mBL(1);
mB = mBL(2);

%Vi opstiller 2 tomme vektorer som vi kan putte simularitet ind i senere
simVekP = [];
simVekE = [];

%Vores simularitets funktioner modtager 2 vektorer som input, vi gør derfor
%brug af loops til at trække vektorende ud af film matrixen.
for i =1:mL
    v1 = movieRatings(i,:);
    
    for j = 1:mL
       
        v2 = movieRatings(j,:);  
    
        
        simVekP(end+1) = pearsonSimilarity(v1,v2);
        simVekE(end+1) = euclSimilarity(v1,v2);
        
    end
     
end

%simVek omdannes til matrixer dan funktionen predictAverage er lavet til at
%arbejde med matrixer.

simMatP = reshape(simVekP,mL,mL);
simMatE = reshape(simVekE,mL,mL);

%if bruges til at bestemme hvilken type simularitet skal bruges.
if predictionType == 1
    predictedScore = predictAverage(mB,mL,simMatP,movieRatings);
    
else
    predictedScore = predictAverage(mB,mL,simMatE,movieRatings);
end

%Til sidst finder vi filmen med den højeste forudsigelse til hver bruger.
[M,I] = max(predictedScore,[],2);

for i =1:mL
    fprintf('Vi forventer at %0d bedst ville kunne lide film %0d\n',i,I(i));
   
end
end



            

