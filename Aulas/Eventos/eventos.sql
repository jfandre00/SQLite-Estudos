PRAGMA foreign_keys = ON;

-- LOCAL --
create table Local (
    id integer primary key,
    nome text,
    endereco text,
    capacidade integer
);
INSERT INTO Local (id, nome, endereco, capacidade) VALUES 
(1, 'Centro de Convenções', 'Rua Principal, 123', 500),
(4, 'Instituto Infnet', 'Rua São José, 90', 1000),
(2, 'Auditório Central', 'Avenida da Universidade, 456', 300),
(3, 'Espaço Cultural', 'Praça da Cultura, 303', 250);

--select * from Local;

-- EVENTO --
create table Evento (
    id integer primary key,
    nome text,
    data date,
    localID integer,
    foreign key (localID) references Local(id)
);
INSERT INTO Evento (id, nome, data, localID) VALUES 
(1, 'Seminário de Tecnologia', '2024-01-10', 1),
(2, 'Congresso de Educação', '2024-02-15', 1),
(3, 'Workshop de Programação', '2024-03-20', 2),
(4, 'Feira de Startups', '2024-04-25', 2),
(5, 'Fórum de Inovação', '2024-05-30', 3),
(6, 'Hackathon 2024', '2024-06-05', 3),
(7, 'Conferência de IA', '2024-07-10', 1),
(8, 'Simpósio de Segurança Digital', '2024-08-15', 1),
(9, 'Encontro de Desenvolvedores', '2024-09-20', 2),
(10, 'Summit de Negócios', '2024-10-25', 3);

-- PALESTRANTE --
create table Palestrante (
    id integer primary key,
    nome text
);
INSERT INTO Palestrante (id, nome) VALUES 
(1, 'Dr. Ana Silva'),
(2, 'Prof. Carlos Mendes'),
(3, 'Eng. Laura Souza'),
(4, 'Dr. Roberto Lima');

-- PALESTRA --
create table Palestra (
    id integer primary key,
    titulo text,
    palestranteID integer,
    eventoID integer,
    foreign key (palestranteID) references Palestrante(id),
    foreign key (eventoID) references Evento(id)
);
INSERT INTO Palestra (id, titulo, palestranteID, eventoID) VALUES 
(1, 'Tendências Tecnológicas', 1, 1),
(2, 'Educação do Futuro', 2, 2),
(3, 'Introdução ao JavaScript', 3, 3),
(4, 'Empreendedorismo Digital', 4, 4),
(5, 'Soluções para Cidades Inteligentes', 1, 5),
(6, 'Desenvolvimento Ágil', 2, 6),
(7, 'Inteligência Artificial no Cotidiano', 3, 7),
(8, 'Privacidade e Segurança Online', 4, 8),
(9, 'O Papel da Comunidade Dev', 1, 9),
(10, 'Estratégias para Negócios Inovadores', 2, 10);

-- PARTICIPANTE --
create table PARTICIPANTE (
    id integer primary key,
    nome text,
    email text
);

