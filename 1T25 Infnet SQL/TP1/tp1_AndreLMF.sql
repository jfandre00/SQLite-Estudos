PRAGMA foreign_keys = ON;

.headers ON 
-- para aparecer os cabeçalhos nas consultas

-- Criação da tabela Fabricante
CREATE TABLE Fabricante (
    id INTEGER PRIMARY KEY,  -- Chave primária, identificador único para cada fabricante
    nome TEXT NOT NULL UNIQUE,  -- Nome do fabricante, não nulo e único para evitar duplicatas
    pais TEXT DEFAULT 'não consta' -- País do fabricante, caso nada tenha sido inserido colocar 'não consta'
);
-- Criação da tabela Modelo
CREATE TABLE Modelo (
id INTEGER PRIMARY KEY,  -- Chave primária, identificador único para cada modelo
 modelo TEXT NOT NULL UNIQUE,  -- Nome do modelo, não nulo e único para evitar duplicatas
 id_fabricante INTEGER NOT NULL,  -- Chave estrangeira referenciando a tabela Fabricante
 FOREIGN KEY (id_fabricante) REFERENCES Fabricante(id)  -- Definição da chave estrangeira
);

-- Criação da tabela Veiculo
CREATE TABLE Veiculo (
    id INTEGER PRIMARY KEY,  -- Chave primária, identificador único para cada veículo
    id_modelo INTEGER NOT NULL,  -- Chave estrangeira referenciando a tabela Modelo
    ano INTEGER NOT NULL,  -- Ano de fabricação do veículo, não nulo para garantir a integridade dos dados
    cor TEXT NOT NULL CHECK (ano >= 2018),  -- Cor do veículo, não nulo para garantir a completude das informações
    preco_custo REAL NOT NULL,  -- Preço de custo do veículo, não nulo para garantir a integridade dos dados
    FOREIGN KEY (id_modelo) REFERENCES Modelo(id)  -- Definição da chave estrangeira
);

-- Criação da tabela Concessionaria
CREATE TABLE Concessionaria (
    id INTEGER PRIMARY KEY,  -- Chave primária, identificador único para cada concessionária
    nome TEXT NOT NULL UNIQUE,  -- Nome da concessionária, não nulo e único para evitar duplicatas
    cidade TEXT NOT NULL  -- Cidade onde a concessionária está localizada, não nulo para garantir a integridade dos dados
);

-- Criação da tabela Venda
CREATE TABLE Venda (
    id INTEGER PRIMARY KEY,  -- Chave primária, identificador único para cada venda
    id_concessionaria INTEGER NOT NULL,  -- Chave estrangeira referenciando a tabela Concessionaria
    id_veiculo INTEGER NOT NULL,  -- Chave estrangeira referenciando a tabela Veiculo
    data_venda TEXT NOT NULL,  -- Data da venda, não nulo para garantir a integridade temporal das transações
    preco_venda REAL NOT NULL,  -- Preço de venda do veículo, não nulo para garantir a integridade dos dados
    FOREIGN KEY (id_concessionaria) REFERENCES Concessionaria(id),  -- Definição da chave estrangeira
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id)  -- Definição da chave estrangeira
);

-- Inserção de registros na tabela Fabricante
INSERT INTO Fabricante (id, nome, pais) VALUES
(1, 'Toyota', 'Japão'),
(2, 'Honda', 'Japão'),
(3, 'Chevrolet', 'Estados Unidos'),
(4, 'Jeep', 'Estados Unidos'),
(5, 'BMW', 'Alemanha'),
(6, 'Mercedes', 'Alemanha'),
(7, 'Jaguar', 'Inglaterra'),
(8, 'Volvo', 'Suécia');

-- Inserção de registros na tabela Modelo
INSERT INTO Modelo (id, modelo, id_fabricante) VALUES
(1, 'Corolla', 1),
(2, 'Yaris', 1),
(3, 'Hilux', 1),
(4, 'Civic', 2),
(5, 'HR-V', 2),
(6, 'Onix', 3),
(7, 'Spin', 3),
(8, 'Renegade', 4),
(9, 'Compass', 4),
(10, 'Commander', 4),
(11, 'X1', 5),
(12, 'X3', 5),
(13, 'X5', 5),
(14, 'Classe C', 6),
(15, 'Classe S', 6),
(16, 'XF', 7),
(17, 'F-Type', 7),
(18, 'XC40', 8),
(19, 'XC60', 8);

