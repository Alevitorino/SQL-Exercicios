create database contatos;
use contatos;

create table contato (codigo int primary key not null,
sexo char(1),
email varchar(30),
cpf varchar(12), 
telefone varchar(9),
endereco varchar(40));

desc contato;
alter table contato add nome varchar (40);
insert into contato (codigo,sexo,email,cpf,telefone,endereco,nome)values (1,'M','alenunes@gmail.com',648725459-54,'966892181','Rua Cecilia Nº 500 - Duque de caxias - Rio de Janeiro','Alessandro Nunes');
insert into contato (codigo,sexo,email,cpf,telefone,endereco,nome)values (2,'F','jurema@gmail.com',742725459-54,'999416391','Rua aida Nº 157 - Nova Iguaçu - Rio de Janeiro','Jurema Da Silva');
insert into contato (codigo,sexo,email,cpf,telefone,endereco,nome)values (3,'M','juliano@gmail.com',347725459-54,'988421455','Rua Belizario Nº 1 - Niteroi - Rio de Janeiro','Juliano Mouro');
insert into contato (codigo,sexo,email,cpf,telefone,endereco,nome)values (4,'F','emy@gmail.com',745725459-54,'977412455','Rua B Nº 24 - Miguel Couto - Rio de Janeiro','Emilly Silva');
insert into contato (codigo,sexo,email,cpf,telefone,endereco,nome)values (5,'M','Jusbirosvaldo@gmail.com',13455459-54,'966744544','Rua Zina Nº 500 - Osasco - São Paulo','Jusbirosvaldo Prieto');
insert into contato (codigo,sexo,email,cpf,telefone,endereco,nome)values (6,'F','RafaMoreira@gmail.com',99925459-54,'978542214','Rua Liro Nº 777 - São Paulo - São Paulo','Rafaela Moreira');

#Quantos contatos
select count(*) from contato;

#Quantos do sexo masculino e feminino tem
select count(*),sexo from contato group by sexo;
SELECT count(*),sexo  FROM contato group by sexo, endereco like '%Rio de Janeiro';
select nome, email, endereco from contato where sexo ='F' or endereco like '%Rio de Janeiro';
select nome, email, endereco, cpf, sexo from contato where sexo = '';
desc contato;


