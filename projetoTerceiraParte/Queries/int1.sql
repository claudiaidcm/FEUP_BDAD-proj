.mode columns
.headers on
.nullvalue NULL


--TOP 5 FILMES COM MELHOR CLASSIFICAÇAO
Create View avgById as
Select distinct Filme.idVideo, avg(classificacao) as ac
From Visualiza, Filme
Where Filme.idVideo = Visualiza.idVideo
group by Filme.idVideo
order by ac desc
limit 5;

Select titulo as 'Filmes com melhor classificacao', avgById.ac as 'Classificacao Media'
From Video, avgById
Where Video.idVideo = avgById.idVideo;

Drop View If EXISTS avgById;