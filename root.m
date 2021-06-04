%%
%1
a=input('Введите параметр a: ');
f=fzero(@(x)x.^2-a,0.5)
%roots([1 0 -a])
%%
%2
a=-3; b=3;
m=100; x=linspace(a,b,m);
f='x.^2+2*x-1-sin(x)';
plot(x,eval(f),x,0*x,':'); grid on;
xlabel('x'); ylabel('y');
z=ginput(1);
[zr,fr]=fzero(f,z(1));
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*')
hold off;
%%
%3.c
a=0; b=4*pi;
m=300; x=linspace(a,b,m);
f='x.*sin(x)-cos(x)';
plot(x,eval(f),x,0*x,':'); grid on;
xlabel('x'); ylabel('y');
z=ginput(1);
[zr,fr]=fzero(f,z(1));
hold on;
plot(zr,fr,'r*',z(1),z(2),'g*');
hold off;
%%
%4
f1=fzero(@(x1)x1.^2+1,0)
syms x;
f=x^2+1==0;
f2=solve(f,x)
%убедился, что fzero не находит комплексные корни.
%%
%5
x1=linspace(-1,1,100);
f1=cos(x1)-exp(0.001+x1.^2);
plot(x1,f1); grid on;
[zr,fr]=fzero(@(x)cos(x)-exp(x.^2+1/1000),0);
zr
syms x2;
f2=cos(x2)-exp(0.001+x2^2)==0;
a=solve(f2,x2)
%функция не имеет решений
%%
%Численные методы решения уравнений;
%1
a=-5; b=5;
m=300; xv=linspace(a,b,m);
h=0.02; iter=10; esp=0.01;
f=@(x)1+x.*sin(x);
yv=f(xv);
graf=plot(xv,yv,xv,0*xv,':'); grid on
hold on
ylim([-4 3]);
xlim([-5 5]);
z=ginput(1); x1=z(1);
fl=0;
for i=1:1:iter
    fpr=(f(x1+h)-f(x1))/h;
    x2=x1-f(x1)/fpr;
    t=f(x1);
    f1=@(x)t+fpr*(x-x1);
    y1=f1(xv);
    plot(xv,y1,x1,0,'b*',x2,0,'r*');
    line([x2 x2],[0 f(x2)],'LineStyle','--','Color','g');
    if abs(f(x2))<esp
        fl=1;
        break;
    end
    x1=x2;
end
if fl==0
    delete(graf);
    disp('End iteration');
end