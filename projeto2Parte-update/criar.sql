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
	CONSTRAIN EmpresaPK primary key(nome, representante),

);

create table Estudio(
	nome text,
	representante text,
	CONSTRAIN EstudioFK foreign key(nome, representante) references Empresa(nome, representante)
	
);

create table Publicidade(
	nome text,
	representante text,
	CONSTRAIN Publicidade foreign key(nome, representante) references Empresa(nome, representante)
);

create table Video(
	titulo text,
	dataPublicacao text,
	Enome text,
	Erepresentante text,
	descricao text,
	realizador text,
	duracao integer,
	CONSTRAIN VideoPK primary key(titulo, dataPublicacao),
	CONSTRAIN VideoFK foreign key(Erepresentante, Enome) references Estudio(representante, nome)

);

create table Filme(
	titulo text,
	dataPublicacao text,
	genero text CONSTRAIN GeneroCerto check (genero='acao' or genero='animacao' or genero='aventura' or genero='comedia' or genero='drama' or genero='ficçao' or genero='cientifica' or genero='musical' or genero='romance' or genero='suspense' or genero='terror'),
	atorPrincipal text not null,
	CONSTRAIN FilmeFK foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao)
	
);

create table Serie(
	titulo text,
	dataPublicacao text,
	genero text CONSTRAIN GeneroCertocheck (genero='acao' or genero='animacao' or genero='aventura' or genero='comedia' or genero='drama' or genero='ficçao' or genero='cientifica' or genero='musical' or genero='romance' or genero='suspense' or genero='terror'),
	numTemporadas integer CONSTRAIN TempMaiorZero check (numTemporadas>0),
	numEpisódiosTemporada integer CONSTRAIN EpMaiorZero check (numEpisodiosTemporada>0),
	atorPrincipal text not null,
	CONSTRAIN SerieFK foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao)
);

create table Documentario(
	titulo text,
	dataPublicacao text,
	tipo text CONSTRAIN GeneroCerto check (tipo='autobiografico' or tipo='informacao' or tipo='exposicao'),
	CONSTRAIN DocumentarioFK foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao)
);

create table Anuncio(
	nome text,
	tipo text CONSTRAIN TipoCerto check (tipo='informativo' or tipo='comercial'),
	Pnome text,
	Prepresentante text,
	duracao integer CONSTRAIN DuracaoMaiorZero check (duraçao > 0),
	prioridade integer CONSTRAIN PrioridadeCerta check (prioridade>0 and prioridade<4),
	preferencia text CONSTRAIN PrefCerta check (preferencia='filme' or preferencia='serie' or preferencia='documentario'),
	preco integer CONSTRAIN PrecoMaiorZero check (preco>0),
	CONSTRAIN AnuncioPK primary key(nome, tipo), 
	CONSTRAIN AnuncioFK foreign key(Prepresentante, Pnome) references Publicidade(representante, nome)
	
);

create table Cliente(
	NIF integer unique,
	email text CONSTRAIN EmailPK primary key,
	Stipo text,
	nome text,
	palavraPasse text,
	telefone integer unique,				
	morada text
);

create table Subscricao(
	tipo text CONSTRAIN TipoCerto check (tipo='Basic' or tipo='Gold' or tipo='Platinium'),
	numMaxVisualiz integer unique CONSTRAIN MaxVizualCerto check ( numMaxVisualiz=1 or numMaxVisualiz=2 or numMaxVisualiz=5),
	qualidadeVideo integer unique CONSTRAIN QualidadeCerto check (qualidadeVideo='normal' or qualidadeVideo='FullHD' or qualidadeVideo='4K'),
	preco integer unique CONSTRAIN PrecoCerto check (preco=8 or preco=11 or preco=14),
	CONSTRAIN TipoPK primary key (tipo)

);

create table Aparece(
	titulo text,
	dataPublicacao text,
	nome text,
	tipo text,
	CONSTRAIN ApareceFK1 foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao),
	CONSTRAIN ApareceFK2 foreign key(nome, tipo) references Anuncio(nome, tipo)
);

create table Visualiza(
	titulo text,
	dataPublicacao text,
	NIF integer CONSTRAIN NifFK references Cliente(NIF),
	favorito integer CONSTRAIN favoritoCerto check (favorito=0 or favorito=1),
	critica text,
	classificacao integer CONSTRAIN ClassCerto check (classificacao>0 and classificacao<6),
	CONSTRAIN VisualizaPK primary key (titulo, dataPublicacao, NIF),
	CONSTRAIN VisualizaFK foreign key(titulo, dataPublicacao) references Video(titulo, dataPublicacao)
);
