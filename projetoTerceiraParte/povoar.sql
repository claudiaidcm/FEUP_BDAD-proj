PRAGMA foreign_keys = on;

--Empresas
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Dreamworks', 'Jorge', 914303411, 'Matosinhos');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Disney', 'Paulo', 9144603411, 'Porto');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Pixar', 'Antonio', 91778903451, 'Lisboa');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Lionsgate', 'Antonio', 91712390451, 'Aveiro');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('MGM', 'Joao', 91674223, 'Algarve');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Paramount', 'Joao', 9163829153, 'Coimbra');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Fox', 'Luis', 916569023, 'Braga');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Universal', 'Ricardo', 819294174, 'Guimaraes');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Walt Disney', 'Tiago', 605228929, 'Funchal');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Warner', 'Maria', 968976375, 'Cascais');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Sony', 'Ana', 101877894, 'Sintra');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Unimundus', 'Beatriz', 328793127, 'Viana');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Silvex', 'Rita', 323859061, 'Evora');
INSERT INTO Empresa(nome, representante, contacto, morada) VALUES ('Fantasma', 'Ines', 298194679, 'Gaia');

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


--38
--Video
INSERT INTO Video VALUES ('After', '17/04/2019', 1, 'Animais', 'P.W', 100);
INSERT INTO Video VALUES ('Dumbo', '08/05/2019', 1, 'Cadeiras', 'Leia', 76);
INSERT INTO Video VALUES ('Spiderman', '09/05/2019', 1, 'Mesas', 'Sadie', 44);
INSERT INTO Video VALUES ('Cap Marvel', '23/05/2019', 1, 'Aguas', 'Jose', 77);
INSERT INTO Video VALUES ('State', '19/06/2019', 9, 'Liberty', 'Luis', 32);
INSERT INTO Video VALUES ('Shazam', '26/06/2019', 9, 'Liberty','Joca', 52);
INSERT INTO Video VALUES ('Snu', '02/08/2019', 'Paramount', 'Joao', 'Telemoveis', 'Liberty', 77);
INSERT INTO Video VALUES ('Destiny', '07/08/2019', 'Warner', 'Maria', 'Ratos', 'Bella', 85);
INSERT INTO Video VALUES ('Us', '26/08/2019', 'Warner', 'Maria', 'Computadores', 'Bella', 123);
INSERT INTO Video VALUES ('Kursk', '26/08/2019', 'Pixar', 'Antonio', 'Folhas', 'Caitlin', 444);
INSERT INTO Video VALUES ('Corgi', '26/08/2019', 'Unimundus', 'Beatriz', 'Papeis', 'Caitlin', 56);
INSERT INTO Video VALUES ('Diamantino', '26/08/2019', 'Unimundus', 'Beatriz', 'Guerra', 'Sara', 664);
INSERT INTO Video VALUES ('Avatar: A Lenda de Aang', '17/04/2019', 'Unimundus', 'Beatriz', 'Aleatorio', 'Sara', 12);
INSERT INTO Video VALUES ('The World at War', '10/05/2019', 'Warner', 'Maria', 'Vida', 'Sinead', 155);
INSERT INTO Video VALUES ('Sherlock', '04/06/2019', 'Warner', 'Maria', 'Coisas', 'Sinead', 66);
INSERT INTO Video VALUES ('Cosmos', '21/06/2019', 'Paramount', 'Joao', 'Familia', 'Sinead', 90);
INSERT INTO Video VALUES ('Planet Earth', '10/07/2019', 'Paramount', 'Joao', 'Apocalipse', 'Sinead', 61);
INSERT INTO Video VALUES ('Place', '20/11/2019', 'Pixar', 'Antonio', 'Monstros', 'Ray', 55);
INSERT INTO Video VALUES ('Change', '08/10/2019', 'Pixar', 'Antonio', 'Morte', 'Matilda', 43);
INSERT INTO Video VALUES ('Spot', '13/11/2019', 'Unimundus', 'Beatriz', 'Reis', 'Rosie', 56);
INSERT INTO Video VALUES ('Local', '24/12/2019', 'Unimundus', 'Beatriz', 'Oeste', 'Claudia', 91);

