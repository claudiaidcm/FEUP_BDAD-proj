PRAGMA foreign_keys = on;

--Empresas
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Dreamworks', 'Jorge', 914303411, 'Matosinhos'); --1
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Disney', 'Paulo', 9144603411, 'Porto'); --2
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Pixar', 'Antonio', 91778903451, 'Lisboa'); --3
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Lionsgate', 'Antonio', 91712390451, 'Aveiro'); --4
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('MGM', 'Joao', 91674223, 'Algarve'); --5
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Paramount', 'Joao', 9163829153, 'Coimbra'); --6
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Fox', 'Luis', 916569023, 'Braga'); --7
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Universal', 'Ricardo', 819294174, 'Guimaraes'); --8
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Walt Disney', 'Tiago', 605228929, 'Funchal'); --9
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Warner', 'Maria', 968976375, 'Cascais'); --10
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Sony', 'Ana', 101877894, 'Sintra'); --11
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Unimundus', 'Beatriz', 328793127, 'Viana'); --12
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Silvex', 'Rita', 323859061, 'Evora'); --13
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Fantasma', 'Ines', 298194679, 'Gaia'); --14

--19
--Estudios
INSERT INTO Estudio VALUES (1);
INSERT INTO Estudio VALUES (4);
INSERT INTO Estudio VALUES (5);
INSERT INTO Estudio VALUES (6);
INSERT INTO Estudio VALUES (14);
INSERT INTO Estudio VALUES (8);
INSERT INTO Estudio VALUES (10);
INSERT INTO Estudio VALUES (12);
INSERT INTO Estudio VALUES (3);
INSERT INTO Estudio VALUES (9);

--31
--Publicidade
INSERT INTO Publicidade VALUES (13);
INSERT INTO Publicidade VALUES (2);
INSERT INTO Publicidade VALUES (10);
INSERT INTO Publicidade VALUES (9);
INSERT INTO Publicidade VALUES (7);


--38
--Video
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('After', '2019-04-17', 1, 'Animais', 'P.W', 100); --1
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Dumbo', '2019-03-05', 1, 'Cadeiras', 'Leia', 76); --2
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Spiderman', '2019-02-05', 1, 'Mesas', 'Sadie', 44); --3
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Cap Marvel', '2017-05-23', 1, 'Aguas', 'Jose', 77);--4
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('State', '2019-06-19', 9, 'Liberty', 'Luis', 32);--5
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Shazam', '2013-06-26', 9, 'Liberty','Joca', 52);--6
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Snu', '2019-04-08', 6, 'Telemoveis', 'Liberty', 77);--7
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Destiny', '2019-04-17', 10, 'Ratos', 'Bella', 85);--8
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Us', '2016-07-10', 10, 'Computadores', 'Bella', 123);--9
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Kursk', '2019-04-15', 3, 'Folhas', 'Caitlin', 444);--10
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Corgi', '2019-05-11', 12, 'Papeis', 'Caitlin', 56);--11
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Diamantino', '2016-07-10', 12, 'Guerra', 'Sara', 664);--12
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Avatar: A Lenda de Aang', '2011-04-15', 12, 'Aleatorio', 'Sara', 12);--13
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('The World at War', '2019-11-11', 10, 'Vida', 'Sinead', 155);--14
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Sherlock', '2019-04-15', 10, 'Coisas', 'Sinead', 66);--15
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Cosmos', '2019-04-17', 6, 'Familia', 'Sinead', 90);--16
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Planet Earth', '2018-07-10', 6, 'Apocalipse', 'Sinead', 61);--17
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Place', '2016-07-10', 3, 'Monstros', 'Ray', 55);--18
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Change', '2014-07-17', 3, 'Morte', 'Matilda', 43);--19
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Spot', '2016-07-10', 12, 'Reis', 'Rosie', 56);--20
INSERT INTO Video(titulo, dataPublicacao, idEmpresa, descricao, realizador, duracao) VALUES ('Local', '2019-04-17', 12, 'Oeste', 'Claudia', 91);--21


--62
--Filmes

