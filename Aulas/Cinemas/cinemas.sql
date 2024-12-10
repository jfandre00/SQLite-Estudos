.open cinemas.db
.mode table

drop table if exists filmes;

CREATE TABLE filmes (
    id integer PRIMARY KEY AUTOINCREMENT,
    data text,
    filme char(40),
    genero char(30),
    publico int,
    preco real
);

INSERT INTO filmes VALUES
    (null, '2022-05-27 22:00:00', 'Top Gun Maverick', 'Ação', 131, 18.00),
    (null, '2022-05-27 22:00:00', 'Downton Abbey A New Era', 'Drama', 90, 18.00),
    (null, '2022-05-27 22:00:00', 'Men', 'Terror', 100, 18.00),
    (null, '2022-05-27 22:00:00', 'The Bad Guys', 'Animação', 83, 18.00),
    (null, '2022-05-28 09:00:00', 'Top Gun Maverick', 'Ação', 112, 8.00),
    (null, '2022-05-28 09:00:00', 'Downton Abbey A New Era', 'Drama', 137, 8.00),
    (null, '2022-05-28 09:00:00', 'Men', 'Terror', 25, 8.00),
    (null, '2022-05-28 09:00:00', 'The Bad Guys', 'Animação', 142, 8.00),
    (null, '2022-05-28 17:00:00', 'Top Gun Maverick', 'Ação', 150, 13.00),
    (null, '2022-05-28 17:00:00', 'Downton Abbey A New Era', 'Drama', 118, 13.00),
    (null, '2022-05-28 17:00:00', 'Men', 'Terror', 88, 13.00),
    (null, '2022-05-28 17:00:00', 'The Bad Guys', 'Animação', 130, 13.00);

select sum(publico) as Total_Público from filmes;

select round(avg(publico),0) as Média_Público from filmes;

--saber a receita de público dos filmes

select sum(publico*preco) as Receita from filmes;

select round(avg(publico*preco),2) as Média_Receita from filmes;

--quantas sessões tivemos?
select count(*) as Filmes from filmes;

--filme com maior público
select max(publico) as Filme_com_Maior_Púlico from filmes;

--pegando o nome do filme também
select filme, max(publico) as Filme_com_Maior_Púlico from filmes;

select filme, min(publico) as Filme_com_Menor_Púlico from filmes;

select *, min(preco) from filmes; -- só vai trazer o primeiro, sendo que temos 4 filmes com o mesmo preço

--como eu faço para pegar todos os máximos e mínimos? --SUBQUERY
select filme, preco from filmes where preco = (select min(preco) from filmes);

--AGREGAÇÃO - QUANDO TEMOS COLUNAS COM VALORES REPETIDOS
--ID, PUBLICO -> CADA COLUNA TEM UM ID DIFERENTE
--FILME, GÊNERO, PREÇO, DATA

select date(data) from filmes group by date(data)


--selecionei a data, fiz a soma de público e agrupei por data 
select date(data), sum(publico) as Total_Público from filmes group by date(data)

--agrupar as receitas por data
select date(data), sum(publico*preco) as Total_Público from filmes group by date(data)

--assim fica mais fácil de trabalhar
select date(data), sum(publico*preco) as Total_Receita
from filmes 
group by date(data)
order by Total_Receita DESC;

--qual gênero de filme que dá mais público?
select genero, sum(publico) as Total_Público
from filmes 
group by genero
order by Total_Público DESC;

--receita por gênero?
select genero, sum(publico*preco) as Total_Receita
from filmes 
group by genero
order by Total_Receita DESC;


-- na consulta abaixo ele não vai pegar os filmes que custam 8 ou menos
select genero, sum(publico*preco) as Total_Receita
from filmes
where preco > 8
group by genero
order by Total_Receita DESC;

-- use o where antes de agrupar 
-- where não trabalha com agregação (soma, média, min, max)
-- depois de agrupar use o having
-- having consegue trabalhar com agregação

select genero, sum(publico*preco) as Total_Receita
from filmes
group by genero
having Total_Receita > 4000
order by Total_Receita DESC;

-- agrupa, depois seleciona
select genero, sum(publico) as Total_Público
from filmes
group by genero
having Total_Público > 300
order by Total_Público DESC


--saber a hora que me dá a maior receita?

select time(data) as Hora, sum(publico*preco) as Total_Receita
from filmes
group by Hora


--quero pegar além disso as receitas > 4000 ordenado de forma descedente

select time(data) as Hora, sum(publico*preco) as Total_Receita
from filmes
group by Hora
having Total_Receita > 4000
order by Total_Receita DESC;

--agrupando por data 

select date(data) as Data, sum(publico*preco) as Total_Receita
from filmes
group by Data
having Total_Receita > 4000
order by Total_Receita DESC;