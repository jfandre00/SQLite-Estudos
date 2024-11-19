CREATE TABLE vendedor ( --ajustar para concessionária do meu TP
    id_vendedor INTEGER PRIMARY KEY,
    nome TEXT NOT NULL,
    cpf TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL
);

CREATE TABLE produto (
    id_produto INTEGER PRIMARY KEY,
    descricao TEXT NOT NULL,
    preco REAL NOT NULL,
    estoque INTEGER NOT NULL, -- Usando INTEGER em vez de BOOLEAN
    id_vendedor INTEGER,
    FOREIGN KEY (id_vendedor) REFERENCES vendedor(id_vendedor)
);

CREATE TABLE alimenticio (
    id_produto INTEGER PRIMARY KEY,
    organico INTEGER NOT NULL, -- Usando INTEGER para representar booleanos (0 = false, 1 = true)
    caracteristica TEXT,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto) ON DELETE CASCADE
);

CREATE TABLE eletronico (
    id_produto INTEGER PRIMARY KEY,
    marca TEXT,
    garantia_meses INTEGER,
    FOREIGN KEY (id_produto) REFERENCES produto(id_produto) ON DELETE CASCADE
);

INSERT INTO vendedor (nome, cpf, email) VALUES
('João Silva', '12345678910', 'joao.silva@email.com'),
('Maria Oliveira', '98765432100', 'maria.oliveira@email.com'),
('Pedro Costa', '12398765412', 'pedro.costa@email.com'),
('Ana Souza', '98732165498', 'ana.souza@email.com'),
('Carlos Lima', '85274196312', 'carlos.lima@email.com'),
('Lucas Santos', '95175385246', 'lucas.santos@email.com'),
('Fernanda Alves', '75395185246', 'fernanda.alves@email.com'),
('Rafael Souza', '15975345687', 'rafael.souza@email.com'),
('Bianca Torres', '85296374152', 'bianca.torres@email.com'),
('Leonardo Ferreira', '15935745682', 'leonardo.ferreira@email.com');

INSERT INTO produto (descricao, preco, estoque, id_vendedor) VALUES
('Maçã Orgânica', 4.50, 1, 1),
('Smartphone Samsung', 1999.90, 1, 2),
('Arroz Integral', 10.75, 1, 3),
('Notebook Dell', 3500.00, 1, 4),
('Batata Doce', 2.30, 1, 5),
('Headset Gamer HyperX', 450.00, 1, 6),
('Tomate Orgânico', 6.00, 1, 7),
('Monitor LG', 1250.00, 1, 8),
('Farinha de Trigo', 4.80, 1, 9),
('Geladeira Brastemp', 3100.00, 1, 10);

/*
INSERT INTO alimenticio (id_produto, organico, caracteristica) VALUES
(1, 1, 'Fruta fresca'),
(3, 0, 'Grão'),
(5, 1, 'Tubérculo'),
(7, 1, 'Fruta'),
(9, 0, 'Grão moído');
*/

INSERT INTO alimenticio (id_produto, organico, caracteristica) VALUES
(1, 1, 'Fruta fresca'),
(3, 0, 'Grão'),
(5, 1, 'Fruta fresca'),
(7, 1, 'Legume'),
(9, 0, 'Fruta fresca');



INSERT INTO eletronico (id_produto, marca, garantia_meses) VALUES
(2, 'Samsung', 12),
(4, 'Dell', 24),
(6, 'HyperX', 12),
(8, 'LG', 24),
(10, 'Brastemp', 36);

select 
    caracteristica,
    count(caracteristica) 
from alimenticio
group by caracteristica