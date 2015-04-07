SELECT 
    alias, SUM(premio) AS premios
FROM
    jugador
        JOIN
    (SELECT 
        jugador_idjugador1, jugador_idjugador2, premio
    FROM
        pareja
    JOIN (SELECT 
        idPareja1, idPareja2, SUM(premio/2) AS premio
    FROM
        partida
    WHERE
        torneo_idtorneo IS NULL
    GROUP BY idPareja1 , idPareja2) AS Ppremio ON pareja.idPareja = ppremio.idPareja1
        OR pareja.idPareja = ppremio.idPareja2) AS jpremio ON jugador.idjugador = jpremio.jugador_idjugador1
        OR jugador.idjugador = jpremio.jugador_idjugador2
GROUP BY idJugador
order by premios limit 1;