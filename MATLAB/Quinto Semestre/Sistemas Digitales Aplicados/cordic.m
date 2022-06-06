function cordic(n,angulo)
    xin=1;
    yin=0;
    signo=1;
    x=zeros(1,n);
    y=zeros(1,n);
    z=zeros(1,n);
    x(1)=xin+1*signo*(2^0)*yin;
    y(1)=yin+1*signo*(2^0)*xin;
    if angulo>0
        z(1)=angulo-1*signo*rad2deg(atan(2^0));
    else 
        z(1)=-angulo-1*signo*rad2deg(atan(2^0));
    end
    for i=1:n
        if z(i)<0
            signo=-1;
        else
            signo=1;
        end
        x(i+1)=x(i)-signo.*(2^(-i)).*y(i);
        y(i+1)=y(i)+signo*(2^(-i)).*x(i);
        z(i+1)=z(i)-signo.*rad2deg(atan(2^(-i)));
    end
    coseno=x(n)*0.6072
    if angulo>0
        seno=y(n)*0.6072
    else
        seno=-y(n)*0.6072
    end
    tangente=seno/coseno
end