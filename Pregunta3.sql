select jugador.nombre, apellidos, torneo.nombre from torneo ,jugador
	join inscritos_torneo
    on jugador.idJugador= inscritos_torneo.JUGADOR_idJugador
	and jugador.banco is null;