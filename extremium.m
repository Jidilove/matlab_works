%%
%1.a
global par tit;
par=input('Введите переменную par: ');
x=[0:0.05:10];
y=func(x);
plot(x,y);
title(tit);
grid on;
hold on;
[x1, y1]=ginput(2);
plot(x1(1,1),func(x1(1,1)),'b*');
plot(x1(2,1),func(x1(2,1)),'b*');
[xmin,ymin]=fminbnd(@func,x1(1,1),x1(2,1));
plot(xmin,ymin,'r*');
hold off;
%%
%2.a
global alp tit;
fl=1;
x=[0:0.02:1];
title(tit);
hold on;
while fl==1
    alp=input('Введите параметр alp: ');
    y=func2_a(x);
    plot(x,y);
    grid on;
    [xmin,ymin]=fminbnd(@func2_a,0,1);
    plot(xmin,ymin,'r*');
    str='alp='+ string(alp);
    text(xmin,ymin,str);
    fl=input('Если хотите продолжить введите 1, иначе 0: ');
end
hold off;