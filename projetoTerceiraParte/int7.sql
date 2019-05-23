.mode columns
.headers on
.nullvalue NULL

Select titulo
From Video join Filme
Where Video.idVideo = Filme.idVideo and Video.dataPublicacao like '%2019';