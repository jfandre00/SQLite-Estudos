PRAGMA foreign_keys = ON;

CREATE TABLE DEPARTAMENTO (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL
);

CREATE TABLE PROFESSOR (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    sobrenome TEXT NOT NULL,
    status BOOLEAN NOT NULL,
    id_departamento INTEGER NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTO(id)
);

CREATE TABLE PROF_DISCIPLINA (
    id_professor INTEGER NOT NULL,
    id_disciplina INTEGER NOT NULL,
    PRIMARY KEY (id_professor, id_disciplina),
    FOREIGN KEY (id_professor) REFERENCES PROFESSOR(id),
    FOREIGN KEY (id_disciplina) REFERENCES DISCIPLINA(id)
);

CREATE TABLE CURSO (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    id_departamento INTEGER NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTO(id)
);

CREATE TABLE TURMA (
    id INTEGER PRIMARY KEY,
    id_curso INTEGER NOT NULL,
    periodo TEXT NOT NULL,
    num_alunos INTEGER NOT NULL,
    data_inicio TEXT NOT NULL,
    data_fim TEXT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES CURSO(id)
);

CREATE TABLE CURSO_DISCIPLINA (
    id_curso INTEGER NOT NULL,
    id_disciplina INTEGER NOT NULL,
    PRIMARY KEY (id_curso, id_disciplina),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id),
    FOREIGN KEY (id_disciplina) REFERENCES DISCIPLINA(id)
);

CREATE TABLE DISCIPLINA (
    id INTEGER PRIMARY KEY,
    id_disciplina_dependente INTEGER,
    nome TEXT NOT NULL,
    id_departamento INTEGER NOT NULL,
    carga_horaria INTEGER NOT NULL,
    descricao TEXT NOT NULL,
    num_alunos INTEGER NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES DEPARTAMENTO(id)
);

CREATE TABLE ALUNO (
    ra INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    sobrenome TEXT NOT NULL,
    cpf TEXT NOT NULL,
    status BOOLEAN NOT NULL,
    id_turma INTEGER NOT NULL,
    sexo TEXT NOT NULL,
    id_curso INTEGER NOT NULL,
    nome_pai TEXT NOT NULL,
    nome_mae TEXT NOT NULL,
    email TEXT NOT NULL,
    whatsapp TEXT,
    FOREIGN KEY (id_turma) REFERENCES TURMA(id),
    FOREIGN KEY (id_curso) REFERENCES CURSO(id)
);

CREATE TABLE ALUNO_DISCIPLINA (
    ra_aluno INTEGER NOT NULL,
    id_disciplina INTEGER NOT NULL,
    PRIMARY KEY (ra_aluno, id_disciplina),
    FOREIGN KEY (ra_aluno) REFERENCES ALUNO(ra),
    FOREIGN KEY (id_disciplina) REFERENCES DISCIPLINA(id)
);

CREATE TABLE HISTORICO (
    id INTEGER PRIMARY KEY,
    ra_aluno INTEGER NOT NULL,
    data_inicio TEXT NOT NULL,
    data_fim TEXT NOT NULL,
    FOREIGN KEY (ra_aluno) REFERENCES ALUNO(ra)
);

CREATE TABLE DISCIPLINA_HISTORICO (
    id_disciplina INTEGER NOT NULL,
    id_historico INTEGER NOT NULL,
    PRIMARY KEY (id_disciplina, id_historico),
    FOREIGN KEY (id_disciplina) REFERENCES DISCIPLINA(id),
    FOREIGN KEY (id_historico) REFERENCES HISTORICO(id)
);

-- adicionar 2 novos campos na tabela DISCIPLINA_HISTORICO: nota e frequencia

ALTER TABLE DISCIPLINA_HISTORICO ADD COLUMN nota REAL;
ALTER TABLE DISCIPLINA_HISTORICO ADD COLUMN frequencia REAL;

select * from DISCIPLINA_HISTORICO;


