-- criando tabela fornecedores
-- TABELA PAI
create table fornecedores
(
id_for	int				not null,
nome	varchar(30)		not null,
fone	varchar(30)		not null
primary key(id_for)
);

-- criando tabela produtos
-- TABELA FILHO
create table produtos
(
id_pro	int				identity,
id_for	int				not null,
prod	varchar(30)		not null,
preco	decimal(5,3)	not null
primary key(id_pro)
foreign key(id_for) references fornecedores (id_for)
);

-- inserindo dados na tabela fornecedores
-- TABELA PAI
insert into fornecedores values (1,'Chico','99123-1010');
insert into fornecedores values (2,'Chica','99234-2020');

-- verificando os dados cadastrados do fornecedores
select * from fornecedores;

-- inserindo dados na tabela produtos
-- TABELA FILHO
insert into produtos values (1,'NotebookDell','5.600');
insert into produtos values (1,'MouseDell','5.600');
insert into produtos values (2,'TecladoDell','2.000');


-- verificando os dados cadastrados do produtos
select * from produtos;
