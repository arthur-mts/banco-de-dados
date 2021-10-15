-- 1: Nome e data de nascimento do artista mais velho cadastrado no museu
select nome, datanasc
from artista order by datanasc limit 1;

-- 2: Quantidade de obras de cada um dos tipos relevantes para o museu
select count(e) as qnt_escultura
from escultura e;

select count(p) as qnt_pintura
from pintura p;

select count(o) as qnt_outro
from outro o;

-- 3: Data e nome das exposições realizadas nos últimos dois anos
select nome, datainicio, datafim
from exposicao where extract(year from datainicio) >= extract(year from  now()) - 2;

-- 4: Relação dos objetos emprestados e sua respectiva coleção que fizeram parte da exposição realizada no dia tal ou de nome tal;
select oa.titulo, oa."desc", c.nome
from temporario t
    join obra_arte oa on oa.codigo = t.codigo
    join exposicao_obra eo on eo.codigo_obra  = t.codigo
    inner join exposicao e on e.codigo = eo.codigo_exposicao
    join colecao c on c.codigo = t.codigo_colecao
    where extract(day from e.datainicio) = 14;
-- Para filtrar pelo nome:
-- where e.nome ilike '%%';

-- 5: Objetos emprestados que estão com o prazo de empréstimo vencido;
select oa.titulo, oa."desc" ,data_fim
from temporario t
join obra_arte oa on t.codigo = oa.codigo
where t.data_fim > now();

-- 6: Objeto mais caro em exposição no museu atualmente
select oa.titulo, p.custo
from permanent p
join obra_arte oa on oa.codigo = p.codigo
order by p.custo desc limit 1;

-- 7: Pessoas importantes que foram homenageadas com esculturas que fazem parte do
-- acervo do museu.
select homenageado
from escultura where estatua_flag is true;