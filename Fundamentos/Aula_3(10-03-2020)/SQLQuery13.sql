-- criando tabela com chave primaria UNIQUE
create table clientes_aula3
(
id_cli		int				not null,
nome		varchar(30)		not null,
cpf			varchar(30)		unique,
rg			varchar(30)		not null,
datnasc		datetime			null,
sexo		varchar(5)		not null,
celular		varchar(30)			null
primary key(id_cli)
);

-- inserindo dados na tabela de clientes
-- DEIXANDO COMO TESTE
-- insert into clientes values (1,'Cain','32.457.968-8','32.457.968-8','15/09/2030','99810-1010');
-- insert into clientes values (2,'Bainyles','531.133.758-35','49.399.713-1','05/10/2040','99110-2020');

-- verificando dados cadastrados
-- DEIXANDO COMO TESTE
-- select * from clientes
