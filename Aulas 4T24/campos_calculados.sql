CREATE TABLE Vendas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    vendedor TEXT NOT NULL,
    produto TEXT NOT NULL,
    quantidade INTEGER NOT NULL,
    preco_unitario REAL NOT NULL,
    data_venda DATE
);

INSERT INTO Vendas (vendedor, produto, quantidade, preco_unitario, data_venda) VALUES
('João Silva', 'Televidor LED 42"', 5, 1200.00, '2020-10-15'),
('Maria Souza', 'Smartphone', 10, 800.00, '2022-09-10'),
('Pedro Santos', 'Cafeteira', 3, 150.00, '2023-08-20'),
('Ana Lima', 'Refrigerador', 2, 2000.00, '2021-11-01'),
('Lucas Rocha', 'Fone de Ouvido', 15, 75.00, '2023-07-25'),
('João Silva', 'Notebook', 4, 2500.00, '2019-09-18'),
('Maria Souza', 'Tablet', 6, 900.00, '2023-08-05');

--4º CAMPO CALCULADO: nome do produto, a data da venda, quantidade de anos desde a venda
SELECT
produto, 
data_venda, 
strftime('%Y', 'now') AS anoAtual, --não precisa mostrar, somente demonstrando como calcula
strftime('%Y', data_venda) AS anoVenda,  --não precisa mostrar, somente demonstrando como calcula
(strftime('%Y', 'now') - strftime('%Y', data_venda)) AS qtdeAnos
FROM
Vendas
ORDER BY
produto;


-- 3º CAMPO CALCULADO: nome do produto, preço unitário, se o produto é caro ou barato?
-- caro: produto com preço maior ou igual a 200
/*
SELECT
produto, 
preco_unitario, 
    CASE
        WHEN preco_unitario >= 200 THEN 'Caro' 
        --posso ter vários when, como se ele fosse um if, elif, até parece switch case
        ELSE 'Barato'
    END AS tipo
FROM
Vendas
ORDER BY
produto;
*/


--2º CAMPO CALCULADO: o nome do vendedor, a média de preço, total de vendas
/*
SELECT
vendedor, 
COUNT(vendedor), 
AVG(preco_unitario) AS media, -- esse aqui não é interessante mostrar pois é confuso
AVG(quantidade * preco_unitario) as mediaTotal,
SUM(quantidade * preco_unitario) as totalVendas
FROM
Vendas
GROUP BY vendedor
ORDER BY
vendedor
*/

--1º CAMPO CALCULADO: o nome do produto, a quantidade de produtos, preço unitário, valor total
/*
SELECT
produto, quantidade, preco_unitario, (quantidade * preco_unitario) AS valor_total
FROM
vendas;
*/