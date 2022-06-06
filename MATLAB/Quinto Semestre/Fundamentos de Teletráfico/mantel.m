vertices=zeros(1176,3);
cont=1;
for i=1:49
   for j=1:24
       vertices(cont,1)=cont;
       vertices(cont,2)=4*i;
       vertices(cont,3)=4*j;
       cont=cont+1;
   end
end
