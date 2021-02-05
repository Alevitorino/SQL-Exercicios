create database RH;
use RH;

create table Funcionario(
idfuncionario int primary key not null,
primeironome varchar (10),
segundonome varchar(20),
funcao varchar(40),
dtadmissao date,
salario float,
comissao float
);
create table Empresa(
id_departamento int not null primary key, 
nome_departamento varchar(30),
localizacao varchar(30),
idfuncionario int, 
foreign key(idfuncionario) references Funcionario (idfuncionario)
); 

#Comandos
show tables;
describe Funcionario;
describe Empresa;
select * from Funcionario;
select * from Empresa;
insert into Funcionario (idfuncionario,primeironome,segundonome,funcao,dtadmissao,salario,comissao) values('','','','','','','');
insert into Empresa (id_departamento,nome_departamento,localizacao) values('','','');