--62
--Filmes
INSERT INTO Filme(titulo, dataPublicacao, genero, atorPrincipal) VALUES ('After', '17/04/2019', 'acao', 'Beatriz');
INSERT INTO Filme(titulo, dataPublicacao, genero, atorPrincipal) VALUES ('Dumbo', '08/05/2019', 'animacao', 'Paulo');
INSERT INTO Filme(titulo, dataPublicacao, genero, atorPrincipal) VALUES ('Spiderman', '09/05/2019', 'aventura', 'Antonio');
INSERT INTO Filme(titulo, dataPublicacao, genero, atorPrincipal) VALUES ('Cap Marvel', '23/05/2019', 'comedia', 'Ines');
INSERT INTO Filme(titulo, dataPublicacao, genero, atorPrincipal) VALUES ('State', '19/06/2019', 'drama', 'Rita');
INSERT INTO Filme(titulo, dataPublicacao, genero, atorPrincipal) VALUES ('Shazam', '26/06/2019', 'ficcao cientifica', 'Joao');
INSERT INTO Filme(titulo, dataPublicacao, genero, atorPrincipal) VALUES ('Snu', '02/08/2019', 'ficcao cientifica', 'Rita');
INSERT INTO Filme(titulo, dataPublicacao, genero, atorPrincipal) VALUES ('Destiny', '07/08/2019', 'musical', 'Jota');
INSERT INTO Filme(titulo, dataPublicacao, genero, atorPrincipal) VALUES ('Us', '26/08/2019', 'romance', 'Fernando');
INSERT INTO Filme(titulo, dataPublicacao, genero, atorPrincipal) VALUES ('Kursk', '26/08/2019', 'suspense', 'Pi');
INSERT INTO Filme(titulo, dataPublicacao, genero, atorPrincipal) VALUES ('Corgi', '26/08/2019', 'terror', 'Armando');
INSERT INTO Filme(titulo, dataPublicacao, genero, atorPrincipal) VALUES ('Diamantino', '26/08/2019', 'acao', 'Jose');

--77
--Serie
INSERT INTO Serie(titulo, dataPublicacao, genero, numTemporadas, numEpisodiosTemporada, atorPrincipal) VALUES ('Avatar: A Lenda de Aang', '17/04/2019', 'animacao', 7, 8, 'Chris');
INSERT INTO Serie(titulo, dataPublicacao, genero, numTemporadas, numEpisodiosTemporada, atorPrincipal) VALUES ('The World at War', '10/05/2019', 'musical', 96, 6, 'Blake');
INSERT INTO Serie(titulo, dataPublicacao, genero, numTemporadas, numEpisodiosTemporada, atorPrincipal) VALUES ('Sherlock', '04/06/2019', 'suspense', 11, 44, 'Lebron');
INSERT INTO Serie(titulo, dataPublicacao, genero, numTemporadas, numEpisodiosTemporada, atorPrincipal) VALUES ('Cosmos', '21/06/2019', 'terror', 12, 5, 'Fred');
INSERT INTO Serie(titulo, dataPublicacao, genero, numTemporadas, numEpisodiosTemporada, atorPrincipal) VALUES ('Planet Earth', '10/07/2019', 'comedia', 5, 8, 'Louis');


--Documentarios
INSERT INTO Documentario(titulo, dataPublicacao, tipo) VALUES ('Local', '24/12/2019', 'autobiografico');
INSERT INTO Documentario(titulo, dataPublicacao, tipo) VALUES ('Place', '20/11/2019', 'exposicao');
INSERT INTO Documentario(titulo, dataPublicacao, tipo) VALUES ('Spot', '13/11/2019', 'informacao');
INSERT INTO Documentario(titulo, dataPublicacao, tipo) VALUES ('Change', '08/10/2019', 'autobiografico');