INSERT INTO Filme(idVideo, genero, atorPrincipal) VALUES (1, 'acao', 'Beatriz');
INSERT INTO Filme(idVideo, genero, atorPrincipal) VALUES (2, 'animacao', 'Paulo');
INSERT INTO Filme(idVideo, genero, atorPrincipal) VALUES (3, 'aventura', 'Antonio');
INSERT INTO Filme(idVideo, genero, atorPrincipal) VALUES (4, 'comedia', 'Ines');
INSERT INTO Filme(idVideo, genero, atorPrincipal) VALUES (5, 'drama', 'Rita');
INSERT INTO Filme(idVideo, genero, atorPrincipal) VALUES (6, 'ficcao cientifica', 'Joao');
INSERT INTO Filme(idVideo, genero, atorPrincipal) VALUES (7, 'ficcao cientifica', 'Rita');
INSERT INTO Filme(idVideo, genero, atorPrincipal) VALUES (8, 'musical', 'Jota');
INSERT INTO Filme(idVideo, genero, atorPrincipal) VALUES (9, 'romance', 'Fernando');
INSERT INTO Filme(idVideo, genero, atorPrincipal) VALUES (10, 'suspense', 'Pi');
INSERT INTO Filme(idVideo, genero, atorPrincipal) VALUES (11, 'terror', 'Armando');
INSERT INTO Filme(idVideo, genero, atorPrincipal) VALUES (12, 'acao', 'Jose');

--77
--Serie
INSERT INTO Serie(idVideo, genero, numTemporadas, numEpisodiosTemporada, atorPrincipal) VALUES (13, 'animacao', 7, 8, 'Chris');
INSERT INTO Serie(idVideo, genero, numTemporadas, numEpisodiosTemporada, atorPrincipal) VALUES (14, 'musical', 96, 6, 'Blake');
INSERT INTO Serie(idVideo, genero, numTemporadas, numEpisodiosTemporada, atorPrincipal) VALUES (15, 'suspense', 11, 44, 'Lebron');
INSERT INTO Serie(idVideo, genero, numTemporadas, numEpisodiosTemporada, atorPrincipal) VALUES (16, 'terror', 12, 5, 'Fred');
INSERT INTO Serie(idVideo, genero, numTemporadas, numEpisodiosTemporada, atorPrincipal) VALUES (17, 'comedia', 5, 8, 'Louis');


--Documentarios
INSERT INTO Documentario(idVideo, tipo) VALUES (21, 'autobiografico');
INSERT INTO Documentario(idVideo, tipo) VALUES (18, 'exposicao');
INSERT INTO Documentario(idVideo, tipo) VALUES (20, 'informacao');
INSERT INTO Documentario(idVideo, tipo) VALUES (19, 'autobiografico');

--92
--Anuncios
INSERT INTO Anuncio(nome, tipo,idEmpresa, duracao, prioridade, preferencia, preco) VALUES ('Galp', 'comercial', 13, 2, 3, 'filme', 100);--1
INSERT INTO Anuncio( nome, tipo,idEmpresa, duracao, prioridade, preferencia, preco) VALUES ('Shell', 'comercial', 13, 3, 1, 'serie', 110);--2
INSERT INTO Anuncio( nome, tipo,idEmpresa, duracao, prioridade, preferencia, preco) VALUES ('Continente', 'comercial', 2, 4, 1, 'serie', 200);--3
INSERT INTO Anuncio( nome, tipo,idEmpresa, duracao, prioridade, preferencia, preco) VALUES ('Pingo Doce', 'informativo', 7, 5, 2, 'filme', 100);--4
INSERT INTO Anuncio( nome, tipo,idEmpresa, duracao, prioridade, preferencia, preco) VALUES ('NorteShopping', 'informativo', 9, 6, 3, 'documentario', 190);--5
INSERT INTO Anuncio( nome, tipo,idEmpresa, duracao, prioridade, preferencia, preco) VALUES ('McDonalds', 'informativo', 9, 7, 3, 'documentario', 120);--6
INSERT INTO Anuncio( nome, tipo,idEmpresa, duracao, prioridade, preferencia, preco) VALUES ('BK', 'informativo', 9, 8, 1, 'filme', 110);--7
INSERT INTO Anuncio( nome, tipo,idEmpresa, duracao, prioridade, preferencia, preco) VALUES ('Taco Bell', 'comercial', 2, 9, 3, 'documentario', 400);--8
INSERT INTO Anuncio( nome, tipo,idEmpresa, duracao, prioridade, preferencia, preco) VALUES ('Five Guys', 'comercial', 7, 15, 2, 'filme', 80);--9
INSERT INTO Anuncio( nome, tipo,idEmpresa, duracao, prioridade, preferencia, preco) VALUES ('Munchie', 'informativo', 7, 15, 2, 'documentario', 100);--10
INSERT INTO Anuncio( nome, tipo,idEmpresa, duracao, prioridade, preferencia, preco) VALUES ('Amazon',  'comercial', 13, 3, 2, 'serie', 200);--11
INSERT INTO Anuncio( nome, tipo,idEmpresa, duracao, prioridade, preferencia, preco) VALUES ('Luso',  'comercial', 13, 10, 1, 'filme', 90);--12


