create table professor(
    matricula varchar(9) primary key,
    nome varchar(100) not null,
    snome varchar(100) not null,
    datanasc timestamp,
    sexo ENUM('M', 'F'),
    salario float not null,
    matricu_coord_area varchar(9)
);

create table departamento (
    nome varchar(100) not null,
    sigla varchar(3) not null,
    codigo varchar(9) primary key,
    coordenador varchar(9),
    foreign key (coordenador) references
        professor(matricula)
);

alter table professor add depto varchar(9);

alter table professor add constraint foreign key (depto) references departamento(codigo);

create table projeto(
    nome varchar(100) not null,
    codigo varchar(9) primary key,
    depto varchar(9),
        foreign key (depto) references
            departamento(codigo),
    -- Duração em número de meses
    duracao integer not null
);

create table trabalha_em(
    matricProf varchar(9),
        foreign key (matricProf) references
            professor(matricula),
    codProj varchar(9),
        foreign key (codProj) references
            projeto(codigo),
    horas integer not null,
    primary key (matricProf, codProj)
);

create table dependente(
    matriculaProf varchar(9),
        foreign key (matriculaProf) references
            professor(matricula),
    nome varchar(100),
    rg varchar(15) primary key,
    sexo ENUM('M', 'F') not null,
    datanasc timestamp
);

create table telefone(
    matricProf varchar(9),
        foreign key (matricProf) references
            professor(matricula),
    telefone varchar(20) not null,
    primary key(matricProf, telefone)
);

create table email(
    matricProf varchar(9),
        foreign key (matricProf) references
            professor(matricula),
    email varchar(20) not null,
    primary key(matricProf, email)
);