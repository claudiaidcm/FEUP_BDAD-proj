PRAGMA foreign_keys = off;

-- Tabela: Empresa
drop table if exists Empresa;

create table Empresa (
	nome text,
	representante text,
	contacto integer unique,
	morada text unique,
	CONSTRAINT EmpresaPK primary key(nome, representante)
);
--13
--Tabela: Estudio
drop table if exists Estudio;

create table Estudio(
	nome text,
	representante text,
	CONSTRAINT EstudioPK primary key(nome,representante),
	CONSTRAINT EstudioFK foreign key(nome, representante) references Empresa(nome, representante) ON DELETE set null ON UPDATE cascade
	
);
--24
--Tabela: Publicidade
drop table if exists Publicidade;

create table Publicidade(
	nome text,
	representante text,
	CONSTRAINT PublicidadePK primary key(nome,representante),
	CONSTRAINT PublicidadeFK foreign key(nome, representante) references Empresa(nome, representante) ON DELETE set null ON UPDATE cascade
);

--Tabela: Video
drop table if exists Video;

create table Video(
	titulo text,
	dataPublicacao text,
	Enome text,
	Erepresentante text,
	descricao text,
	realizador text NOT NULL,
	duracao integer NOT NULL check (duracao>0),
	CONSTRAINT VideoPK primary key(titulo, dataPublicacao), 
	CONSTRAINT VideoFK foreign key(Enome, Erepresentante) references Estudio(nome, representante) ON DELETE set null ON UPDATE cascade

);
--55
--Tabela: Filme
drop table if exists Filme;

create table Filme(
	titulo text,
	dataPublicacao text,
	genero text NOT NULL check (genero='acao' or genero='animacao' or genero='aventura' or genero='comedia' or genero='drama' or genero='ficcao cientifica' or genero='musical' or genero='romance' or genero='suspense' or genero='terror'),
	atorPrincipal text NOT NULL,
	CONSTRAINT FilmePK primary key(titulo, dataPublicacao),
	CONSTRAINT FilmeFK foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao) ON DELETE set null ON UPDATE cascade
	
);

-- Tabela: Serie
drop table if exists Serie;

create table Serie(
	titulo text,
	dataPublicacao text,
	genero text NOT NULL check (genero='acao' or genero='animacao' or genero='aventura' or genero='comedia' or genero='drama' or genero='ficcao cientifica' or genero='musical' or genero='romance' or genero='suspense' or genero='terror'),
	numTemporadas integer NOT NULL check (numTemporadas>0) default 1,
	numEpisodiosTemporada integer NOT NULL check (numEpisodiosTemporada>0),
	atorPrincipal text NOT NULL,
	CONSTRAINT SeriePK primary key(titulo, dataPublicacao),
	CONSTRAINT SerieFK foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao) ON DELETE set null ON UPDATE cascade
);
--82
-- Tabela: Documentario
drop table if exists Documentario;

create table Documentario(
	titulo text,
	dataPublicacao text,
	tipo text NOT NULL check (tipo='autobiografico' or tipo='informacao' or tipo='exposicao'),
	CONSTRAINT DocumentarioPK primary key(titulo, dataPublicacao),
	CONSTRAINT DocumentarioFK foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao) ON DELETE set null ON UPDATE cascade
);

-- Tabela: Anuncio
drop table if exists Anuncio;

create table Anuncio(
	nome text,
	tipo text check (tipo='informativo' or tipo='comercial'),
	Pnome text,
	Prepresentante text,
	duracao integer NOT NULL check (duracao > 0),
	prioridade integer NOT NULL check (prioridade>0 and prioridade<4),
	preferencia text NOT NULL check (preferencia='filme' or preferencia='serie' or preferencia='documentario'),
	preco integer NOT NULL check (preco>0),
	CONSTRAINT AnuncioPK primary key(nome, tipo), 
	CONSTRAINT AnuncioFK foreign key(Prepresentante, Pnome) references Publicidade(representante, nome) ON DELETE set null ON UPDATE cascade
	
);
--110
--Tabela: Cliente
drop table if exists Cliente;

create table Cliente(
	NIF integer unique default NULL,
	email text primary key,						
	Stipo text NOT NULL,
	nome text NOT NULL,
	palavraPasse text NOT NULL,
	telefone integer unique default NULL,				
	morada text default 'nao listada'
);

--Tabela: Subscrição
drop table if exists Subscricao;

create table Subscricao(
	tipo text check (tipo='Basic' or tipo='Gold' or tipo='Platinum'),					
	numMaxVisualiz integer unique NOT NULL check ( numMaxVisualiz=1 or numMaxVisualiz=2 or numMaxVisualiz=5),
	qualidadeVideo integer unique NOT NULL check (qualidadeVideo='normal' or qualidadeVideo='FullHD' or qualidadeVideo='4K'),
	preco integer unique NOT NULL check (preco=8 or preco=11 or preco=14),
	CONSTRAINT TipoPK primary key (tipo)

);
--136
--Tabela: Aparece
drop table if exists Aparece;

create table Aparece(
	titulo text,
	dataPublicacao text,
	nome text,
	tipo text,
	CONSTRAINT ApareceFK1 foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao) ON DELETE set null ON UPDATE cascade,
	CONSTRAINT ApareceFK2 foreign key(nome, tipo) references Anuncio(nome, tipo) ON DELETE set null ON UPDATE cascade
);

--147
-- Tabela: Visualiza
drop table if exists Visualiza;

create table Visualiza(
	titulo text,
	dataPublicacao text,
	email text references Cliente(email),
	favorito integer NOT NULL check (favorito=0 or favorito=1) default 0,
	critica text default 'nao efetuou critica',
	classificacao integer check (classificacao>0 and classificacao<6) default NULL,
	CONSTRAINT VisualizaPK primary key (titulo, dataPublicacao, email),
	CONSTRAINT VisualizaFK foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao) ON DELETE set null ON UPDATE cascade

);

PRAGMA foreign_keys = on;