.mode columns
.headers on
.nullvalue NULL

--Top 10 clientes mais rentáveis
SELECT C.idCliente AS 'Id', C.nome AS 'nome', Sum(anuncio.preco) + S.preco AS 'Total ganho (subscricao + anuncios visualizados)'
FROM Cliente C, Visualiza V, Subscricao S, Aparece A, Anuncio anuncio
Where S.tipo=C.Stipo and  V.idCliente = C.idCliente and V.idVideo=A.idVideo	and A.idAnuncio=anuncio.idAnuncio
group by C.idCliente
ORDER BY SUM(anuncio.preco + S.preco) DESC
limit 5;
