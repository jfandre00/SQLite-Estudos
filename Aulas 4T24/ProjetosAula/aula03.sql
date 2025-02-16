CREATE TABLE vendas(
    Produto VARCHAR(50),
    Tipo_do_Produto VARCHAR(50),
    Valor DECIMAL(10, 2),
    Data DATE,
    Vendedor VARCHAR(50)
);

INSERT INTO vendas(Produto, Tipo_do_Produto, Valor, Data, Vendedor)
VALUES
('Bola', 'Esporte', 50.00, '2023-01-01', 'Carlos'),
('Boneca', 'Brinquedo', 120.00, '2023-01-02', 'Ana'),
('Carrinho', 'Brinquedo', 75.00, '2023-01-03', 'Pedro'),
('Bicicleta', 'Esporte', 300.00, '2023-01-04', 'Julia'),
('Chuteira', 'Esporte', 150.00, '2023-01-05', 'Marcos'),
('Videogame', 'Eletrônico', 2000.00, '2023-01-06', 'Carla'),
('Patins', 'Esporte', 180.00, '2023-01-07', 'Rodrigo'),
('Tablet', 'Eletrônico', 500.00, '2023-01-08', 'Sofia'),
('Lego', 'Brinquedo', 350.00, '2023-01-09', 'Ricardo'),
('Livro Infantil', 'Livro', 40.00, '2023-01-10', 'Fernanda');

SELECT * FROM vendas;