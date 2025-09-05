% Hechos: 
conexion(vancouver, edmonton, 16).
conexion(vancouver, calgary, 13).
conexion(edmonton, saskatoon, 12).
conexion(calgary, edmonton, 4).
conexion(calgary, regina, 14).
conexion(saskatoon, calgary, 9).
conexion(saskatoon, winnipeg, 20).
conexion(regina, saskatoon, 7).
conexion(regina, winnipeg, 4).

% Reglas:
existeConexion(Origen, Destino):- 
    conexion(Origen, Destino, _).

conectadosDesdeyCosto(Origen, Destino, Costo):-
    conexion(Origen, Destino, Costo).

tieneAristas(K):- 
    conexion(K, _, _).

viajeConCosto(Origen, Destino, CostoTotal):-
    conexion(Origen, Intermedia, Costo1),
	conexion(Intermedia, Destino, Costo2),
	CostoTotal is Costo1 + Costo2. 

%Caso base es el viaje directo (segunda regla)
%Caso recursivo (viaje con escalas)
conectadosDesdeyCosto(Origen, Destino, CostoTotal):-
    conexion(Origen, Intermedio, Costo1),
    conectadosDesdeyCosto(Intermedio, Destino, Costo2),
    CostoTotal is Costo1 + Costo2.