-- Inserção de registros na tabela Veiculo
INSERT INTO Veiculo (id, id_modelo, ano, cor, preco_custo) VALUES
(101, 1, 2020, 'azul', 100000),
(102, 2, 2021, 'preto', 80000),
(103, 3, 2021, 'branco', 150000),
(104, 4, 2022, 'prata', 90000),
(105, 5, 2023, 'vermelho', 75000),
(106, 6, 2020, 'preto', 60000),
(107, 7, 2021, 'azul', 70000),
(108, 8, 2023, 'branco', 80000),
(109, 9, 2020, 'prata', 100000),
(110, 10, 2021, 'vermelho', 120000),
(111, 11, 2020, 'preto', 150000),
(112, 12, 2021, 'azul', 180000),
(113, 13, 2020, 'branco', 200000),
(114, 14, 2021, 'prata', 250000),
(115, 15, 2023, 'vermelho', 300000),
(116, 16, 2021, 'preto', 350000),
(117, 17, 2020, 'azul', 400000),
(118, 18, 2021, 'branco', 450000),
(119, 19, 2020, 'prata', 500000),
(120, 1, 2021, 'vermelho', 550000),
(121, 2, 2023, 'preto', 600000),
(122, 3, 2021, 'azul', 650000),
(123, 4, 2020, 'branco', 700000),
(124, 5, 2021, 'prata', 750000),
(125, 6, 2023, 'vermelho', 800000),
(126, 7, 2021, 'preto', 850000),
(127, 8, 2020, 'azul', 900000),
(128, 9, 2021, 'branco', 950000),
(129, 10, 2020, 'prata', 1000000),
(130, 11, 2021, 'vermelho', 1050000),
(131, 12, 2022, 'preto', 1100000),
(132, 13, 2021, 'azul', 1150000),
(133, 14, 2020, 'branco', 1200000),
(134, 15, 2023, 'prata', 1250000),
(135, 16, 2023, 'vermelho', 1300000),
(136, 17, 2023, 'preto', 1350000),
(137, 18, 2020, 'azul', 1400000),
(138, 19, 2023, 'branco', 1450000),
(139, 1, 2023, 'prata', 1500000),
(140, 2, 2021, 'vermelho', 1550000);

-- Inserção de registros na tabela Concessionaria
INSERT INTO Concessionaria (id, nome, cidade) VALUES
(1, 'Concessionária A', 'São Paulo'),
(2, 'Concessionária B', 'Rio de Janeiro'),
(3, 'Concessionária C', 'Belo Horizonte'),
(4, 'Concessionária D', 'Curitiba'),
(5, 'Concessionária E', 'Porto Alegre');

-- Inserção de registros na tabela Venda
INSERT INTO Venda (id, id_concessionaria, id_veiculo, data_venda, preco_venda) VALUES
(1, 1, 101, '2021-01-01', 110000),
(2, 2, 102, '2021-02-01', 90000),
(3, 3, 103, '2021-03-01', 160000),
(4, 4, 104, '2021-04-01', 95000),
(5, 5, 105, '2021-05-01', 80000),
(6, 1, 106, '2021-06-01', 65000),
(7, 2, 107, '2021-07-01', 75000),
(8, 3, 108, '2021-08-01', 85000),
(9, 4, 109, '2021-09-01', 110000),
(10, 5, 110, '2021-10-01', 130000),
(11, 1, 111, '2021-11-01', 160000),
(12, 2, 112, '2021-12-01', 190000),
(13, 3, 113, '2022-01-01', 210000),
(14, 4, 114, '2022-02-01', 260000),
(15, 5, 115, '2022-03-01', 310000),
(16, 1, 116, '2022-04-01', 360000),
(17, 2, 117, '2022-05-01', 410000),
(18, 3, 118, '2022-06-01', 460000),
(19, 4, 119, '2022-07-01', 510000),
(20, 5, 120, '2022-08-01', 560000),
(21, 1, 121, '2022-09-01', 610000),
(22, 2, 122, '2022-10-01', 660000),
(23, 3, 123, '2022-11-01', 710000),
(24, 4, 124, '2022-12-01', 760000),
(25, 5, 125, '2023-01-01', 810000),
(26, 1, 126, '2023-02-01', 860000),
(27, 2, 127, '2023-03-01', 910000),
(28, 3, 128, '2023-04-01', 960000),
(29, 4, 129, '2023-05-01', 1010000),
(30, 5, 130, '2023-06-01', 1060000),
(31, 1, 131, '2023-07-01', 1110000),
(32, 2, 132, '2023-08-01', 1160000),
(33, 3, 133, '2023-09-01', 1210000),
(34, 4, 134, '2023-10-01', 1260000),
(35, 5, 135, '2023-11-01', 1310000),
(36, 1, 136, '2023-12-01', 1360000),
(37, 2, 137, '2024-01-01', 1410000),
(38, 3, 138, '2024-02-01', 1460000),
(39, 4, 139, '2024-03-01', 1510000),
(40, 5, 140, '2024-04-01', 1560000);

