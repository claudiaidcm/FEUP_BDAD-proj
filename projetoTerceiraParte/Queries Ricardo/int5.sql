.mode columns
.headers on
.nullvalue NULL

--TOP 5 VÍDEOS COM MAIS VIZUALIZAÇOES
Select titulo as 'Videos mais visualizados', count(*) visualizacoes 
From Visualiza, Video
WHERE Visualiza.idVideo = Video.idVideo
group by titulo
order by visualizacoes DESC
limit 5;
