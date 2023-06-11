drop database if exists corinthians;
create database corinthians;
use corinthians;

-- drop database corinthians;
-- drop table if exists usuario;
-- drop table if exists login;
-- drop table if exists jogadores;

create table usuario (
idCadastro int primary key auto_increment,
email varchar(50),
nome varchar(50),
nickname varchar(30),
senha varchar(25)
);

select * from usuario;



create table jogadores (
idJogadores int primary key auto_increment,
nome varchar (45),
overAllAtaque int,
overAlldefesa int,
overAllPasse int
);

SELECT nome, COUNT(*) AS repeticoes
FROM jogadores
GROUP BY nome
ORDER BY repeticoes DESC
LIMIT 0, 3;

select * from jogadores order by nome;


 