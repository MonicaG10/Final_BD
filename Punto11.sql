--PUNTO 1
CREATE TYPE number_array AS VARRAY(100) OF INTEGER;

--Se crea la función
CREATE OR REPLACE FUNCTION divisible_sum_pairs(Enteros IN number_array, K IN INTEGER, OUT  ) 
RETURN INTEGER AS 
resultado number;
BEGIN
    IF (1<=K<=100) THEN 
    -- cuerpo
    ELSE
    END IF;
return resultado;
commit;
end;
/
DECLARE
k  number := 0;
Enteros ARRAY := (1,2,3,4,5);
BEGIN
divisible_sum_pairs(k,Enteros);
END;

/
--PUNTO 2
create or replace Function find_digits(n in integer, d in integer, resultado out integer) 
return integer as
    n integer;
    aux integer;
    residuo integer := 0;
    Divisor integer;
    resultado integer;
begin
    n := n;
    aux := n;
    d := d;
    residuo:=0;
    while (aux>0)
    loop
        Divisor:= mod(aux,d);
        residuo := residuo + Divisor;
        aux:=trunc(aux/d);
    end loop;
    
    if n = 0 then
         resultado := residuo;
    else
         dbms_output.put_line('El numero ingresado no es divisor de' || d);    
 end if; 
return resultado;
commit;
end;
/
declare
n number := 12;
d number := 3;
begin
find_digits(n,d);
dbms_output.put_line('resultado: ' || resultado);
end;
/
-- punto 3
create table digits (n integer, pairs integer);

create  or replace procedure CALCULATE_FIND_DIGITS() as
resultado number;
begin
DECLARE 
    CURSOR DIGITO 
    IS
    SELECT N, pairs
    FROM  digits; 
    N integer;
    P integer;
BEGIN
    OPEN DIGITO;
    LOOP
        FETCH DIGITO INTO N,P;
        EXIT WHEN find_digits(N,P);        
    END LOOP; 
    CLOSE DIGITO;
END;
END;
/
