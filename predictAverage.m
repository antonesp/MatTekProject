function predAv = predictAverage(bredde,lende,simMatrix,filmMatrix)

sSimMatrix = sort(simMatrix,2,'descend');

predAv = zeros(bredde,lende);

for i = 1:bredde
    vekS = sSimMatrix(i,:);
    vek = simMatrix(i,:);
    
    tal = vekS(2:4);
    
    position = [find(vek==tal(1),1),find(vek==tal(2),1),find(vek==tal(3),1)];
    
    samRat = filmMatrix(position(1),:)+filmMatrix(position(2),:)+filmMatrix(position(3),:);
    
    ratVek = samRat/3;
    
    predAv(i,:) = ratVek;
    
    
    
    
end
   
end