															-- criando tabela PRODUTOS
															create database fichasI
-- EXERCICIO 2
create table PRODUTO_AULA4
(
id_pro		int				identity,
nome		varchar(30)		not null,
preco		decimal(7,2)	not null,
quantdd		int				default	90,
dtvalidade	varchar(30)		not null
primary key(id_pro)
);

-- EXERCICIO 3
-- inserindo dados na tabela com mais 5 PRODUTOS
insert into PRODUTO_AULA4 values ('Chocolate Diamante Negro',400.00,default,'06/06/2020');
insert into PRODUTO_AULA4 values ('Ovo de Pascoa Diamante Negro',450.00,default,'05/05/2020');
insert into PRODUTO_AULA4 values ('Barra Ovomaltine',150.00,default,'03/03/2020');
insert into PRODUTO_AULA4 values ('Trufa Diamante Negro',100.00,default,'02/02/2020');
insert into PRODUTO_AULA4 values (' Bis Ovomaltine',49.00,default,'01/01/2020');

-- verificando dados cadastrados
select * from PRODUTO_AULA4;
