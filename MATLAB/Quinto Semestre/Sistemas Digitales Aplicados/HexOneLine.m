function HexOneLine(dir,datos)
%
%HexOneLine(dir,datos)
%
%dir hace referencia a la dirección inicial desde la que se guardarán
%los datos de un vector o la dirección en la que quedará un dato
%
%datos puede ser uno solo o un vector con los datos que se buscan guardar
%en el archivo .hex
%
%El archivo .hex se guardará en la carpeta en la que está la función
    dir=dec2hex(dir,4);
    y1=hex2dec(dir(1,1:2));
    y2=hex2dec(dir(1,3:4));
    ult=dec2hex((length(datos)+sum(datos)+y1+y2)*-1);
    ult=ult(1,length(ult)-1:length(ult));
    fileID = fopen('memoria.hex','w');
    datos=dec2hex(datos,2);
    if length(datos(:,1))<16
        fprintf(fileID,':0%s%s00',dec2hex(length(datos(:,1))),dir);
        else
        fprintf(fileID,':%s%s00',dec2hex(length(datos(:,1))),dir);
    end
    for i=1:length(datos(:,1))
        fprintf(fileID,'%s',datos(i,:));
    end
    fprintf(fileID,'%s\n:00000001FF\n',ult);
    fclose(fileID);
end
