.mode columns
.headers on
.nullvalue NULL

--TOP 5 FILMES COM MAIS VIZUALIZAÇOES
Select titulo as 'Filmes mais visualizados', count(favorito) visualizacoes 
From Visualiza, Video
WHERE Visualiza.idVideo = Video.idVideo
group by titulo
order by visualizacoes DESC
limit 5;

--TOP 5 FILMES COM MENOS VIZUALIZAÇOES
Select titulo as '
Filmes nunca visualizados'
From Video
WHERE idVideo
NOT IN (select idVideo from Visualiza)
group by titulo