--92
--Anuncios
INSERT INTO Anuncio(nome, tipo, Pnome, Prepresentante, duracao, prioridade, preferencia, preco) VALUES ('Galp', 'comercial', 'Silvex', 'Rita', 2, 3, 'filme', 1000);
INSERT INTO Anuncio(nome, tipo, Pnome, Prepresentante, duracao, prioridade, preferencia, preco) VALUES ('Shell', 'comercial', 'Silvex', 'Rita', 3, 1, 'serie', 1111);
INSERT INTO Anuncio(nome, tipo, Pnome, Prepresentante, duracao, prioridade, preferencia, preco) VALUES ('Continente', 'comercial', 'Disney', 'Paulo', 4, 1, 'serie', 2134);
INSERT INTO Anuncio(nome, tipo, Pnome, Prepresentante, duracao, prioridade, preferencia, preco) VALUES ('Pingo Doce', 'informativo', 'Fox', 'Luis', 5, 2, 'filme', 1000000);
INSERT INTO Anuncio(nome, tipo, Pnome, Prepresentante, duracao, prioridade, preferencia, preco) VALUES ('NorteShopping', 'informativo', 'Walt Disney', 'Tiago', 6, 3, 'documentario', 1243);
INSERT INTO Anuncio(nome, tipo, Pnome, Prepresentante, duracao, prioridade, preferencia, preco) VALUES ('McDonalds', 'informativo', 'Walt Disney', 'Tiago', 7, 3, 'documentario', 1243);
INSERT INTO Anuncio(nome, tipo, Pnome, Prepresentante, duracao, prioridade, preferencia, preco) VALUES ('BK', 'informativo', 'Walt Disney', 'Tiago', 8, 1, 'filme', 111111);
INSERT INTO Anuncio(nome, tipo, Pnome, Prepresentante, duracao, prioridade, preferencia, preco) VALUES ('Taco Bell', 'comercial', 'Disney', 'Paulo', 9, 3, 'documentario', 4212);
INSERT INTO Anuncio(nome, tipo, Pnome, Prepresentante, duracao, prioridade, preferencia, preco) VALUES ('Five Guys', 'comercial', 'Fox', 'Luis', 15, 2, 'filme', 44121);
INSERT INTO Anuncio(nome, tipo, Pnome, Prepresentante, duracao, prioridade, preferencia, preco) VALUES ('Munchie', 'informativo', 'Fox', 'Luis', 15, 2, 'documentario', 12551);
INSERT INTO Anuncio(nome, tipo, Pnome, Prepresentante, duracao, prioridade, preferencia, preco) VALUES ('Amazon',  'comercial', 'Silvex', 'Rita', 3, 2, 'serie', 6651);
INSERT INTO Anuncio(nome, tipo, Pnome, Prepresentante, duracao, prioridade, preferencia, preco) VALUES ('Luso',  'comercial', 'Silvex', 'Rita', 10, 1, 'filme', 6652);


