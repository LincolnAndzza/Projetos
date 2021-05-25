-- criando tabela PRODUTOS
create table PRODUTOS5_AULA4
(
id_pro		int				identity,
nome		varchar(30)		not null,
preco		decimal(6,2)	not null,
quantd		int				default	100,
dtvalidade	date			not null
primary key(id_pro)
);

insert into PRODUTOS5_AULA4 values ('Zenfone S1',100.00,default,'05/04/2020');
insert into PRODUTOS5_AULA4 values ('Samsung J5',90.99,default,'10/01/2020');
insert into PRODUTOS5_AULA4 values ('Relogio B0',200.00,default,'01/08/2020');
insert into PRODUTOS5_AULA4 values ('Tablet AP',91.99,default,'14/09/2020');
insert into PRODUTOS5_AULA4 values ('Mouse Negro',95.99,default,'06/07/2020');
insert into PRODUTOS5_AULA4 values ('R01UV Teclado',179.99,default,'07/02/2020');
insert into PRODUTOS5_AULA4 values ('Mouse R01UV',199.99,default,'08/01/2020');
insert into PRODUTOS5_AULA4 values ('Mouse Negro',96.99,default,'02/07/2020');
insert into PRODUTOS5_AULA4 values ('Mouse FK0L1',95.99,default,'04/04/2020');
insert into PRODUTOS5_AULA4 values ('Relogio 0L1',149.99,default,'30/06/2020');

-- criando tabela PRODUTOS4
-- EXERCICIO 8
create table PRODUTOS6_AULA4
(
id_pro		int				not null,
nome		varchar(30)		not null,
preco		decimal(6,2)	not null,
quantd		int				default	100,
dtvalidade	date			not null
primary key(id_pro)
);

-- EXERCICIO 9
-- importa todos os registros da tabela PRODUTOS
insert into PRODUTOS6_AULA4
select * from PRODUTOS5_AULA4 where preco <= 110.99;


-- verificando dados cadastrados
select * from PRODUTOS5_AULA4;
select * from PRODUTOS6_AULA4;


-- EXERCICIO 10
-- alterando preços dos produtos com quantidade maior que 100
update PRODUTOI set preco = 90
where cod_pro = 1
update PRODUTOI set preco = 70
where cod_pro = 2

-- EXERCICIO 11
-- alterando preços dos produtos com data de validade vencida
update PRODUTOI set preco = 0
where cod_pro = 3
update PRODUTOI set preco = 0
where cod_pro = 4
update PRODUTOI set preco = 0
where cod_pro = 5

-- EXERCICIO 12
-- alterando os nomes dos produtos
update PRODUTOI
set nome = 'Nescau'

-- EXERCICIO 14
-- alterando o preço dos produtos
update PRODUTOI
set preco = '100' where cod_pro > 1 AND cod_pro < 5;

-- EXERCICIO 15
-- alterando a data de validade 
update PRODUTOI
set dtvalidade = '31/12/2020' where preco = 0;



