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

--TOP 5 VIDEOS COM MENOS VIZUALIZAÇOES
Select titulo as 'Videos menos visualizados', 0 as visualizacoes
From Video
WHERE idVideo NOT IN (select idVideo from Visualiza)
UNION
Select titulo as 'Videos mais visualizados', count(*) visualizacoes 
From Visualiza, Video
WHERE Visualiza.idVideo = Video.idVideo
group by titulo
order by visualizacoes ASC
limit 5;