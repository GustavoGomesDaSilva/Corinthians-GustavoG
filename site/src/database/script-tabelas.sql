-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

/*
comandos para mysql - banco local - ambiente de desenvolvimento
*/
create database corinthians;
use corinthians;

-- drop database corinthians;
drop table if exists cadastro;
drop table if exists selecao;
drop table if exists jogadores;

create table usuario (
idCadastro int primary key auto_increment,
email varchar(50),
nome varchar(50),
nickname varchar(30),
senha varchar(25)
);

select * from usuario;

create table selecao (
idSelecao int auto_increment,
fkCadstro int,
fkJogadores int,
overAllGeral decimal (3,1),
overAllAtaque decimal (3,1),
overAllDefesa decimal (3,1),
PRIMARY KEY (idSelecao, fkCadastro),
  FOREIGN KEY (fkJogadores) REFERENCES jogadores(idJogadores)

);

create table jogadores (
idJogadores int primary key auto_increment,
nome varchar (45),
overAll decimal(2),
overAllAtq decimal(2),
overAllDef decimal(2),
posicao varchar(4)
);



