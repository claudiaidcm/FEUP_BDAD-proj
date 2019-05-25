.mode columns
.headers on
.nullvalue NULL

-- Titulos dos videos realizados pelo realizador BELLA em 2019
SELECT titulo AS 'Videos realizados pelo realizador Bella em 2019'
From Video
Where realizador = 'Leia' AND strftime('%Y', dataPublicacao) = '2019';
