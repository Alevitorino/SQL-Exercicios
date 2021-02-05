create database deposito;

use deposito;

CREATE TABLE Cliente (
CodCliente INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
FatAcumulado VARCHAR(10),
NomeCli VARCHAR(50),
EndCli VARCHAR(60),
LimiCred VARCHAR(4),
CodVend FLOAT,
NomeVend VARCHAR(50)
);

CREATE TABLE Pedido (
NumPedido INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
CodPedido VARCHAR(10),
Data VARCHAR(10),
NomeCli VARCHAR(50),
EndCli VARCHAR(50)
);

CREATE TABLE Vendedor (
CodVend INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
Comissao VARCHAR(10),
EndVend VARCHAR(60),
NomeVend VARCHAR(50)
);

CREATE TABLE Peca (
CodPeca INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
Descricao VARCHAR(30),
Preco float,
CodArmazem VARCHAR(10),
QuantidadeEstoque VARCHAR(10)
);

CREATE TABLE Armazem (
CodArmazem int PRIMARY KEY NOT NULL AUTO_INCREMENT,
EndArmazem VARCHAR(60)
);

INSERT INTO Peca(CodPeca, Descricao, Preco, QuantidadeEstoque, CodArmazem)
VALUES(1, "Furadeira","29.90",5,3);

INSERT INTO Armazem(CodArmazem,EndArmazem)
VALUES(1,"Estrada do Mendanha 1550")


