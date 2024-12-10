CREATE TABLE VendasEcommerce (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_vendedor TEXT NOT NULL,
    cpf_vendedor TEXT NOT NULL,
    email_vendedor TEXT NOT NULL,
    produto TEXT NOT NULL,
    quantidade INTEGER NOT NULL,
    preco_unitario REAL NOT NULL,
    data_venda DATE NOT NULL
);

INSERT INTO VendasEcommerce (nome_vendedor, cpf_vendedor, email_vendedor, produto, quantidade, preco_unitario, data_venda) VALUES
('Ricardo Oliveira', '456.123.789-01', 'ricardo.oliveira@email.com', 'Tênis Nike', 1, 399.90, '2019-05-20'),
('Juliana Almeida', '789.654.123-32', 'juliana.almeida@email.com', 'Mochila', 3, 159.90, '2022-05-21'),
('Fernando Costa', '123.456.789-43', 'fernando.costa@email.com', 'Relógio', 2, 299.90, '2014-05-22'),
('Ana Silva', '456.789.123-54', 'ana.silva@email.com', 'Carregador de Celular', 5, 79.90, '2023-05-23'),
('Juliana Almeida', '789.654.123-32', 'juliana.almeida@email.com', 'Caderno', 10, 19.90, '2021-05-21'),
('Fernando Costa', '123.456.789-43', 'fernando.costa@email.com', 'Carteira', 20, 19.90, '2015-05-22'),
('Ana Silva', '456.789.123-54', 'ana.silva@email.com', 'Película de Celular', 30, 9.90, '2017-05-23'),
('Ana Silva', '456.789.123-54', 'ana.silva@email.com', 'Protetor de Camera', 40, 5.90, '2022-01-01');

/*
SELECT
nome_vendedor, cpf_vendedor
FROM 
VendasEcommerce;
*/

--Gere uma consulta que retorne o nome do produto, a quantidade vendida, o preço unitário 
--e calcule o valor total da venda.

/*
SELECT
produto, quantidade, preco_unitario, (quantidade * preco_unitario) AS total_venda
FROM
VendasEcommerce
GROUP BY 
total_venda;
*/

--Crie uma consulta que mostre cada vendedor, a soma total das vendas, a média por venda 
--e média de produto vendido na plataforma de e-commerce.

SELECT
nome_vendedor, SUM(quantidade * preco_unitario) AS total_vendas,
AVG(quantidade * preco_unitario) AS media_preco_unitario,
(SUM(quantidade * preco_unitario) / SUM(quantidade)) AS media_valor_produto_vendido
FROM
VendasEcommerce
GROUP BY
nome_vendedor;


--Classifique os produtos como "Caro" ou "Barato" com base no preço unitário.

SELECT
produto, preco_unitario,
    CASE 
        WHEN preco_unitario > 200 THEN 'CARO'
        WHEN preco_unitario > 80 THEN 'NORMAL'
        WHEN preco_unitario > 15 THEN 'BARATO'
        ELSE 'BARATINHO'
        END AS tipo_produto
FROM
VendasEcommerce
GROUP BY
preco_unitario;



--Gere uma consulta que mostre todos os produtos vendidos online e calcule a diferença em anos 
--entre a data da venda e o ano atual.

SELECT
produto, data_venda,
strftime('%Y', 'now') AS anoAtual, --não precisa mostrar, somente demonstrando como calcula
strftime('%Y', data_venda) AS anoVenda,  --não precisa mostrar, somente demonstrando como calcula
(strftime('%Y', 'now') - strftime('%Y', data_venda)) AS qtdeAnos
FROM
VendasEcommerce
ORDER BY
produto;