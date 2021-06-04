function [matr]= blocks(n,m)
A=ones(n,m);
B=zeros(n,m);
matr=[A B;B A];
end