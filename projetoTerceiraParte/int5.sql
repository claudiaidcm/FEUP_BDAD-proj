.mode columns
.headers on
.nullvalue NULL

Select titulo, count(favorito) visualizacoes 
From Visualiza
group by titulo
order by visualizacoes DESC
limit 5;


