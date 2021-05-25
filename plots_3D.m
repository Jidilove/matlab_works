%%
%1
a=input('a=');
b=input('b=');
c=input('c=');
d=input('d=');
u=linspace(-2,2,50);
v=linspace(-2,2,50);
[x,y]=meshgrid(u,v);
z=-(a*x+b*y+d)/c;
plot3(x,y,z);
%%
%2
u=linspace(-5,5,100);
v=linspace(-5,5,100);
[x,y]=meshgrid(u, v);
z=-x.*sin(x)-y.*cos(y);
mesh(x,y,z);
%plot3(x,y,z);
%%
%3.m
u=linspace(0,2*pi,100);
v=linspace(0,5,100);
[U,V]=meshgrid(u,v);
a=2; R=3;
x=(a+R*sin(U)).*cos(V);
y=(a+R*sin(U)).*sin(V);
z=R*cos(U)+a*V;
mesh(x,y,z);
title('Винтовой тор');
%surfc(x,y,z);
%surf(x,y,z);
%%
%4
a=2*pi;
[X,Y]=meshgrid(-1:0.05:1,-1:0.05:1);
R=sqrt(X.^2+Y.^2);
Z=(2*besselj(1,a*R)./R).^2;
surf(X,Y,Z);
set(gca,'Zscale','Log');
%%
%5
t=linspace(0,6*pi,200);
x=sin(t);
y=cos(t);
z=t;
plot3(x,y,z,'r','LineWidth',3);
hold on;
x=-sin(t);
y=-cos(t);
z=t;
plot3(x,y,z,'b','LineWidth',3);
for t1=[0:pi/4:6*pi]
    line([sin(t1) -sin(t1)],[cos(t1) -cos(t1)],[t1 t1],'Color','#7E2F8E','LineWidth',2);
end
%%
%6
[x,y]=meshgrid(-5:0.5:5,-5:0.5:5);
a=2; b=3;
z=x.^2/(2*a^2)-y.^2/(2*a^2);
mesh(x,y,z);
hold on;
for h=[-2:0.2:2]
    t1=[-1:0.5:1];
    x1=a*h/2+a^2*b*t1;
    y1=b*h/2-a*b^2*t1;
    z1=h*a*b*t1;
    plot3(x1,y1,z1);
    x2=a*h/2+a^2*b*t1;
    y2=-b*h/2-a*b^2*t1;
    z2=-h*a*b*t1;
    plot3(x2,y2,z2);
end
hold off;