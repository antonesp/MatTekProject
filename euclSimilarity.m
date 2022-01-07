

%Projekt 2
function eSim=euclSimilarity(xa,xb)
%Funktionen udregner den euklidiske distance mellem 2 vektorer.
%Emil Thorup Kudsk 7.1 2022
%Tjekker for gyldige vektorer

lxa = length(xa);
lxb = length(xb);
if (lxb ~= lxa) || (ischar(xa)) || (ischar(xb))
    disp('Fejl ikke gyldige vektorer')
else
    %En score på 0 andgiver at man ikke har set filmen, og dataene fjernes.
xb(xa==0) = [];
xa(xa==0) = [];

eSim = 1/(1+sqrt(sum((xa-xb).^2)));
end
end