INSERT INTO Participante (id, nome, email) VALUES 
(1, 'Allan Gonçalves Felix', 'allan.felix@al.infnet.edu.br'),
(2, 'Ana Luiza Cotta Leal dos Reis', 'ana.reis@al.infnet.edu.br'),
(3, 'André Loureiro Montini Ferreira', 'andre.ferreira@al.infnet.edu.br'),
(4, 'Arthur Jorge Costa da Silva de Almeida', 'arthur.almeida@al.infnet.edu.br'),
(5, 'Artur Leitão de Albuquerque Cordeiro', 'artur.cordeiro@al.infnet.edu.br'),
(6, 'Barbara Portes Braga', 'barbara.braga@al.infnet.edu.br'),
(7, 'Bruno Franchescolli Silveira Antunes', 'bruno.antunes@al.infnet.edu.br'),
(8, 'Bruno Wedley de Aguiar Sousa', 'bruno.sousa@al.infnet.edu.br'),
(9, 'Carlos Augusto Feitosa Machado', 'carlos.machado@al.infnet.edu.br'),
(10, 'Carlos Matheus Monteiro do Nascimento', 'carlos.nascimento@al.infnet.edu.br'),
(11, 'Elias Matos Martins', 'elias.martins@al.infnet.edu.br'),
(12, 'Elizabeth Chen Dahab', 'elizabeth.dahab@al.infnet.edu.br'),
(13, 'Eloisa dos Santos Silva', 'eloisa.silva@al.infnet.edu.br'),
(14, 'Emily Leme Silva', 'emily.silva@al.infnet.edu.br'),
(15, 'Erick Mendes da Silva', 'erick.silva@al.infnet.edu.br'),
(16, 'Fabrício de Paiva Coelho', 'fabricio.coelho@al.infnet.edu.br'),
(17, 'Francisco da Silva Alves', 'francisco.alves@al.infnet.edu.br'),
(18, 'Gabriela Oinhos Almeida', 'gabriela.almeida@al.infnet.edu.br'),
(19, 'Isaque Silva da Costa', 'isaque.costa@al.infnet.edu.br'),
(20, 'Ivan Ferreira Murja', 'ivan.murja@al.infnet.edu.br'),
(21, 'Janssen Rodrigues da Costa Alves Lima', 'janssen.lima@al.infnet.edu.br'),
(22, 'Jean Matheus França', 'jean.franca@al.infnet.edu.br'),
(23, 'Jesiel Manoel Bandeira de Melo Junior', 'jesiel.junior@al.infnet.edu.br'),
(24, 'João Pedro Paes Leme Venturini Paiva', 'joao.paiva@al.infnet.edu.br'),
(25, 'Juliane Ferreira Oliveira', 'juliane.oliveira@al.infnet.edu.br'),
(26, 'Juliane Reis Baptista', 'juliane.baptista@al.infnet.edu.br'),
(27, 'Jullyana de Azevedo Rodrigues', 'jullyana.rodrigues@al.infnet.edu.br'),
(28, 'Larissa Guerra e Ribas', 'larissa.ribas@al.infnet.edu.br'),
(29, 'Leandro Guandalini Ribeiro', 'leandro.ribeiro@al.infnet.edu.br'),
(30, 'Lucas Ferreira de Oliveira Rodrigues', 'lucas.rodrigues@al.infnet.edu.br'),
(31, 'Luciana Estefania Pécora', 'luciana.pecora@al.infnet.edu.br'),
(32, 'Luise Katherine Pereira Arosquita', 'luise.arosquita@al.infnet.edu.br'),
(33, 'Marcus Vinicius Barbosa de Albuquerque', 'marcus.albuquerque@al.infnet.edu.br'),
(34, 'Matheus de Souza Rodrigues', 'matheus.rodrigues@al.infnet.edu.br'),
(35, 'Matheus Dias Cara', 'matheus.cara@al.infnet.edu.br'),
(36, 'Matheus Hossono Carvalho', 'matheus.carvalho@al.infnet.edu.br'),
(37, 'Murilo Augusto Garmatter Gonsalves', 'murilo.gonsalves@al.infnet.edu.br'),
(38, 'Osvaldo Magalhaes de Carvalho Neto', 'osvaldo.neto@al.infnet.edu.br'),
(39, 'Paulo Henrique de Sousa Matos', 'paulo.matos@al.infnet.edu.br'),
(40, 'Pedro Gaspar Cunha', 'pedro.cunha@al.infnet.edu.br'),
(41, 'Pedro Saraiva Barros', 'pedro.barros@al.infnet.edu.br'),
(42, 'Pedro Telles de Oliveira', 'pedro.oliveira@al.infnet.edu.br'),
(43, 'Ronilson da Conceição Batista', 'ronilson.batista@al.infnet.edu.br'),
(44, 'Samira Oliveira de Abreu Barros', 'samira.barros@al.infnet.edu.br'),
(45, 'Samuel Borges Leme', 'samuel.leme@al.infnet.edu.br'),
(46, 'Saulo Duarte de Luna', 'saulo.luna@al.infnet.edu.br'),
(47, 'Sirllon de Medeiros Alves Cruz', 'sirllon.cruz@al.infnet.edu.br'),
(48, 'Victor Soares Amorim Brandão', 'victor.brandao@al.infnet.edu.br'),
(49, 'Walace Abreu dos Santos Filho', 'walace.filho@al.infnet.edu.br'),
(50, 'William Santana de Amorim', 'william.amorim@al.infnet.edu.br'),
(51, 'Yago Martins Petruci', 'yago.petruci@al.infnet.edu.br');

-- INSCRIÇÃO --
create table INSCRICAO (
    participanteID integer,
    palestraID integer,
    eventoID integer,
    primary key (participanteID, palestraID, eventoID),
    foreign key (participanteID) references Participante(id),
    foreign key (palestraID) references Palestra(id),
    foreign key (eventoID) references Evento(id)
);

