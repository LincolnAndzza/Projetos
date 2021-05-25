-- criando tabela com todas as constraints
create table netflix
(
nome		varchar(30)		not null,
id			int				identity,
dtnasc		datetime		not null,
quantidade	int				default 5,
cpf			varchar(30)		UNIQUE,
sexo		varchar(1)		check(upper(sexo)='M' or upper(sexo)='F')
primary key(id)
);

-- mexendo na estrutura e incluindo primeiro campos 
alter table netflix
add cidade	varchar(30) not null;

-- mexendo na estrutura e incluindo segundo campos 
alter table netflix
add email	varchar(30) not null;

-- mexendo na estrutura e excluindo primeiro campos 
alter table netflix
drop column cidade;

-- mexendo na estrutura e excluindo segundo campos 
alter table netflix
drop column email;

-- mexendo na estrutura da tabela e aumentando o campo varchar 
alter table netflix
alter column nome varchar(10);

-- mexendo na estrutura da tablea e diminuindo o tamanho de outro campo
alter table netflix
alter column cpf  varchar(50);

