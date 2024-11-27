CREATE TABLE Registros
(
    id INTEGER PRIMARY KEY,
    descricao TEXT,
    categoria TEXT,
    valor REAL,
    quantidade INTEGER,
    ativo BOOLEAN,
    data DATE
);

INSERT INTO Registros(id, descricao, categoria, valor, quantidade, ativo, data)
VALUES
(1, 'Teclado', 'Periférico', 100, 3, TRUE, '2024-11-22'),
(5, 'Pizza', 'Alimentação', 40, 10, false, '2024-11-19'),
(2, 'Cadeira', 'Móvel', 1000, 2, TRUE, '2024-11-21'),
(3, 'Mouse', 'Periférico', 30, 6, FALSE, '2024-11-23'),
(6, 'Hot-dog', 'Alimentos', 20, 60, TRUE, '2024-11-18'),
(4, 'Coke', 'Bebida', 8, 50, TRUE, '2024-11-20'),
(7, 'Saladinha', 'pre-Alimentado', 9, 2, FALSE, '2024-11-17'),
(8, 'Suco', 'Bebida', 10, 1, FALSE, '2024-11-14'),
(9,'Webcam', NULL, 150, 4, TRUE, '2024-11-27');

/*
01) Listar todos os registros armazenados. Conceitos: SELECT

SELECT descricao, categoria, valor, quantidade 
FROM Registros;
*/

/*
02) Organizar os registros em ordem alfabética por descrição ou crescente pelo valor numérico
Conceitos: SELECT, ORDER BY

SELECT descricao, categoria, valor, quantidade 
FROM Registros
ORDER BY descricao DESC; --ASC em forma crescente
--ORDER BY valor ASC;
*/


/*
03) Identificar as categorias existentes, sem repetições
Conceitos: SELECT, DISTINCT

SELECT DISTINCT categoria
FROM Registros
ORDER BY categoria ASC;
*/

/*
04) Selecionar registros com valores numéricos superiores a um determinado limite.
Conceitos: SELECT, WHERE com operadores de comparação (>, <, >=, etc.)

SELECT descricao, categoria, valor, quantidade
FROM Registros
WHERE valor >= 100;
*/


/*
05) Localizar registros cujas quantidades estejam dentro de um intervalo específico.
Conceitos: SELECT, WHERE, BETWEEN

SELECT descricao, categoria, valor, quantidade
FROM Registros
WHERE quantidade BETWEEN 2 AND 3;

*/

/*
06) Filtrar registros pertencentes a categorias específicas fornecidas pelos administradores.
Conceitos: SELECT, WHERE, IN

SELECT descricao, categoria, valor, quantidade
FROM Registros
WHERE categoria IN ('Periférico', 'Móvel');
-- WHERE categoria = 'Periférico'
-- OR categoria = 'Móvel';
*/

/*
07) Procurar registros cuja categoria siga um padrão ou comece com determinada letra.
Conceitos: SELECT, WHERE, LIKE

SELECT descricao, categoria, valor, quantidade
FROM Registros
WHERE categoria LIKE '%Aliment%';

*/

/*
08) Exibir registros ativos que também atendam a critérios de valor numérico e categoria.
Conceitos: SELECT, WHERE, AND, OR
 
SELECT descricao, categoria, valor, quantidade, ativo
FROM Registros
WHERE ativo = TRUE --4 registros 
    AND valor >= 100 -- 2 registros
    OR categoria = 'Bebida'; -- +2 registro
    -- (A AND B) OR (C)
    -- primeiro resolve A AND B, trazendo 2 registros
    -- depois busca OR C, trazendo 2 registros

*/

/*

09) Mostrar registros que ainda não possuem valor numérico definido.
Conceitos: SELECT, IS NULL

SELECT descricao, categoria, valor, quantidade, ativo
FROM Registros
Where categoria is NULL;
*/

/*

10) Substituir valores ausentes para fins de análise e cálculo.
Conceitos: SELECT, COALESCE

SELECT descricao, COALESCE(categoria, 'Categoria a Determinar'), valor, quantidade, ativo
FROM Registros;
*/

/*

11) Agrupar os registros por categoria e calcular somas ou médias dos valores numéricos.
Conceitos: SELECT, GROUP BY, SUM, AVG

SELECT categoria, SUM(valor), AVG(valor)
FROM Registros
GROUP BY categoria;
*/

/*

12) Contar o número total de registros cadastrados no sistema.
Conceitos: SELECT, COUNT

SELECT count(id)
FROM Registros;
*/

/*

13) Determinar os registros com maior e menor valor numérico.
Conceitos: SELECT, MIN, MAX

SELECT MIN(quantidade), MAX(valor)
FROM Registros;
*/

/*

14) Calcular a média dos valores numéricos e apresentá-la com precisão ajustada.
Conceitos: SELECT, AVG, ROUND

SELECT ROUND(AVG(valor),2)
FROM Registros;
*/

/*

15) Identificar categorias cuja soma de valores numéricos ultrapasse um limite especificado.
Conceitos: SELECT, GROUP BY, SUM, HAVING

*/

SELECT categoria, SUM(valor)
FROM Registros
GROUP BY categoria
HAVING SUM(valor) < 120;
