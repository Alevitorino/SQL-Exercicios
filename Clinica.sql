create database clinica;
use clinica;
#Tabelas
create table paciente(
CPF int(11) primary key not null,
nome varchar(50),
endereco varchar(50),
dtnasc date,
telefone int(11)
);
create table consulta(
idconsulta int primary key not null,
medico varchar(30),
CPF int(11),
CRM int,
dtconsulta date,
foreign key(CPF) references paciente (CPF)
);
create table medico(
CRM int primary key not null,
nome varchar(50),
telefone int(11),
idconsulta int,
foreign key(idconsulta) references consulta (idconsulta)
);
create table exame(
idexame int primary key not null,
nome varchar(30),
laudo varchar(30),
dat date,
CPF int,
foreign key(CPF) references paciente (CPF)
);
#Tabelas
#Códigos de inserções nas tabelas 
insert into paciente (CPF,nome,endereco,dtnasc,telefone) values('17524045727','Alexandre Vitorino','Rua bariri','17042000','2127592682');
insert into consulta (idconsulta,medico,dtconsulta) values('1','Jurosvaldo','1704200'); 
insert into medico (CRM,nome,telefone) values('123456789','Jurosvaldo','2166666666');
insert into exame (idexame,nome,laudo,dat,CPF) values('1','Alexandre Vitorino','naoseioquee','20072018');
#Códigos de inserções nas tabelas 
#Dois comandos de busca
SELECT * FROM paciente;
SELECT * FROM consulta;
SELECT * FROM medico;
SELECT * FROM exame;
show tables;
describe paciente;
describe medico;
describe exame;
describe consulta;
#Dois comandos de busca