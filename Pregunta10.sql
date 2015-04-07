#Creo que esta bien hecha pero no me fio

SELECT 
    pareja_idpareja,
    COUNT(pareja_idPareja) AS contador,
    partida_idpartida
FROM
    juego
WHERE
    partida_idpartida IN (SELECT 
            idpartida
        FROM
            partida
        WHERE
            torneo_idtorneo IS NULL)
GROUP BY pareja_idpareja