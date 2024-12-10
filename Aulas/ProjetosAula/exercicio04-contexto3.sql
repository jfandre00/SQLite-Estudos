CREATE TABLE VendasAlimentos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_vendedor TEXT NOT NULL,
    cpf_vendedor TEXT NOT NULL,
    email_vendedor TEXT NOT NULL,
    produto TEXT NOT NULL,
    quantidade INTEGER NOT NULL,
    preco_unitario REAL NOT NULL,
    data_venda DATE NOT NULL
);

INSERT INTO VendasAlimentos (nome_vendedor, cpf_vendedor, email_vendedor, produto, quantidade, preco_unitario, data_venda) VALUES
('Bruno Mendes', '456.789.123-45', 'bruno.mendes@email.com', 'Arroz', 10, 4.90, '2023-05-05'),
('Sandra Ribeiro', '654.987.321-56', 'sandra.ribeiro@email.com', 'Feijão', 5, 6.90, '2023-05-06'),
('Lucas Silva', '321.654.987-67', 'lucas.silva@email.com', 'Açúcar', 8, 2.50, '2023-05-07'),
('Juliana Martins', '147.258.369-78', 'juliana.martins@email.com', 'Sal', 3, 1.50, '2023-05-08'),
('Patricia Almeida', '258.369.147-89', 'patricia.almeida@email.com', 'Óleo', 4, 3.80, '2023-05-09'),
('Eduardo Sousa', '951.753.852-90', 'eduardo.sousa@email.com', 'Macarrão', 7, 2.30, '2023-05-11'),
('Ana Costa', '369.258.147-01', 'ana.costa@email.com', 'Leite', 12, 3.20, '2023-05-12'),
('Roberto Ferreira', '654.123.789-12', 'roberto.ferreira@email.com', 'Queijo', 6, 15.00, '2023-05-13'),
('Camila Nascimento', '987.456.321-23', 'camila.nascimento@email.com', 'Presunto', 5, 12.50, '2023-05-14'),
('Lucas Lima', '321.654.987-34', 'lucas.lima@email.com', 'Pão', 20, 1.00, '2023-05-15');

/*
SELECT 
nome_vendedor, cpf_vendedor, email_vendedor, produto, quantidade, preco_unitario, data_venda
FROM
VendasAlimentos
GROUP BY
data_venda;
*/

/*
SELECT
produto, quantidade, preco_unitario, (quantidade * preco_unitario) AS total_venda
FROM
VendasAlimentos
GROUP BY
total_venda;
*/

/*
SELECT
nome_vendedor, (quantidade * preco_unitario) AS total_venda, AVG(quantidade * preco_unitario) AS media_venda
FROM
VendasAlimentos
GROUP BY
nome_vendedor;
*/

/*
SELECT produto, preco_unitario,
    CASE
        WHEN preco_unitario > 3.5 THEN 'Caro'
        ELSE 'Barato'
        END AS tipo_produto
FROM
VendasAlimentos
GROUP BY
preco_unitario;
*/

SELECT produto, data_venda,
(strftime('%Y', 'now') - strftime('%Y', data_venda)) AS qtdeAnos
FROM
VendasAlimentos
ORDER BY
qtdeAnos;