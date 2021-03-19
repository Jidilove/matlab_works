
%% 
m1=rand(4,3);
m2=rand(3,4);
m1(1:3,:)
m2(:,1:3)
det(m1*m2)
%% 
n=input('');
a=rand(n,1);
b=rand(1,n);
a*b
b*a
det(a*b);
0 %its true
%% 
A=rand(5,3);
B=rand(2,3);
Z=zeros(5,2);
E=eye(2);
C=[A Z; B E];
C(:,5)
%% 
A=rand(6,3);
B=A(1:3,1:3);
det(B)
if det(B)~=0
    Bobr=inv(B);
end
B*Bobr
%% 
A=rand(3,5);
B=A(:,1:3)
det(B)
B(1,1:3)=B(2,1:3);
B
det(B)
%% 
A=randi(10,20,20);
b=eig(A);
b=sort(b)
%%
n=4;
A=rand(n);
[V,D]=eig(A)
A*V
V*D
%%
%n=input();
n=randi(10,1,1);
v1=ones(n-1,1);
v2=-2*ones(n,1);
A=diag(v2)+diag(v1,-1)+diag(v1,1);
B=zeros(n);
B(1,n)=1;
B(n,1)=1;
D=[A B;B A]
%%
A=rand(8)
x=max(A)
y=max(A')
z=max(x)
k=1;
for i=1:8
    for j=1:8
        if A(i,j)>0.2;
            B(k,1)=i;
            B(k,2)=j;
            k=k+1;
        end;
    end;
end;
B