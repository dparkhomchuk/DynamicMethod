function [rez,f,yd] = integral(cor,y,bord,N,arr)
krok = (bord(2)-bord(1))/N;
rez = zeros(0,0);
f = zeros(0,0);
yd = zeros(0,0);
for j = 1:1:length(arr)-1
f(j)=0;
for i = 1:1:N 
rez(j,i) = cor(arr(j),i*krok)*krok;
yd(i,1) = y(i*krok + bord(1));
end    
end
f = rez*yd;
end