--108
--Clientes
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (379, '8lmsat.sahr.99@futureof2019.info', 'Basic', 'Anna', 'zscuvy', 85321385822800,'4477 White Oak Drive');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (393, 'fjaelma.ar@jorosc.gq', 'Basic', 'Rosa', 'vffET7', 05072359421222,'2541 Tully Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (126, 'mak47_x_dmc@sgb-itu-anjeng.tk', 'Basic', 'Zaynab', 'cdVdxC', 98510818910,'3781 Zappia Drive');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (1, '9jazairi.baslay@xprice.co', 'Basic', 'Zaynab', 'JvdFjM', 1071577598568, 'Hickory Lane');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (2, '7karim.benreh@gakkurang.com', 'Basic', 'Isabelle', 'ejP24N', 779231813045, 'Redwood Drive');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (3, 'uwalid.rajawi.183@anaploxo.ml', 'Basic', 'Annie', '2vTCps', 6547027776345, 'Augusta Drive');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (427, 'pkimberelyb@lrelsqkgga4.cf', 'Gold', 'Callie', 'Avp55Q', 13151643048, 'Depot Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (74, 'xsabi@barbarrianking.com', 'Gold', 'Jennifer', 'x2uTEe', 14696163830, 'Jefferson Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (78, 'eagnaby.co@kumisgonds69.me', 'Gold', 'Rosemary', 'h37J8X', 76981452196, 'Laurel Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (10, 'dlayla@cnshosti.in', 'Gold', 'Jodie', 'eH97WR', 46682758822, 'William Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (411, 'wkutekutehot977@nurdintv.com', 'Gold', 'Jodie', 'v7aBbj', 4799490469, 'Railroad Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (24, 'lamrdg25o@titaspaharpur5.ml', 'Gold', 'Monica', '9xYpGV', 497605642861, 'Heather Lane');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (95, 'jzeba_tabassum91h@arkonnide.cf', 'Gold', 'Eden', 'EBAQne', 83252706711, 'Brown Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (94, 'hbenali@zmti6x70hdop.ga', 'Platinum', 'Kimberley', 'fLCgUb', 1619586360546, 'Brown Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (124, 'jalaa.hamed.3726t@taucoindo.site', 'Platinum', 'Nora', 'WWyMGu', 851861438149, 'Brown Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (45, 'nyacine-n@topplayers.fun', 'Platinum', 'Maddie', 'fAfa5L', 667686483547, 'Jefferson Avenue');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (123, 'mcarl_bonnieg@triteksolution.info', 'Platinum', 'Maddie', 'wCwSpY', 17279064346, 'Railroad Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (77, '6naasr.bin.1k@gakbec.us', 'Platinum', 'Aisha', 'sWsY3c', 424514639565, 'Jackson Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (66, 'rmhed.tarek7@kutakbisajauhjauh.cf', 'Platinum', 'Diana', 'XvKLSz', 471440487812, 'Jackson Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (55, 'hjoao.nicacio.35x@teman-bangsa.com', 'Platinum', 'Imogen', 'VRQ5r9', 9647358268733, 'Route 17');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (407, 'dpetersonreginal@anaploxo.cf', 'Gold', 'Elle', 'sFuYwm', 6036184215713, 'Jackson Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (502, 'tmenakoko9679@m2project.xyz', 'Gold', 'Elle', 'wwcU4w', 738520197792, 'Beech Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (999, 'tmajid@posthectomie.info', 'Gold', 'Tara', 'sgKF5c', 6102807023, 'Jackson Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (1000, 'xahmed.wsh@antistream.tk', 'Basic', 'Alina', 'YkqKsj', 465935675863, 'Beech Street');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (109, 'yrex.john@domainaing.cf', 'Basic', 'Alina', 'Uezk3F', 6537932289202, '5th Street North');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (276, 'otheabdullahshahb@worksmail.gq', 'Platinum', 'Alina', 'sybN7F', 567904680453, '');
INSERT INTO Cliente(NIF, email, Stipo, nome, palavraPasse, telefone, morada) VALUES (194, '4agenda1434l@pietershop.com', 'Platinum', 'Kelly', '9wzBFG', 1886790119422, 'Route 17');

--138
--Aparece
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Local', '24/12/2019', 'Galp', 'comercial');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Place', '20/11/2019', 'Shell', 'comercial');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Spot', '13/11/2019', 'Continente', 'comercial');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Kursk', '26/08/2019', 'Pingo Doce', 'informativo');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Corgi', '26/08/2019', 'NorteShopping', 'informativo');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Corgi', '26/08/2019', 'McDonalds', 'informativo');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Snu', '02/08/2019', 'BK', 'informativo');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Shazam', '26/06/2019', 'Taco Bell', 'comercial');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Shazam', '26/06/2019', 'Amazon',  'comercial');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('State', '19/06/2019', 'Five Guys', 'comercial');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Destiny', '07/08/2019', 'Five Guys', 'comercial');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Avatar: A Lenda de Aang', '17/04/2019', 'Munchie', 'informativo');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Avatar: A Lenda de Aang', '17/04/2019', 'Amazon',  'comercial');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('The World at War', '10/05/2019', 'Luso',  'comercial');
INSERT INTO Aparece(titulo, dataPublicacao, nome, tipo) VALUES ('Cosmos', '21/06/2019', 'Luso',  'comercial');


--159
--Visualiza
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('After', '17/04/2019', 'rmhed.tarek7@kutakbisajauhjauh.cf', 0, 'Bom', 1);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('After', '17/04/2019', '8lmsat.sahr.99@futureof2019.info',  0, 'Suficiente', 2);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('After', '17/04/2019', '4agenda1434l@pietershop.com', 0, 'Excelente', 3);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Dumbo', '08/05/2019','fjaelma.ar@jorosc.gq', 1, 'Pessimo', 4);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Dumbo', '08/05/2019', 'mak47_x_dmc@sgb-itu-anjeng.tk', 1, 'Suficiente', 5);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Spiderman', '09/05/2019','9jazairi.baslay@xprice.co', 1, 'Pessimo', 1);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Cap Marvel', '23/05/2019','7karim.benreh@gakkurang.com',  0, 'Pessimo', 1);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Cap Marvel', '23/05/2019','uwalid.rajawi.183@anaploxo.ml' , 0, 'Pessimo', 1);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('State', '19/06/2019', 'pkimberelyb@lrelsqkgga4.cf', 0,'Suficiente', 3);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Shazam', '26/06/2019','xsabi@barbarrianking.com', 1, 'Muito bom', 4);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Shazam', '26/06/2019','eagnaby.co@kumisgonds69.me', 0, 'Muito bom', 4);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Shazam', '26/06/2019', 'dlayla@cnshosti.in',0, 'Mediocre', 3);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Shazam', '26/06/2019', 'wkutekutehot977@nurdintv.com',1, 'Melhor filme', 3);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Snu', '02/08/2019','lamrdg25o@titaspaharpur5.ml',0, 'Excelente', 4);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Destiny', '07/08/2019','jzeba_tabassum91h@arkonnide.cf', 1, 'Mediocre', 2);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Us', '26/08/2019','hbenali@zmti6x70hdop.ga', 1, 'Suficiente', 2);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Us', '26/08/2019','jalaa.hamed.3726t@taucoindo.site', 0, 'Excelente', 3);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Kursk', '26/08/2019','8lmsat.sahr.99@futureof2019.info', 1, 'Muito bom', 3);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Corgi', '26/08/2019','mcarl_bonnieg@triteksolution.info', 1, 'Mediocre', 3);
--INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Diamantino', '26/08/2019', '6naasr.bin.1k@gakbec.us', 1, 'Melhor filme', 5);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Diamantino', '26/08/2019','rmhed.tarek7@kutakbisajauhjauh.cf', 0, 'Mediocre', 3);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Avatar: A Lenda de Aang','17/04/2019','hjoao.nicacio.35x@teman-bangsa.com', 1, 'Muito bom', 4);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Avatar: A Lenda de Aang','17/04/2019','dpetersonreginal@anaploxo.cf', 1, 'Suficiente', 4);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('The World at War', '10/05/2019','dpetersonreginal@anaploxo.cf', 1, 'Melhor filme', 5);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Cosmos', '21/06/2019','dpetersonreginal@anaploxo.cf', 1, 'Melhor filme', 5);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Planet Earth', '10/07/2019','tmenakoko9679@m2project.xyz', 1, 'Excelente', 5);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Place', '20/11/2019','tmenakoko9679@m2project.xyz', 0, 'Melhor filme', 4);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Place', '20/11/2019','dpetersonreginal@anaploxo.cf', 0, 'Mediocre', 3);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Place', '20/11/2019','tmajid@posthectomie.info', 1, 'Excelente', 5);
INSERT INTO Visualiza(titulo, dataPublicacao, email, favorito, critica, classificacao) VALUES ('Change', '08/10/2019','lamrdg25o@titaspaharpur5.ml', 1, 'Excelente', 5);
--INSERT INTO Visualiza(titulo, dataPublicacao, classificacao) VALUES ('Spot', '13/11/2019', 2);
--INSERT INTO Visualiza(titulo, dataPublicacao, classificacao) VALUES ('Spot', '13/11/2019', 1);
--INSERT INTO Visualiza(titulo, dataPublicacao, classificacao) VALUES ('Spot', '13/11/2019', 2);
--INSERT INTO Visualiza(titulo, dataPublicacao, classificacao) VALUES ('Local', '24/12/2019', 4);
--INSERT INTO Visualiza(titulo, dataPublicacao, classificacao) VALUES ('Local', '24/12/2019', 4);
--INSERT INTO Visualiza(titulo, dataPublicacao, classificacao) VALUES ('Local', '24/12/2019', 1);

