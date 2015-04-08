SELECT 
    *
FROM
    pareja
WHERE
    idpareja IN (SELECT 
            pareja_idpareja
        FROM
            (SELECT 
                pareja_idpareja, COUNT(torneo_idtorneo) AS contador1
            FROM
                participacion_torneos
            WHERE
                torneo_idtorneo IN (SELECT 
                        idtorneo
                    FROM
                        torneo
                    WHERE
                        fechaCelebracion BETWEEN '20150101' AND '20150131')
            GROUP BY pareja_idpareja) AS tabla1
                JOIN
            (SELECT 
                COUNT(idtorneo) AS contador2
            FROM
                torneo
            WHERE
                fechaCelebracion BETWEEN '20150101' AND '20150131') AS tabla2 ON tabla1.contador1 = tabla2.contador2)