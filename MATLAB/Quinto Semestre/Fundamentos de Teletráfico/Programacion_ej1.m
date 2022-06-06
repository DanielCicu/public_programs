%Punto 1
a=1:9;
b=perms(a);
conteo=0;
valores=zeros(1,5);

for i=1:362880
    valores(1)=b(i,1)+b(i,2);
    valores(2)=b(i,2)+b(i,3)+b(i,4);
    valores(3)=b(i,4)+b(i,5)+b(i,6);
    valores(4)=b(i,6)+b(i,7)+b(i,8);
    valores(5)=b(i,8)+b(i,9);
    if valores(1)==valores(2) && valores(2)==valores(3) && valores(3)==valores(4) && valores(4)==valores(5)
        conteo = conteo+1;
    end 
end
conteo

%Punto 2
n=5000;
a=randi([0,6],n,2);
a=unique(a,'rows');
c=zeros(28,2);
iterador=1;
for i=1:length(a)
    if a(i,1)>=a(i,2)
        c(iterador,1)=a(i,1);
        c(iterador,2)=a(i,2);
        iterador = iterador + 1;
    end
end
c=unique(c,'rows');
veces=0;
columna_1=0;
columna_2=0;
for i=length(c):-1:1
    if i>1
        columna_1=c(i,1);
        columna_2=c(i,2);
        for p= i-1:-1:1
            if columna_1==c(p,1)|| columna_2==c(p,2)
                veces= veces + 1;
            end
        end
    end
end
veces