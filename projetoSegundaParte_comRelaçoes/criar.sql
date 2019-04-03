create table Empresa (
	nome text,
	representante text,
	contacto integer,
	morada text,
	primary key(nome, representante)
);

create table Estudio(
	nome text,
	representante text,
	foreign key(nome, representante) references Empresa(nome, representante) ,
	
);

create table Publicidade(
	nome text,
	representante text,
	foreign key(nome, representante) references Empresa(nome, representante),
);

create table Video(
	titulo text,
	dataPublicacao text,
	Enome text,
	Erepresentante text,
	descricao text,
	realizador text,
	duracao integer,
	primary key(titulo, dataPublicacao)
	foreign key(Erepresentante, Enome) references Estudio(representante, nome)
);

create table Filme(
	titulo text,
	dataPublicacao text,
	genero text,
	atorPrincipal text,
	foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao)
);

create table Serie(
	titulo text,
	dataPublicacao text,
	numTemporadas integer,
	numEpisódiosTemporada integer,
	atorPrincipal text,
	foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao)
);

create table Documentario(
	titulo text,
	dataPublicacao text,
	tipo text,
	foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao)
);

create table Anuncio(
	nome text,
	tipo text,
	Pnome text,
	Prepresentante text,
	duraçao integer,
	prioridade integer,
	preferencia text,
	preco integer,
	primary key(nome, tipo), 
	foreign key(Prepresentante, Pnome) references Publicidade(representante, nome)
);

create table Cliente(
	NIF integer unique,
	email text primary key,
	Stipo text,
	nome text,
	palavraPasse text,
	telefone integer,
	morada text,
	
);

create table Subscricao(
	tipo text,
	numMaxVisualiz integer,
	qualidadeVideo integer,
	preco integer,
	primary keys(tipo, numMaxVisualiz, qualidadeVideo, preco)
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
	favorito integer,
	critica text,
	classificacao integer,
	foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao),
);
