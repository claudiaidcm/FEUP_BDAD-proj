.mode columns
.headers on
.nullvalue NULL

--Nome e preço do anuncio mais barato
Select nome as 'anuncio mais barato', preco
From Anuncio
Where preco =(Select min(preco) from Anuncio)
