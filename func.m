function [y]= func(x)
global par tit;
tit='y=\ite^{-par*x^2}*cos(x^2)';
y=exp(-par*x.^2).*cos(x.^2);
end
