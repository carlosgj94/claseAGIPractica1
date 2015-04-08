SELECT 
    *
FROM
    (SELECT 
        jugada_idjugada
    FROM
        detalles_jugadas
    WHERE
        carta_idcarta IN (SELECT 
                idcarta
            FROM
                carta
            WHERE
                nombre LIKE 'rey%' OR nombre LIKE '3%')
    GROUP BY jugada_idjugada
    HAVING COUNT(jugada_idjugada) = 2) AS jugadaRey
WHERE
    jugada_idjugada IN (SELECT 
            jugada_idjugada
        FROM
            detalles_jugadas
        WHERE
            carta_idcarta IN (SELECT 
                    idcarta
                FROM
                    carta
                WHERE
                    nombre LIKE 'as%' OR nombre LIKE '2%')
        GROUP BY jugada_idjugada
        HAVING COUNT(jugada_idjugada) = 2)