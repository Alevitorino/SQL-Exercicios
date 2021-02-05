create database vendas;

use vendas;



create table cliente
(
	
cod_cli smallint not null,
	
nome_cli varchar(40) not null,

endereco varchar(40) null,
	
cidade varchar(20) null,
	
cep char(08) null,
	
uf char(02) null,
	
primary key (cod_cli)
);



insert into cliente (cod_cli,nome_cli,endereco,cidade,cep,uf) values ('1','Supermecado Carrefour','Rua A','Rio de Janeiro','26480325','RJ');

insert into cliente (cod_cli,nome_cli,endereco,cidade,cep,uf) values ('2','Supermercado Baratao','Rua B','Rio de Janeiro','37954575','RJ');

insert into cliente (cod_cli,nome_cli,endereco,cidade,cep,uf) values ('3','Supermercado Arariboia','Rua Dolores','Niteroi','34655547','RJ');

insert into cliente (cod_cli,nome_cli,endereco,cidade,cep,uf) values ('4','UFF','Rua Aida','Niteroi','37751112','RJ');

insert into cliente (cod_cli,nome_cli,endereco,cidade,cep,uf) values ('5','CSN','Rua jota','Volta Redonda','2641422','RJ');

insert into cliente (cod_cli,nome_cli,endereco,cidade,cep,uf) values ('6','Pegeout','Rua A','resende','24462021','RJ');

insert into cliente (cod_cli,nome_cli,endereco,cidade,cep,uf) values ('7','Ind. Quimicas Paulistas','Rua osasco','São Paulo','37744412','SP');

insert into cliente (cod_cli,nome_cli,endereco,cidade,cep,uf) values ('8','Ford Caminhoes','Rua Marina','São Paulo','37788755','SP');

insert into cliente (cod_cli,nome_cli,endereco,cidade,cep,uf) values ('9','Riocel Celulose','Rua do Sul','guaiba ','37777777','RS');

insert into cliente (cod_cli,nome_cli,endereco,cidade,cep,uf) values ('10','Elevadores Sur','Rua jose','guaiba ','37542110','RS');



select * from cliente;



create table vendedor
(
	
cod_vend smallint not null,
	
nome_vend varchar(40) not null,
	
sal_fixo float (4) not null,
	
faixa_comiss char(01) not null,
	
primary key (cod_vend)
);



insert into vendedor (cod_vend, nome_vend,sal_fixo,faixa_comiss) values ('11','Paulo Alberto','1500','b');

insert into vendedor (cod_vend, nome_vend,sal_fixo,faixa_comiss) values ('12','Ana Cristina','2100','a');

insert into vendedor (cod_vend, nome_vend,sal_fixo,faixa_comiss) values ('13','Cassia Andrade','900','c');

insert into vendedor (cod_vend, nome_vend,sal_fixo,faixa_comiss) values ('14','Dieme Pereira','2500','a');

insert into vendedor (cod_vend, nome_vend,sal_fixo,faixa_comiss) values ('15','Maria Paula','900','c');



create table produto
(
	
cod_prod smallint not null,
	
unid_prod char(03) not null,
	
desc_prod varchar(20) not null,
	
val_unit float(4) not null,
	
primary key (cod_prod)
);



insert into produto (cod_prod, unid_prod, desc_prod, val_unit) values ('1','kg','chapa aco','2.5');

insert into produto (cod_prod, unid_prod, desc_prod, val_unit) values ('2','kg','Cimento','4.5');

insert into produto (cod_prod, unid_prod, desc_prod, val_unit) values ('3','mm kg','parafuso','2');

insert into produto (cod_prod, unid_prod, desc_prod, val_unit) values ('4','m','Fio plastico','2');

insert into produto (cod_prod, unid_prod, desc_prod, val_unit) values ('5','L','Solvente PRW','5');



select * from produto;



create table pedido
(
	

num_ped smallint not null,
	
prazo_entr smallint not null,
	
cd_cli smallint not null
	
REFERENCES CLIENTE (cod_cli),
	
cd_vend smallint not null
	
REFERENCES VENDEDOR (cod_vend),
	
primary key (num_ped)
);



insert into pedido (num_ped,prazo_entr,cd_cli,cd_vend) values ('1','15dias','1','1');

insert into pedido (num_ped,prazo_entr,cd_cli,cd_vend) values ('2','25dias','2','2');

insert into pedido (num_ped,prazo_entr,cd_cli,cd_vend) values ('3','20dias','3','3');

insert into pedido (num_ped,prazo_entr,cd_cli,cd_vend) values ('4','10dias','4','4');

insert into pedido (num_ped,prazo_entr,cd_cli,cd_vend) values ('5','7dias','5','5');



select * from pedido;



create table item_pedido
(
	
no_ped smallint not null
	
REFERENCES PEDIDO (num_ped),
	
cd_prod smallint not null
	
REFERENCES PRODUTO (cod_prod),
	
qtd_ped float not null
);



insert into item_pedido (no_ped,cd_prod,qtd_ped) values ('1','1','1');
insert into item_pedido (no_ped,cd_prod,qtd_ped) values ('2','2','4');

insert into item_pedido (no_ped,cd_prod,qtd_ped) values ('3','3','8');

insert into item_pedido (no_ped,cd_prod,qtd_ped) values ('4','4','10');

insert into item_pedido (no_ped,cd_prod,qtd_ped) values ('5','5','11');



#Numero 1

select nome_cli,cidade,uf from cliente;

#Numero 2

select * from cliente;

select * from vendedor;

select * from produto;

select * from pedido;

select * from item_pedido;

#Numero 3

select no_ped,cd_prod,qtd_ped from item_pedido where qtd_ped = '10';

#numero 4

select nome_cli from cliente where cidade = 'Niteroi';

#numero 5

select cod_prod from produto where unid_prod = 'kg' and val_unit > '2';

#numero 6

select * from pedido where prazo_entr <'15';

#numero 7

select * from vendedor where nome_vend not like 'a%';

#numero 8
select * from cliente where endereco = '';

#numero 9

select * from vendedor order by nome_vend ;

#numero 10

select nome_cli,cidade,uf from cliente order by nome_cli desc;

#numero 11

select desc_prod,val_unit from produto where unid_prod = 'kg';

#numero 12



#numero 13

select max(sal_fixo) from vendedor;
select min(sal_fixo) from vendedor;


#numero 14

select avg(sal_fixo) from vendedor;

#numero 15

select count(nome_vend) from vendedor where sal_fixo > '1000';


