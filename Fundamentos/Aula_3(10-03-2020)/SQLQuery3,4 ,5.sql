-- criando tabela com chave primaria com erro
create table AcerEmpresa
(
ender_AcerEmpresa	int			not null,
nome				varchar(30)	not null,
cep					varchar(30)		null,
telef				varchar(30)		null,
filial				varchar(30)	not null
primary key(ender_AcerEmpresa)
);

-- forçando o erro com chave primária
insert into AcerEmpresa values (1,'Emi','985.084.325-43','99111-2222','Londres');

-- criando tabela com chave composta com erro
create table DonoAcer
(
nome	varchar(30)	not null,
rg		varchar(30)	not null,
email	varchar(30)	not null,
dtnasc	datetime		null,
id		int			not null
primary key(id,nome)
);

-- forçando o erro com chave primária composta
insert into DonoAcer values ('Stan Shih','99111-2222',1);


-- criando tabela com chave estrangeira com erro
create table EmpregdoAcer
(
ender_EmpregdoAcer	int			not null,
ender_AcerEmpresa	int			not null,
nome				varchar(30)	not null,
sobrenome			varchar(30)	not null,
cep					varchar(30)		null,
empresa				varchar(30)		null
primary key(ender_EmpregdoAcer)
foreign key(ender_AcerEmpresa) references AcerEmpresa (ender_AcerEmpresa)
);

-- forçando o erro com chave primária estrangeira
insert into EmpregdoAcer values (1,1,'Robin','Darker','99100-2243');