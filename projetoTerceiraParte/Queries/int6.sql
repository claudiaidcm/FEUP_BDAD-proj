.mode columns
.headers on
.nullvalue NULL

--SUBSCRICAO MAIS POPULAR
SELECT max(Stipo) as 'Subscricao mais popular'
From Cliente
limit 1;