CREATE TABLE TELEFONES_ALUNO (
    id INTEGER PRIMARY KEY,
    ra_aluno INTEGER NOT NULL,
    codigo_telefone TEXT NOT NULL,
    telefone TEXT NOT NULL,
    FOREIGN KEY (ra_aluno) REFERENCES ALUNO(ra),
    FOREIGN KEY (codigo_telefone) REFERENCES CODIGO_TELEFONE(codigo)
);

CREATE TABLE CODIGO_TELEFONE (
    codigo TEXT PRIMARY KEY,
    tipo_telefone TEXT NOT NULL
);

CREATE TABLE ENDERECO_ALUNO (
    id INTEGER PRIMARY KEY,
    ra_aluno INTEGER NOT NULL,
    codigo_tipo_logradouro TEXT NOT NULL,
    nome_rua TEXT NOT NULL,
    num_rua INTEGER NOT NULL,
    complemento TEXT,
    cep TEXT NOT NULL,
    FOREIGN KEY (ra_aluno) REFERENCES ALUNO(ra),
    FOREIGN KEY (codigo_tipo_logradouro) REFERENCES TIPO_LOGRADOURO(codigo)
);

CREATE TABLE TIPO_LOGRADOURO (
    codigo TEXT PRIMARY KEY,
    tipo_logradouro TEXT NOT NULL
);

INSERT INTO DEPARTAMENTO (id, nome) VALUES 
(1, 'Ciências Exatas'), 
(2, 'Ciências Humanas'),
(3, 'Ciências Biológicas'),
(4, 'Ciências da Saúde');

INSERT INTO PROFESSOR (id, nome, sobrenome, status, id_departamento) VALUES 
(1, 'João', 'Silva', 1, 1), 
(2, 'Maria', 'Oliveira', 1, 2), 
(3, 'José', 'Santos', 1, 3), 
(4, 'Ana', 'Souza', 1, 4), 
(5, 'Carlos', 'Ferreira', 1, 1), 
(6, 'Márcia', 'Costa', 1, 2), 
(7, 'Pedro', 'Almeida', 1, 3), 
(8, 'Fernanda', 'Ribeiro', 1, 4);

INSERT INTO DISCIPLINA (id, id_disciplina_dependente, nome, id_departamento, carga_horaria, descricao, num_alunos) VALUES 
(1, NULL, 'Matemática', 1, 60, 'Matemática Básica', 30), 
(2, 1, 'Física', 1, 60, 'Física Básica', 30), 
(3, NULL, 'História', 2, 60, 'História Geral', 25), 
(4, 3, 'Geografia', 2, 60, 'Geografia Geral', 25), 
(5, NULL, 'Biologia', 3, 60, 'Biologia Geral', 20), 
(6, 5, 'Zoologia', 3, 60, 'Zoologia Geral', 20), 
(7, NULL, 'Anatomia', 4, 60, 'Anatomia Humana', 15), 
(8, 7, 'Fisiologia', 4, 60, 'Fisiologia Humana', 15);

INSERT INTO CURSO (id, nome, id_departamento) VALUES 
(1, 'Engenharia', 1), 
(2, 'História', 2), 
(3, 'Biologia', 3), 
(4, 'Medicina', 4);

INSERT INTO TURMA (id, id_curso, periodo, num_alunos, data_inicio, data_fim) VALUES 
(1, 1, 'Matutino', 30, '2023-01-01', '2023-12-31'), 
(2, 2, 'Noturno', 25, '2023-01-01', '2023-12-31'), 
(3, 3, 'Vespertino', 20, '2023-01-01', '2023-12-31'), 
(4, 4, 'Integral', 15, '2023-01-01', '2023-12-31');

