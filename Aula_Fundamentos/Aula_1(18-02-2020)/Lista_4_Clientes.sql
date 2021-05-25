-- Criando site de compras online
-- carrefour.com.br
-- https://www.carrefour.com.br/login

create table clientes
(
nome	varchar(30) not null,
email	varchar(40)	not null,
senha	varchar(20)		null
);

-- inserindo dados na tabela de clientes
insert into clientes values ('Matheus','matheusdarias@hotmail.com','naosei');
insert into clientes values ('Maria','mariamarta@hotmail.com','12345');
insert into clientes values ('Marco','marcomarcao@hotmail.com','naomel');

-- inserindo redundância na tabela
insert into clientes values ('Matheus','matheusdarias@hotmail.com','naosei');

-- verificando dados cadastrados
select * from clientes;


create table clientes1
(
nome	varchar(30) not null,
senha	int			not null,
genero	varchar(20)		null
);

-- inserindo dados de clientes
insert into clientes1 values ('Marta',11037,'Feminino');
insert into clientes1 values ('Silva',64121,'Masculino');
insert into clientes1 values ('Darias',19677,'Feminino');

-- inserindo redundância na tabela
insert into clientes1 values ('Marta','11037','Feminino');

-- verificando dados cadastrados
select * from clientes1;


create table clientes2
(
nome		varchar(30) not null,
email		varchar(30)	not null,
senha		varchar(30) not null,
confirmar	varchar(30)		null
);

-- inserindo dados na tabela de clientes
insert into clientes2 values ('Ana','anaasss@outlook.com',13033,13033);
insert into clientes2 values ('Paula','paulaasss@outlook.com',70809,70809);
insert into clientes2 values ('Carol','carolasss@outlook.com',11203,11203);

-- inserindo redundância na tabela
insert into clientes2 values ('Paula','paulaasss@outlook.com','70809','70809');

-- verificando dados cadastrados
select * from clientes2;


create table clientes3
(
nome	varchar(30) not null,
email	varchar(30)		null,
senha	varchar(30) not null,
cpf		varchar(30)		null
);

-- inserindo dados na tabela de clientes
insert into clientes3 values ('Rosa','rosacamelo@hotmail.com','rosa123','14.543.678.22');
insert into clientes3 values ('Rosana','rosana@hotmail.com','rosana45','33.409.678.00');
insert into clientes3 values ('Carla','carlacarias@hotmail.com','carla234','21.300.143.99');

-- inserindo redundância na tabela
insert into clientes3 values ('Rosa','rosacamelo@hotmail.com','rosa123','14.543.678.22');

-- verificando dados cadastrados
select * from clientes3;


