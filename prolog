%los hechos muestra la caracteristica del objeto 
% los hechos muestran la relacion entre objetos
% !!!!no usar mayusculas !!!!!
es_alumno(jose).
es_planeta(marte).
es_planeta(tierra).
mas_grande(jupiter,marte).
mas_grande(marte,venus).
mas_grande(venus,mercurio).

%reglas

%regla q permite que jupiter sea mas grande que mercurio
mucho_mas_grande(A,C):-mas_grande(A,B) , mas_grande(B,C).
doble_mas_grande(A,D):-mucho_mas_grande(A,C) ,  mas_grande(C,D).

%ejemplo1
es_padre(andres).
es_padre(jose).
padre_de(andres,jose).
padre_de(jose,mariano).
padre_de(jose,raul).
%reglas
hijo_de(B,A):-padre_de(A,B).
abuelo_de(A,C):-padre_de(A,B),padre_de(B,C).
hermano_de(B,C):-es_padre(A),padre_de(A,B),padre_de(A,C).
pariente_de(A,B):-padre_de(A,B);hijo_de(A,B);hermano_de(A,B);abuelo_de(A,B);nieto_de(A,B).
nieto_de(B,A):-abuelo_de(A,B).
