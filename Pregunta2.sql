#select nombre, apellidos
select nombre, apellidos, TORNEO_idTorneo from jugador
	join inscritos_torneo
    on jugador.idJugador= inscritos_torneo.JUGADOR_idJugador
	and jugador.banco is null;