PRAGMA foreign_keys = ON;


INSERT INTO Cliente (idCliente, nome, morada, telefone, NIF) 
VALUES 
    (1, 'Hcen', 'R. Sao Caetano 125, 4410-494 Canelas', 227637130, 120456789),
    (2, 'Arcen', 'R. Sao Caetano 125, 4410-494 Canelas', 223677130, 987655321),
    (3, 'Enerpac', 'Avenida Valdelaparra N27 3 - L8 28108 Alcobendas', 918848606, 101009099),
    (4, 'Berd', 'Av. Dom Afonso Henriques 1462, 4450-013 Matosinhos', 229399520, 909001011),
    (5, 'Larzep', 'Avda. Urtiaga, 648269 Mallabia, Spain', 943171200, 943712100),
    (6, 'Fluid Engineering', 'Rua das Bombas 58, 4400-007 Porto', 226589754, 987604321),
    (7, 'HydroWorks Ltd', 'Av. Rio Azul 12, 4100-123 Lisbon', 214567891, 123400789),
    (8, 'TechH2O Solutions', 'R. do Engenheiro 78, 3000-001 Coimbra', 239876543, 876543210);



INSERT INTO Tipo (idTipo, especializacao)
VALUES 
    (1, 'tecnico'),
    (2, 'engenheiro');

INSERT INTO Fornecedor (idFornecedor, nome, morada, telefone) 
VALUES 
    (1, 'Siemens', 'Avenue 1 122', 912347540),
    (2, 'Bosch', '22 Fluid Street', 441239098),
    (3, 'FluidTech Suppliers', 'Fluid Street 8, 2000-002 Town', 220022102);

INSERT INTO Stock (stockID, quantidadeDisponivel) 
VALUES
    (1, 100),
    (2, 80),
    (3, 50),
    (4, 121),
    (5, 90),
    (6, 222),
    (7, 97),
    (8, 660),
    (9, 134),
    (10, 222),
    (11, 78),
    (12, 40),
    (13, 1),
    (14, 8),
    (15, 234),
    (16, 106),
    (17, 9),
    (18, 12),
    (19, 72),
    (20, 22);


INSERT INTO Funcionario (idFuncionario, nome, morada, telefone, NIF, idTipo)
VALUES 
    (1, 'Alvaro Torres', 'Avenida da Republica 81', 123456789, 123456789, 2),
    (2, 'Pedro Frutuoso', 'Rua das Flores 2', 987654321, 987654321, 2),
    (3, 'Miguel Ryder', 'Rua 25 de Abril 33', 555555555, 111111111, 2),
    (4, 'Rui Silva', 'Rua da Boavista 786', 132456009, 222224444, 1),
    (5, 'Carolina Alves', 'Avenida Grande 2134', 232456010, 222222222, 1),
    (6, 'Carlos Silva', 'Rua Pequena 2', 445512345, 901232457, 1),
    (7, 'Ricardo Guerra', 'Av. da Republica 987', 919876543, 987612345, 2),
    (8, 'Sofia Marques', 'Rua Direita 24', 212345678, 543210987, 2),
    (9, 'Paulo Ferreira', 'R. dos Engenheiros 56', 223456789, 654321098, 1);

INSERT INTO Encomenda (idEncomenda, titulo, descricao, dataRecebida, dataDeadline, idCliente, idFuncionario)
VALUES
    (100, 'Cilindro 22cm', 'Cilindro de titanio de 22cm', '2004-01-02', '2004-02-02', 1, 1),
    (101, 'Maquina ensaio', 'Maquina ensaio fadiga 450bar', '2004-11-22', '2005-11-22', 2, 2),
    (102, 'Pistao', 'Pistao para elevacao 20L', '2006-04-13', '2006-05-29', 3, 4),
    (103, 'Sistema controlo', 'Sistema controlo amtrol', '2006-05-17', '2006-09-17', 4, 3),
    (104, 'Swivel Crane', 'Valvulas de controlo de movimento duplas', '2023-07-11', '2023-08-31', 5, 1),
    (105, 'Hydraulic Lift Prototype', 'Design and build a hydraulic lift', '2023-10-15', '2024-04-15', 6, 6),
    (106, 'Pump Efficiency Testing', 'Hydraulic pump efficiency analysis', '2023-12-05', '2024-01-05', 7, 4),
    (107, 'Pipe Pressure Tests', 'Conduct pressure tests on specialized pipes', '2024-02-20', '2024-03-20', 8, 5);

