function [y]= func2_a(x)
global alp tit;
tit='y=\itx^{\alpha}*ln(x)';
y=x.^alp.*log(x);
end