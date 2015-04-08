delimiter //
create procedure JugadoresTorneo (in CodTorneo int)
  begin
    select jugador_idjugador from inscritos_torneo
    where torneo_idtorneo=CodTorneo;
  end;
delimiter //

call JugadoresTorneo(3);
