%% Projekt 2
function eSim=euclSimilarity(xa,xb)
%Funktionen udregner den euklidiske distance mellem 2 vektorer.
%Emil Thorup Kudsk 7.1 2022

xb(xa==0) = [];
xa(xa==0) = [];

eSim = 1/(1+sqrt(sum((xa-xb).^2)));


