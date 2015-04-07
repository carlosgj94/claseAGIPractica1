SELECT 
    idjugador, nombre, apellidos, contador
FROM
    jugador
        JOIN
    (SELECT 
        jugador_idjugador1, jugador_idjugador2, contador
    FROM
        pareja
    JOIN (SELECT 
        pareja_idpareja, COUNT(pareja_idpareja) AS contador
    FROM
        juego
    GROUP BY pareja_idpareja) AS pganadas ON pareja.idpareja = pganadas.pareja_idpareja) AS parejaG ON jugador.idjugador = parejaG.jugador_idjugador1
        OR jugador.idjugador = parejaG.jugador_idjugador2;