INSERT INTO Trabalhar (idEncomenda, idFuncionario)
VALUES  
    (100, 1),
    (101, 2),
    (102, 4),
    (103, 3),
    (104, 5),
    (105, 7),
    (106, 8),
    (107, 9);


INSERT INTO OrdemDeTrabalho (ID, dataOrdem, descricao, idEncomenda)
VALUES
    ('OT.1000', '2004-01-02', 'OT.1000 - Cilindro titanio - 22cm', 100),
    ('OT.1001', '2004-11-22', 'OT.1001 - Maquina ensaio fadiga - 450 bar', 101),
    ('OT.1002', '2006-04-13', 'OT.1002 - Pistao elevacao - 20L', 102),
    ('OT.1003', '2006-05-17', 'OT.1003 - Sistema controlo - amtrol', 103),
    ('OT.1004', '2023-07-11', 'OT.1004 - Valvulas de controlo de movimento duplas - Swivel Crane', 104),
    ('OT.1005', '2023-10-15', 'OT.1005 - Design OT for Hydraulic Lift Prototype', 105),
    ('OT.1006', '2023-12-05', 'OT.1006 - Pump Efficiency Testing', 106),
    ('OT.1007', '2024-02-20', 'OT.1007 - Pipe Pressure Test', 107);


INSERT INTO PedidoInterno (pID, dataPI, descricao, ID) 
VALUES
    ('PI.1000', '2004-01-02', 'Insercao CALHA C 28X14', 'OT.1000'),
    ('PI.1001', '2004-01-03', 'Uso BLOCO ACO HM.12405.01-2XTN06+RD3A', 'OT.1000'),
    ('PI.1002', '2004-11-22', 'Colocacao TUBO MECANICO E355 DIN2448 D159,0XD119,0(e=20)', 'OT.1001'),
    ('PI.1003', '2005-01-01', 'Projecao TAMPAO ROS.VSTI-VS-R 1-WD', 'OT.1001'),
    ('PI.1004', '2005-03-08', 'Uso JUNTA FLEXIVEL S10 NITRILO FLANG. PN16 DN50', 'OT.1001'),
    ('PI.1005', '2005-11-04', 'Utilizacao ESTEIRA ARAMADA 100x60 Z-3000mm - ODC00253', 'OT.1001'),
    ('PI.1006', '2006-04-13', 'Pedido de FLANGE SOLDAR DIN1092-1 Type 01 - PN16 D50x60.3 - colocacao na maquina', 'OT.1002'),
    ('PI.1007', '2006-04-14', 'Colocacao de MG EN853 2SN 3/8" DN10-F90g12L/F12L-L=0,33m', 'OT.1002'),
    ('PI.1008', '2006-05-20', 'Para filtrar usado - FILTRO AR BFSK40-2X/H3V3-M-S-0', 'OT.1002'),
    ('PI.1009', '2006-09-10', 'Uso da PORCA M 42 L', 'OT.1003'),
    ('PI.1010', '2023-07-11', 'Lubrificacao - OLEO HLP - ISO VG 46 -OSO 46 - 966 LITROS', 'OT.1004'),
    ('PI.1011', '2023-07-12', 'Estabilizacao - APOIO ANTI-VIBRATORIO PTFS-DS550', 'OT.1004'),
    ('PI.1012', '2023-07-14', 'Energia - MOTOR ELE.TRIF.1,1kW 1500RPM 400V 50HZ B14 (IE2)', 'OT.1004'),
    ('PI.1013', '2023-07-20', 'Integracao no sistema da FICHA 3P GM 209N SW+GM (AWXX-A4VSO..)', 'OT.1004'),
    ('PI.1014', '2023-08-01', 'Colocacao na maquina da VALV.RET.LINHA 700 bar 3/8" NPT AZ5500', 'OT.1004'),
    ('PI.1015', '2023-10-15', 'Hydraulic lift materials requisition', 'OT.1005'),
    ('PI.1016', '2023-12-05', 'Pump efficiency testing materials request', 'OT.1006'),
    ('PI.1017', '2024-02-20', 'Pressure test materials request', 'OT.1007');


