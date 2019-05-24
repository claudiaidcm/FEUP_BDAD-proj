.mode columns
.headers on
.nullvalue NULL

<<<<<<< HEAD
drop View if exists avgById;

Create View avgById as
Select distinct Filme.idVideo, avg(classificacao) as ac
From Visualiza, Filme
Where Filme.idVideo = Visualiza.idVideo
group by Filme.idVideo
order by ac desc
limit 5;

Select titulo as Titulo, avgById.ac as Classificacao_Media
From Video, avgById
Where Video.idVideo = avgById.idVideo;
=======
-- Titulos dos filmes realizados por BELLA em 2019
SELECT titulo AS 'TITULO'
from Video
where (realizador = 'Bella')
AND strftime('%Y', dataPublicacao) = '2019'

>>>>>>> 833e78a6b239a5408d77d51b74eb3dd6415ced1f
