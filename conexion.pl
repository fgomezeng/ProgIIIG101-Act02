% Hechos: 
conexion(vancouver, edmonton, 16).
conexion(vancouver, calgary, 13).
conexion(edmonton, saskatoon, 12).
conexion(calgary, edmonton, 4).
conexion(calgary, regina, 14).
conexion(saskatoon, calgary, 9).
conexion(saskatoon, t, 20).
conexion(regina, saskatoon, 7).
conexion(regina, winnipeg, 4).

% Reglas:
existeConexion(Origen, Destino):- 
    conexion(Origen, Destino, _).

conectadosDesdeyCosto(Origen, Destino, Costo):-
    conexion(Origen, Destino, Costo).



