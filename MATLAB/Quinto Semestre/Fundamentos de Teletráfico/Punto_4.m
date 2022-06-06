f=zeros(1,10);
b=zeros(1,10);
casos=0;
for i=1:9
        if i<=6
           b(i)=1; 
        end
        f(i)=1;
end
n=10000000;
for j=1:n
    aciertos=0;
    for i=1:4
        if randi(90)<=75
            a=randi(10);
            if f(a)==1
                aciertos=aciertos+1;
            end
        else
            c=randi(10);
            if b(c)==1
                aciertos=aciertos+1;
            end
        end
    end
    if aciertos==4
        casos=casos+1;
    end
end
Probabilidad=casos/n;
disp(['La probabilidad de acertar los 4 penales es del ',num2str(round(Probabilidad*100,2)),'% o del ', num2str(round(Probabilidad,4))])
    