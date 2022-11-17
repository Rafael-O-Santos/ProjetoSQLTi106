drop database dbEmpresa;

create database dbEmpresa;

use dbEmpresa

create table tbFuncionarios(
codfunc int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
salario decimal(9,2) not null default 0 check (salario >= 0),
sexo char(1) default 'F' check(sexo in('F','M')),
primary key(codfunc)
);

create table tbUsuarios(
codusu int not null auto_increment,
nome varchar(20) not null,
senha varchar(20) not null,
codfunc int not null,
primary key(codusu),
foreign key(codfunc) references tbFuncionarios(codfunc)
);

create table tbFornecedores(
codForn int not null auto_increment,
nome varchar(100),
cnpj char(18),
inscrEst char(15),
email varchar(100),
telefone char(10),
primary key(codForn) 
);

create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
quantidade int default 0 check(quantidade >= 0),
valor decimal(9,2) check(valor >= 0),
codusu int not null,
codForn int not null,
primary key(codProd),
foreign key(codForn) references tbFornecedores(codForn)
);

create table tbClientes(
codcli int not null auto_increment,
nome varchar(100),
email varchar(100),
cpf char(14) not null unique,
telefone char(10),
primary key(codcli)
);

create table tbVendas(
codVend int not null auto_increment,
codProd int not null,
codcli int not null,
codusu int not null,
dataVenda date,
horaVenda time,
quantidade int,
primary key(codVend),
foreign key(codProd)references tbProdutos(codProd),
foreign key(codCli)references tbClientes(codcli),
foreign key(codusu)references tbUsuarios(codusu)
);

desc tbFuncionarios;
desc tbUsuarios;
desc tbFornecedores;
desc tbProdutos;
desc tbClientes;
desc tbVendas;

insert into tbFuncionarios(nome, email, cpf, salario, sexo)values('Paulo Miranda da Silva', 'paulo.msilva.com', '258.235.662-00', '1500.00','M');
insert into tbFuncionarios(nome,email,cpf,salario,sexo)values('Carol Bandida', 'carol.bandida.com', '123.157.121-11', '2000.00', 'F');

insert into tbUsuarios(nome,senha,codfunc)values('paulo.msilva','123456',1);
insert into tbUsuarios(nome,senha,codfunc)values('carol.bandida.com','45678',2);

insert into tbFornecedores(nome, cnpj, inscrEst, email, telefone)
values('Fabricantes S/A','25.147.235/0001-38','253.235.147.-110','sac@empresa.com.br','97485-8574');
insert into tbFornecedores(nome, cnpj, inscrEst, email, telefone)
values('Fabricantes potenai','22.137.335/0001-33','223.445.117.-210','pot@enai.com.br','92355-2573');

insert into tbProdutos(descricao,quantidade,valor,codusu, codForn)values('Banana', 12,10.35,1,1);
insert into tbProdutos(descricao,quantidade,valor,codusu, codForn)values('Goiaba', 13,10.45,2,2);

insert into tbClientes(nome,email,cpf,telefone)
values('Carlos Cabrito','Cabrito10Carlos@gmail.com','456.687.956-88', '95964-6678');

insert into tbVendas(codProd,codcli,codusu,dataVenda,horaVenda,quantidade)
values(1,1,1,'2022/11/17','15:30:05',1);

select * from tbFuncionarios;
select * from tbUsuarios;
select * from tbFornecedores;
select * from tbProdutos;
select * from tbClientes;
select * from tbVendas;



