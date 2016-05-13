function res = LU_tridiag(a,b,c,f)
    % Metodo de resolucion LU (Lower Upper) para matrices tridiagonales.
    % Requiere haber utilizado anteriormente LU_tridiag_init para obtener
    % las diagonales de las matrices triangulares necesarias. El init solo
    % hay que ejecutarlo una vez
    % a: diagonal principal en U
    % b: diagonal inferior en L
    % c: diagonal superior en U
    % f: termino independiente
    
    n = length(a);
    
    % Sustitucion hacia delante:
    g = zeros(1,n);
    g(1) = f(1);
    
    for i = 2:n
        g(i) = f(i)-b(i-1).*g(i-1);
    end
    
    % Sustitucion hacia atras
    res = zeros(1,n);
    res(n) = g(n)./a(n);
    for i=n-1:-1:1
        res(i) = (g(i)-c(i).*res(i+1))./a(i);
    end
end