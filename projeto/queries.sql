-- 1: Nome e data de nascimento do artista mais velho cadastrado no museu
select nome, datanasc
from artista order by datanasc limit 1;

-- 2: Quantidade de obras de cada um dos tipos relevantes para o museu
select tipo,count(*)
from obra_arte group by tipo;


-- 3: Data e nome das exposições realizadas nos últimos dois anos
select nome, datainicio, datafim
from exposicao where extract(year from datainicio) >= extract(year from  now()) - 2;

-- 4: Relação dos objetos emprestados e sua respectiva coleção que fizeram parte da exposição realizada no dia tal ou de nome tal;
explain select t.titulo, t."desc", c.nome
from temporario t
    join exposicao_obra eo on eo.codigo_obra  = t.codigo
    inner join exposicao e on e.codigo = eo.codigo_exposicao
    join colecao c on c.codigo = t.codigo_colecao
    where e.nome ilike '%%';

-- 5: Objetos emprestados que estão com o prazo de empréstimo vencido;
select titulo, data_fim
from temporario where data_fim > now();

-- 6: Objeto mais caro em exposição no museu atualmente
select titulo, custo
from permanent order by custo desc limit 1;

-- 7: Pessoas importantes que foram homenageadas com esculturas que fazem parte do
-- acervo do museu.
select homenageado
from escultura where estatua_flag is true;