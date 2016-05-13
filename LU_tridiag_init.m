function [a2,b2] = LU_tridiag_init(a,b,c)
    % Metodo de resolucion LU (Lower Upper) para matrices tridiagonales.
    % LU_tridiag_init para obtiene las diagonales de las matrices
    % triangulares necesarias. Esta funcion solo hay que ejecutarla la
    % primera vez
    % b2: diagonal inferior en L
    %  1: diagonal principal en L
    % a2: diagonal principal en U
    % c: diagonal superior en U
    
    n = length(a);
    
    % Obtencion de las diagonales a y b de U y L (c se queda igual)
    a2 = zeros(1,n);
    b2 = zeros(1,n-1);
    a2(1) = a(1);
    
    for i = 2:n
        b2(i-1) = b(i-1)./a2(i-1);
        a2(i) = a(i)-b2(i-1).*c(i-1);
    end
    
end