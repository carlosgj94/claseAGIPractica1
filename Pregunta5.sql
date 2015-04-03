SELECT DISTINCT
    idpareja
FROM
    pareja
WHERE
    pareja.idpareja NOT IN (SELECT 
            pareja_idpareja
        FROM
            participacion_torneos)
        AND pareja.idpareja IN (SELECT DISTINCT
            idpareja
        FROM
            pareja
                JOIN
            partida ON pareja.idpareja = partida.idPareja1
                OR pareja.idpareja = partida.idPareja2);