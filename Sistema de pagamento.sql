create database sispagamento;
use sispagamento;

create table cliente(
codcliente int primary key not null,
telefone int(11),
CPF int(11),
nome varchar(45),
endereço varchar(50)
);
create table produto(
codproduto int primary key not null,
nome varchar(30),
descricao varchar(30),
preco float,
quantidade int 
);
create table compra(
codcompra int primary key not null,
status varchar(30),
dtpedido date
);
create table pedido(
idpedido int primary key not null auto_increment
);
create table boleto(
numeroboleto int primary key not null auto_increment
);
create table cartao(
idnumcartao int primary key not null
);