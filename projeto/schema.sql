CREATE SCHEMA "museu";
ALTER DATABASE "projeto-museu" SET search_path TO "museu", public;
SET search_path to "museu", public;

create table instituicao(
                            cnpj varchar(15) primary key,
                            descricao varchar(100),
                            telefone varchar(20)
);

create table colecao(
                        codigo SERIAL primary key,
                        nome varchar(20),
                        descricao varchar(100),
                        instituicao_responsavel varchar(15),
                        dataInicioEmprestimo timestamptz,
                        dataFimEmprestimo timestamptz,
                        foreign key (instituicao_responsavel) references instituicao(cnpj)
);

create table artista(
                        codigo SERIAL primary key,
                        nome varchar(20),
                        dataNasc timestamptz,
                        dataMorte timestamptz,
                        pais varchar(20),
                        estilo varchar(20),
                        instituicao_responsavel varchar(15),
                        foreign key (instituicao_responsavel) references instituicao(cnpj)
);

create table obra_arte (
                           codigo serial primary key,
                           titulo varchar(150),
                           estilo varchar(60),
                           anoCriacao int,
                           "desc" varchar(250),
                           tipo varchar(60),
                           artista int,
                           foreign key (artista) references artista(codigo)
);

create table exposicao (
                           codigo serial primary key,
                           nome varchar(200),
                           dataInicio timestamptz,
                           dataFim timestamptz
);

create table exposicao_obra (
                                codigo_obra int,
                                codigo_exposicao int,
                                foreign key (codigo_exposicao) references exposicao(codigo),
                                foreign key (codigo_obra) references obra_arte(codigo)
);


-- CREATE OR REPLACE FUNCTION date_range_validate(codigo_obra_p int, codigo_exposica_p int)
--     RETURNS boolean
--     LANGUAGE plpgsql
-- AS $function$
-- DECLARE
--     valid boolean;
--     datetime_exposicao_fim timestamptz;
--     datetime_exposicao_start timestamptz;
-- BEGIN
--     datetime_exposicao_fim := (select dataFim from exposicao where codigo = codigo_exposica_p);
--     datetime_exposicao_start := (select dataInicio from exposicao where codigo = codigo_exposica_p);
--     valid := (SELECT CASE WHEN
--         (SELECT 1 FROM   exposicao e
--             inner join exposicao_obra eo on e.codigo = eo.codigo_exposicao
--             WHERE  codigo_obra_p = eo.codigo_obra
--                 and eo.codigo_exposicao = codigo_exposica_p
--                 and e.dataFim <= datetime_exposicao_fim
--                 and e.dataInicio >= datetime_exposicao_start
--                               ) > 0
--                              THEN false ELSE true END);
--
--     return valid;
-- end
-- $function$
-- ;
-- ALTER TABLE exposicao_obra ADD CONSTRAINT ck_date CHECK (date_range_validate(codigo_obra, codigo_exposicao));


-- AQUI FOI USADO O 
create table permanent (
                           data_aquisicao timestamptz,
                           custo float,
                           vendedor varchar(100)
) inherits (obra_arte);

create table temporario (
                            data_inicio timestamptz,
                            data_fim timestamptz,
                            colecao varchar(100)
) inherits (obra_arte);


-- USEI O MODELO 1 DA REGRA 8 DE GENERALIZAÇÃO PARA ESSAS TABELAS
-- https://drive.google.com/file/d/10l4ZpYs1DCQ9jGLXC_YGmFq5DLipns8R/view
create table escultura (
  codigo int primary key,
  largura float,
  altura float,
  peso float,
  material varchar(30),
  foreign key (codigo) references obra_arte(codigo)
);

create table pintura (
    codigo int primary key,
    altura float,
    peso float,
    foreign key (codigo) references obra_arte(codigo)
);

create table outro (
    codigo int primary key,
    descricao varchar(100),
    foreign key (codigo) references obra_arte(codigo)
);

insert into exposicao(nome, datainicio, datafim) values ('Test1', '2021-10-13 23:50:41.638139 +00:00', '2021-10-13 23:50:41.638139 +00:00');
insert into exposicao(nome, datainicio, datafim) values ('Test2', '2021-10-13 23:50:41.638139 +00:00', '2021-10-13 23:50:41.638139 +00:00');
insert into instituicao(cnpj, descricao, telefone) values ('4545455454', 'ssdasdas', 'sadsasdssd');
insert into artista(nome, dataNasc, dataMorte, pais, estilo, instituicao_responsavel) VALUES ('artista', now(), now(), 'test', 'rere', '4545455454');
insert into obra_arte(titulo, estilo, anocriacao, "desc", tipo, artista) VALUES
    ('Tesste', 'sdlk', 2016, 'dasda', 'sdada', 1);