INSERT INTO INSCRICAO (participanteID, palestraID, eventoID) VALUES
(1, 1, 1),
(1, 2, 1),
(1, 3, 1),
(1, 4, 2),
(1, 5, 2),
(1, 6, 2),
(2, 1, 1),
(2, 2, 1),
(2, 3, 1),
(2, 4, 2),
(2, 5, 2),
(2, 6, 2),
(3, 1, 1),
(3, 2, 1),
(3, 3, 1),
(3, 4, 2),
(3, 5, 2),
(3, 6, 2),
(4, 1, 1),
(4, 2, 1),
(4, 3, 1),
(4, 4, 2),
(4, 5, 2),
(4, 6, 2),
(5, 1, 1),
(5, 2, 1),
(5, 3, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(6, 1, 1),
(6, 2, 1),
(6, 3, 1),
(6, 4, 2),
(6, 5, 2),
(6, 6, 2),
(7, 1, 1),
(7, 2, 1),
(7, 3, 1),
(7, 4, 2),
(7, 5, 2),
(7, 6, 2),
(8, 1, 1),
(8, 2, 1),
(8, 3, 1),
(8, 4, 2),
(8, 5, 2),
(8, 6, 2),
(9, 1, 1),
(9, 2, 1),
(9, 3, 1),
(9, 4, 2),
(9, 5, 2),
(9, 6, 2),
(10, 1, 1),
(10, 2, 1),
(10, 3, 1),
(10, 4, 2),
(10, 5, 2),
(10, 6, 2);

INSERT INTO INSCRICAO (participanteID, palestraID, eventoID) VALUES
(11, 1, 1),
(11, 2, 1),
(11, 4, 2),
(11, 5, 2),
(12, 3, 1),
(12, 6, 2),
(13, 2, 1),
(13, 5, 2),
(14, 1, 1),
(14, 4, 2),
(15, 2, 1),
(15, 6, 2),
(16, 1, 1),
(16, 5, 2),
(17, 3, 1),
(17, 6, 2),
(18, 2, 1),
(18, 4, 2),
(19, 1, 1),
(19, 3, 1),
(19, 5, 2),
(20, 4, 2),
(20, 6, 2);

/*
-- RF01 - Listar participates, palestras, eventos e locais

select 
    p.nome,
    pa.titulo,
    e.nome,
    l.nome
from Inscricao i 
inner join Participante p on p.id = i.participanteID
inner join Palestra pa on pa.id = i.palestraID
inner join Evento e on e.id = pa.eventoID
inner join Local l on l.id = e.localID
order by p.nome, pa.titulo, e.nome;
*/

/*
-- RF02 - Quais palestrantes estão associados a quais eventos?
-- palestra é a forma que se chega tanto em evento e palestrantes

select
p.nome,
e.nome
from Palestra pa 
inner join Palestrante p on p.id = pa.palestranteID
inner join Evento e on e.id = pa.eventoID
order by
p.nome,
e.nome;
*/
/*
-- RF03 - Listar todos os participantes, incluindo aqueles que não estão inscritos em nenhum evento.  
-- Os campos de evento, palestra e local serão NULL para esses casos
-- apresentar nome do participante, evento (se tiver) palestra (se tiver) nome do local (se tiver)

select
    p.nome
    , e.nome
    , pa.titulo
    , l.nome
from Participante p
left join Inscricao i on i.participanteID = p.id
left join Palestra pa on pa.id = i.palestraID
left join Evento e on e.id = pa.eventoID
left join Local l on l.id = e.localID
order by p.nome;
*/

/*
-- RF04 - Mostrar todos os eventos, incluindo aqueles sem palestras associadas. 
-- Se não houver palestra, o nome do palestrante será NULL.

select
    e.nome
    , pa.titulo
    , p.nome
from Evento e
left join Palestra pa on pa.eventoID = e.id
left join Palestrante p on p.id = pa.palestranteID
order by
    e.nome
    , pa.titulo;
*/

/*
-- RF05 - Mostrar todos os locais, incluindo aqueles sem eventos associados. 
-- Os campos de evento e data serão NULL para esses casos

select
    l.nome
    , e.nome
    , e.data
from Local l
left join Evento e on e.localID = l.id
order by
    l.nome
    , e.nome
    , e.data;
*/

/*
-- RF06 - Quais participantes se inscreveram em mais eventos?

select
    p.nome
    , count(i.participanteID)
from Participante p
inner join Inscricao i on i.participanteID = p.id
group by p.nome
order by count(i.participanteID) desc;
*/

/*
-- RF07 - Quais foram os eventos mais procurados?

select
    e.nome
    , count(i.participanteID)
from Evento e
inner join Inscricao i on i.eventoID = e.ID
group by e.nome
order by count(i.participanteID) ASC;
*/

-- RF08 - Quais palestrantes deram mais de duas palestras?

select
    p.nome
    , count(pa.ID)
from Palestrante p
inner join Palestra pa on pa.palestranteID = p.ID
group by p.nome 
having count(pa.ID) > 2;