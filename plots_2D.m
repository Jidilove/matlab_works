%%
%1
x=[-15:0.1:15];
y=x+1./x.^2;
plot(x,y);
xlabel('x');
ylabel('f(x)');
title('f(x)=1+1/x^2')
%%
%2
x=[-15:0.1:15];
y=2*x./(1+x.^2);
plot(x,y,'r');
xlabel('x');
ylabel('f(x)');
title('Серпантин Ньютона');
%%
%3
x=[-5:0.1:5];
y=(x-2).*sqrt((1+x)./(1-x));
plot(x,y,'m');
%%
%4
x=[-15:0.1:15];
y=log(x.^2-4);
plot(x,y);
%%
%5
x=[-15:0.1:15];
y=sqrt(sin(pi*sqrt(x)));
plot(x,y);
%%
%6
x=[0:0.1:15];
y=(x+abs(x)).*sqrt(x.*(sin(pi*x)).^2);
plot(x,y);
%%
%7
x=[-15:0.1:15];
y=x.*sin(pi*x);
plot(x,y);
%%
%8
a=100;
b=2;
n=4;
k=14;
m=1;
x=[-pi/2:0.05:3*pi/2];
r=a.*(b-sin(k*x)-cos(m*x))./(a+(x-pi/2).^n);
polarplot(x,r);
%%
%9
phi=linspace(0,2*pi*m,200);
x=(1+n/m)*cos(phi*n/m)-a*n/m*cos(1+n/m)*phi;
y=(1+n/m)*sin(phi*n/m)-a*n/m*sin(1+n/m)*phi;
plot(x,y);
%%
%10
phi0=pi/4;
phi=linspace(-pi,pi,200);
x=a*sin(n*phi+phi0);
y=b*sin(m*phi);
polarplot(x,y);
%%
%11
a=1/2;
b=1/3;
m=7;
n=17;
t=linspace(-5,5,500);
x=cos(t)+a*cos(m*t)+b*sin(n*t);
y=sin(t)+a*sin(m*t)+b*cos(n*t);
plot(x,y);
%%
%12
a=1/4;
b=1/16;
m=8;
n=8;
t=linspace(-5,5,300);
x=cos(t)-a*cos(m*t)+b*sin(n*t);
y=sin(t)+a*sin(m*t)+b*cos(n*t);
s=size(x);
k=1:1:s;
plot(x./k,y./k);
%%
%13
n=1;
m=2;
phi0=pi/4;
phi=linspace(0,2*pi,300);
x=sin(m*phi).*cos(n*phi+phi0);
y=sin(m*phi).*sin(n*phi+phi0);
plot(x,y);
%%
%14.7
a=3;
fimplicit(@(x,y)a^3-a^2*y-x.^2.*y,[-10 10 -10 10]);
title('Локон Аньези');
%%
%14.9
r=5;
t=linspace(-5,5,300);
x=6*r*cos(t)-4*r*cos(t).^3;
y=4*r*sin(t).^3;
plot(x,y);
title('Нефроида');
%%
%14.25
a=3;
fimplicit(@(x,y)2*x.^3+2*x.*y.^2-3*a*x.^2+a*y.^2,[-10 10 -10 10]);
title('Трисектриса Маклорена');