INSERT INTO ALUNO (ra, nome, sobrenome, cpf, status, id_turma, sexo, id_curso, nome_pai, nome_mae, email, whatsapp) VALUES 
(1, 'Carlos', 'Pereira', '12345678900', 1, 1, 'M', 1, 'José Pereira', 'Ana Pereira', 'carlos@example.com', '123456789'), 
(2, 'Ana', 'Souza', '98765432100', 1, 2, 'F', 2, 'Pedro Souza', 'Maria Souza', 'ana@example.com', '987654321'),
(3, 'João', 'Silva', '12345678900', 1, 1, 'M', 1, 'José Pereira', 'Ana Pereira', 'joaosilva@example.com', '55242400'), 
(4, 'Maria', 'Oliveira', '98765432100', 1, 2, 'F', 2, 'Pedro Souza', 'Maria Souza', 'maria@example.com', '55242400'),
(5, 'José', 'Santos', '12345678900', 1, 3, 'M', 3, 'José Pereira', 'Ana Pereira', 'josesantos@email.com', '55242400'), 
(6, 'Márcia', 'Costa', '98765432100', 1, 4, 'F', 4, 'Pedro Souza', 'Maria Souza', 'marciacosta@example.com', '55242400'),
(7, 'Pedro', 'Almeida', '12345678900', 1, 1, 'M', 1, 'José Pereira', 'Ana Pereira', 'pedrinho@email.com', '55242400'), 
(8, 'Fernanda', 'Ribeiro', '98765432100', 1, 2, 'F', 2, 'Pedro Souza', 'Maria Souza', 'fernandao@example.com', '55242400');

INSERT INTO ALUNO_DISCIPLINA (ra_aluno, id_disciplina) VALUES 
(1, 1), 
(2, 2),
(3, 1), 
(4, 2);

INSERT INTO HISTORICO (id, ra_aluno, data_inicio, data_fim) VALUES 
(1, 1, '2023-01-01', '2023-12-31'), 
(2, 2, '2023-01-01', '2023-12-31'),
(3, 3, '2023-01-01', '2023-12-31'), 
(4, 4, '2023-01-01', '2023-12-31');

INSERT INTO DISCIPLINA_HISTORICO (id_disciplina, id_historico) VALUES 
(1, 1), 
(2, 2),
(1, 3), 
(2, 4);

-- inserir dados na tabela DISCIPINA_HISTORICO (nota e frequencia)

UPDATE DISCIPLINA_HISTORICO SET nota = 8.5, frequencia = 90 WHERE id_disciplina = 1 AND id_historico = 1;

UPDATE DISCIPLINA_HISTORICO SET nota = 7.5, frequencia = 80 WHERE id_disciplina = 2 AND id_historico = 2;

UPDATE DISCIPLINA_HISTORICO SET nota = 9.5, frequencia = 95 WHERE id_disciplina = 1 AND id_historico = 3;

UPDATE DISCIPLINA_HISTORICO SET nota = 6.5, frequencia = 70 WHERE id_disciplina = 2 AND id_historico = 4;

select * from DISCIPLINA_HISTORICO;


INSERT INTO CODIGO_TELEFONE (codigo, tipo_telefone) VALUES 
('1', 'Residencial'), 
('2', 'Celular');

INSERT INTO TELEFONES_ALUNO (id, ra_aluno, codigo_telefone, telefone) VALUES 
(1, 1, '1', '123456789'), 
(2, 2, '2', '987654321'),
(3, 3, '1', '55242400'), 
(4, 4, '2', '55242400');

INSERT INTO TIPO_LOGRADOURO (codigo, tipo_logradouro) VALUES 
('1', 'Rua'), 
('2', 'Avenida');

INSERT INTO ENDERECO_ALUNO (id, ra_aluno, codigo_tipo_logradouro, nome_rua, num_rua, complemento, cep) VALUES 
(1, 1, '1', 'Rua A', 100, 'Apto 1', '12345678'), 
(2, 2, '2', 'Rua B', 200, 'Casa', '87654321'),
(3, 3, '1', 'Rua C', 300, 'Apto 2', '55242400'), 
(4, 4, '2', 'Rua D', 400, 'Casa', '55242400');

INSERT INTO PROF_DISCIPLINA (id_professor, id_disciplina) VALUES 
(1, 1), 
(2, 2),
(3, 3), 
(4, 4),
(5, 5), 
(6, 6),
(7, 7), 
(8, 8);

select * from PROF_DISCIPLINA;

INSERT INTO CURSO_DISCIPLINA (id_curso, id_disciplina) VALUES 
(1, 1), 
(2, 2),
(3, 3), 
(4, 4),
(1, 5), 
(2, 6),
(3, 7), 
(4, 8);

