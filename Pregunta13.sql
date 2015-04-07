DELETE  inscritos_torneo FROM inscritos_torneo 
WHERE
    torneo_idtorneo IN (SELECT 
        idtorneo
    FROM
        torneo
    
    WHERE
        fechaCelebracion < CURRENT_DATE())