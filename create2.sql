DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS Encomenda;
DROP TABLE IF EXISTS Funcionario;
DROP TABLE IF EXISTS Trabalhar;
DROP TABLE IF EXISTS Tipo;
DROP TABLE IF EXISTS OrdemDeTrabalho;
DROP TABLE IF EXISTS PedidoInterno;
DROP TABLE IF EXISTS Procurar;
DROP TABLE IF EXISTS Stock;
DROP TABLE IF EXISTS EncomendaArtigo;
DROP TABLE IF EXISTS Sugerir;
DROP TABLE IF EXISTS Fornecedor;


CREATE TABLE Cliente(
    idCliente INTEGER PRIMARY KEY NOT NULL, 
    nome VARCHAR(50) NOT NULL, 
    morada VARCHAR(150), 
    telefone NUMERIC(12,0), 
    NIF NUMERIC(9,0),
    UNIQUE (NIF, telefone));

CREATE TABLE Encomenda(
    idEncomenda INTEGER PRIMARY KEY NOT NULL,
    titulo VARCHAR(100),
    descricao VARCHAR(200), 
    dataRecebida DATE, 
    dataDeadline DATE,
    idCliente INTEGER NOT NULL,
    idFuncionario INTEGER NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Cliente(idCliente) ON DELETE CASCADE,
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario) ON UPDATE CASCADE);

CREATE TABLE Tipo(
    idTipo INTEGER PRIMARY KEY NOT NULL,
    especializacao VARCHAR(100) CHECK (especializacao IN('tecnico', 'engenheiro')));

CREATE TABLE Funcionario(
    idFuncionario INTEGER PRIMARY KEY NOT NULL, 
    nome VARCHAR(50) NOT NULL, 
    morada VARCHAR(150), 
    telefone NUMERIC(12, 0), 
    NIF NUMERIC(9, 0),
    idTipo INTEGER NOT NULL,
    UNIQUE (telefone, NIF)
    FOREIGN KEY (idTipo) REFERENCES Tipo(idTipo));

CREATE TABLE Trabalhar(
    idEncomenda INTEGER NOT NULL,
    idFuncionario INTEGER NOT NULL,
    PRIMARY KEY(idEncomenda, idFuncionario),
    FOREIGN KEY (idEncomenda) REFERENCES Encomenda(idEncomenda) ON DELETE CASCADE,
    FOREIGN KEY (idFuncionario) REFERENCES Funcionario(idFuncionario) ON UPDATE CASCADE);

CREATE TABLE OrdemDeTrabalho(
    ID VARCHAR(8) PRIMARY KEY NOT NULL, 
    dataOrdem DATE, 
    descricao VARCHAR(200), 
    idEncomenda INTEGER NOT NULL,
    FOREIGN KEY (idEncomenda) REFERENCES Encomenda(idEncomenda) ON DELETE CASCADE);

CREATE TABLE PedidoInterno(
    pID VARCHAR(8) PRIMARY KEY NOT NULL, 
    dataPI DATE, 
    descricao VARCHAR(200),
    ID VARCHAR(8) NOT NULL,
    FOREIGN KEY (ID) REFERENCES OrdemDeTrabalho(ID) ON DELETE CASCADE);

CREATE TABLE Procurar(
    pID VARCHAR(8) PRIMARY KEY NOT NULL,
    stockID INTEGER NOT NULL,
    descricao VARCHAR(200),
    custoUnidade DECIMAL(7, 2),
    quantidade INTEGER,
    FOREIGN KEY (pID) REFERENCES PedidoInterno(pID) ON DELETE CASCADE,
    FOREIGN KEY (stockID) REFERENCES Stock(stockID) ON DELETE CASCADE);

CREATE TABLE Stock(
    stockID INTEGER PRIMARY KEY NOT NULL,
    quantidadeDisponivel INTEGER);

CREATE TABLE EncomendaArtigo(
    eID INTEGER PRIMARY KEY NOT NULL,
    dataEA DATE,
    descricao VARCHAR(200),
    idFornecedor INTEGER NOT NULL,
    FOREIGN KEY (idFornecedor) REFERENCES Fornecedor(idFornecedor) ON UPDATE CASCADE);

CREATE TABLE Sugerir(
    eID INTEGER PRIMARY KEY NOT NULL,
    stockID INTEGER NOT NULL,
    descricao VARCHAR(200),
    custoUnidade DECIMAL(7, 2),
    quantidade INTEGER,
    FOREIGN KEY (eID) REFERENCES EncomendaArtigo(eID) ON DELETE CASCADE,
    FOREIGN KEY (stockID) REFERENCES Stock(stockID) ON DELETE CASCADE);

CREATE TABLE Fornecedor(
    idFornecedor INTEGER PRIMARY KEY NOT NULL,
    nome VARCHAR(50) NOT NULL,
    morada VARCHAR(150),
    telefone NUMERIC(12,0),
    UNIQUE (telefone));