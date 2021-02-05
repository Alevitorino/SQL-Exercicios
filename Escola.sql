create database Escola;
use Escola;
show tables;
select * from Alunos; 
select * from Pontuação;

CREATE TABLE Alunos  (
matricula int not null PRIMARY KEY ,
nome char(20),
turma char(5)
);

CREATE TABLE Pontuação  (
cod int not null PRIMARY KEY,
matricula int,
pontos float(10),
foreign key(matricula) references alunos (matricula) 
);
#Alunos
insert into alunos (matricula, nome, turma) values (1, 'Alessandro Nunca','Informática'); 
insert into alunos (matricula, nome, turma) values (2, 'Alexandre Vitorino','Informática'); 
insert into alunos (matricula, nome, turma) values (3, 'Hosana Bilada','Administração'); 
insert into alunos (matricula, nome, turma) values (4, 'Juliana Cardoso','Ciência da Computação'); 
insert into alunos (matricula, nome, turma) values (5, 'Wagner Torres','Sistemas de Informação'); 
#Alunos
#Pontuação
insert into Pontuação (cod, matricula,pontos) values (1,1 ,7.5); 
insert into Pontuação (cod, matricula,pontos) values (2,2 ,8.5); 
insert into Pontuação (cod, matricula,pontos) values (3,3 ,9.5); 
insert into Pontuação (cod, matricula,pontos) values (4,4 ,10.0); 
insert into Pontuação (cod, matricula,pontos) values (5,5 ,5.5); 
#Pontuação
