.mode columns
.headers on
.nullvalue NULL

--SUBSCRICAO MAIS POPULAR
SELECT Stipo, count(*) as 'Subscricao mais popular'
From Cliente
group by Stipo
order by count(*) DESC
limit 1;
