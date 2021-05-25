-- Criando site compra com chave primaria primary key
create table chcompras
(
codigo	int			identity,
nome	varchar(30) not null,
email	varchar(30)	not null,
senha	varchar(20)		null
primary key(codigo)
);

-- inserindo dados na tabela de clientes
insert into chcompras values ('Matheus','matheusdarias@hotmail.com','naosei');
insert into chcompras values ('Maria','mariamarta@hotmail.com','12345');
insert into chcompras values ('Marco','marcomarcao@hotmail.com','naomel');

-- verificando dados cadastrados
select * from chcompras;


create table chcompras1
(
nome	varchar(30) not null,
senha	varchar(30) not null,
genero	varchar(20)		null
);

-- inserindo dados de clientes
insert into chcompras1 values ('Marta','11037','Feminino');
insert into chcompras1 values ('Silva','64121','Masculino');
insert into chcompras1 values ('Darias','19677','Feminino');

-- inserindo redundância na tabela
insert into chcompras1 values ('Marta','11037','Feminino');

-- verificando dados cadastrados
select * from chcompras1;


create table chcompras2
(
nome		varchar(30) not null,
email		varchar(30)	not null,
senha		varchar(30) not null,
confirmar	varchar(30)		null
);

-- inserindo dados na tabela de clientes
insert into chcompras2 values ('Ana','anaasss@outlook.com','13033','13033');
insert into chcompras2 values ('Paula','paulaasss@outlook.com','70809','70809');
insert into chcompras2 values ('Carol','carolasss@outlook.com','11203','11203');

-- inserindo redundância na tabela
insert into chcompras2 values ('Paula','paulaasss@outlook.com','70809','70809');

-- verificando dados cadastrados
select * from chcompras2;


create table chcompras3
(
nome	varchar(30) not null,
email	varchar(30)		null,
senha	varchar(30) not null,
cpf		varchar(30)		null	
);

-- inserindo dados na tabela de clientes
insert into chcompras3 values ('Rosa','rosacamelo@hotmail.com','rosa123','14.543.678.22');
insert into chcompras3 values ('Rosana','rosana@hotmail.com','rosana45','33.409.678.00');
insert into chcompras3 values ('Carla','carlacarias@hotmail.com','carla234','21.300.143.99');

-- inserindo redundância na tabela
insert into chcompras3 values ('Rosa','rosacamelo@hotmail.com','rosa123','14.543.678.22');

-- verificando dados cadastrados
select * from chcompras3;

