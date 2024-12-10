--.open tp2.db
--.mode table
--DROP TABLE IF EXISTS funcionarios;

--exercício 1
CREATE TABLE funcionarios(
id INTEGER PRIMARY KEY AUTOINCREMENT,
nome CHAR(50) NOT NULL,
cargo CHAR(50) NOT NULL,
departamento CHAR(30) NOT NULL,
salario REAL NOT NULL,
data_contratacao TEXT NOT NULL
);
INSERT INTO funcionarios (nome, cargo, departamento, salario, data_contratacao)
VALUES
('Lucas Oliveira', 'Gerente de Recursos Humanos', 'RH', 10000, '2024-04-01'),
('João Silva', 'Analista de Marketing', 'Marketing', 4500, '2023-03-15'),
('Maria Santos', 'Engenheiro de Software', 'TI', 8000, '2022-12-20'),
('Ana Rodrigues', 'Gerente de Vendas', 'Vendas', 9500, '2022-11-10'),
('Carlos Oliveira', 'Analista Financeiro', 'Financeiro', 5800, '2023-01-28'),
('Pedro Costa', 'Desenvolvedor Web', 'TI', 7000, '2022-11-05'),
('Juliana Pereira', 'Analista de Recursos Humanos', 'RH', 5000, '2024-03-12'),
('Ricardo Santos', 'Analista de Sistemas', 'TI', 6000, '2023-02-18'),
('Fernanda Oliveira', 'Gerente de Marketing', 'Marketing', 8500, '2022-12-03'),
('Gabriel Fernandes', 'Analista de Suporte Técnico', 'TI', 4800, '2023-03-25'),
('Larissa Souza', 'Designer Gráfico', 'Marketing', 4800, '2024-03-20'),
('Lucas Almeida', 'Analista de Qualidade', 'Qualidade', 5200, '2023-03-08'),
('Mariana Lima', 'Analista de Comunicação', 'Marketing', 5000, '2023-01-15'),
('Gabriel Souza', 'Estagiário', 'TI', 2000, '2024-01-01'),
('Amanda Santos', 'Gerente de Produção', 'Produção', 8000, '2022-11-30'),
('Paulo Gomes', 'Analista de Vendas', 'Vendas', 5500, '2023-02-10'),
('Rodrigo Costa', 'Analista de Negócios', 'Vendas', 6000, '2023-03-05'),
('Luiza Oliveira', 'Analista de Recursos Humanos', 'RH', 4800, '2022-12-20'),
('Guilherme Fernandes', 'Engenheiro de Dados', 'TI', 7500, '2024-04-06'),
('Camila Silva', 'Analista de Marketing Digital', 'Marketing', 5000, '2022-12-10'),
('Felipe Santos', 'Desenvolvedor Mobile', 'TI', 5800, '2023-01-05'),
('Isabela Almeida', 'Analista Financeiro', 'Financeiro', 5100, '2023-02-20'),
('Vanessa Silva', 'Gerente de Contas', 'Vendas', 10000, '2022-10-15'),
('Natália Oliveira', 'Analista de Suporte ao Cliente', 'TI', 4800, '2023-03-10'),
('Cristiano Silva', 'Analista de Pesquisa de Mercado', 'Marketing', 5500,
'2022-12-05'),
('André Santos', 'Analista de Segurança da Informação', 'TI', 6200, '2022-09-20'),
('Patrícia Lima', 'Analista Contábil', 'Financeiro', 5300, '2023-01-10'),
('Marcelo Oliveira', 'Coordenador de Projetos', 'TI', 6900, '2023-02-25'),
('Diego Pereira', 'Gerente de Operações', 'Produção', 8500, '2022-12-20'),
('Renato Costa', 'Analista de Logística', 'Produção', 6000, '2023-03-20');

--exercício 2
SELECT * FROM funcionarios;


--exercício 3
SELECT * FROM funcionarios
ORDER BY nome ASC;

--exercício 4
SELECT nome, salario
FROM funcionarios
ORDER BY salario DESC;

--exercício 5
SELECT nome, departamento
FROM funcionarios
WHERE departamento = 'TI';

--exercício 6
SELECT nome, salario, departamento
FROM funcionarios
WHERE salario >= 6000 AND departamento = 'TI';

--exercício 7
SELECT nome
FROM funcionarios
WHERE nome LIKE '%Souza%';

--exercício 8
SELECT departamento, count(nome) AS total_de_funcionarios
FROM funcionarios
GROUP BY departamento;

--exercício 9
SELECT departamento, count(nome) AS total_de_funcionarios
FROM funcionarios
GROUP BY departamento HAVING total_de_funcionarios > 5;

--exercício 10
SELECT nome, salario FROM funcionarios
WHERE salario = (SELECT MAX(salario) FROM funcionarios);

--exercício 11
SELECT nome, data_contratacao FROM funcionarios
WHERE data_contratacao LIKE '2022%';

--exercício 12
SELECT departamento, count(cargo) AS total_de_cargos
FROM funcionarios
GROUP BY departamento HAVING total_de_cargos > 4
ORDER BY total_de_cargos DESC;

--exercício 13
SELECT nome, data_contratacao
FROM funcionarios
WHERE data_contratacao BETWEEN '2023-01-01' AND '2023-06-30'
ORDER BY data_contratacao ASC;

--exercício 14
SELECT nome, data_contratacao
FROM funcionarios
WHERE data_contratacao = (SELECT MIN(data_contratacao) FROM funcionarios);

--exercício 15
SELECT departamento, AVG(salario) AS media_salarial
FROM funcionarios
GROUP BY departamento HAVING media_salarial > 6000;

--exercício 16
SELECT MAX(salario) - MIN(salario) AS diferenca_salarial
FROM funcionarios;

