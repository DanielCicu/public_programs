clear
clc
% syms f1 f2 x a b n integral derivada media varianza gx
% fx=4*x-3;
% gx=(x^2)/3;
% a=-1;
% b=2;
% f2=fx*gx;
% media=int(f2,a,b)
% f2=(fx^2)*gx;
% integral=int(f2,a,b);
% varianza=integral-(media^2)

% % % % Chebyshev
% syms media varianza k
% media=900;
% varianza=2500;
% desviacion=sqrt(varianza);
% P(-4<X<20)
% k=solve(media+k*desviacion==20,k)
% Prob=1-(1/(k^2))
% P(|x-8|>=6)
% x>=14 ; x<=2 ;; P(x<=2, 14<=x)
% hallar por complemento 1-P(2 < x < 14)
% k=solve(media+k*desviacion==1100,k)
% Prob=1-(1/(k^2))
% compProb=1-Prob

% syms x func n
% func=(exp(-5)*(5^x))/factorial(x);
% F2 = symsum(func,x,1,8)
% vpa(F2)

% clear
% clc
% syms fun lambda x t r
% lambda=2;
% r=10;
% x=2;
% fun=lambda*exp(-lambda*x);
% exponencial=vpa(int(fun,5,inf));
% sol=vpa(solve(int(fun,0,t)==0.9,t));
% Erlang=((lambda^r)*(x^(r-1))*exp(-lambda*x))/factorial(r-1)
% integer=vpa(int(Erlang,30,inf));

clear
clc
syms fxy x y

fxy=1/y;
fun=vpa(int(int(fxy,y,(0.5-x),1),x,0,1/4)+int(int(fxy,y,x,1),x,1/4,1))

% clear 
% clc
% a=207;
% b=2000; 
% x=[(b*b+a*b)*(a+b) (a-b)*(b*b+a*b)+(a*b-b*b)*(b+a) (a*b-b*b)*(a-b)+(-b*b-a*b)*(b+a) (a-b)*(-b*b-a*b)+(b*b-a*b)*(b+a) (b*b-a*b)*(-b+a)]; 
% A=x/x(1);
% B=((a*a*a)/x(1)).*[1 4 6 4 1];
% h=tf(B,A,0.001); 
% freqz(h,1)
%%
% clear
% clc
% 
% alta=0.01;
% media=0.04;
% baja=0.95;

% x=bits con distorsión alta
% y=bits con distorsión media

% P(1,1)=baja^3;
% P(1,2)=(alta*(baja^2))*3;
% P(1,3)=((alta^2)*baja)*3;
% P(1,4)=alta^3;
% 
% P(2,1)=(media*(baja^2))*3;
% P(2,2)=(alta*baja*media)*6;
% P(2,3)=(media*(alta^2))*3;
% P(2,4)=0;
% 
% P(3,1)=(baja*(media^2))*3;
% P(3,2)=(alta*(media^2))*3;
% P(3,3)=0;
% P(3,4)=0;
% 
% P(4,1)=media^3;
% P(4,2)=0;
% P(4,3)=0;
% P(4,4)=0;
% 
% for i=1:4
%     P(5,i)=sum(P(:,i));
%     P(i,5)=sum(P(i,:));
% end
% P(5,5)=sum(P(5,:))==sum(P(:,5));