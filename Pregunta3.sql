select nombre from torneo 
	where torneo.fechaCelebracion between "20150101" and "20151231"
    order by premio desc limit 1;
	