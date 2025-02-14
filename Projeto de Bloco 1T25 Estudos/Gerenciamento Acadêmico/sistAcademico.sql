PRAGMA foreign_keys = ON;

CREATE TABLE Aluno (
    matricula INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    endereco TEXT NOT NULL,
    telefone TEXT NOT NULL
);

CREATE TABLE Disciplina (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cargaHoraria INTEGER NOT NULL
);

CREATE TABLE Professor (
    id INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    endereco TEXT NOT NULL,
    titulacao TEXT NOT NULL
);

CREATE TABLE Sala (
    id INTEGER PRIMARY KEY,
    numero INTEGER NOT NULL,
    nome TEXT NOT NULL
);

CREATE TABLE Turma (
    id INTEGER PRIMARY KEY,
    idDisciplina INTEGER NOT NULL,
    idProfessor INTEGER NOT NULL,
    idSala INTEGER NOT NULL,
    idAluno INTEGER NOT NULL,
    FOREIGN KEY (idDisciplina) REFERENCES Disciplina(id),
    FOREIGN KEY (idProfessor) REFERENCES Professor(id),
    FOREIGN KEY (idSala) REFERENCES Sala(id),
    FOREIGN KEY (idAluno) REFERENCES Aluno(matricula)
);

CREATE TABLE Aluno_Turma (
    idAluno INTEGER NOT NULL,
    idTurma INTEGER NOT NULL,
    FOREIGN KEY (idAluno) REFERENCES Aluno(matricula),
    FOREIGN KEY (idTurma) REFERENCES Turma(id)
);

CREATE TABLE Professor_Disciplina (
    idProfessor INTEGER NOT NULL,
    idDisciplina INTEGER NOT NULL,
    FOREIGN KEY (idProfessor) REFERENCES Professor(id),
    FOREIGN KEY (idDisciplina) REFERENCES Disciplina(id)
);

CREATE TABLE Aluno_Disciplina (
    idAluno INTEGER NOT NULL,
    idDisciplina INTEGER NOT NULL,
    FOREIGN KEY (idAluno) REFERENCES Aluno(matricula),
    FOREIGN KEY (idDisciplina) REFERENCES Disciplina(id)
);

-- Inserir alguns dados

INSERT INTO Aluno (matricula, nome, endereco, telefone)
VALUES (1, 'João Silva', 'Rua 1', '1234-5678')
, (2, 'Maria Silva', 'Rua 2', '1234-5679')
, (3, 'José Silva', 'Rua 3', '1234-5680');

INSERT INTO Disciplina (id, nome, cargaHoraria)
VALUES (1, 'Matemática', 40)
, (2, 'Português', 40)
, (3, 'História', 40);

INSERT INTO Professor (id, nome, endereco, titulacao)
VALUES (1, 'Prof. João', 'Rua 1', 'Doutor')
, (2, 'Prof. Maria', 'Rua 2', 'Mestre')
, (3, 'Prof. José', 'Rua 3', 'Especialista');

INSERT INTO Sala (id, numero, nome)
VALUES (1, 101, 'Sala 101')
, (2, 102, 'Sala 102')
, (3, 103, 'Sala 103');

INSERT INTO Turma (id, idDisciplina, idProfessor, idSala, idAluno)
VALUES (1, 1, 1, 1, 1)
, (2, 2, 2, 2, 2)
, (3, 3, 3, 3, 3);

INSERT INTO Aluno_Turma (idAluno, idTurma)
VALUES (1, 1)
, (2, 2)
, (3, 3);

INSERT INTO Professor_Disciplina (idProfessor, idDisciplina)
VALUES (1, 1)
, (2, 2)
, (3, 3);

INSERT INTO Aluno_Disciplina (idAluno, idDisciplina)
VALUES (1, 1)
, (2, 2)
, (3, 3);

-- Consultas variadas

SELECT A.nome, D.nome, P.nome, S.nome
FROM Aluno A
JOIN Aluno_Turma AT ON A.matricula = AT.idAluno
JOIN Turma T ON AT.idTurma = T.id
JOIN Disciplina D ON T.idDisciplina = D.id
JOIN Professor P ON T.idProfessor = P.id
JOIN Sala S ON T.idSala = S.id;




