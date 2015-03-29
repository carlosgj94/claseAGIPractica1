select idJugador, count(*) from jugador, amistad
	where JUGADOR_idJugador = idJugador
    or JUGADOR_idJugador1 = idJugador
		group by JUGADOR_idJugador, JUGADOR_idJugador1;