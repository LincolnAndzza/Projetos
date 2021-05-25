-- Criando tabela de alunos
create table alunos
(
nome	varchar(20) not null,
dtnasc	varchar(20) not null,
fone	varchar(20)		null,
ra		int			not null
);

-- Inserindo dados na tabela do alunos
insert into alunos values ('Marcia','15/01/1599','13262-1010',48558);
insert into alunos values ('Marcio','15/02/1698','17222-6066',48599);
insert into alunos values ('Mauro','15/03/1797','23200-4414',48677);

-- inserindo registro com redundância 
insert into alunos values ('Marcia','15/01/1599','13262-1010',48558);

-- verificando os dados cadastrados
select * from alunos;


create table alunos1
(
nome	varchar(20) not null,
sexo	varchar(20)		null,
fone	varchar(20) not null,
ra		int			not null
);

-- Inserindo dados na tabela do alunos
insert into alunos1 values ('Marcia','Feminino','13262-1010',48558);
insert into alunos1 values ('Marcio','Masculino','17222-6066',48599);
insert into alunos1 values ('Mauro','Masculino','23200-4414',48677);

-- inserindo registro com redundância 
insert into alunos1 values ('Marcia','Feminino','13262-1010',48558);

-- verificando os dados cadastrados
select * from alunos1;


create table alunos2
(
nome		varchar(20) not null,
cel			varchar(20) not null,
datmatri	varchar(20)		null,
ra			int				null,
turno		varchar(20) not null
);

-- Inserindo dados na tabela do alunos
insert into alunos2 values ('Marcia','13262-1010','04/10/2020',41158,'noturno');
insert into alunos2 values ('Marcio','15/02/1698','05/01/2021',42099,'cedo');
insert into alunos2 values ('Mauro','15/03/1797','04/12/2022',40077,'noturno');

-- inserindo registro com redundância 
insert into alunos2 values ('Marcio','15/02/1698','05/01/2021',42099,'cedo');

-- verificando os dados cadastrados
select * from alunos2;


create table alunos3
(
nome	varchar(20) not null,
sexo	varchar(20)		null,
fone	varchar(20) not null,
ra		int			not null,
curso	varchar(30) not null
);

-- Inserindo dados na tabela do alunos
insert into alunos3 values ('Mario','Mascul','17262-1010',4858,'Engenharia');
insert into alunos3 values ('Oscar','Mascul','15/02/1698',182,'Biomedicina');
insert into alunos3 values ('Nicael','Mascul','15/03/1797',9120,'Recursos Humanos');

-- inserindo registro com redundância 
insert into alunos3 values ('Mario','Mascul','17262-1010',8558,'Engenharia');

-- verificando os dados cadastrados
select * from alunos3;

