.mode columns
.headers on
.nullvalue NULL

--Top 5 dos vídeos mais RECENTES
SELECT V.titulo AS 'VIDEOS MAIS RECENTES'
FROM Video V
GROUP BY titulo
ORDER BY strftime ('%Y-%m-%d', V.dataPublicacao) DESC
LIMIT 5;

--Top 5 dos vídeos mais ANTIGOS
SELECT V.titulo AS '
VIDEOS MAIS ANTIGOS'
FROM Video V
GROUP BY titulo
ORDER BY strftime ('%Y-%m-%d', V.dataPublicacao) ASC
LIMIT 5