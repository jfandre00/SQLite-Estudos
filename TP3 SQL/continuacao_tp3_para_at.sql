CREATE TABLE Concessionarias (
    ID_Transacao TEXT PRIMARY KEY,
    Nome_da_concessionaria TEXT,
    CNPJ TEXT,
    Email TEXT,
    Telefone TEXT,
    Marca TEXT,
    Modelo TEXT,
    Ano_Fabricacao INTEGER,
    Cor TEXT,
    Preco REAL,
    Disponibilidade_em_estoque BOOLEAN,
    Numero_de_portas INTEGER,
    Volume_do_porta_malas INTEGER,
    Ar_condicionado BOOLEAN,
    Tipo_de_cambio TEXT,
    Tipo_de_assento TEXT,
    Suspensao_traseira TEXT,
    Tipo_de_guidao TEXT, 
    Tipo_Automovel TEXT
    );
    
    INSERT INTO Concessionarias (ID_Transacao,Nome_da_concessionaria,CNPJ,Email,Telefone,Marca,Modelo,
        Ano_Fabricacao,Cor,Preco,Disponibilidade_em_estoque,Numero_de_portas,
        Volume_do_porta_malas,Ar_condicionado,Tipo_de_cambio,Tipo_de_assento,
        Suspensao_traseira,Tipo_de_guidao, Tipo_Automovel)
    VALUES
