SELECT pareja_idpareja, count(pareja_idPareja) as juegos_ganados from juego
group by pareja_idPareja
order by juegos_ganados desc limit 1;