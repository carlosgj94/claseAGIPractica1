SELECT 
    idPareja1, idPareja2, SUM(premio / 2)
FROM
    partida
WHERE
    torneo_idtorneo IS NULL
GROUP BY idPareja1 , idPareja2