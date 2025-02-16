create table produtos(
	id integer primary key autoincrement,
	nome char(50) not null,
	preco real not null,
	quantidade int not null);

INSERT INTO Produtos VALUES (null, 'Cerveja', 4.99, 100);
INSERT INTO Produtos VALUES (null, 'Coca', 3.99, 200);
INSERT INTO Produtos VALUES (null, 'Agua', 1.99, 300);
INSERT INTO Produtos VALUES (null, 'Guarana', 0.99, 400);
INSERT INTO Produtos VALUES (null, 'Mineirinho', 2.99, 500);

--COMANDOS SQL AULA 28-11-24 PROJETO DE BLOCO DADOS

select * from produtos where id = 3;

select nome, preco from produtos where id = 3;

select * from produtos where id > 3;

select * from produtos where id != 3;

select * from produtos where (preco > 3) and (quantidade < 300);

select * from produtos where (preco > 3) or (quantidade < 400);

select * from produtos where not ((preco > 3) or (quantidade < 400));

select * from produtos where id in (1, 3, 5);

select * from produtos where id = 1 or id = 3 or id= 5;

select * from produtos where id not in (1, 3, 5);

select * from produtos where quantidade between 200 and 400;

select * from produtos where quantidade not between 200 and 400;

select * from produtos where (quantidade between 200 and 400) and (p
reco between 1 and 3);

select * from produtos where nome like 'c%';

select * from produtos where nome like '%a';

select * from produtos where nome like 'c%a';

select * from produtos where nome like '%u%';

select * from produtos where nome not like '%u%';

---------------------------------------------
--FUNÇÕES DENTRO DO SQLITE

select datetime('now');  -- traz a data atual

select sum(quantidade) from produtos; -- soma total dos produtos

--CONCEITO DE ALIAS (APELIDO)

select sum(quantidade) as Total_produtos from produtos;

select min(quantidade) as Menor_Quantidade from produtos;

select max(quantidade) as Maior_Quantidade from produtos;

select avg(preco) as Media_Preco from produtos;

select round(avg(preco),1) as Media_Preco from produtos;

select trunc(avg(preco)) as Media_Truncada from produtos; -- tirando a parte fracionada

select count(*) as Numeros_Produtos from produtos;

----------------------------------------------
--ORDENAÇÃO

select * from produtos order by preco; -- preço ascendente

select * from produtos order by preco desc;

select * from produtos order by nome asc; -- nome em ordem crescente

select * from produtos where quantidade < 400 order by nome asc;

select * from produtos where quantidade < 400 order by quantidade desc;

select * from produtos where preco > 2 order by preco;

select * from produtos where preco > 2 order by nome;