-- Consultas SQL
-- Testando para ver se está tudo ok
/*
SELECT * from Concessionaria;
SELECT * from Fabricante;
SELECT * from Modelo;
SELECT * from Veiculo;
SELECT * from Venda;
*/

/*
--Listar todos os fabricantes e seus respectivos países:
SELECT nome, pais
FROM Fabricante;


--Listar todos os modelos de veículos e seus respectivos fabricantes:
SELECT m.modelo, f.nome AS fabricante
FROM Modelo m
JOIN Fabricante f on m.id_fabricante = f.id;


--Listar todas as concessionárias e suas respectivas cidades:
SELECT nome, cidade
FROM Concessionaria;


--Listar todas as vendas realizadas, incluindo o nome da concessionária e o modelo do veículo:
SELECT v.id, c.nome AS concessionaria, m.modelo AS modelo, v.data_venda, v.preco_venda
FROM Venda v
JOIN Concessionaria c ON v.id_concessionaria = c.id
JOIN Veiculo ve ON v.id_veiculo = ve.id
JOIN Modelo m ON ve.id_modelo = m.id;
*/

/*


--Listar todos os veículos, incluindo o modelo, fabricante e preço de custo:
SELECT ve.id, ve.ano, ve.cor, ve.preco_custo, mo.modelo, fa.nome AS fabricante
FROM Veiculo ve
JOIN Modelo mo ON ve.id_modelo = mo.id
JOIN Fabricante fa ON mo.id_fabricante = fa.id;


--Verificação de Chaves Estrangeiras


-- Verificar se todas as chaves estrangeiras id_fabricante em Modelo correspondem a fabricantes válidos
SELECT m.id, m.modelo, m.id_fabricante
FROM Modelo m
LEFT JOIN Fabricante f ON m.id_fabricante = f.id
WHERE f.id IS NULL;
-- Se o resultado for vazio, todas as chaves estrangeiras são válidas.

-- Verificar se todas as chaves estrangeiras id_modelo em Veiculo correspondem a modelos válidos
SELECT ve.id, ve.id_modelo, ve.ano, ve.cor, ve.preco_custo
FROM Veiculo ve
LEFT JOIN Modelo m ON ve.id_modelo = m.id
WHERE m.id IS NULL;
-- Se o resultado for vazio, todas as chaves estrangeiras são válidas.

-- Verificar se todas as chaves estrangeiras id_concessionaria em Venda correspondem a concessionárias válidas
SELECT v.id, v.id_concessionaria, v.id_veiculo, v.data_venda, v.preco_venda
FROM Venda v
LEFT JOIN Concessionaria c ON v.id_concessionaria = c.id
WHERE c.id IS NULL;

-- Verificar se todas as chaves estrangeiras id_veiculo em Venda correspondem a veículos válidos
SELECT v.id, v.id_concessionaria, v.id_veiculo, v.data_venda, v.preco_venda
FROM Venda v
LEFT JOIN Veiculo ve ON v.id_veiculo = ve.id
WHERE ve.id IS NULL;
-- Se os resultados forem vazios, todas as chaves estrangeiras são válidas.

--Validação das Regras de Negócio

--Regra de Negócio 01: Comando SQL
-- Verificar se todos os nomes de fabricantes são únicos
SELECT nome, COUNT(*)
FROM Fabricante
GROUP BY nome
HAVING COUNT(*) > 1;
-- Se o resultado for vazio, todos os nomes de fabricantes são únicos.


--Regra de Negócio 02: Comando SQL
-- Verificar se todos os veículos estão associados a modelos válidos
SELECT ve.id, ve.id_modelo
FROM Veiculo ve
LEFT JOIN Modelo mo ON ve.id_modelo = mo.id
WHERE mo.id IS NULL;
-- Se o resultado for vazio, todos os veículos estão associados a modelos existentes.


--Regra de Negócio 03: Comando SQL
-- Verificar se todas as vendas têm informações sobre concessionária e veículo
SELECT v.id, v.id_concessionaria, v.id_veiculo
FROM Venda v
LEFT JOIN Concessionaria c ON v.id_concessionaria = c.id
LEFT JOIN Veiculo ve ON v.id_veiculo = ve.id
WHERE c.id IS NULL OR ve.id IS NULL;
-- Se o resultado for vazio, todas as vendas têm informações corretas sobre a concessionária e o veículo.

*/

