delimiter //
create trigger ParejasDistintasInsert before insert on partida
	for each row
    begin
	if new.idpareja1 = new.idpareja2 then
        signal sqlstate "45000" set message_text = "Las parejas han de ser distintas";
	end if;
end;
delimiter //

delimiter //
create trigger ParejasDistintasUpdate before update on partida
	for each row
    begin
	if new.idpareja1 = new.idpareja2 then
        signal sqlstate "45001" set message_text = 'Las parejas han de ser distintas';
	end if;
end;
delimiter //