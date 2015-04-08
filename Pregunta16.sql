delimiter //
create trigger ComprobarDatosUpdate before insert on inscritos_torneo
	for each row
    begin
	   declare userB int;
     select banco from jugador 
     where idjugador = new.jugador_idjugador 
     into userB
     
     if userB is null then
     signal sqlstate "45000" set message_text = "El jugador no tiene datos bancarios";
     end if;
end;
delimiter //