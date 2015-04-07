SELECT 
    idJugador,
    COUNT(JUGADOR_idJugador & JUGADOR_idJugador1) AS NumAmigos
FROM
    jugador
        LEFT JOIN
    amistad ON JUGADOR_idJugador = idJugador
        OR JUGADOR_idJugador1 = idJugador
GROUP BY idJugador
ORDER BY numamigos DESC;