.mode columns
.headers on
.nullvalue NULL

Select nome, preco
From Anuncio
Where preco =(Select min(preco) from Anuncio)
