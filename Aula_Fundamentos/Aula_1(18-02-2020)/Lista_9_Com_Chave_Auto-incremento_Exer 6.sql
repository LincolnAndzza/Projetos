-- Criando tabela de informaçoes dos alunos.Com Chave primária
create table informacoes
(
nome	varchar(20) not null,
codigo  int			identity,
fonen	varchar(20)		null,
ra		int			not null
primary key (codigo)
);

-- Inserindo dados na tabela do alunos
insert into informacoes values ('Marcia','99262-1010',10458);
insert into informacoes values ('Marcio','99222-6066',30919);
insert into informacoes values ('Mauro','99200-4414',28677);

-- inserindo registro com redundância 
insert into informacoes values ('Marcia','99262-1010',8558);

-- verificando os dados cadastrados
select * from informacoes;

-- Com Auto-incremento
create table informacoes1
(
nome	varchar(20) not null,
sexo	varchar(20)		null,
fone	varchar(20) not null,
codigo	int			identity
primary key (codigo)
);

-- Inserindo dados na tabela do alunos
insert into informacoes1 values ('Marcia','Feminino','13262-1010');
insert into informacoes1 values ('Marcio','Masculino','17222-6066');
insert into informacoes1 values ('Mauro','Masculino','23200-4414');

-- inserindo registro com redundância 
insert into informacoes1 values ('Marcia','Feminino','13262-1010');

-- verificando os dados cadastrados
select * from informacoes1;


create table informacoes2
(
nome		varchar(20) not null,
cel			varchar(20) not null,
datmatri	varchar(20)		null,
ra			int				null,
turno		varchar(20) not null
);

-- Inserindo dados na tabela do alunos
insert into informacoes2 values ('Marcia','13262-1010','04/10/2020',41158,'noturno');
insert into informacoes2 values ('Marcio','15/02/1698','05/01/2021',4209,'cedo');
insert into informacoes2 values ('Mauro','15/03/1797','04/12/2022',40077,'noturno');

-- inserindo registro com redundância 
insert into informacoes2 values ('Marcio','15/02/1698','05/01/2021',42099,'cedo');

-- verificando os dados cadastrados
select * from informacoes2;


create table informacoes3
(
nome	varchar(20) not null,
sexo	varchar(20)		null,
fone	varchar(20) not null,
ra		int			not null,
curso	varchar(30) not null
);

-- Inserindo dados na tabela do alunos
insert into informacoes3 values ('Mario','Mascul','99262-1010',48558,'Engenharia');
insert into informacoes3 values ('Oscar','Mascul','99222-6066',18222,'Biomedicina');
insert into informacoes3 values ('Nicael','Mascul','99200-4414',91200,'Recursos Humanos');

-- inserindo registro com redundância 
insert into informacoes3 values ('Mario','Mascul','99262-1010',48558,'Engenharia');

-- verificando os dados cadastrados
select * from informacoes3;

