create database Emprego;
use Emprego;

create table Empregado(
Matricula int primary key not null,
nome varchar (30)
);
create table Cargo(
codcargo int primary key not null,
nomecargo varchar(30),
Matricula int,
nome varchar (30),
foreign key(Matricula, nome) references Empregado (Matricula, nome) 
);
create table Projeto(
codprojeto int primary key not null,
dtfim date,
horas char(5),
Matricula int,
nome varchar (30),
foreign key(Matricula, nome) references Empregado (Matricula, nome) 
);
#Comandos
show tables;
describe Cargo;
describe Empregado;
describe Projeto;
select * from Cargo;
select * from Projeto;
select * from Empregado;
insert into Empregado (Matricula,nome) values('','');
insert into Cargo (codcargo, nomecargo,nome) values('','','');
insert into Projeto (codprojeto,dtfim,horas) values('','','');
#Comandos 