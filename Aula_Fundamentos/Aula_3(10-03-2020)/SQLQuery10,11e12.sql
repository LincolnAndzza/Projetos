-- criando tabela fornecedores sem o filhos como teste
-- TABELA PAI TESTE
create table fornecedores_teste
(
id_for	int				not null,
nome	varchar(30)		not null,
fone	varchar(30)		not null
primary key(id_for)
);

-- criando tabela produtos sem o pai como teste
-- TABELA FILHO TESTE 
create table produtos_teste
(
id_pro	int				identity,
id_for	int				not null,
prod	int				not null,
preco	decimal(5,3)	not null
primary key(id_pro)
foreign key(id_for) references fornecedores (id_for)
);


-- teste de tentar excluir tabela de fornecedores
-- TABELA PAI
drop table fornecedores_teste;