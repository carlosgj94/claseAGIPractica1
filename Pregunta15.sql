#Aun no funciona, pero tengo suenyo
delimiter 
create trigger ParejasDistintas before insert on partida
	for each row
    begin
	if new.idpareja1 = new.idpareja2 then
        signal sqlstate "45001" set message_text = 'Las parejas han de ser distintas';
    else
		update partida
	end if
end;
delimiter;