update 
    torneo
set 
	premio= premio*1.1
WHERE
    idtorneo IN (SELECT 
            torneo_idtorneo
        FROM
            participacion_torneos
        GROUP BY torneo_idtorneo
        HAVING COUNT(DISTINCT pareja_idpareja) > 3)