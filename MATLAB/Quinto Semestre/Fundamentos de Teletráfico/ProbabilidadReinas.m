function [config, probabilidad]=ProbabilidadReinas(n)
    [Casosfavorables,~]=Reinas(n);
    config=Casosfavorables;
    Casostotales=(factorial(n^2)/factorial((n^2)-n));
    probabilidad=Casosfavorables/Casostotales;
    probabilidad=unique(probabilidad);
    probabilidad=probabilidad(2);
    probabilidad
end