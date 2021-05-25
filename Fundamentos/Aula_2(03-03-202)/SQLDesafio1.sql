														-- CRIANDO UM BANCO DE DADOS 
															create database fichas
																
-- criando ficha cadastral de atletas
create table atletas
(
cpf			varchar(30)		not null,
rg			varchar(30)		not null,
nome		varchar(30)		not null,
idade		int					null,
peso		int					null,
altura		decimal(4,2)		null,
chuteira	int				not null,
salario		decimal(7,2)	not null,
bonus		decimal(7,2)	not null,
desconto	decimal(5,2)		null,
dtnasc		datetime			null,
posicao		varchar(30)			null,
clube		varchar(30)		not null,
numcamisa	int				not null
primary key (cpf)
);

-- inserindo os registros na tabela de atletas
insert into atletas values ('123.456.789-90','96.572.34-x','Jose da Silva Xavier',21,70,'1.80',48,'2738.90','1000.00','32.90','28/02/1999','Goleiro','Palmeiras','1');

-- inserindo mais quatro registros na tabela de atletas
insert into atletas values ('273.977.598-90','87.573.35-x','Pedro Xavier Silva',22,71,'1.79',47,'1050.99','1200.00','12.90','27/02/1989','Goleiro','Sao Paulo','2');
insert into atletas values ('416.889.718-40','98.174.36-x','Xavier Jose da Silva',23,72,'1.60',46,'2738.90','1300.30','11.90','26/02/1979','Goleiro','Corinthians','3');
insert into atletas values ('788.604.778-24','29.575.37-x','Romero Silva Xavieles',24,73,'1.59',45,'2708.80','1000.00','10.90','25/02/1969','Goleiro','Santos','4');
insert into atletas values ('527.455.785-50','10.576.38-x','Paula Xavier Rellas',25,74,'1.31',43,'2008.70','1040.04','10.10','28/02/1999','Goleiro','Beta Palmeiras','5');

-- verificando dados dos atletas
select * from atletas;




