create table instituicao(
	cnpj varchar(15),
	descricao varchar(100),
	telefone varchar(20)
);

create table colecao(
	codigo SERIAL primary key,
	nome varchar(20),
	descricao varchar(100),
	instituicao_responsavel varchar(15),
	dataInicioEmprestimo timestamptz,
	dataFimEmprestimo timestamptz
);

create table artista(
	codigo SERIAL primary key,
	nome varchar(20),
	dataNasc timestamptz,
	dataMorte timestamptz,
	pais varchar(20),
	estilo varchar(20),
	instituicao_responsavel varchar(15)
); 

