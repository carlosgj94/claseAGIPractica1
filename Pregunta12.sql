SELECT 
    partida_idpartida, pareja_idpareja
FROM
    juego
GROUP BY partida_idpartida , pareja_idpareja
HAVING COUNT(pareja_idpareja) = 2 
UNION SELECT 
    idpartida, idparejaganaabandono
FROM
    partida
WHERE
    idparejaganaabandono IS NOT NULL