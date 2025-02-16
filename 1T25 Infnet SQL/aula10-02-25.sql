-- alunos - id (pk), cpf (unico), nome, email (unico), nascimento que deve ser uma data válida (não pode ser futura)
-- cursos - id (pk), nome (unico), carga_horaria (maior que zero), valor_curso (maior igual a zero)
-- relacionamento: um aluno pode se matricular em varios cursos
--                 um curso pode ter varios cursos matriculados (aluno e curso: muitos para muitos)
--                 data matricula é obrigatória e deve ser maior ou igual a zero
-- p/ muitos p muitos: criar uma tabela auxiliar TMatricula

PRAGMA foreign_keys = ON;

CREATE TABLE TAluno(
    id INTEGER primary key autoincrement,
    cpf TEXT unique not null,
    nome TEXT not null,
    email TEXT unique not null,
    dataNascimento DATE not null --check(dataNascimento <= Date('now'))
    situacao TEXT DEFAULT 'inicio' 
    );

--criação de um índice para a tabela Aluno
CREATE INDEX idx_aluno_cpf ON TAluno(cpf); --foi criado por ser unique
CREATE INDEX idx_aluno_email ON TAluno(email); --foi criado por ser unique
CREATE INDEX idx_aluno_nome ON TAluno(nome); --foi criado por ser utilizado na cláusula where
    
CREATE TABLE TCurso(
    id INTEGER primary key autoincrement,
    nome TEXT unique not null,
    cargaHoraria INTEGER not null check(cargaHoraria > 0),
    valor REAL DEFAULT 0 CHECK(valor >= 0) -- se o valor do curso não for preenchido, o valor será zero
    );

--criação de um índice para a tabela Curso
CREATE INDEX idx_curso_nome ON TCurso(nome); --foi criado por ser unique
    
CREATE TABLE TMatricula(
    id INTEGER primary key autoincrement,
    idAluno INTEGER,
    idCurso INTEGER,
    dataMatricula TEXT,
    foreign key (idAluno) references TAluno(id),
    foreign key (idCurso) references TCurso(id)
    );
    
INSERT into TAluno (cpf, nome, email, dataNascimento)
VALUES('123.456.789-00', 'João Silva', 'joao.silva@exemplo.com', '1990-01-01');
INSERT into TAluno (cpf, nome, email, dataNascimento)
VALUES('321.434.789-00', 'Maria Silva', 'maria.silva@exemplo.com', '1990-02-01');

--select * from TAluno;

INSERT into TCurso(nome, cargaHoraria, valor)
VALUES('Introducao SQL', 40, 299.90);

INSERT into TCurso(nome, cargaHoraria, valor)
VALUES('Desenvolvimento WEB', 60, 499.90);

--select * from TCurso;

INSERT into TMatricula (idAluno, idCurso, dataMatricula)
VALUES(1, 1, '2023-10-01');


INSERT into TMatricula (idAluno, idCurso, dataMatricula)
VALUES(2, 2, '2023-10-02');

INSERT into TMatricula(idAluno, idCurso, dataMatricula)
VALUES(1, 2, '2023-10-03');



--select * from TMatricula;

-- mostrar todos os alunos matriculados e em quais cursos

SELECT A.nome, C.nome, M.dataMatricula
FROM TAluno A
INNER JOIN TMatricula M
ON A.id = M.idAluno
INNER JOIN TCurso C
ON M.idCurso = C.id;



