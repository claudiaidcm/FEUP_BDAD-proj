.mode columns
.headers on
.nullvalue NULL

--Numero total de clientes com a subscrição
Select Count(*) 'Numero total de clientes '
From Cliente
