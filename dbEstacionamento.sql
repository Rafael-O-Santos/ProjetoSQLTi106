drop database dbEstacionamento;

create database dbEstacionamento;

use dbEstacionamento;


create table dadosCarros
(
Codigo int auto_increment,
Placa varchar(8),
Cor varchar(35),
Modelo varchar(50),
Ano char(4),
Data_entrada date,
Hora_entrada time,
Data_saida date,
Hora_saida time,
primary key(Codigo)
);


insert into dadosCarros(Placa, Cor, Modelo, Ano, Data_entrada, Hora_entrada, Data_saida, Hora_saida)
values ('SHU1995', 'Vermelho', 'Mitsubishi Eclipse', '1995', '2022/01/10', '12:10:30', '2022/01/17', '14:54:57');


insert into dadosCarros(Placa, Cor, Modelo, Ano, Data_entrada, Hora_entrada, Data_saida, Hora_saida)
values ('F24X56R', 'Amarelo', 'Nissan Silvia (S15)', '1999', '2022/01/19', '16:20:55', '2022/01/27', '15:30:27');


insert into dadosCarros(Placa, Cor, Modelo, Ano, Data_entrada, Hora_entrada, Data_saida, Hora_saida)
values ('RX7843Y', 'Azul', 'Mazda Rx7', '2000', '2022/01/10', '00:20:40', '2022/02/12', '12:34:57');


insert into dadosCarros(Placa, Cor, Modelo, Ano, Data_entrada, Hora_entrada, Data_saida, Hora_saida)
values ('SBR7832', 'Azul-Escuro', 'Subaru Impreza 22B STi', '1998', '2022/02/01', '19:11:30', '2022/02/04', '04:34:52');


insert into dadosCarros(Placa, Cor, Modelo, Ano, Data_entrada, Hora_entrada, Data_saida, Hora_saida)
values ('GOL1994', 'Prata', 'Volkswagen Gol', '1994', '2022/02/03', '14:15:33', '2022/03/13', '12:00:00');


insert into dadosCarros(Placa, Cor, Modelo, Ano, Data_entrada, Hora_entrada, Data_saida, Hora_saida)
values ('SUP2344', 'Azul-Brilhante', 'Toyota Supra', '1994', '2022/02/10', '14:16:20', '2022/04/16', '10:24:27');


insert into dadosCarros(Placa, Cor, Modelo, Ano, Data_entrada, Hora_entrada, Data_saida, Hora_saida)
values ('TRU1983', 'Branco', 'Toyota Trueno AE86', '1983', '2022/05/13', '2:40:20', '2022/05/14', '2:54:57');


insert into dadosCarros(Placa, Cor, Modelo, Ano, Data_entrada, Hora_entrada, Data_saida, Hora_saida)
values ('COM1975', 'Prata', 'Chevrolet Opala Comodoro', '1975', '2022/05/14', '12:10:30', '2022/05/17', '14:54:57');


insert into dadosCarros(Placa, Cor, Modelo, Ano, Data_entrada, Hora_entrada, Data_saida, Hora_saida)
values ('CLI2011', 'Vermelho', 'Renault Clio', '2011', '2022/07/11', '22:30:30', '2022/07/17', '13:44:57');


insert into dadosCarros(Placa, Cor, Modelo, Ano, Data_entrada, Hora_entrada, Data_saida, Hora_saida)
values ('OPA1979', 'Laranja', 'Chevrolet Opala SS', '1980', '2022/07/20', '2:11:40', '2022/08/17', '12:53:52');

desc dadosCarros;

select * from dadosCarros;

update dadosCarros set Cor = 'Branco' where Placa = 'COM1975';
select * from dadosCarros where Placa = 'COM1975';

update dadosCarros set Placa = 'CLO2011' where Placa = 'CLI2011';
select * from dadosCarros where Placa 'CLO2011';

update dadosCarros set Cor = 'Azul Escuro' where Placa = 'SP2344';
select * from dadosCarros where Placa 'SP2344';

update dadosCarros set Cor = 'Branco e Preto' where Placa = 'TRU1983';
select * from dadosCarros where;

update dadosCarros set Ano = '1979' where Placa = 'OPA1979';
select * from dadosCarros;

delete from dadosCarros where Placa = 'GOL1994';
delete from dadosCarros where Placa = 'SBR7832';
delete from dadosCarros where Placa = 'SUP2344';
select * from dadosCarros;

select * from dadosCarros where Modelo = 'Toyota Trueno AE86';

select * from dadosCarros where Codigo = 10;

select * from dadosCarros where Data_entrada = '10:24:27';

select * from dadosCarros where cor = 'Branco';

select * from dadosCarros where Modelo like '%Renault Clio%'; 