select * from CURSO_DISCIPLINA;

/*
SELECT * FROM DEPARTAMENTO;
SELECT * FROM PROFESSOR;
SELECT * FROM DISCIPLINA;
SELECT * FROM CURSO;
SELECT * FROM TURMA;
SELECT * FROM ALUNO;
SELECT * FROM ALUNO_DISCIPLINA;
SELECT * FROM HISTORICO;
SELECT * FROM DISCIPLINA_HISTORICO;
SELECT * FROM TELEFONES_ALUNO;
SELECT * FROM CODIGO_TELEFONE;
SELECT * FROM ENDERECO_ALUNO;
SELECT * FROM TIPO_LOGRADOURO;
*/


--CONSULTAS

--CONSULTA 1: Curso que os alunos estão matriculados
SELECT A.nome, A.sobrenome, C.nome
FROM CURSO C
INNER JOIN ALUNO A 
ON C.id = A.id_curso;

--CONSULTA 2: RAs, Nomes e Sobrenomes dos Alunos, Nomes dos Cursos e Períodos das Turmas, ordenados pelo primeiro nome do aluno

SELECT A.ra, A.nome, A.sobrenome, C.nome, T.periodo
FROM ALUNO A
INNER JOIN CURSO C
ON A.id_curso = C.id
INNER JOIN TURMA T
ON A.id_turma = T.id
ORDER BY A.nome;

--CONSULTA 3: Todas as disciplinas cursadas por um aluno, com suas respectivas notas e frequências
--Aluno: RA 2

SELECT A.nome, A.sobrenome, D.nome, DH.nota, DH.frequencia
FROM ALUNO A
INNER JOIN ALUNO_DISCIPLINA AD
ON A.ra = AD.ra_aluno
INNER JOIN DISCIPLINA D
ON AD.id_disciplina = D.id
INNER JOIN HISTORICO H
ON A.ra = H.ra_aluno
INNER JOIN DISCIPLINA_HISTORICO DH
ON D.id = DH.id_disciplina AND H.id = DH.id_historico
WHERE A.ra = 2;

--CONSULTA 4: Nomes e sobrenomes dos professores, e disciplinas que ministram com suas cargas horárias

SELECT P.nome, P.sobrenome, D.nome AS Disciplina, D.carga_horaria
FROM PROFESSOR P
INNER JOIN PROF_DISCIPLINA PD
ON P.id = PD.id_professor
INNER JOIN DISCIPLINA D
ON PD.id_disciplina = D.id
ORDER BY D.nome;

--CONSULTA 5: Gerar um relatório com nomes, sobrenomes, CPF dos alunos, tipos e números de telefones, e endereços completo dos alunos

SELECT A.nome, A.sobrenome, A.cpf, CT.tipo_telefone, TA.telefone, TL.tipo_logradouro, EA.nome_rua, EA.num_rua, EA.complemento, EA.cep
FROM ALUNO A
INNER JOIN TELEFONES_ALUNO TA
ON A.ra = TA.ra_aluno
INNER JOIN CODIGO_TELEFONE CT
ON TA.codigo_telefone = CT.codigo
INNER JOIN ENDERECO_ALUNO EA
ON A.ra = EA.ra_aluno
INNER JOIN TIPO_LOGRADOURO TL
ON EA.codigo_tipo_logradouro = TL.codigo;

--CONSULTA 6: Listar as disciplinas, indicando seus departamentos, cursos e professores

SELECT D.nome, DE.nome AS Departamento, C.nome AS Curso, P.nome AS Professor
FROM DISCIPLINA D
INNER JOIN DEPARTAMENTO DE
ON D.id_departamento = DE.id
INNER JOIN CURSO_DISCIPLINA CD
ON D.id = CD.id_disciplina
INNER JOIN CURSO C
ON CD.id_curso = C.id
INNER JOIN PROF_DISCIPLINA PD
ON D.id = PD.id_disciplina
INNER JOIN PROFESSOR P
ON PD.id_professor = P.id
ORDER BY D.nome;








