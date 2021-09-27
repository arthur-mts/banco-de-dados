-- Questão 1
select nome, rg, datanasc
from dependente where sexo = 'F';

-- Questão 2
select distinct(salario)
from professor order by salario desc;

-- Questão 3
update projeto
set nome = 'Aplicações de Big Data'
where nome = 'Aplicações do NoSQL';

-- Questão 4
select matricula, concat(nome, ' ',snome)
from professor where year(datanasc) > 1970;

-- Questão 5
select *
from professor
where year(datanasc) >= 1980
  and year(datanasc) <= 1989
and snome like '%Pereira%'
order by datanasc desc;

-- Questão 6
select nome, datanasc
from professor order by datanasc limit 1;

-- Questão 7
select nome, matricula
from professor where nome like '%Maria%' order by nome desc;

-- Questão 8
select d.codigo, count(*) as 'QUANTIDADE DE PROJETOS'
from departamento d join projeto p on d.codigo = p.depto group by d.codigo;

-- Qustão 9
select avg(salario) as 'MEDIA'
from professor where salario between 4000 and 7000 and depto not in ('121', '125');

-- Questão 10
select d.nome, count(p.depto) as 'QND. Projeto'
from departamento d, professor p
where d.codigo = p.depto
group by d.codigo
having count(p.depto) > 2;

-- Questão 11
select nome, snome, matricula
from professor p where p.depto like (
    select codigo
    from departamento d
    where d.nome like '%Departamento de Tecnologia e Telematica%'
);

-- Questão 12
select *
from professor p
join email e on p.matricula = e.matricProf
where p.nome like 'João Carlos';

-- Questão 13
select p.nome
from professor p
where matricula = (select coordenador
    from departamento d where d.nome = 'Departamento de Engenharia de Computação' limit 1 );

-- Questão 14
select p.nome
from professor p, dependente d where d.matriculaProf <> p.matricula;

-- Questão 15
select distinct p.nome, p.matricula
from professor p, dependente d
where p.matricula = d.matriculaProf and p.matricula in (
    select d.matriculaProf
    from dependente group by d.matriculaProf
    having count(d.matriculaProf) > 2);