--Subscriçoes
INSERT INTO Subscricao(tipo, numMaxVisualiz, qualidadeVideo, preco) VALUES ('Basic', 1, 'normal', 8);
INSERT INTO Subscricao(tipo, numMaxVisualiz, qualidadeVideo, preco) VALUES ('Gold', 2, 'FullHD', 11);
INSERT INTO Subscricao(tipo, numMaxVisualiz, qualidadeVideo, preco) VALUES ('Platinum', 5, '4K', 14);

--108
--Clientes
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (379, '8lmsat.sahr.99@futureof2019.info', 'Basic', 'Anna', 'zscuvy', 85321385822800,'4477 White Oak Drive');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (393, 'fjaelma.ar@jorosc.gq', 'Basic', 'Rosa', 'vffET7', 05072359421222,'2541 Tully Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (126, 'mak47_x_dmc@sgb-itu-anjeng.tk', 'Basic', 'Zaynab', 'cdVdxC', 98510818910,'3781 Zappia Drive');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (1, '9jazairi.baslay@xprice.co', 'Basic', 'Zaynab', 'JvdFjM', 1071577598568, 'Hickory Lane');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (2, '7karim.benreh@gakkurang.com', 'Basic', 'Isabelle', 'ejP24N', 779231813045, 'Redwood Drive');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (3, 'uwalid.rajawi.183@anaploxo.ml', 'Basic', 'Annie', '2vTCps', 6547027776345, 'Augusta Drive');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (427, 'pkimberelyb@lrelsqkgga4.cf', 'Gold', 'Callie', 'Avp55Q', 13151643048, 'Depot Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (74, 'xsabi@barbarrianking.com', 'Gold', 'Jen NIFer', 'x2uTEe', 14696163830, 'Jefferson Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (78, 'eagnaby.co@kumisgonds69.me', 'Gold', 'Rosemary', 'h37J8X', 76981452196, 'Laurel Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (10, 'dlayla@cnshosti.in', 'Gold', 'Jodie', 'eH97WR', 46682758822, 'William Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (411, 'wkutekutehot977@nurdintv.com', 'Gold', 'Jodie', 'v7aBbj', 4799490469, 'Railroad Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (24, 'lamrdg25o@titaspaharpur5.ml', 'Gold', 'Monica', '9xYpGV', 497605642861, 'Heather Lane');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (95, 'jzeba_tabassum91h@arkonnide.cf', 'Gold', 'Eden', 'EBAQne', 83252706711, 'Brown Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (94, 'hbenali@zmti6x70hdop.ga', 'Platinum', 'Kimberley', 'fLCgUb', 1619586360546, 'Brown Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (124, 'jalaa.hamed.3726t@taucoindo.site', 'Platinum', 'Nora', 'WWyMGu', 851861438149, 'Brown Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (45, 'nyacine-n@topplayers.fun', 'Platinum', 'Maddie', 'fAfa5L', 667686483547, 'Jefferson Avenue');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (123, 'mcarl_bonnieg@triteksolution.info', 'Platinum', 'Maddie', 'wCwSpY', 17279064346, 'Railroad Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (77, '6naasr.bin.1k@gakbec.us', 'Platinum', 'Aisha', 'sWsY3c', 424514639565, 'Jackson Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (66, 'rmhed.tarek7@kutakbisajauhjauh.cf', 'Platinum', 'Diana', 'XvKLSz', 471440487812, 'Jackson Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (55, 'hjoao.nicacio.35x@teman-bangsa.com', 'Platinum', 'Imogen', 'VRQ5r9', 9647358268733, 'Route 17');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (407, 'dpetersonreginal@anaploxo.cf', 'Gold', 'Elle', 'sFuYwm', 6036184215713, 'Jackson Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (502, 'tmenakoko9679@m2project.xyz', 'Gold', 'Elle', 'wwcU4w', 738520197792, 'Beech Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (999, 'tmajid@posthectomie.info', 'Gold', 'Tara', 'sgKF5c', 6102807023, 'Jackson Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (1000, 'xahmed.wsh@antistream.tk', 'Basic', 'Alina', 'YkqKsj', 465935675863, 'Beech Street');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (109, 'yrex.john@domainaing.cf', 'Basic', 'Alina', 'Uezk3F', 6537932289202, '5th Street North');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (276, 'otheabdullahshahb@worksmail.gq', 'Platinum', 'Alina', 'sybN7F', 567904680453, '');
INSERT INTO Cliente( NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (194, '4agenda1434l@pietershop.com', 'Platinum', 'Kelly', '9wzBFG', 1886790119422, 'Route 17');


--138
--Aparece
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (21, 1);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (18, 2);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (20, 3);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (10, 4);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (11, 5);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (11, 6);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (7, 7);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (6, 8);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (6, 9);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (5, 9);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (8, 9);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (13, 10);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (13, 11);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (14, 12);
INSERT INTO Aparece(idVideo, idAnuncio) VALUES (16, 12);


--159
--Visualiza
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (1, 1, 0, 'Bom', 1);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (1, 2,  0, 'Suficiente', 2);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (1, 3, 0, 'Excelente', 3);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (1,4, 1, 'Pessimo', 4);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (2, 5, 1, 'Suficiente', 5);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (2, 6, 1, 'Pessimo', 1);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (3, 7,  0, 'Pessimo', 1);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (4,8 , 0, 'Pessimo', 1);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (6, 9, 0,'Suficiente', 3);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (6,10, 1, 'Muito bom', 4);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (6,11, 0, 'Muito bom', 4);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (6, 12,0, 'Mediocre', 3);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (7, 13,1, 'Melhor filme', 3);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (7, 14,0, 'Excelente', 4);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (8, 15, 1, 'Mediocre', 2);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (8, 16, 1, 'Suficiente', 2);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (8,17, 0, 'Excelente', 3);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (8, 18, 1, 'Muito bom', 3);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (8, 19, 1, 'Mediocre', 3);
--INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (8, 19, 1, 'Melhor filme', 5);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (13, 20, 0, 'Mediocre', 3);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (12, 21, 1, 'Muito bom', 4);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (11, 22, 1, 'Suficiente', 4);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (17, 13, 1, 'Melhor filme', 5);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (15, 24, 1, 'Melhor filme', 5);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (20, 25, 1, 'Excelente', 5);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (21, 26, 0, 'Melhor filme', 4);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (19, 26, 0, 'Mediocre', 3);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (11, 26, 1, 'Excelente', 5);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (17, 21, 1, 'Excelente', 5);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (20, 4, 0, 'Nice', 3);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (20, 26, 1, '5*', 5);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (14, 4, 0, 'Bad', 2);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (20, 21, 1, 'Recomendo', 4);
INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (10, 20, 0, 'Top', 4);
--INSERT INTO Visualiza(idVideo, idCliente, favorito, critica, classificacao) VALUES (8, 19, 1, 'Excelente', 5);


