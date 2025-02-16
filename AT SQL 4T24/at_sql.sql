PRAGMA foreign_keys = ON;

-- Fabricantes
CREATE TABLE Fabricante (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    pais TEXT NOT NULL
);

INSERT INTO Fabricante (id, nome, pais) VALUES
(1, 'Toyota', 'Japão'),
(2, 'Honda', 'Japão'),
(3, 'Chevrolet', 'Estados Unidos'),
(4, 'Jeep', 'Estados Unidos'),
(5, 'BMW', 'Alemanha'),
(6, 'Mercedes', 'Alemanha'),
(7, 'Jaguar', 'Inglaterra'),
(8, 'Volvo', 'Suécia');

SELECT * FROM Fabricante;

-- Modelos
CREATE TABLE Modelo (
    id INTEGER PRIMARY KEY,
    modelo TEXT NOT NULL,
    id_fabricante INTEGER NOT NULL,
    FOREIGN KEY (id_fabricante) REFERENCES Fabricante(id)
);

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

SELECT * FROM Modelo;

-- Veículos

CREATE TABLE Veiculo (
    id INTEGER PRIMARY KEY,
    id_modelo INTEGER NOT NULL,
    ano INTEGER NOT NULL,
    cor TEXT NOT NULL,
    preco_custo REAL NOT NULL,
    FOREIGN KEY (id_modelo) REFERENCES Modelo(id)
);

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

SELECT * FROM Veiculo;

-- Concessionárias
CREATE TABLE Concessionaria (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cidade TEXT NOT NULL
);

INSERT INTO Concessionaria (id, nome, cidade) VALUES
(1, 'Concessionária A', 'São Paulo'),
(2, 'Concessionária B', 'Rio de Janeiro'),
(3, 'Concessionária C', 'Belo Horizonte'),
(4, 'Concessionária D', 'Curitiba'),
(5, 'Concessionária E', 'Porto Alegre');

SELECT * FROM Concessionaria;

-- Vendas

CREATE TABLE Venda (
    id INTEGER PRIMARY KEY,
    id_concessionaria INTEGER NOT NULL,
    id_veiculo INTEGER NOT NULL,
    data_venda TEXT NOT NULL,
    preco_venda REAL NOT NULL,
    FOREIGN KEY (id_concessionaria) REFERENCES Concessionaria(id),
    FOREIGN KEY (id_veiculo) REFERENCES Veiculo(id)
);

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

SELECT * FROM Venda;

-- EXTRAÇÕES: REQUISITOS FUNCIONAIS

-- RF01: EXIBIR O NOME DO MODELO, O NOME DO FABRICANTE, PREÇO DE CUSTO E PREÇO DE VENDA DE TODOS OS VEÍCULOS

SELECT m.modelo, f.nome AS fabricante, v.preco_custo, ve.preco_venda
FROM Modelo m
JOIN Fabricante f ON m.id_fabricante = f.id
JOIN Veiculo v ON m.id = v.id_modelo
JOIN Venda ve ON v.id = ve.id_veiculo;

-- RF02: EXIBIR O NOME DO MODELO, O NOME DO FABRICANTE, PREÇO DE CUSTO, PREÇO DE VENDA E CALCULAR O LUCRO DE TODOS OS VEÍCULOS VENDIDOS NA CONCESSIONÁRIA A

SELECT m.modelo, f.nome AS fabricante, v.preco_custo, ve.preco_venda, ve.preco_venda - v.preco_custo AS lucro
FROM Modelo m
JOIN Fabricante f ON m.id_fabricante = f.id
JOIN Veiculo v ON m.id = v.id_modelo
JOIN Venda ve ON v.id = ve.id_veiculo
JOIN Concessionaria c ON ve.id_concessionaria = c.id
WHERE c.nome = 'Concessionária A';

-- RF03: EXIBIR O NOME DO MODELO DE TODOS OS VEÍCULOS DA MARCA TOYOTA

SELECT m.modelo
FROM Modelo m
JOIN Fabricante f ON m.id_fabricante = f.id
WHERE f.nome = 'Toyota';

-- RF04: EXIBIR O NOME DO MODELO, O NOME DO FABRICANTE E O LUCRO DE TODOS OS VEÍCULOS DO ANO DE 2021

SELECT m.modelo, f.nome AS fabricante, ve.preco_venda - v.preco_custo AS lucro
FROM Modelo m
JOIN Fabricante f ON m.id_fabricante = f.id
JOIN Veiculo v ON m.id = v.id_modelo
JOIN Venda ve ON v.id = ve.id_veiculo
WHERE v.ano = 2021;

-- RF05: EXIBIR A QUANTIDADE DE VEÍCULOS ADQUIRIDOS POR CADA CONCESSIONÁRIA

SELECT c.nome, COUNT(ve.id) AS quantidade
FROM Concessionaria c
JOIN Venda v ON c.id = v.id_concessionaria
JOIN Veiculo ve ON v.id_veiculo = ve.id
GROUP BY c.nome;

-- RF06: EXIBIR OS MESES E AS QUANTIDADES DE VENDAS FORAM REALIZADAS

SELECT strftime('%m', data_venda) AS mes, COUNT(id) AS quantidade
FROM Venda
GROUP BY mes;

-- RF07: QUAL CONCESSIONÁRIA COMPROU MAIS VEÍCULOS DO ANO DE 2023 E QUAL FOI A QUANTIDADE

SELECT c.nome, COUNT(ve.id) AS quantidade
FROM Concessionaria c
JOIN Venda v ON c.id = v.id_concessionaria
JOIN Veiculo ve ON v.id_veiculo = ve.id
WHERE ve.ano = 2023
GROUP BY c.nome
ORDER BY quantidade DESC
LIMIT 1; --se tirar a limitação, exibe todas as concessionárias

-- RF08: LISTA DOS MODELOS MAIS VENDIDOS E QUANTAS VEZES FOI VENDIDO EM ORDEM DECRESCENTE

SELECT m.modelo, COUNT(ve.id) AS quantidade
FROM Modelo m
JOIN Veiculo v ON m.id = v.id_modelo
JOIN Venda ve ON v.id = ve.id_veiculo
GROUP BY m.modelo
ORDER BY quantidade DESC;

-- RF09: QUAL MARCA DE VEÍCULO VENDEU MAIS DO QUE 5 UNIDADES E MOSTRE A QUANTIDADE DE VEÍCULOS VENDIDOS

SELECT f.nome, COUNT(ve.id) AS quantidade
FROM Fabricante f
JOIN Modelo m ON f.id = m.id_fabricante
JOIN Veiculo v ON m.id = v.id_modelo
JOIN Venda ve ON v.id = ve.id_veiculo
GROUP BY f.nome
HAVING quantidade > 5
ORDER BY quantidade DESC;


-- RF10: QUAL O VALOR MÉDIO DE VENDA DE VEÍCULOS DE CADA CONCESSIONÁRIA

SELECT c.nome, AVG(preco_venda) AS media
FROM Venda
JOIN Concessionaria c ON id_concessionaria = c.id
GROUP BY id_concessionaria
ORDER BY media DESC;










