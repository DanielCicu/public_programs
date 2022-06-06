function result = convolucionar(x,h,t)
    sizeofx=numel(x);
    sizeofh=numel(h);
    sizeoft=numel(t);
    step=(abs(t(1))+t(numel(t)))/(numel(t)-1)

    if sizeofx==sizeofh && sizeofx==sizeoft
        disp('Su convolucion sera calculada:')
        result=step*conv(x,h,'same');
    else 
         disp('Entradas de diferentes dimensiones, No hay salida:')
         result=0;
    end
end