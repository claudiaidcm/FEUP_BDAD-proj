.mode columns
.headers on
.nullvalue NULL

--Lucro proveniente de anúncios
Select SUM(preco) 'Lucro proveniente de Anúncios'
From Anuncio;
