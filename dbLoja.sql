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

create table tbProdutos(
codProd int auto_increment,
descricao varchar(50),
preco decimal(9,2),
validade date,
quantidade int,
tipo varchar(10),
primary key(codProd)
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


insert into tbProdutos(descricao, preco, validade, quantidade, tipo)
values
('Banana',20.50,'2022-11-07',12,'duzia');
insert into tbProdutos(descricao, preco, validade, quantidade, tipo)
values
('Banana',41.00,'2022-11-07',24,'duzia');
insert into tbProdutos(descricao, preco, validade, quantidade, tipo)
values
('Banana',15.40,'2022-11-07',10,'duzia');
insert into tbProdutos(descricao, preco, validade, quantidade, tipo)
values
('Banana',10.50,'2022-11-07',8,'duzia');

insert into tbProdutos(descricao, preco, validade, quantidade, tipo)
values
('Melancia',30.00,'2022-11-30',1,'unidade');

insert into tbProdutos(descricao, preco, validade, quantidade, tipo)
values
('Morango',10.50,'2022-11-08',1,'caixa');


-- visualizando os registros das tabelas
select * from tbFuncionarios;

select * from tbUsuarios;

select * from tbProdutos;


-- alterando os registros das tabelas
update tbUsuarios set senha  = '19216801' where codusu = 2;

select * from tbUsuarios;

-- excluindo os registros das tabelas
delete from tbUsuarios where codusu = 2;
	
select * from tbUsuarios;

-- Busca por código
select * from tbProdutos where codProd = 2;

-- Busca por nome
select * from tbProdutos where descricao like '%%';

-- Tipos de like
-- %M - tudo que termina com M
-- M% tudo que começa com M
-- %M% tudo que tem M (Começo meio e fim)
-- sempre com where algo da tabela like '%a%'

update tbProdutos set preco = preco * 1.10 where preco > 11.00;
update tbProdutos set preco = preco * 0.90 where preco < 11.00;

-- Distinct
-- select distinct descricao from tbProdutos;