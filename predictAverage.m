function predAv = predictAverage(bredde,lende,simMatrix,filmMatrix)
%Funktionen forudsiger hvad en person vil rate en film, ud fra
%gennemsnittet af de brugere hvis ratings er tættest personens.
% Input: Brede og længde af filmMatricen. Matrix med similariteterne og
% matrix med ratings.
%Output: Matrix med de forudsagte ratings

%Forfattere: Anton Espholm og Clara Hollenbeck
%Dato: 7-1-2022

sSimMatrix=sort(simMatrix,2,'descend');%Sorterer simMatrix fra størst til mindst
predAv = zeros(lende,bredde);

for i=1:lende
    vekS=sSimMatrix(i,:); %Laver en vektor ud fra række i i sSimMatrix
    vek = simMatrix(i,:); %Laver en vektor ud fra række i i simMatrix
    tal=vekS(2:4); %Laver en vektor med tallene fra plads 2-4 i vekS
    
    %Index med positionerne for de højeste similariteter i vek.
    position = [find(vek==tal(1),1), ind(vek==tal(2),1),find(vek==tal(3),1)];
    
    %Udregner den gennemsnitlige rating af filmene for bruger i.
    samRat = filmMatrix(position(1),:)+filmMatrix(position(2),:)+filmMatrix(position(3),:);
    ratVek=samRat/3;
    
    %Ratingerne sættes sammen til en matrix.
    predAv(1,:)=ratVek;
end
    
end