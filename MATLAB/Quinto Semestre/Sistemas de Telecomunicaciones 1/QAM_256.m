clear
clc
for i=1:256
   bin(i,:)=dec2bin(i-1,8);
end
for j=1:8
    for i=1:256
        bin1(i,j)=str2double(bin(i,j));
    end
end