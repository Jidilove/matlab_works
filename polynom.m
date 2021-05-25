%%
%1
P=[1 -3.55 5.1 -3.1];
x=linspace(0,2,100);
F=polyval(P,x);
plot(x,F); grid on;
%%
%2.a
P=[1 0.1 0.2 -0.2 -2 1];
R=roots(P)
Y=polyval(P,R);
a=max(abs(R));
x=linspace(-a,a,100);
F=polyval(P,x);
subplot(2,1,1);
plot(x,F); grid on;
hold on;
plot(R,Y,'r*');
%касательная:
x1=1/2*a;
dP1=polyval(polyder(P),x1);
y1=polyval(P,x1)+dP1*(x-x1);
plot(x,y1);
plot(x1,polyval(P,x1),'b*');
%нормаль:
x2=-1/2*a;
dP2=polyval(polyder(P),x2);
y2=polyval(P,x2)-1/dP2*(x-x2);
plot(x,y2);
plot(x2,polyval(P,x2),'y*');
hold off;
%{
нельзя построить окружность
по трем точкам, лежащим на одной
прямой, уже пришли к противоречию
%}
%%
%4.1
p=input('Введите коэфициенты полинома [an an-1 ... a0]: ');
x0=input('Введите точку: ');
p1=polyder(p);
a=p(1); a1=p1(1);
for k=2:1:length(p)
    a=x0*a+p(k);
end
for k=2:1:length(p1)
    a1=x0*a1+p1(k);
end
a
a1
%%
%6.1
f=[1 0 0];
%f=[1 3];
%f=[1 0 0];
g=conv([1 -1],conv([1 2],[1 3]));
%g=conv([1 -1],[1 0 1]);
%g=[1 0 0 -1];
[r,p,k]=residue(f,g);
syms x;
pol=poly2sym(k);
for j=1:1:length(r)
    pol=pol+r(j)/(x-p(j));
end
pol
%%
%7.2
x=1:1:100;
y=x.^(-1);
xq=1:0.5:100;
vq=interp1(x,y,xq,'spline')
plot(xq,vq);
%%
%7.4
x=[-1 0 1 2 3];
y=[6 5 0 3 2];
xq=-1:0.2:3;
vq=interp1(x,y,xq,'spline')
plot(xq,vq);