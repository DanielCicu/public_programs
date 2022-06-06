% 
% moneda(ancho,largo)
% 
% Para calcular la probabilidad de que la moneda caiga dentro de la mesa
% inserte el largo y el ancho de la misma en metros, el cálculo se realiza
% considerando que cada cuadro del mantel es de 4 centímetros
function probabilidad=moneda(ancho, largo)
    y=(ancho*100)/4;
    x=(largo*100)/4;
%     CASOS EN LOS QUE LA MONEDA CAE EN UN CUADRO 
    c1=x*y;
%     CASOS EN LOS QUE LA MONEDA CAE EN DOS CUADROS, PRIMERO QUE 
%     COINCIDAN DE FORMA VERTICAL Y LUEGO QUE COINCIDAN DE FORMA HORIZONTAL
    cv=x*(y-1);
    ch=(x-1)*y;
    c2=cv+ch;
%     CASOS EN LOS QUE LA MONEDA CAE EN TRES CUADROS
    c3=4*(x-1)*(y-1);
%     CASOS EN LOS QUE LA MONEDA CAE EN CUATRO CUADROS (FAVORABLES)
    c4=(x-1)*(y-1);
%     CASOS TOTALES CONSIDERANDO QUE LA MONEDA EXISTE Y CAE DENTRO DE LA
%     MESA
    ct=c1+c2+c3+c4;
%     PROBABILIDAD DE QUE LA MONEDA CAIGA EN CUATRO CUADROS
    probabilidad=c4/ct
end