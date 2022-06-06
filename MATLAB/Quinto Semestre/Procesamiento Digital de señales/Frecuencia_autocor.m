function [fa,v,N]=Frecuencia_autocor(sig,Fs)
    [autoco,n]=xcorr(sig);
    a=1;
    for i=find(n==0):length(autoco)
        if autoco(i)>0 && autoco(i)>autoco(i-1) && autoco(i)>autoco(i+1)
            v(a)=i;
            a=a+1;
        end
    end
    N=v(2)-v(1);
    fa=1/(N*(1/Fs));
end