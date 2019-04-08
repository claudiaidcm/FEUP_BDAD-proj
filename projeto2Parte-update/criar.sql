
drop table if exists Empresa;
drop table if exists Estudio;
drop table if exists Publicidade;
drop table if exists Video;
drop table if exists Filme;
drop table if exists Serie;
drop table if exists Documentario;
drop table if exists Anuncio;
drop table if exists Cliente;
drop table if exists Subscricao;
drop table if exists Aparece;
drop table if exists Visualiza;



create table Empresa (
	nome text,
	representante text,
	contacto integer unique,
	morada text unique,
	primary key(nome, representante),

);

create table Estudio(
	nome text,
	representante text,
	foreign key(nome, representante) references Empresa(nome, representante)
	
);

create table Publicidade(
	nome text,
	representante text,
	foreign key(nome, representante) references Empresa(nome, representante)
);

create table Video(
	titulo text,
	dataPublicacao text,
	Enome text,
	Erepresentante text,
	descricao text,
	realizador text,
	duracao integer,
	primary key(titulo, dataPublicacao),
	foreign key(Erepresentante, Enome) references Estudio(representante, nome)

);

create table Filme(
	titulo text,
	dataPublicacao text,
	genero text check (genero='acao' or genero='animacao' or genero='aventura' or genero='comedia' or genero='drama' or genero='ficçao' or genero='cientifica' or genero='musical' or genero='romance' or genero='suspense' or genero='terror'),
	atorPrincipal text not null,
	foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao)
	
);

create table Serie(
	titulo text,
	dataPublicacao text,
	genero text check (genero='acao' or genero='animacao' or genero='aventura' or genero='comedia' or genero='drama' or genero='ficçao' or genero='cientifica' or genero='musical' or genero='romance' or genero='suspense' or genero='terror'),
	numTemporadas integer check (numTemporadas>0),
	numEpisódiosTemporada integer check (numEpisodiosTemporada>0),
	atorPrincipal text not null,
	foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao)
);

create table Documentario(
	titulo text,
	dataPublicacao text,
	tipo text CHECK (tipo='autobiografico' or tipo='informacao' or tipo='exposicao'),
	foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao)
);

create table Anuncio(
	nome text,
	tipo text check (tipo='informativo' or tipo='comercial'),
	Pnome text,
	Prepresentante text,
	duraçao integer check (duraçao > 0),
	prioridade integer CHECK (prioridade>0 and prioridade<4),
	preferencia text CHECK (preferencia='filme' or preferencia='serie' or preferencia='documentario'),
	preco integer check (preco>0),
	primary key(nome, tipo), 
	foreign key(Prepresentante, Pnome) references Publicidade(representante, nome)
	
);

create table Cliente(
	NIF integer unique,
	email text primary key,
	Stipo text,
	nome text,
	palavraPasse text,
	telefone unique integer,				
	morada text
);

create table Subscricao(
	tipo text primary key check (tipo='Basic' or tipo='Gold' or tipo='Platinium'),
	numMaxVisualiz integer unique check ( numMaxVisualiz=1 or numMaxVisualiz=2 or numMaxVisualiz=5),
	qualidadeVideo integer unique check (qualidadeVideo='normal' or qualidadeVideo='FullHD' or qualidadeVideo='4K'),
	preco integer unique check (preco=8 or preco=11 or preco=14)

);

create table Aparece(
	titulo text,
	dataPublicacao text,
	nome text,
	tipo text,
	foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao),
	foreign key(nome, tipo) references Anuncio(nome, tipo)
);

create table Visualiza(
	titulo text,
	dataPublicacao text,
	NIF integer references Cliente(NIF),
	favorito integer check (favorito=0 or favorito=1),
	critica text,
	classificacao integer check (classificacao>0 and classificacao<6),
	primary key (titulo, dataPublicacao, NIF),
	foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao)
);
