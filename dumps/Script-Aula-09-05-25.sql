drop database cadastro;

create database cadastro
default character set utf8
default collate utf8_general_ci;

use cadastro;

create table produtos(
id int not null auto_increment,
nome varchar(100),
qtde int,
valor_unit decimal(10,2),
data_cad date,
primary key(id)
)default charset utf8;

desc produtos;