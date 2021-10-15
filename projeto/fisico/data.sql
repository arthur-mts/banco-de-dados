-- instituições
insert into instituicao(cnpj, descricao, telefone, nome) 
values ('123456', 'Instituição de Ensino Federal', '83 970707060', 'IFPB');

insert into instituicao(cnpj, descricao, telefone, nome) 
values ('234861', 'Delivery de alimentos', '11 933249999', 'IFOOD');

-- artistas
-- insert into artista (nome, dataNasc, dataMorte, pais, estilo)
-- values ('', '//', '//','XX', 'Modernismo');

insert into artista (nome, dataNasc, dataMorte, pais, estilo)
values ('Tomi', '23/4/1898','6/6/1966','EUA', 'Modernismo');
-- codigo(1)
insert into artista (nome, dataNasc, dataMorte, pais, estilo)
values ('Joao', '9/12/1980','27/1/2010','BR', 'Modernismo');
-- codigo(2)
insert into artista (nome, dataNasc, dataMorte, pais, estilo)
values ('Van Gogh', '30/3/1853', '29/7/1890','NL', 'Modernismo');
-- codigo(3)
insert into artista (nome, dataNasc, dataMorte, pais, estilo)
values ('Miguel', '10/2/1819', '30/7/1900','ES', 'Rupestre');
-- codigo(4)
-- coleções
insert into colecao (nome, descricao, instituicao_responsavel)
values ('Goghs', 'Obras de Van Gogh', '123456')
-- codigo(1)

insert into colecao (nome, descricao, instituicao_responsavel)
values ('Pré-Histórica', 'Obras de outra era', '123456')
-- codigo(2)

insert into colecao (nome, descricao, instituicao_responsavel)
values ('Dadaísmo', 'Obras que são', '234861')
-- codigo(3)

-- xx temporarias xx
-- begin van gogh
insert into obra_arte (titulo, estilo, anocriacao, "desc", artista)
values ('Noite Estrelada', 'Modernismo', 1889, 'Representação da noite',
        3)

insert into temporario (codigo, data_inicio, data_fim, codigo_colecao)
values (1, now(), now() + interval '15 days', 1)

insert into pintura (codigo, altura, largura)
values (1, 90, 120)
-- codigo(1)

-----------------------------------------------------------------------

insert into obra_arte (titulo, estilo, anocriacao, "desc", artista)
values ('Quarto em Arles', 'Modernismo', 1878, 'O quarto que Vincent Van Gogh alugou numa pensão na cidade de Arles',
        3)

insert into temporario (codigo, data_inicio, data_fim, codigo_colecao)
values (1, now(), now() + interval '15 days', 1)

insert into pintura (codigo, altura, largura)
values (2, 130, 85)
-- codigo(2)
-- end vangogh

-- begin dadaismo
insert into obra_arte (titulo, estilo, anocriacao, "desc", artista)
values ('Privada', 'Modernismo', 2003, 'Simples fotografia de uma privada', 1)

insert into temporario (codigo, data_inicio, data_fim, codigo_colecao)
values (3, now() - interval '20 days', now() + interval '1 day', 3)

insert into outro (codigo, descricao)
values (3, 'Simples fotografia de uma privada')
-- codigo(3)
-- end dadaismo
-- \xx temporarias xx

-- xx permanentes xx
-- begin rupestre
insert into obra_arte (titulo, estilo, anocriacao, "desc", artista)
values ('Desenho em rocha', 'Rupestre', 1147, 'Desenho simples feito em rocha com sangue de animais', 4)

insert into permanent (codigo, data_aquisicao, custo, vendedor)
values (4, now() - interval '5 months', 3117000, 'Ellen Musk')

insert into pintura (codigo, altura, largura)
values (4, 425, 650)
-- codigo(4)
-----------------------------------------------------------------------

insert into obra_arte (titulo, estilo, anocriacao, "desc", artista)
values ('Rabisco na caverna', 'Rupestre', 1008, 'Representação de uma sociedade feita com carvão', 4)

insert into permanent (codigo, data_aquisicao, custo, vendedor)
values (5, now() - interval '5 months', 12000000, 'Joe Bezzu')

insert into pintura (codigo, altura, largura)
values (5, 250, 425)
-- codigo(5)
-----------------------------------------------------------------------

insert into obra_arte (titulo, estilo, anocriacao, "desc", artista)
values ('Rocha lapidada', 'Rupestre', 1969, 'Rocha em formato de roda', 4)

insert into permanent (codigo, data_aquisicao, custo, vendedor)
values (6, now() - interval '5 months', 18500, 'Romildo Júnior')

insert into escultura (codigo, largura, altura, peso, material, estatua_flag, homenageado)
values (6, 80, 87, 3, 'pedregulho', 'false', null)
-- codigo(6)
-- end rupestre

-- begin dadaismo
insert into obra_arte (titulo, estilo, anocriacao, "desc", artista)
values ('Reciclomem', 'Moderna', 2005, 'Escultura feita com peças descartadas', 2)

insert into permanent (codigo, data_aquisicao, custo, vendedor)
values (7, now() - interval '20 days', 500, 'Jeff Jetsons')

insert into escultura (codigo, largura, altura, peso, material, estatua_flag, homenageado)
values (6, 180, 50, 40, 'metal', 'false', null)
-- codigo(7)
-----------------------------------------------------------------------

insert into obra_arte (titulo, estilo, anocriacao, "desc", artista)
values ('Memelisa', 'Moderna', 2008, 'Monalisa representada segundo a cultura pop', 1)

insert into permanent (codigo, data_aquisicao, custo, vendedor)
values (8, now() - interval '20 days', 15, 'Bill Murray')  

insert into pintura (codigo, altura, largura)
values (8, 60, 30)
-- codigo(8)
-- end dadaismo
-- \xx permanentes xx

-- xx exposições xx
-- begin Expogh
insert into exposicao (nome, dataInicio, dataFim)
values ('Expogh', now(), now() + interval '15 days')
-- codigo(1)

insert into exposicao_obra(codigo_obra, codigo_exposicao)
values(1, 1)

insert into exposicao_obra(codigo_obra, codigo_exposicao)
values(2, 1)


-- end Expogh

-- begin Rexpo
insert into exposicao (nome, dataInicio, dataFim)
values ('Rexpo', now() - interval '5 months', now() - interval '3 months')
-- codigo(2)

insert into exposicao_obra(codigo_obra, codigo_exposicao)
values(4, 2)

insert into exposicao_obra(codigo_obra, codigo_exposicao)
values(5, 2)

insert into exposicao_obra(codigo_obra, codigo_exposicao)
values(6, 2)
-- end Rexpo

-- begin idadaí
insert into exposicao (nome, dataInicio, dataFim)
values ('Idadaí', now() - interval '20 days', now() + interval '1 day')
-- codigo(3)
insert into exposicao_obra(codigo_obra, codigo_exposicao)
values(3, 3)

insert into exposicao_obra(codigo_obra, codigo_exposicao)
values(7, 3)

insert into exposicao_obra(codigo_obra, codigo_exposicao)
values(8, 3)
-- end idadaí
-- \xx exposições xx