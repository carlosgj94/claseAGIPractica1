SELECT 
    alias
FROM
    jugador,
    amistad
WHERE
    amistad.JUGADOR_idJugador = jugador.idJugador
        OR amistad.JUGADOR_idJugador1 = jugador.idJugador;
    
#select alias 
#	from jugador 
#    join amistad
#    on amistad.JUGADOR_idJugador = jugador.idJugador
#    or amistad.JUGADOR_idJugador1 = jugador.idJugador;