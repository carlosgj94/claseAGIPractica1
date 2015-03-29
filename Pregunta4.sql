#Falta por mostrar a todos aquellos que no tengan ningun amigo

select 
	idJugador, 
    count(JUGADOR_idJugador & JUGADOR_idJugador1) as NumAmigos
from 
	jugador, 
    amistad
where
	JUGADOR_idJugador = idJugador or
    JUGADOR_idJugador1 = idJugador
group by
	idJugador;