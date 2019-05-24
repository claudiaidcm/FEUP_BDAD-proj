.mode columns
.headers on
.nullvalue NULL

-- Titulos dos filmes realizados por BELLA em 2019
SELECT titulo AS 'TITULO'
from Video
where (realizador = 'Bella')
AND strftime('%Y', dataPublicacao) = '2019'

