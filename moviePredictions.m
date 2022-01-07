
function predictedScore = moviePredictions(movieRatings,predictionType)

%size andgiver matrixens længde og bredde som en vektor A x B

mBL = size(movieRatings);

mL = mBL(1);
mB = mBL(2);

simVekP = [];
simVekE = [];

for i =1:mL
    v1 = movieRatings(i,:);
  
    
    for j = 1:mL
       
        v2 = movieRatings(j,:);  
        
        simVekP(end+1) = pearsonSimilarity(v1,v2);
        simVekE(end+1) = euclSimilarity(v1,v2);
        
    end
     
end

simMatP = reshape(simVekP,mL,mL);
simMatE = reshape(simVekE,mL,mL);

if predictionType == 1
    predictedScore = predictAverage(mB,mL,simMatP,movieRatings);
    
else
    predictedScore = predictAverage(mB,mL,simMatE,movieRatings);
end

[M,I] = max(predictedScore,[],2);

for i =1:mL
    fprintf('Vi forventer at %0d bedst ville kunne lide film %0d\n',i,I(i));
   
end
end



            

