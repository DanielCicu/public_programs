function [senal,angules]=SnellLaw(direccion,medios,indiceMedios,espesores,angulo)
    if medios==length(indiceMedios) && length(espesores)==medios
       angulo=deg2rad(angulo);
       angulos=[];
       angulos(1)=angulo;
       Ms=[];
       Ms(1)=tan(angulo);
       for i=1:length(indiceMedios)
            if i<length(indiceMedios)
               angulo2=asin((indiceMedios(i)/indiceMedios(i+1))*sin(angulo));
               if imag(angulo2)==0
                  angulo=angulo2;
                  angulos(i+1)=angulo2;
                  Ms(i+1)=tan(angulo);
               else
                   angulos(i+1)=angulo;
                   Ms(i+1)=tan(angulo);
                   i=length(indiceMedios);
               end
            end
       end
       if direccion==1
            Ms=-Ms;
       end
       
       y=[];
       y(1)=0;
       x=zeros(1,length(espesores)+1);
       suma=0;
    %
    for i=1:length(Ms)
        y(i+1)=Ms(i)*sum(espesores(1:i))+suma;
        x(i+1)=sum(espesores(1:i));
        suma=suma+y(i+1);
    end
    plot(x,y)
    hold on
    grid on
    %
    angules=rad2deg(angulos);
    senal=[x;y];
    end
end