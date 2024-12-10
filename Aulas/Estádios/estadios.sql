PRAGMA foreign_keys = ON;

--ESTÁDIO
CREATE TABLE Estadio (
    id INTEGER PRIMARY KEY,
    nome TEXT
);

INSERT INTO Estadio (id, nome) values (1, 'Allianz Parque'), (2, 'Maracanã'), (3, 'Nilton Santos');
SELECT * FROM Estadio;

--JOGOS
CREATE TABLE Jogo (
    id INTEGER PRIMARY KEY,
    data DATE,
    placar TEXT,
    estadioID INTEGER,
    FOREIGN KEY (estadioID) REFERENCES Estadio (id)
);

INSERT INTO Jogo (id, data, placar, estadioID) VALUES 
                    (1, '2024-11-20', '2x1', 3), 
                    (2, '2024-11-21', '3x0', 1),
                    (3, '2024-11-22', '0x0', 2); 

SELECT * from Jogo;

--TIMES
CREATE TABLE Time (
    id INTEGER PRIMARY KEY,
    nome TEXT
);

INSERT INTO Time (id, nome) VALUES
                 (1, 'Flamengo'),
                 (2, 'Vasco'),
                 (3, 'Palmeiras'),
                 (4, 'Corinthians'),
                 (5, 'Maricá FC');
                 
SELECT * FROM Time;

--PARTICIPAÇÕES (CHAVE COMPOSTA)
CREATE TABLE Participacao (
    jogoID INTEGER, 
    timeID INTEGER,
    PRIMARY KEY (jogoID, timeID),
    FOREIGN KEY (jogoID) REFERENCES Jogo (id),
    FOREIGN KEY (timeID) REFERENCES Time (id)
);

INSERT INTO Participacao (jogoID, timeID) VALUES
                         (1, 1),
                         (1, 2),
                         (2, 3),
                         (2, 4),
                         (3, 1),
                         (3, 4);
                         
SELECT * FROM Participacao;

--POSIÇÕES
CREATE TABLE Posicao (
    id INTEGER PRIMARY KEY,
    descricao TEXT
);
                  
INSERT INTO Posicao (id, descricao) VALUES
                    (1, 'Atacante'),
                    (2, 'Meia'),
                    (3, 'Volante'),
                    (4, 'Lateral');
                    
SELECT * from Posicao;

--JOGADORES
CREATE TABLE Jogador(
    id INTEGER PRIMARY KEY,
    nome TEXT,
    posicaoID INTEGER,
    timeID INTEGER,
    FOREIGN KEY (posicaoID) REFERENCES Posicao (id),
    FOREIGN KEY (timeID) REFERENCES Time (id)
    
);

INSERT INTO Jogador (id, nome, posicaoID, timeID) VALUES
                    (1, 'Pedro', 1, 1),
                    (2, 'Arrascaeta', 2, 1),
                    (3, 'Andrey', 3, 2),
                    (4, 'Rossi', 1, 2),
                    (5, 'Dudu', 1, 3),
                    (6, 'Raphael Veiga', 2, 3),
                    (7, 'Fagner', 4, 4),
                    (8, 'Renato Augusto', 2, 4);
                    
SELECT * FROM Jogador;
                    
-- EXTRAÇÕES: REQUISITOS FUNCIONAIS     

-- RF01: EXIBIÇÃO DE JOGOS E ESTÁDIOS

/*
SELECT 
    j.data, 
    j.placar, 
    --j.estadioID,
    e.nome,
    --e.id
FROM Jogo j, Estadio e
WHERE j.estadioID = e.id;

SELECT
    j.data,
    j.placar,
    e.nome
FROM 
    Jogo j INNER JOIN Estadio e ON j.estadioID = e.id;
*/

-- RF02: EXIBIÇÃO DE JOGOS E TIMES PARTICIPANTES

/*
SELECT 
    j.data,
    j.placar,
    t.nome
FROM Jogo j 
INNER JOIN Participacao p ON j.id = p.jogoID
INNER JOIN Time t ON t.id = p.timeID;
*/


-- RF03: EXIBIÇÃO DE JOGADORES E POSIÇÕES

-- Nome do Jogador - tabela Jogador - nome
-- Posição do Jogador - tabela Posição - descricao
-- Nome do time -- tabela Time - nome

--SELECT * FROM Jogador, Posicao, Time;
-- essa consulta faz 8 * 4 * 5 = 160 registros

-- jogador tem 2 chaves estrangeiras -> posicaoID e timeID

/*
SELECT j.nome
, p.descricao
, t.nome
FROM Jogador j, Posicao p, Time t
WHERE j.posicaoID = p.id
    AND j.timeID = t.id;
*/

/*
SELECT
j.nome
, p.descricao
, t.nome
FROM Jogador j
INNER JOIN Posicao p ON j.posicaoID = p.id
INNER JOIN TIME t ON j.timeID = t.id;
*/

-- RF04: EXIBIÇÃO COMPLETA DE TIMES E JOGADORES
-- Nome do time: Time - nome
-- Nome do jogador: Jogador - nome
/*
select
t.nome
, j.nome
from Time t
left join Jogador J ON j.timeID = t.id;
--LEFT JOIN TRAZ TODOS OS TIMES, MESMO OS QUE NÃO TEM NENHUM JOGADOR CADASTRADO
*/

-- RF05: CONTAGEM DE JOGADORES POR TIME

select
t.nome
, count(j.nome)
from Time t
left join Jogador J ON j.timeID = t.id
group by t.nome;

-- RF06: CONTAGEM DE JOGADORES POR POSIÇÃO

select
p.descricao
, count(j.nome) as total_de_jogadores
from Posicao p
left join Jogador J ON j.posicaoID = p.id
group by p.descricao;
