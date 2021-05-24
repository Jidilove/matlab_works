%%
%1
syms x;
f=x^5+4*x^4-2*x^3-14*x^2-3*x-18;
factor(f)
%%
%2.3
syms x;
f=atan((1-x)^(-1));
limit(f,x,1,'right')
%%
%3.3
syms x;
f=(sin(3*x)-cos(3*x))^2;
simplify(diff(f))
%%
%4.3
syms x;
f=(sin(2*x)+1)^(1/7)*cos(2*x);
int(f)
%%
%5.3
syms x n;
symsum(x^n,n,0,Inf)
%%
%6.3
syms x;
n=10;
f=sin(x)^2;
taylor(f,x,0,'Order',n)
%%
%7
syms x;
f=exp((1-x^2)^(-1))/(1+x^2);
ezplot(f,-7,7);
hold on;
ezplot('y+0*x=0');
ezplot('0*y+abs(x)=1');
hold off;
%%
%8
x=linspace(-5,5,500);
y=sin(x)./(x.^2+1);
maxdot=islocalmax(y);
mindot=islocalmin(y);
plot(x,y,x(maxdot),y(maxdot),'r*',x(mindot),y(mindot),'r*');
%%
%9
syms t u;
x=t*cos(u)^2;
y=t^2*cos(u)*sin(u);
z=t^3*sin(u);
dx=diff(x,u);
dy=diff(y,u);
dz=diff(z,u);
ddx=diff(x,2,u);
ddy=diff(y,2,u);
ddz=diff(z,2,u);
dddx=diff(x,3,u);
dddy=diff(y,3,u);
dddz=diff(z,3,u);
k=sqrt(det([dy dz;ddy ddz])^2+det([dx dz;ddx ddz])^2+det([dx dy;ddx ddy])^2)/sqrt((dx^2+dy^2+dz^2)^3);
cruch=det([dx dy dz; ddx ddy ddz; dddx dddy dddz])/(det([dy dz;ddy ddz])^2+det([dz dx;ddz ddx])^2+det([dx dy;ddx ddy])^2);
simplify(k)
simplify(cruch)