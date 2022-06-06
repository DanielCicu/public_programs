clear
clc

M = 16;
x = (0:M-1)';
y = qammod(x,M);
scatterplot(y)
grid on

%% Desfases con leve desplazamiento en ciertos ángulos, corregido

desfases=rad2deg(angle(y));
amplitudes=abs(y)/3.3;
tabla=table(desfases,amplitudes);

% desfases=round(desfases);
% for i=1:length(desfases)
%     if desfases(i)>0
%         falla(i)=mod(desfases(i),15);
%     else
%         falla(i)=mod(desfases(i),-15);
%     end
%     falla=transpose(falla);
%     if falla(i)~=0
%         if falla(i)>0
%             if abs(falla(i))>7.5
%                 desfases(i)=desfases(i)+3;
%             else
%                 desfases(i)=desfases(i)-3;
%             end
%         else
%             if abs(falla(i))>7.5
%                 desfases(i)=desfases(i)-3;
%             else
%                 desfases(i)=desfases(i)+3;
%             end
%         end
%         
%     end
% end


%%