('001','Concessionaria E', '23.456.789/0001-04', 'contato@concessionariae.com', '(41) 99876-5432', 'Audi', 'Corolla', 2011, 'Verde', 64772, FALSE, 2, 272, FALSE, 'Automatico', NULL, NULL, NULL, 'carro'),
('002','Concessionaria B', '98.765.432/0001-01', 'contato@concessionariac.com', '(21) 91234-5678', 'Fiat', 'Kicks', 2011, 'Amarelo', 123606, TRUE, 5, 501, FALSE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('003','Concessionaria C', '65.432.109/0001-03', 'contato@concessionariac.com', '(21) 91234-5678', 'Volkswagen', 'Kicks', 2010, 'Prata', 77831, TRUE, 4, 262, FALSE, 'CVT', NULL, NULL, NULL, 'carro'),
('004','Concessionaria B', '12.345.678/0001-90', 'contato@concessionariac.com', '(21) 91234-5678', 'Toyota', 'HB20', 2022, 'Azul', 77831, TRUE, 2, 599, FALSE, 'Manual', NULL, NULL, NULL, 'carro'),
('005','Concessionaria B', '98.765.432/0001-01', 'contato@concessionariab.com', '(41) 99876-5432', 'Mercedes-Benz', 'Kicks', 2012, 'Laranja', 36518, TRUE, 5, 317, FALSE, 'CVT', NULL, NULL, NULL, 'carro'),
('006','Concessionaria B', '98.765.432/0001-01', 'contato@concessionariac.com', '(21) 91234-5678', 'Nissan', 'HB20', 2012, 'Prata', 143792, TRUE, 2, 393, FALSE, 'Automatico', NULL, NULL, NULL, 'carro'),
('007','Concessionaria C', '23.456.789/0001-04', 'contato@concessionariac.com', '(21) 91234-5678', 'Nissan', 'Corolla', 2012, 'Laranja', 50319, TRUE, 4, 595, TRUE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('008','Concessionaria D', '12.345.678/0001-90', 'contato@concessionariad.com', '(11) 98765-4321', 'Audi', 'Focus', 2024, 'Azul', 37465, TRUE, 5, 434, FALSE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('009','Concessionaria B', '23.456.789/0001-04', 'contato@concessionariaa.com', '(31) 98765-1234', 'BMW', 'A3', 2013, 'Cinza', 85975, FALSE, 5, 504, TRUE, 'Automatico', NULL, NULL, NULL, 'carro'),
('010','Concessionaria D', '65.432.109/0001-03', 'contato@concessionariae.com', '(11) 98765-4321', 'Mercedes-Benz', 'Corolla', 2019, 'Roxo', 66498, FALSE, 5, 357, TRUE, 'CVT', NULL, NULL, NULL, 'carro'),
('011','Concessionaria B', '54.321.987/0001-02', 'contato@concessionariac.com', '(21) 91234-5678', 'Ford', 'X1', 2019, 'Branco', 53083, TRUE, 5, 568, TRUE, 'Automatico', NULL, NULL, NULL, 'carro'),
('012','Concessionaria B', '65.432.109/0001-03', 'contato@concessionariab.com', '(11) 98765-4321', 'BMW', 'HB20', 2019, 'Azul', 121106, TRUE, 2, 418, TRUE, 'Automatico', NULL, NULL, NULL, 'carro'),
('013','Concessionaria E', '65.432.109/0001-03', 'contato@concessionariaa.com', '(51) 92345-6789', 'Mercedes-Benz', 'X1', 2017, 'Cinza', 37433, TRUE, 5, 256, TRUE, 'CVT', NULL, NULL, NULL, 'carro'),
('014','Concessionaria B', '23.456.789/0001-04', 'contato@concessionariaa.com', '(31) 98765-1234', 'Toyota', 'HB20', 2013, 'Azul', 70110, TRUE, 2, 353, TRUE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('015','Concessionaria E', '23.456.789/0001-04', 'contato@concessionariad.com', '(41) 99876-5432', 'Mercedes-Benz', 'Kicks', 2019, 'Prata', 121106, TRUE, 5, 317, FALSE, 'CVT', NULL, NULL, NULL, 'carro'),
('016','Concessionaria C', '65.432.109/0001-03', 'contato@concessionariad.com', '(11) 98765-4321', 'Mercedes-Benz', 'Focus', 2013, 'Azul', 87385, FALSE, 2, 496, TRUE, 'Automatico', NULL, NULL, NULL, 'carro'),
('017','Concessionaria B', '98.765.432/0001-01', 'contato@concessionariaa.com', '(31) 98765-1234', 'Ford', 'Focus', 2014, 'Verde', 35813, TRUE, 5, 548, TRUE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('018','Concessionaria D', '54.321.987/0001-02', 'contato@concessionariae.com', '(31) 98765-1234', 'Honda', 'Civic', 2010, 'Preto', 70378, FALSE, 2, 263, FALSE, 'Automatico', NULL, NULL, NULL, 'carro'),
('019','Concessionaria E', '23.456.789/0001-04', 'contato@concessionariae.com', '(11) 98765-4321', 'BMW', 'A3', 2015, 'Azul', 108496, FALSE, 4, 416, FALSE, 'CVT', NULL, NULL, NULL, 'carro'),
('020','Concessionaria D', '23.456.789/0001-04', 'contato@concessionariaa.com', '(21) 91234-5678', 'Audi', 'Corolla', 2011, 'Prata', 60594, TRUE, 4, 459, TRUE, 'CVT', NULL, NULL, NULL, 'carro'),
('021','Concessionaria A', '23.456.789/0001-04', 'contato@concessionariac.com', '(31) 98765-1234', 'BMW', 'Kicks', 2019, 'Laranja', 70937, FALSE, 5, 366, TRUE, 'Automatico', NULL, NULL, NULL, 'carro'),
('022','Concessionaria E', '12.345.678/0001-90', 'contato@concessionariaa.com', '(41) 99876-5432', 'Toyota', 'Focus', 2014, 'Cinza', 118197, TRUE, 2, 475, TRUE, 'Automatico', NULL, NULL, NULL, 'carro'),
('023','Concessionaria C', '98.765.432/0001-01', 'contato@concessionariab.com', '(51) 92345-6789', 'Ford', 'Focus', 2024, 'Azul', 85975, TRUE, 2, 391, FALSE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('024','Concessionaria E', '23.456.789/0001-04', 'contato@concessionariab.com', '(31) 98765-1234', 'Volkswagen', 'Corolla', 2020, 'Verde', 83091, FALSE, 2, 580, TRUE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('025','Concessionaria C', '23.456.789/0001-04', 'contato@concessionariaa.com', '(11) 98765-4321', 'Fiat', 'HB20', 2019, 'Branco', 70463, TRUE, 2, 298, FALSE, 'Automatico', NULL, NULL, NULL, 'carro'),
('026','Concessionaria B', '54.321.987/0001-02', 'contato@concessionariac.com', '(41) 99876-5432', 'Audi', 'Focus', 2020, 'Laranja', 124993, TRUE, 4, 552, TRUE, 'Automatico', NULL, NULL, NULL, 'carro'),
('027','Concessionaria C', '54.321.987/0001-02', 'contato@concessionariad.com', '(51) 92345-6789', 'Chevrolet', 'Corolla', 2020, 'Cinza', 135345, FALSE, 2, 398, TRUE, 'CVT', NULL, NULL, NULL, 'carro'),
('028','Concessionaria C', '98.765.432/0001-01', 'contato@concessionariaa.com', '(41) 99876-5432', 'Ford', 'Focus', 2011, 'Prata', 81674, FALSE, 5, 452, FALSE, 'CVT', NULL, NULL, NULL, 'carro'),
('029','Concessionaria D', '54.321.987/0001-02', 'contato@concessionariac.com', '(41) 99876-5432', 'Audi', 'Kicks', 2012, 'Branco', 109411, FALSE, 4, 350, FALSE, 'CVT', NULL, NULL, NULL, 'carro'),
('030','Concessionaria A', '23.456.789/0001-04', 'contato@concessionariab.com', '(21) 91234-5678', 'Ford', 'HB20', 2019, 'Azul', 48947, FALSE, 2, 576, FALSE, 'Manual', NULL, NULL, NULL, 'carro'),
('031','Concessionaria A', '98.765.432/0001-01', 'contato@concessionariaa.com', '(51) 92345-6789', 'Ford', 'Focus', 2022, 'Azul', 105000, FALSE, 5, 304, TRUE, 'Manual', NULL, NULL, NULL, 'carro'),
('032','Concessionaria E', '98.765.432/0001-01', 'contato@concessionariad.com', '(21) 91234-5678', 'Chevrolet', 'HB20', 2012, 'Cinza', 138037, FALSE, 2, 497, TRUE, 'Manual', NULL, NULL, NULL, 'carro'),
('033','Concessionaria D', '98.765.432/0001-01', 'contato@concessionariad.com', '(21) 91234-5678', 'Audi', 'Kicks', 2024, 'Cinza', 74598, FALSE, 2, 285, TRUE, 'Manual', NULL, NULL, NULL, 'carro'),
('034','Concessionaria E', '65.432.109/0001-03', 'contato@concessionariab.com', '(41) 99876-5432', 'Audi', 'Focus', 2022, 'Prata', 89843, FALSE, 2, 582, TRUE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('035','Concessionaria A', '12.345.678/0001-90', 'contato@concessionariac.com', '(31) 98765-1234', 'Nissan', 'Corolla', 2015, 'Cinza', 120143, FALSE, 2, 375, TRUE, 'Manual', NULL, NULL, NULL, 'carro'),
('036','Concessionaria E', '54.321.987/0001-02', 'contato@concessionariad.com', '(11) 98765-4321', 'Toyota', 'Civic', 2019, 'Cinza', 59122, FALSE, 2, 430, FALSE, 'CVT', NULL, NULL, NULL, 'carro'),
('037','Concessionaria D', '12.345.678/0001-90', 'contato@concessionariae.com', '(21) 91234-5678', 'Chevrolet', 'Onix', 2021, 'Preto', 130003, TRUE, 2, 313, TRUE, 'CVT', NULL, NULL, NULL, 'carro'),
('038','Concessionaria E', '23.456.789/0001-04', 'contato@concessionariad.com', '(51) 92345-6789', 'Fiat', 'HB20', 2022, 'Vermelho', 47132, FALSE, 2, 344, FALSE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('039','Concessionaria B', '65.432.109/0001-03', 'contato@concessionariab.com', '(51) 92345-6789', 'Volkswagen', 'Fiesta', 2011, 'Branco', 118197, TRUE, 2, 531, TRUE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('040','Concessionaria A', '23.456.789/0001-04', 'contato@concessionariab.com', '(11) 98765-4321', 'Volkswagen', 'Civic', 2011, 'Branco', 34301, FALSE, 4, 308, TRUE, 'Automatico', NULL, NULL, NULL, 'carro'),
('041','Concessionaria D', '12.345.678/0001-90', 'contato@concessionariab.com', '(41) 99876-5432', 'Volkswagen', 'X1', 2019, 'Azul', 99378, FALSE, 5, 302, TRUE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('042','Concessionaria C', '65.432.109/0001-03', 'contato@concessionariab.com', '(51) 92345-6789', 'Fiat', 'Civic', 2011, 'Verde', 128577, TRUE, 4, 314, TRUE, 'Automatico', NULL, NULL, NULL, 'carro'),
('043','Concessionaria A', '54.321.987/0001-02', 'contato@concessionariab.com', '(21) 91234-5678', 'Mercedes-Benz', 'A3', 2015, 'Roxo', 63335, TRUE, 5, 540, FALSE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('044','Concessionaria E', '12.345.678/0001-90', 'contato@concessionariad.com', '(11) 98765-4321', 'Ford', 'Civic', 2019, 'Azul', 42555, TRUE, 4, 473, FALSE, 'Automatico', NULL, NULL, NULL, 'carro'),
('045','Concessionaria B', '98.765.432/0001-01', 'contato@concessionariae.com', '(41) 99876-5432', 'Ford', 'Kicks', 2013, 'Cinza', 135345, TRUE, 5, 424, FALSE, 'CVT', NULL, NULL, NULL, 'carro'),
('046','Concessionaria B', '98.765.432/0001-01', 'contato@concessionariad.com', '(21) 91234-5678', 'Volkswagen', 'Fiesta', 2017, 'Cinza', 120143, FALSE, 5, 289, FALSE, 'Automatico', NULL, NULL, NULL, 'carro'),
('047','Concessionaria B', '23.456.789/0001-04', 'contato@concessionariae.com', '(21) 91234-5678', 'Ford', 'Corolla', 2017, 'Cinza', 89473, FALSE, 4, 494, FALSE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('048','Concessionaria D', '98.765.432/0001-01', 'contato@concessionariab.com', '(41) 99876-5432', 'Honda', 'Kicks', 2021, 'Amarelo', 110455, TRUE, 4, 429, FALSE, 'CVT', NULL, NULL, NULL, 'carro'),
('049','Concessionaria C', '65.432.109/0001-03', 'contato@concessionariad.com', '(21) 91234-5678', 'Audi', 'Kicks', 2021, 'Cinza', 142402, TRUE, 5, 571, FALSE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('050','Concessionaria A', '12.345.678/0001-90', 'contato@concessionariac.com', '(51) 92345-6789', 'Toyota', 'Onix', 2021, 'Cinza', 60945, TRUE, 2, 574, FALSE, 'Automatico', NULL, NULL, NULL, 'carro'),
('051','Concessionaria B', '54.321.987/0001-02', 'contato@concessionariac.com', '(31) 98765-1234', 'Ford', 'Fiesta', 2019, 'Prata', 55440, TRUE, 2, 376, TRUE, 'Manual', NULL, NULL, NULL, 'carro'),
('052','Concessionaria B', '98.765.432/0001-01', 'contato@concessionariab.com', '(21) 91234-5678', 'Chevrolet', 'Fiesta', 2024, 'Cinza', 123606, TRUE, 5, 561, TRUE, 'CVT', NULL, NULL, NULL, 'carro'),
('053','Concessionaria A', '54.321.987/0001-02', 'contato@concessionariad.com', '(11) 98765-4321', 'Fiat', 'Gol', 2010, 'Roxo', 68755, FALSE, 2, 416, FALSE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('054','Concessionaria B', '54.321.987/0001-02', 'contato@concessionariad.com', '(11) 98765-4321', 'Fiat', 'Corolla', 2019, 'Verde', 50319, TRUE, 5, 271, FALSE, 'CVT', NULL, NULL, NULL, 'carro'),
('055','Concessionaria E', '12.345.678/0001-90', 'contato@concessionariad.com', '(11) 98765-4321', 'Nissan', 'X1', 2018, 'Laranja', 124993, TRUE, 5, 464, FALSE, 'Automatico', NULL, NULL, NULL, 'carro'),
('056','Concessionaria D', '54.321.987/0001-02', 'contato@concessionariac.com', '(51) 92345-6789', 'Chevrolet', 'A3', 2014, 'Prata', 89167, TRUE, 2, 568, TRUE, 'Manual', NULL, NULL, NULL, 'carro'),
('057','Concessionaria E', '65.432.109/0001-03', 'contato@concessionariad.com', '(41) 99876-5432', 'Fiat', 'Gol', 2011, 'Branco', 44379, FALSE, 5, 455, FALSE, 'Automatico', NULL, NULL, NULL, 'carro'),
('058','Concessionaria E', '65.432.109/0001-03', 'contato@concessionariad.com', '(31) 98765-1234', 'Fiat', 'Fiesta', 2015, 'Laranja', 130003, TRUE, 5, 391, FALSE, 'CVT', NULL, NULL, NULL, 'carro'),
('059','Concessionaria D', '98.765.432/0001-01', 'contato@concessionariae.com', '(21) 91234-5678', 'Volkswagen', 'Civic', 2018, 'Branco', 60945, FALSE, 4, 491, TRUE, 'Automatico', NULL, NULL, NULL, 'carro'),
('060','Concessionaria A', '65.432.109/0001-03', 'contato@concessionariab.com', '(31) 98765-1234', 'Chevrolet', 'A3', 2021, 'Verde', 64772, FALSE, 5, 389, FALSE, 'CVT', NULL, NULL, NULL, 'carro'),
('061','Concessionaria B', '65.432.109/0001-03', 'contato@concessionariaa.com', '(51) 92345-6789', 'Volkswagen', 'Corolla', 2021, 'Cinza', 82679, TRUE, 2, 491, TRUE, 'Semi-Automatico', NULL, NULL, NULL, 'carro'),
('062','Concessionaria E', '54.321.987/0001-02', 'contato@concessionariaa.com', '(51) 92345-6789', 'Chevrolet', 'Civic', 2015, 'Azul', 115836, TRUE, 4, 313, TRUE, 'CVT', NULL, NULL, NULL, 'carro'),
('063','Concessionaria C', '54.321.987/0001-02', 'contato@concessionariae.com', '(11) 98765-4321', 'BMW', 'Onix', 2010, 'Prata', 120993, TRUE, 2, 484, TRUE, 'Automatico', NULL, NULL, NULL, 'carro'),
('064','Concessionaria D', '54.321.987/0001-02', 'contato@concessionariac.com', '(31) 98765-1234', 'Toyota', 'HB20', 2013, 'Amarelo', 47176, FALSE, 2, 485, FALSE, 'Automatico', NULL, NULL, NULL, 'carro'),
('065','Concessionaria B', '23.456.789/0001-04', 'contato@concessionariaa.com', '(41) 99876-5432', 'Fiat', 'X1', 2011, 'Laranja', 33338, TRUE, 2, 259, TRUE, 'Manual', NULL, NULL, NULL, 'carro'),
('066','Concessionaria A', '12.345.678/0001-90', 'contato@concessionariad.com', '(31) 98765-1234', 'Yamaha', 'Biz', 2011, 'Roxo', 59122, FALSE, NULL, NULL, NULL, NULL, 'Touring', 'Mola', 'Em', 'moto'),
('067','Concessionaria B', '65.432.109/0001-03', 'contato@concessionariab.com', '(41) 99876-5432', 'Harley Davidson', 'CG', 2024, 'Azul', 89167, TRUE, NULL, NULL, NULL, NULL, 'Duplo', 'Multiplos-pontos-fixacao', 'Alto', 'moto'),
('068','Concessionaria B', '65.432.109/0001-03', 'contato@concessionariae.com', '(21) 91234-5678', 'Ducati', 'Twister', 2015, 'Verde', 124306, TRUE, NULL, NULL, NULL, NULL, 'Solo', 'Pnemmatica', 'Abatido', 'moto'),
('069','Concessionaria C', '12.345.678/0001-90', 'contato@concessionariaa.com', '(11) 98765-4321', 'Dafra', 'Ninja', 2019, 'Cinza', 96188, FALSE, NULL, NULL, NULL, NULL, 'Sport', 'Mola', 'Em', 'moto'),
('070','Concessionaria D', '65.432.109/0001-03', 'contato@concessionariac.com', '(11) 98765-4321', 'Triumph', 'Falcon', 2019, 'Amarelo', 37433, FALSE, NULL, NULL, NULL, NULL, 'Sport', 'Pnemmatica', 'Abatido', 'moto'),
('071','Concessionaria A', '23.456.789/0001-04', 'contato@concessionariac.com', '(31) 98765-1234', 'Avelloz', 'Falcon', 2015, 'Verde', 69432, TRUE, NULL, NULL, NULL, NULL, 'Solo', 'Pnemmatica', 'Baixo', 'moto'),
('072','Concessionaria E', '12.345.678/0001-90', 'contato@concessionariab.com', '(41) 99876-5432', 'Dafra', 'Biz', 2024, 'Branco', 129504, FALSE, NULL, NULL, NULL, NULL, 'Sport', 'Mola', 'Em', 'moto'),
('073','Concessionaria E', '54.321.987/0001-02', 'contato@concessionariae.com', '(51) 92345-6789', 'Yamaha', 'GSX', 2012, 'Branco', 124993, TRUE, NULL, NULL, NULL, NULL, 'Sport', 'Pnemmatica', 'Abatido', 'moto'),
('074','Concessionaria D', '98.765.432/0001-01', 'contato@concessionariab.com', '(41) 99876-5432', 'Triumph', 'Twister', 2019, 'Cinza', 60594, FALSE, NULL, NULL, NULL, NULL, 'Bench', 'Pnemmatica', 'Reto', 'moto'),
('075','Concessionaria B', '98.765.432/0001-01', 'contato@concessionariae.com', '(51) 92345-6789', 'Yamaha', 'Ninja', 2015, 'Branco', 134944, FALSE, NULL, NULL, NULL, NULL, 'Sport', 'Mola', 'Abatido', 'moto'),
('076','Concessionaria B', '54.321.987/0001-02', 'contato@concessionariaa.com', '(11) 98765-4321', 'Dafra', 'Falcon', 2014, 'Azul', 72721, TRUE, NULL, NULL, NULL, NULL, 'Sport', 'Amortecedor-gas', 'Baixo', 'moto'),
('077','Concessionaria C', '12.345.678/0001-90', 'contato@concessionariae.com', '(11) 98765-4321', 'Harley Davidson', 'XBR', 2019, 'Laranja', 148780, FALSE, NULL, NULL, NULL, NULL, 'Touring', 'Multiplos-pontos-fixacao', 'Alto', 'moto'),
('078','Concessionaria D', '23.456.789/0001-04', 'contato@concessionariad.com', '(21) 91234-5678', 'Avelloz', 'Falcon', 2024, 'Cinza', 51388, TRUE, NULL, NULL, NULL, NULL, 'Sport', 'Multiplos-pontos-fixacao', 'Reto', 'moto'),
('079','Concessionaria B', '65.432.109/0001-03', 'contato@concessionariad.com', '(51) 92345-6789', 'Triumph', 'Biz', 2015, 'Amarelo', 70378, TRUE, NULL, NULL, NULL, NULL, 'Touring', 'Mola', 'Reto', 'moto'),
('080','Concessionaria B', '98.765.432/0001-01', 'contato@concessionariab.com', '(41) 99876-5432', 'Yamaha', 'Twister', 2019, 'Verde', 105000, TRUE, NULL, NULL, NULL, NULL, 'Solo', 'Amortecedor-gas', 'Alto', 'moto'),
('081','Concessionaria B', '23.456.789/0001-04', 'contato@concessionariac.com', '(51) 92345-6789', 'Ducati', 'GSX', 2019, 'Azul', 123925, FALSE, NULL, NULL, NULL, NULL, 'Bench', 'Multiplos-pontos-fixacao', 'Reto', 'moto'),
('082','Concessionaria D', '12.345.678/0001-90', 'contato@concessionariac.com', '(31) 98765-1234', 'Dafra', 'Ninja', 2011, 'Laranja', 115836, FALSE, NULL, NULL, NULL, NULL, 'Touring', 'Multiplos-pontos-fixacao', 'Baixo', 'moto'),
('083','Concessionaria D', '23.456.789/0001-04', 'contato@concessionariab.com', '(21) 91234-5678', 'Harley Davidson', 'CG', 2010, 'Verde', 74137, TRUE, NULL, NULL, NULL, NULL, 'Bench', 'Multiplos-pontos-fixacao', 'Em', 'moto'),
('084','Concessionaria E', '65.432.109/0001-03', 'contato@concessionariac.com', '(11) 98765-4321', 'Yamaha', 'Biz', 2011, 'Verde', 34000, TRUE, NULL, NULL, NULL, NULL, 'Duplo', 'Pnemmatica', 'Em', 'moto'),
('085','Concessionaria B', '98.765.432/0001-01', 'contato@concessionariac.com', '(51) 92345-6789', 'Avelloz', 'CG', 2018, 'Amarelo', 125619, FALSE, NULL, NULL, NULL, NULL, 'Sport', 'Suspensao-independente', 'Alto', 'moto'),
('086','Concessionaria B', '12.345.678/0001-90', 'contato@concessionariad.com', '(41) 99876-5432', 'Triumph', 'Twister', 2013, 'Vermelho', 81477, FALSE, NULL, NULL, NULL, NULL, 'Touring', 'Mola', 'Abatido', 'moto'),
('087','Concessionaria A', '23.456.789/0001-04', 'contato@concessionariac.com', '(11) 98765-4321', 'Dafra', 'GSX', 2019, 'Vermelho', 99378, FALSE, NULL, NULL, NULL, NULL, 'Solo', 'Multiplos-pontos-fixacao', 'Em', 'moto'),
('088','Concessionaria C', '23.456.789/0001-04', 'contato@concessionariad.com', '(11) 98765-4321', 'Ducati', 'XBR', 2022, 'Cinza', 60945, TRUE, NULL, NULL, NULL, NULL, 'Duplo', 'Mola', 'Baixo', 'moto'),
('089','Concessionaria B', '23.456.789/0001-04', 'contato@concessionariac.com', '(11) 98765-4321', 'Yamaha', 'Biz', 2019, 'Branco', 101087, TRUE, NULL, NULL, NULL, NULL, 'Bench', 'Pnemmatica', 'Reto', 'moto'),
('090','Concessionaria D', '65.432.109/0001-03', 'contato@concessionariab.com', '(41) 99876-5432', 'Yamaha', 'GSX', 2015, 'Prata', 70463, FALSE, NULL, NULL, NULL, NULL, 'Touring', 'Pnemmatica', 'Em', 'moto'),
('091','Concessionaria D', '54.321.987/0001-02', 'contato@concessionariae.com', '(51) 92345-6789', 'Harley Davidson', 'Ninja', 2022, 'Branco', 148780, TRUE, NULL, NULL, NULL, NULL, 'Sport', 'Amortecedor-gas', 'Abatido', 'moto'),
('092','Concessionaria D', '54.321.987/0001-02', 'contato@concessionariac.com', '(11) 98765-4321', 'Ducati', 'Twister', 2013, 'Branco', 83091, TRUE, NULL, NULL, NULL, NULL, 'Touring', 'Pnemmatica', 'Abatido', 'moto'),
('093','Concessionaria C', '23.456.789/0001-04', 'contato@concessionariab.com', '(11) 98765-4321', 'Avelloz', 'GSX', 2017, 'Roxo', 129816, FALSE, NULL, NULL, NULL, NULL, 'Touring', 'Suspensao-independente', 'Em', 'moto'),
('094','Concessionaria E', '65.432.109/0001-03', 'contato@concessionariad.com', '(11) 98765-4321', 'Triumph', 'Biz', 2019, 'Roxo', 57240, TRUE, NULL, NULL, NULL, NULL, 'Sport', 'Mola', 'Em', 'moto'),
('095','Concessionaria D', '54.321.987/0001-02', 'contato@concessionariad.com', '(41) 99876-5432', 'Dafra', 'CG', 2015, 'Preto', 141750, FALSE, NULL, NULL, NULL, NULL, 'Duplo', 'Suspensao-independente', 'Em', 'moto'),
('096','Concessionaria E', '12.345.678/0001-90', 'contato@concessionariae.com', '(51) 92345-6789', 'Avelloz', 'XBR', 2013, 'Verde', 53083, TRUE, NULL, NULL, NULL, NULL, 'Solo', 'Mola', 'Baixo', 'moto'),
('097','Concessionaria A', '65.432.109/0001-03', 'contato@concessionariab.com', '(21) 91234-5678', 'Triumph', 'GSX', 2012, 'Laranja', 133781, TRUE, NULL, NULL, NULL, NULL, 'Touring', 'Suspensao-independente', 'Alto', 'moto'),
('098','Concessionaria C', '65.432.109/0001-03', 'contato@concessionariaa.com', '(21) 91234-5678', 'Ducati', 'Ninja', 2013, 'Vermelho', 148780, FALSE, NULL, NULL, NULL, NULL, 'Solo', 'Amortecedor-gas', 'Baixo', 'moto'),
('099','Concessionaria A', '12.345.678/0001-90', 'contato@concessionariae.com', '(41) 99876-5432', 'Harley Davidson', 'Biz', 2012, 'Cinza', 64772, TRUE, NULL, NULL, NULL, NULL, 'Touring', 'Mola', 'Baixo', 'moto'),
('100','Concessionaria E', '12.345.678/0001-90', 'contato@concessionariad.com', '(11) 98765-4321', 'Yamaha', 'XBR', 2022, 'Branco', 37465, TRUE, NULL, NULL, NULL, NULL, 'Touring', 'Mola', 'Abatido', 'moto');

.headers ON

SELECT * FROM Concessionarias;

select * from Concessionarias where Tipo_Automovel = 'moto';

CREATE TABLE Avaliacoes(
    id_avaliacao INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome_da_concessionaria TEXT,
    CNPJ TEXT,
    numero_clientes_cadastados INTEGER,
    nota_google REAL
);

INSERT INTO Avaliacoes (Nome_da_concessionaria, CNPJ, numero_clientes_cadastados, nota_google) VALUES
('Concessionaria A', '23.456.789/0001-04', 100, 4.52),
('Concessionaria B', '98.765.432/0001-01', 200, 4.73),
('Concessionaria C', '54.321.987/0001-02', 300, 4.96),
('Concessionaria D', '12.345.678/0001-90', 400, 3.01),
('Concessionaria E', '65.432.109/0001-03', 500, 4.21);

SELECT * FROM Avaliacoes;

--O inner join só traz os valores que existem nas duas tabelas. Se não existir na tabela da esquerda, não traz.

SELECT count(c.Nome_da_concessionaria) as Numero_de_Transacoes, a.Nome_da_concessionaria, a.nota_google
FROM Concessionarias c
INNER JOIN Avaliacoes a
ON c.Nome_da_concessionaria = a.Nome_da_concessionaria
GROUP BY a.Nome_da_concessionaria
ORDER BY Numero_de_Transacoes DESC;

-- usar o left join para juntar as tabelas
--vamos adicionar mais dados para a tabela Avaliacoes que não estão na tabela Concessionarias

INSERT INTO Avaliacoes (Nome_da_concessionaria, CNPJ, numero_clientes_cadastados, nota_google) VALUES
('Concessionaria F', '12.345.678/0001-90', 600, 4.01),
('Concessionaria G', '65.432.109/0001-03', 700, 4.21),
('Concessionaria H', '54.321.987/0001-02', 800, 4.96),
('Concessionaria I', '12.345.678/0001-90', 900, 3.01),
('Concessionaria J', '65.432.109/0001-03', 1000, 4.21);

select * from Avaliacoes;

--O left join traz todos os valores da tabela da esquerda e os valores que existem na tabela da direita.
SELECT count(c.Nome_da_concessionaria
) as Numero_de_Transacoes, a.Nome_da_concessionaria, a.nota_google
FROM Avaliacoes a
LEFT JOIN Concessionarias c
ON c.Nome_da_concessionaria = a.Nome_da_concessionaria
GROUP BY a.Nome_da_concessionaria
ORDER BY Numero_de_Transacoes DESC;

