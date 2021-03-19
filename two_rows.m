function [B,t] =  two_rows(A)
m = size(A);
if(m(1,1)==2 && ndims(A)==2)
    B=A;
    t='';
else
    B=zeros(m(1,1),m(1,2));
    t='массив должен быть двумерным и иметь две строки!'
end
