clear
clc
cant=0;
theta = 1:360;
x2 = 30*cos(deg2rad(theta)) + 40;
y2 = 30*sin(deg2rad(theta)) + 40;
n=1000000;
for j=1:n
    cont=0;
    xcmon = randi([15,1985]);
    ycmon = randi([15,985]);
    if 15<=mod(xcmon,40) && mod(xcmon,40)<40
        xcmon=mod(xcmon,40);
    elseif 0<=mod(xcmon,40) && mod(xcmon,40)<15
        xcmon=mod(xcmon,40)+40;
    end
    if 15<=mod(ycmon,40) && mod(ycmon,40)<40
        ycmon=mod(ycmon,40);
    elseif 0<=mod(ycmon,40) && mod(ycmon,40)<15
        ycmon=mod(ycmon,40)+40;
    end
    x1 = 15*cos(deg2rad(theta)) + xcmon;
    y1 = 15*sin(deg2rad(theta)) + ycmon;
    for i=1:360
       if (x1(i)-40)^2+(y1(i)-40)^2 <900
          cont=cont+1;
       end
    end
    if cont==360
       cant=cant+1;
    end
end
disp(['La probabilidad es del ',num2str(round((cant/n)*100,2)),'% o del ', num2str(round(cant/n,4))])