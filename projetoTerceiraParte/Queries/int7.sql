.mode columns
.headers on
.nullvalue NULL

--FILMES LANÇADOS EM 2019
Select titulo as 'Filmes lancados em 2019'
From Video join Filme	
Where Video.idVideo = Filme.idVideo and Video.dataPublicacao like '%2019%';	

