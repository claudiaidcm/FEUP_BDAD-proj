.mode columns
.headers on
.nullvalue NULL

--Top 10 clientes mais rentáveis
SELECT C.idCliente AS 'Id', C.nome AS 'nome', SUM(anuncio.preco + S.preco) AS 'Total ganho (subscricao + anuncios visualizados)'
FROM Cliente C, Visualiza V, Subscricao S, Aparece A, Anuncio anuncio
Where C.idCliente = V.idCliente
GROUP BY C.idCliente
ORDER BY SUM(anuncio.preco + S.preco) DESC
LIMIT 5;

