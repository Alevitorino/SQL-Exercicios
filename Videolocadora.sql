#Database
create database Videolocadora;
#Database

#Tabelas
CREATE TABLE Fita (
CodFita INTEGER not null PRIMARY KEY auto_increment,
VlDia FLOAT(6),
NomeFita VARCHAR(60),
Categoria VARCHAR(20)
);

CREATE TABLE Cliente (
Codigo INTEGER not null PRIMARY KEY auto_increment,
Bairro VARCHAR(40),
Nome VARCHAR(50),
Endereco VARCHAR(50),
Cidade VARCHAR(30),
UF varchar(2),
Telefone varchar(45)
);
#Tabelas 

#Lista de filmes 
insert into Fita (NomeFita,Categoria,VlDia) values('Orgulho e Preconceito','Romance','5.50 ');
insert into Fita (NomeFita,Categoria,VlDia) values('Anjos da Noite - Evolução','Ação','5.00 ');
insert into Fita (NomeFita,Categoria,VlDia) values('10 Coisas que Eu Odeio em Você','Comedia','5.00 ');
insert into Fita (NomeFita,Categoria,VlDia) values('Os Viajantes do Tempo','Comedia','4.50');
insert into Fita (NomeFita,Categoria,VlDia) values('Tempo de Glória','Ação','5.00');
insert into Fita (NomeFita,Categoria,VlDia) values('A Vila','Suspense','5.00');
insert into Fita (NomeFita,Categoria,VlDia) values('Sem Destino ','Ação','4.00');
insert into Fita (NomeFita,Categoria,VlDia) values('Beleza Roubada ','Romance','4.50');
insert into Fita (NomeFita,Categoria,VlDia) values('Agente 86','Comedia','5.00');
insert into Fita (NomeFita,Categoria,VlDia) values('Horton e o mundo dos quem','Infantil','4.50');
insert into Fita (NomeFita,Categoria,VlDia) values('American Hauting','Suspense','5.50');
insert into Fita (NomeFita,Categoria,VlDia) values('Eu, eu mesmo e Irene','Comedia','5.00');
#Lista de filme
#Comandos 
describe Fita;
select * from Fita;
show tables;
#7
SELECT NomeFita FROM Fita ORDER BY NomeFita;
#1
SELECT NomeFita FROM Fita WHERE NomeFita LIKE "A%";
#2
SELECT Categoria,NomeFita FROM Fita WHERE Categoria LIKE "Comedia%";
SELECT VlDia,NomeFita FROM Fita WHERE VlDia LIKE "4.5%";
#4
SELECT Categoria,NomeFita FROM Fita WHERE Categoria LIKE "Ação%";
#6
select NomeFita,categoria from Fita where NomeFita like 'O%' and categoria='romance';
#5
select VlDia,NomeFita from Fita where VlDia like '5.5%';
#9
select NomeFita,VlDia from Fita where VlDia <= 5.5 and VlDia >= 5;
#3
select NomeFita,VlDia from Fita where VlDia <= 4.5;
#8
select NomeFita,VlDia from Fita order by VlDia desc;

use Videolocadora;
#Comandos





