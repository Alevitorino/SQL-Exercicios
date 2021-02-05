create database transporte;
use transporte;

create table veiculo(
id int not null,
placa varchar(45),
modelo varchar(45),
cor varchar(45),
ano int,
motorista_id int,
primary key (id),
foreign key (motorista_id) references motorista(motorista_id)
);
create table motorista(
motorista_id int not null,
nome varchar(45),
fone varchar(45),
primary key (motorista_id)
);
create table cliente(
cliente_id int not null,
nome varchar(45),
fone varchar(45),
endereco varchar(45),
primary key (cliente_id)
);
create table viagem(
viagem_id int  not null,
dt date,
tempo time,
valor float,
origem varchar(45),
destino varchar(45),
cliente_id int,
motorista_id int,
primary key (viagem_id),
foreign key (cliente_id) references cliente(cliente_id),
foreign key (motorista_id) references motorista(motorista_id)
);
#Clientes
insert into cliente (cliente_id,nome,fone,endereco) values ('1','Negasdo Filho','21956854514','Rua do inferno');
insert into cliente (cliente_id,nome,fone,endereco) values ('2','Mauricineia Velha','21923147489','Rua do ceu');
insert into cliente (cliente_id,nome,fone,endereco) values ('3','Juracilda Ruim','21932569874','Rua do purgatorio');
insert into cliente (cliente_id,nome,fone,endereco) values ('4','Uquizvaldo Rox','21945658592','Rua do portal');
insert into cliente (cliente_id,nome,fone,endereco) values ('5','Osnario Nice','21921368574','Rua da tampa');
insert into cliente (cliente_id,nome,fone,endereco) values ('6','Niobio Messias','21934876513','Rua do bonde');
insert into cliente (cliente_id,nome,fone,endereco) values ('7','Quirastira Joana','21990328712','Rua do nao sei');
insert into cliente (cliente_id,nome,fone,endereco) values ('8','Luiz Calango','21967765445','Rua do pastel');
insert into cliente (cliente_id,nome,fone,endereco) values ('9','Aguinaldo João','21934412278','Rua do caldo de cana');
insert into cliente (cliente_id,nome,fone,endereco) values ('10','Escraxismonis','21943098765','Rua da gloria');
#Clientes 

#Viagens
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('1','2018-07-02','00:30','12.50','Rua do ceu','Rua do inferno','1','1');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('2','2018-07-02','00:30','12.50','Rua do ceu','Rua do inferno','2','2');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('3','2018-07-02','00:30','12.50','Rua do ceu','Rua do inferno','3','3');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('4','2018-07-02','00:30','12.50','Rua do ceu','Rua do inferno','4','4');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('5','2018-04-11','00:45','20.00','Rua do pastel','Rua do caldo de cana','5','5');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('6','2018-04-11','00:45','20.00','Rua do pastel','Rua do caldo de cana','1','6');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('7','2018-04-11','00:45','20.00','Rua do pastel','Rua do caldo de cana','2','7');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('8','2018-04-11','00:45','20.00','Rua do pastel','Rua do caldo de cana','3','8');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('9','2018-04-11','00:45','20.00','Rua do pastel','Rua do caldo de cana','4','9');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('10','2018-09-20','00:45','15.20','Rua do pastel','Rua do caldo de cana','5','10');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('11','2018-09-20','00:45','15.20','Rua do pastel','Rua do caldo de cana','1','1');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('12','2018-09-20','00:15','15.20','Rua do purgatorio','Rua do inferno','2','2');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('13','2018-09-20','00:15','15.20','Rua do purgatorio','Rua do inferno','3','3');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('14','2018-09-20','00:15','15.20','Rua do purgatorio','Rua do inferno','4','4');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('15','2018-09-20','00:15','15.20','Rua do purgatorio','Rua do inferno','5','5');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('16','2018-09-20','00:15','15.20','Rua do purgatorio','Rua do inferno','1','6');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('17','2018-08-27','01:30','10.00','Rua da gloria','Rua da tampa','2','7');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('18','2018-08-27','01:30','10.00','Rua da gloria','Rua da tampa','3','8');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('19','2018-08-27','01:30','10.00','Rua da gloria','Rua da tampa','4','9');
insert into viagem (viagem_id,dt,tempo,valor,origem,destino,motorista_id,cliente_id) values ('20','2018-08-27','01:30','10.00','Rua da gloria','Rua da tampa','5','10');
#Viagens 

#Motorista
insert into motorista (motorista_id,nome,fone) values ('1','Jorisclesberson Mathias','21967324567');
insert into motorista (motorista_id,nome,fone) values ('2','Roberval Brasil','21967320967');
insert into motorista (motorista_id,nome,fone) values ('3','Arnold Schwarzenegger','21972430967');
insert into motorista (motorista_id,nome,fone) values ('4','Jason Born','21998762345');
insert into motorista (motorista_id,nome,fone) values ('5','James Bond','21943785629');
#Motorista

#Veiculo
insert into veiculo (id,placa,modelo,cor,ano,motorista_id) values ('1','GTX1080','Prisma','preto','2015','1');
insert into veiculo (id,placa,modelo,cor,ano,motorista_id) values ('2','GTX1070','Ford Ka','prata','2015','2');
insert into veiculo (id,placa,modelo,cor,ano,motorista_id) values ('3','GTX1060','Cobalt','vermelho','2015','3');
insert into veiculo (id,placa,modelo,cor,ano,motorista_id) values ('4','GTX1050','Voyage','preto','2015','4');
insert into veiculo (id,placa,modelo,cor,ano,motorista_id) values ('5','GTX2080','Gran Siena','Branco','2015','5');
#Veiculo

#Comandos
show tables;
describe veiculo;
describe motorista;
describe viagem;
describe cliente;
select * from cliente;
select * from viagem;
select * from motorista;
select * from veiculo;
#Comandos

#1
select * from veiculo where ano = 2017;
#1

#2
select * from veiculo where ano = 2018 - 3;
#2

#3
select modelo,ano from veiculo;
#3

#4
select modelo,ano,motorista_id from veiculo;
#4

#5
select nome,fone from cliente;
#5

#6
select * from viagem;
#6

#7
select viagem_id,dt,tempo,valor,origem,destino from viagem where cliente_id ='3';
#7

#8 Não consegui
select viagem_id,dt,tempo,valor,origem,destino, motorista.nome from viagem join motorista on viagem.viagem_id=motorista.motorista_id;
#8

#9
select viagem_id,dt,tempo,valor,origem,destino, motorista.nome from viagem,motorista where dt = '2018-08-15';
#9

#10
select * from viagem where valor >'15.00';
#10

#11
select * from viagem where destino = 'Santos';
#11

#12
select * from viagem where dt > '2018-08-20' and dt < '2018-08-30';
#12