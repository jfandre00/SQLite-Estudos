CREATE TABLE VendasRoupas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome_vendedor TEXT NOT NULL,
    cpf_vendedor TEXT NOT NULL,
    email_vendedor TEXT NOT NULL,
    produto TEXT NOT NULL,
    quantidade INTEGER NOT NULL,
    preco_unitario REAL NOT NULL,
    data_venda DATE NOT NULL
);

INSERT INTO VendasRoupas (nome_vendedor, cpf_vendedor, email_vendedor, produto, quantidade, preco_unitario, data_venda) VALUES
('João Silva', '123.456.789-10', 'joao.silva@email.com', 'Camiseta', 2, 59.90, '2023-05-10'),
('Maria Oliveira', '987.654.321-00', 'maria.oliveira@email.com', 'Calça Jeans', 1, 199.90, '2023-05-12'),
('Carlos Pereira', '456.789.123-11', 'carlos.pereira@email.com', 'Vestido', 3, 129.90, '2023-05-15'),
('Ana Costa', '321.654.987-22', 'ana.costa@email.com', 'Saia', 2, 89.90, '2023-06-10'),
('Fernando Santos', '789.123.456-33', 'fernando.santos@email.com', 'Blusa', 1, 79.90, '2023-06-15'),
('Juliana Lima', '654.321.789-44', 'juliana.lima@email.com', 'Jaqueta', 1, 299.90, '2023-06-20'),
('Roberto Almeida', '147.258.369-55', 'roberto.almeida@email.com', 'Cinto', 5, 39.90, '2023-07-01'),
('Luciana Martins', '258.369.147-66', 'luciana.martins@email.com', 'Tênis', 1, 250.00, '2023-07-05'),
('Patrícia Mendes', '369.258.147-77', 'patricia.mendes@email.com', 'Bermuda', 2, 69.90, '2023-07-10'),
('Ricardo Sousa', '951.753.852-88', 'ricardo.sousa@email.com', 'Blusão', 1, 149.90, '2023-07-15');

/*
SELECT
nome_vendedor, cpf_vendedor, email_vendedor, produto, quantidade, preco_unitario, data_venda
FROM
VendasRoupas
ORDER BY
data_venda
*/

--Gere uma consulta que retorne o nome do produto, a quantidade vendida, o preço unitário e o 
--valor total da venda (quantidade * preço unitário).

/*
SELECT 
produto, quantidade, preco_unitario, (quantidade * preco_unitario) AS valor_total
FROM
VendasRoupas;
*/

--Crie uma consulta que retorne o nome de cada vendedor, a soma total das vendas 
--e a média dos preços dos produtos vendidos.

/*
SELECT
nome_vendedor, (quantidade * preco_unitario) AS valor_total, AVG(quantidade * preco_unitario) AS media
FROM
VendasRoupas
GROUP BY
nome_vendedor
ORDER BY
nome_vendedor
*/

--Liste todos os produtos e classifique-os como "Caro" (preço > R$ 100,00) ou "Barato" (preço <= R$ 100,00), 
--juntamente com a quantidade disponível.

/*
SELECT produto, preco_unitario, 
        CASE 
            WHEN preco_unitario > 100 THEN 'Caro'
            ELSE 'Barato'
        END as tipo,
        quantidade
        
FROM 
VendasRoupas
ORDER BY
preco_unitario
*/

--Gere uma consulta que retorne todos os produtos vendidos e calcule a diferença em anos entre a data da venda 
--e o ano atual.

SELECT produto, data_venda,
(strftime('%Y', 'now') - strftime('%Y', data_venda)) AS qtdeAnos
FROM
VendasRoupas
ORDER BY
qtdeAnos