-- Novas consultas inseridas após a aula de 17-02-25.

/*
-- Contar a quantidade de veículos por concessionária
SELECT c.nome AS concessionaria, COUNT(v.id) AS quantidade_veiculos
FROM Concessionaria c
JOIN Venda ve ON c.id = ve.id_concessionaria
JOIN Veiculo v ON ve.id_veiculo = v.id
GROUP BY c.nome;
*/

/*
-- Qual o valor de venda de todos os veículos da concessionaria A?
SELECT c.nome AS concessionaria, SUM(v.preco_venda) AS valor_total_vendas
FROM Venda v
JOIN Concessionaria c ON v.id_concessionaria = c.id
WHERE c.nome = 'Concessionária A'
GROUP BY c.nome;
*/

/*
--Mostrar todos os veículos fabricados após 2022
SELECT id, id_modelo, ano, cor, preco_custo
FROM Veiculo
WHERE ano > 2022;
*/

/*
-- Listar todas as concessionárias que possuem BMW para vender
SELECT DISTINCT c.nome AS concessionaria
FROM Concessionaria c
JOIN Venda ve ON c.id = ve.id_concessionaria
JOIN Veiculo v ON ve.id_veiculo = v.id
JOIN Modelo m ON v.id_modelo = m.id
JOIN Fabricante f ON m.id_fabricante = f.id
WHERE f.nome = 'BMW';
*/

/*
-- Listar a média de preço dos veículos da concessionária B
SELECT c.nome AS concessionaria, AVG(v.preco_venda) AS media_preco_venda
FROM Venda v
JOIN Concessionaria c ON v.id_concessionaria = c.id
WHERE c.nome = 'Concessionária B'
GROUP BY c.nome;
*/

/*
-- Buscar concessionárias que possuam mais de 5 marcas diferentes de veículos a venda
SELECT c.nome AS concessionaria, COUNT(DISTINCT f.nome) AS quantidade_marcas
FROM Concessionaria c
JOIN Venda v ON c.id = v.id_concessionaria
JOIN Veiculo ve ON v.id_veiculo = ve.id
JOIN Modelo m ON ve.id_modelo = m.id
JOIN Fabricante f ON m.id_fabricante = f.id
GROUP BY c.nome
HAVING COUNT(DISTINCT f.nome) > 5;
*/

/*
-- Exiba o valor de custro de todos os veículos para cada concessionária
SELECT c.nome AS concessionaria, SUM(v.preco_custo) AS valor_total_custo
FROM Concessionaria c
JOIN Venda ve ON c.id = ve.id_concessionaria
JOIN Veiculo v ON ve.id_veiculo = v.id
GROUP BY c.nome;
*/

-- Exibir o valor total a venda, valor total de custo
SELECT c.nome AS concessionaria,
       SUM(vv.preco_venda) AS total_venda,
       SUM(v.preco_custo) AS total_custo,
       ROUND(((SUM(vv.preco_venda) - SUM(v.preco_custo)) / SUM(vv.preco_venda)) * 100, 2) AS percent_lucro_liq
FROM Concessionaria c
JOIN Venda vv ON c.id = vv.id_concessionaria
JOIN Veiculo v ON vv.id_veiculo = v.id
GROUP BY c.nome
ORDER BY percent_lucro_liq ASC;

