-- Exercicio 21
-- criar banco de dados hospital
create database hospital

-- Exercicio 22
-- criando tabela do hospital medico
create table medico
(
 nome		varchar(30)	not null,
 medico		varchar(30)		null,
 dtnasc		datetime	not null,
 rg			varchar(30)	not null,
 cidade		varchar(30)	not null,
 estado		varchar(10)	not null,
 celular	varchar(30)	not null,
 bairro		varchar(30)		null,
 ender		int			identity
 primary key(ender)
);

-- Exercicio 23
-- inserindo dados na tabela do medico
insert into medico values ('Luiza','LuizComes','01/10/2020','10.101.110-1','Bauru','AC','68990-1012','Alamentas dos Caribe');
insert into medico values ('Amanda','AmandaComes','02/02/2010','20.221.213-2','Bauru','AC','68915-1151','Alamentas de Santa Ritas');

-- Exercicio 24
-- forçando o erro com chave primaria
insert into medico values ('Luiza','LuizComes','01/10/2020','10.101.110-3','Bauru','AC','68990-1012','Alamentas dos Caribe',1);
insert into medico values ('Luiza','LuizComes','01/10/2020','10.101.110-4','Bauru','AC','68990-1012','Alamentas dos Caribe',2);

-- Exercicio 26
-- inserindo mais dois dados na tabela de consulta
insert into medico values ('Luis','LuisComes','01/05/2021','20.202.312-5','Perdeneiras','AC','68990-1012','Ritas dos Santos de Caribe');
insert into medico values ('Bruno','BrunoComes','02/03/2022','50.424.419-6','Agudos','AC','68415-1454','Caribe de Santa Ritas');

-- Exercicio 27
-- verificando dados cadastrados
select * from medico

-- criando tabela do hospital paciente
create table paciente
(
 paciente	varchar(30)	not null,
 cadastro	varchar(30)	not null,
 dtnasc		datetime		null,
 convenio	varchar(30)	not null,
 sexo		varchar(20)		null,
 cpf		varchar(30)	not null,
 profisssao varchar(30)		null,
 ender		int			identity
 primary key(ender)
);

-- Exercicio 23
-- inserindo dados na tabela do paciente
insert into paciente values ('Joao','412','10/05/2030','Unimar','Masculino','432.498.109-10','Advogado');

-- Exercicio 24
-- forçando o erro com chave primaria
insert into paciente values ('Joao','412','10/05/2030','Unimar','Masculino','432.498.109-10','Advogado',1);
insert into paciente values ('Joao','412','10/05/2030','Unimar','Masculino','432.498.109-10','Advogado',2);

-- Exercicio 25
-- forçando o erro com chave primaria composta
insert into paciente values ('Joao','412','10/05/2030','Unimar','Masculino','432.498.109-10','Advogado','Dosreis');

-- Exercicio 26
-- inserindo mais dois dados na tabela de consulta
insert into paciente values ('Joana','400','14/01/2010','Unimed','Feminino','415.450.108-50','Advogado');
insert into paciente values ('Joares','500','10/07/2020','Unimed','Masculino','436.466.156-60','Advogado');

-- Exercicio 27
-- verificando dados cadastrados
select * from paciente

-- criando tabela do hospital consulta
create table consulta
(
 nome			varchar(30)	not null,
 idade			int				null,
 residencia		varchar(30)	not null,
 fone			varchar(30)	not null,
 naturalidade	varchar(30)		null,
 dtnasc			datetime	not null,
 responsavel	varchar(30)	not null,
 ender			int			identity,
 consulta		varchar(30)		null
 primary key(nome,ender)
);

-- Exercicio 23
-- inserindo dados na tabela de consulta
insert into consulta values ('Lopes','15','Apartamento','45990-0612','Galia','06/07/2020','Tia','1000');
insert into consulta values ('Lucas','15','Apartamento','45110-0141','Galia','06/08/2020','Tia','1000');

-- Exercicio 24
-- forçando o erro com chave primaria
insert into consulta values ('Lopes','15','Apartamento','45990-0612','Galia','06/07/2020','Tia',1,'1000');
insert into consulta values ('Lopes','15','Apartamento','45990-0612','Galia','06/07/2020','Tia',1,'1000');

-- Exercicio 25
-- forçando o erro com chave primaria composta
insert into consulta values ('Lopes','15','Apartamento','45990-0612','Galia','06/07/2020','Tia',1,'1000','Dales');


-- Exercicio 26
-- inserindo mais dois dados na tabela de consulta
insert into consulta values ('Luana','20','Casa Popular','14900-0602','Sao Paulo','10/09/2040','Prima','1000');
insert into consulta values ('Luiza','15','Casa Popular','14155-5051','Sao Paulo','11/09/2040','Tia','1000');

-- Exercicio 27
-- verificando dados cadastrados
select * from consulta;
