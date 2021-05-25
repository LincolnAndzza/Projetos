-- criando tabela PRODUTOS
create table PRODUTOS3_AULA4
(
id_pro		int				not null,
nome		varchar(30)		not null,
preco		decimal(6,2)	not null,
quantd		int				default	200,
dtvalidade	date			not null
primary key(nome)
);

insert into PRODUTOS3_AULA4 values (1,'Zenfone S5',900.00,default,'04/05/2020');
insert into PRODUTOS3_AULA4 values (2,'Samsung JW',800.00,default,'01/10/2020');
insert into PRODUTOS3_AULA4 values (3,'Relogio P5',199.99,default,'08/01/2020');
insert into PRODUTOS3_AULA4 values (4,'Tablet W5',99.99,default,'14/09/2020');
insert into PRODUTOS3_AULA4 values (5,'Mouse Negro',97.99,default,'06/07/2020');
insert into PRODUTOS3_AULA4 values (6,'Relogio 0L1',200.99,default,'10/06/2020');
insert into PRODUTOS3_AULA4 values (7,'Mouse FK0L1',95.99,default,'05/04/2020');



-- criando tabela PRODUTOS3
-- EXERCICIO 6
create table PRODUTOS4_AULA4
(
id_pro		int				not null,
nome		varchar(30)		not null,
preco		decimal(6,2)	not null,
quantd		int				default	200,
dtvalidade	date			not null
primary key (nome)
);

-- EXERCICIO 7
-- importa todos os registros da tabela PRODUTOS
insert into PRODUTOS4_AULA4	
select * from PRODUTOS3_AULA4 Where id_pro <= 3;


-- verificando dados cadastrados
select * from PRODUTOS3_AULA4;
select * from PRODUTOS4_AULA4;



