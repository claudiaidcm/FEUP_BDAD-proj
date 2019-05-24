.mode columns
.headers on
.nullvalue NULL

Select titulo as Filmes_de_2019
From Video join Filme
Where Video.idVideo = Filme.idVideo and Video.dataPublicacao like '%2019';