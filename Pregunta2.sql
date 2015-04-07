SELECT 
    jugnombre, apellidos, torneo.nombre
FROM
    torneo
        JOIN
    (SELECT 
        nombre AS jugNombre, apellidos, torneo_idtorneo AS idTorneo
    FROM
        jugador
    JOIN inscritos_torneo ON jugador.idjugador = inscritos_torneo.jugador_idjugador
        AND jugador.banco IS NULL) AS jugT ON torneo.idTorneo = jugT.idTorneo;