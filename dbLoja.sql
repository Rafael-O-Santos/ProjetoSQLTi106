-- apagar o baco de dados
drop database dbLoja;

-- criando banco de dados
create database dbLoja;

-- visualizando o banco de dado
show databases;

-- acessando o banco de dados
use dbLoja;

-- criando as tabelas para o banco de dados
create table tbFuncionarios(
codfunc int auto_increment, 
nome varchar(50),
email varchar(50),
cpf char(14),
tel char(10),
primary key(codfunc)
);



create table tbUsuarios(
codusu int auto_increment,
nome varchar(15),
senha varchar(14),
primary key(codusu)
);


	

-- visualizando as tabelas do banco de dados
show tables;

-- visualizando a estrutura da tabela
desc tbFuncionarios;
desc tbUsuarios;

-- inserindo valores nas tabelas
insert into tbFuncionarios(nome, email,cpf,tel)
values('Roberval Lélis', 'robervaldofree@gmail.com',
'233.455.666-11','15068-4569');

insert into tbFuncionarios(nome, email,cpf,tel)
values('Duval Lélis Santos', 'DuvalConsul@gmail.com',
'125.467.656-12','31268-5567');

insert into tbUsuarios (nome, senha) values('Roberval.Lélis', '12345759431264');

insert into tbUsuarios (nome, senha) values('Duval.Lélis', '12345612');

-- visualizando os registros das tabelas
select * from tbFuncionarios;

select * from tbUsuarios;


-- alterando os registros das tabelas
update tbUsuarios set senha  = '19216801' where codusu = 2;

select * from tbUsuarios;