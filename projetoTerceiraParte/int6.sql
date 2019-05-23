.mode columns
.headers on
.nullvalue NULL

SELECT Stipo as Subscricao_mais_popular, COUNT(Stipo) as Numero_de_subscricoes
From Cliente
limit 1;