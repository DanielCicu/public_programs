function archivohexmemoria(a,b)
    datos=a:b;
    dir=1:length(datos);
    ult=dec2hex((datos+dir+1).*(-1));
    if length(datos)<8
        ult=ult(:,length(ult(1,:)));
    else
        ult=ult(:,length(ult(1,:))-1:length(ult(1,:)));
    end
    fileID = fopen('memoria2.hex','w');
    datos=dec2hex(datos);
    fprintf(fileID,':0100000000FF\n');
    for i=dir
        if i<16
            formatSpec = ':01000%s00%s%s\n';
            fprintf(fileID,formatSpec,dec2hex(dir(i)),datos(i,:),ult(i,:));
        else
            formatSpec = ':0100%s00%s%s\n';
            fprintf(fileID,formatSpec,dec2hex(dir(i)),datos(i,:),ult(i,:));
        end
    end
    fprintf(fileID,':00000001FF\n');
    fclose(fileID);
end