INSERT INTO Procurar (pID, stockID, descricao, custoUnidade, quantidade)
VALUES
    ('PI.1000', 1, 'CALHA C 28X14', 0.55, 3),
    ('PI.1001', 2, 'BLOCO ACO HM.12405.01-2XTN06+RD3A', 170.55, 1),
    ('PI.1002', 3, 'TUBO MECANICO E355 DIN2448 D159,0XD119,0(e=20)', 44.0, 5),
    ('PI.1003', 4, 'TAMPAO ROS.VSTI-VS-R 1-WD', 32.77, 2),
    ('PI.1004', 5, 'JUNTA FLEXIVEL S10 NITRILO FLANG. PN16 DN50', 1.87, 6),
    ('PI.1005', 6, 'ESTEIRA ARAMADA 100x60 Z-3000mm - ODC00253', 0.33, 1),
    ('PI.1006', 7, 'FLANGE SOLDAR DIN1092-1 Type 01 - PN16 D50x60.3', 99.0, 1),
    ('PI.1007', 8, 'MG EN853 2SN 3/8" DN10-F90g12L/F12L-L=0,33m', 25.09, 11),
    ('PI.1008', 9, 'FILTRO AR BFSK40-2X/H3V3-M-S-0', 71.0, 1),
    ('PI.1009', 10, 'PORCA M 42 L', 0.13, 22),
    ('PI.1010', 11, 'OLEO HLP - ISO VG 46 -OSO 46 - 966 LITROS', 5.0, 4),
    ('PI.1011', 12, 'APOIO ANTI-VIBRATORIO PTFS-DS550', 88.70, 2),
    ('PI.1012', 13, 'MOTOR ELE.TRIF.1,1kW 1500RPM 400V 50HZ B14 (IE2)', 230.90, 1),
    ('PI.1013', 14, 'FICHA 3P GM 209N SW+GM (AWXX-A4VSO..)', 3.0, 2),
    ('PI.1014', 15, 'VALV.RET.LINHA 700 bar 3/8" NPT AZ5500', 2.99, 1),
    ('PI.1015', 16, 'Titanium lift cylinders', 125.0, 4),
    ('PI.1016', 17, 'Pressure sensors', 45.0, 6),
    ('PI.1017', 18, 'Specialized test pipes', 75.0, 8);


INSERT INTO EncomendaArtigo (eID, dataEA, descricao, idFornecedor) 
VALUES
    (1, '2023-07-14', 'Encomenda - MOTOR ELE.TRIF.1,1kW 1500RPM 400V 50HZ B14 (IE2)', 1),
    (2, '2023-08-01', 'Encomenda - VALV.RET.LINHA 700 bar 3/8" NPT AZ5500', 2),
    (3, '2024-02-20', 'Encomenda - Specialized test pipes', 3);


INSERT INTO Sugerir (eID, stockID, descricao, custoUnidade, quantidade) 
VALUES
    (1, 13, 'Em falta - MOTOR ELE.TRIF.1,1kW 1500RPM 400V 50HZ B14 (IE2)', 230.90, 1),
    (2, 15, 'Em falta - VALV.RET.LINHA 700 bar 3/8" NPT AZ5500', 2.99, 1),
    (3, 18, 'Em falta - Increase stock of specialized pipes', 75.0, 8);

