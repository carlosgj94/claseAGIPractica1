########### Falla que muestra los jugadores que han participado en algun torneo del 2015 y no en TODOS

SELECT 
    nombre
FROM
    jugador
        JOIN
############ El siguiente () nos da los id's de los jugadores de los torneos de enero
    (SELECT 
        jugador_idjugador1, jugador_idjugador2
    FROM
########### El siguiente () nos da la perjas que participaron en los torneos de enero
        pareja, (SELECT 
        pareja_idpareja, idtorneo, nombre
    FROM
        participacion_torneos
########## El siguiente () nos da los torneos del mes de enero. 
    JOIN (SELECT 
        idTorneo, nombre
    FROM
        torneo AS tor
    WHERE
        tor.fechaCelebracion BETWEEN '20150101' AND '20150131') AS tor ON tor.idTorneo = participacion_torneos.torneo_idtorneo) AS tor
    WHERE
        tor.pareja_idpareja = pareja.idpareja) AS torju ON jugador.idjugador = torju.jugador_idjugador1
        OR jugador.idjugador = torju.jugador_idjugador1;