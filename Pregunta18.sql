delimiter //
create procedure GanadorAbandono (in alias int)
  begin
  SELECT 
  COUNT(idparejaganaabandono)
FROM
  partida
WHERE
  idpareja1 IN (SELECT 
          idpareja
      FROM
          pareja
      WHERE
          jugador_idjugador1 = alias
              OR jugador_idjugador2 = alias)
      OR idpareja2 IN (SELECT 
          idpareja
      FROM
          pareja
      WHERE
          jugador_idjugador1 = alias
              OR jugador_idjugador2 = alias)
  end;
delimiter //

call GanadorAbandono(1);