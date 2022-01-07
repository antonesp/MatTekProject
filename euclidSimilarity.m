function Es = euclidSimilarity(xa,xb)
Es = 1/(1+sqrt(sum((xa-xb).^2)));
disp(Es)
end

