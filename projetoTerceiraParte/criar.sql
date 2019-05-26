PRAGMA foreign_keys = off;

-- Tabela: Empresa
drop table if exists Empresa;

create table Empresa(
	idEmpresa INTEGER PRIMARY KEY AUTOINCREMENT,
	nome text NOT NULL,
	representante text NOT NULL,
	contacto integer unique,
	morada text unique
);

--13
--Tabela: Estudio
drop table if exists Estudio;

create table Estudio(
	idEmpresa INTEGER PRIMARY KEY,
	CONSTRAINT EstudioFK foreign key(idEmpresa) REFERENCES Empresa(idEmpresa) ON DELETE set null ON UPDATE cascade
);

--24
--Tabela: Publicidade
drop table if exists Publicidade;

create table Publicidade(
	idEmpresa INTEGER PRIMARY KEY,
	CONSTRAINT EstudioFK foreign key(idEmpresa) REFERENCES Empresa(idEmpresa) ON DELETE set null ON UPDATE cascade
);

--Tabela: Video
drop table if exists Video;

create table Video(
	idVideo INTEGER PRIMARY KEY AUTOINCREMENT,
	titulo text NOT NULL,
	dataPublicacao text NOT NULL,
	idEmpresa INTEGER REFERENCES Estudio(idEmpresa) ON DELETE set null ON UPDATE cascade,
	descricao text,
	realizador text NOT NULL,
	duracao integer NOT NULL check (duracao>0)
);

--55
--Tabela: Filme
drop table if exists Filme;

create table Filme(
	idVideo INTEGER PRIMARY KEY,
	genero text NOT NULL check (genero='acao' or genero='animacao' or genero='aventura' or genero='comedia' or genero='drama' or genero='ficcao cientifica' or genero='musical' or genero='romance' or genero='suspense' or genero='terror'),
	atorPrincipal text NOT NULL,
	CONSTRAINT FilmeFK foreign key(idVideo) REFERENCES Video(idVideo) ON DELETE set null ON UPDATE cascade
);

-- Tabela: Serie
drop table if exists Serie;

create table Serie(
	idVideo INTEGER PRIMARY KEY,
	genero text NOT NULL check (genero='acao' or genero='animacao' or genero='aventura' or genero='comedia' or genero='drama' or genero='ficcao cientifica' or genero='musical' or genero='romance' or genero='suspense' or genero='terror'),
	numTemporadas integer NOT NULL check (numTemporadas>0) default 1,
	numEpisodiosTemporada integer NOT NULL check (numEpisodiosTemporada>0),
	atorPrincipal text NOT NULL,
	CONSTRAINT SerieFK foreign key(idVideo) REFERENCES Video(idVideo) ON DELETE set null ON UPDATE cascade
);

--82
-- Tabela: Documentario
drop table if exists Documentario;

create table Documentario(
	idVideo INTEGER PRIMARY KEY,
	tipo text NOT NULL check (tipo='autobiografico' or tipo='informacao' or tipo='exposicao'),
	CONSTRAINT DocumentarioFK foreign key(idVideo) REFERENCES Video(idVideo) ON DELETE set null ON UPDATE cascade
);

-- Tabela: Anuncio
drop table if exists Anuncio;

create table Anuncio(
	idAnuncio INTEGER PRIMARY KEY AUTOINCREMENT,
	nome text NOT NULL,
	tipo text check (tipo='informativo' or tipo='comercial') NOT NULL,
	idEmpresa INTEGER,
	duracao integer NOT NULL check (duracao > 0),
	prioridade integer NOT NULL check (prioridade>0 and prioridade<4),
	preferencia text NOT NULL check (preferencia='filme' or preferencia='serie' or preferencia='documentario'),
	preco integer NOT NULL check (preco>0),
	CONSTRAINT AnuncioFK foreign key(idEmpresa) REFERENCES Publicidade(idEmpresa) ON DELETE set null ON UPDATE cascade
	
);
--110
--Tabela: Cliente
drop table if exists Cliente;

create table Cliente(
	idCliente INTEGER PRIMARY KEY AUTOINCREMENT,
	NIF integer default NULL,
	email text NOT NULL,						
	Stipo text NOT NULL REFERENCES Subscricao(tipo),
	nome text NOT NULL,
	palavraPasse text NOT NULL,
	telefone integer default NULL,				
	morada text default 'nao listada',
	minVisualizados integer default 0
);

--Tabela: Subscrição
drop table if exists Subscricao;

create table Subscricao(
	tipo text check (tipo='Basic' or tipo='Gold' or tipo='Platinum'),					
	numMaxVisualiz integer unique NOT NULL check ( numMaxVisualiz=1 or numMaxVisualiz=2 or numMaxVisualiz=5),
	qualidadeVideo integer unique NOT NULL check (qualidadeVideo='normal' or qualidadeVideo='FullHD' or qualidadeVideo='4K'),
	preco integer unique NOT NULL check (preco=8 or preco=11 or preco=14),
	CONSTRAINT SubscricaoPK primary key (tipo)

);

--136
--Tabela: Aparece
drop table if exists Aparece;

create table Aparece(
	idVideo INTEGER,
	idAnuncio INTEGER,
	CONSTRAINT AparecePK primary key(idVideo, idAnuncio)
	CONSTRAINT ApareceFK1 foreign key(idVideo) REFERENCES Video(idVideo) ON DELETE set null ON UPDATE cascade,
	CONSTRAINT ApareceFK2 foreign key(idAnuncio) REFERENCES Anuncio(idAnuncio) ON DELETE set null ON UPDATE cascade
);

--147
-- Tabela: Visualiza
drop table if exists Visualiza;

create table Visualiza(
	idVideo INTEGER REFERENCES Video(idVideo) ON DELETE set null ON UPDATE cascade,
	idCliente text REFERENCES Cliente(idCliente),
	favorito integer NOT NULL check (favorito=0 or favorito=1) default 0,
	critica text default 'nao efetuou critica',
	classificacao integer check (classificacao>0 and classificacao<6) default NULL,
	CONSTRAINT VisualizaPK primary key (idVideo, idCliente)
);

PRAGMA foreign_keys = on;