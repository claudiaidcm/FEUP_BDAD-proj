.mode columns
.headers on
.nullvalue NULL

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
