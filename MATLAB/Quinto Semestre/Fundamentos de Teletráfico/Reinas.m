function [configuracion,soluciones]=Reinas(n)
    ColumnaReina = perms(1:n);
    soluciones = 0;  
    for i = 1:size(ColumnaReina,1)
        tablero = zeros(n);
        for j = 1:n
            col = ColumnaReina(i,j);
            tablero(j,col) = 1;
        end
        [row,col] = find(tablero);
        DiagonalPrincipal = row + col;
        DiagonalSecundaria = row - col;
        if size(unique(DiagonalPrincipal),1)==n && size(unique(DiagonalSecundaria),1)==n
            soluciones=soluciones+1;
            configuracion(:,:,soluciones)=tablero;
        end
    end
    soluciones
end
