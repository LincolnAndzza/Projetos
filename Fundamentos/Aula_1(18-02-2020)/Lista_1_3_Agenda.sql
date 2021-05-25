-- CRIANDO O PRIMEIRO BANCO DE DADOS
create database fib2020;
-- USANDO O BANCO DE DADOS
use fib2020;

-- Criando tabela de agenda
create table agenda
(
nome	varchar(20)	not null,
email	varchar(30) not null,
celular	varchar(18)		null
);

-- Inserindo dados na agenda
insert into agenda values ('Antunes','antunesmaios@gmail.com.br','99543-4001');
insert into agenda values ('Legal','legalraios@gmail.com.br','99771-9012');
insert into agenda values ('Ementa','ementalegalraios@gmail.com.br','99071-9001');

-- Inserindo com redundância 
insert into agenda values ('Ementa','ementalegalraios@gmail.com.br','99071-9001');

-- verificando os dados cadastrados
select * from agenda;

-- Criando tabela de agendaI
create table agendaI
(
nome	varchar(20)	not null,
celular	varchar(18) not null,
email	varchar(30)		null,
dtnasc	datetime		null
);

-- Inserindo dados na agenda
insert into agendaI values ('Lincoln','99326-4530','lincolnantunes@gmail.com','13/01/1988');
insert into agendaI  values ('Pedro','99556-6754','pedrosilva@gmail.com','13/02/1988');
insert into agendaI  values ('Vinicius','99636-4330','viniciusmarcos@gmail.com','13/03/1988');

-- Inserindo com redundância 
insert into agendaI  values ('Lincoln','99326-4530','lincolnantunes@gmail.com','13/01/1988');

-- verificando os dados cadastrados
select * from agendaI;

-- Criando tabela de agendaII
create table agendaII 
(
nome		varchar(20)	not null,	
sobrenome	varchar(30)		null,
fone		varchar(18)		null,
email		varchar(30) not null
);

-- Inserindo dados na agenda
insert into agendaII values ('João','JoãoAntunesSilva','99226-4030','joãosilva@hotmail.com');
insert into agendaII values ('Pedro','PedroAntunes','99056-6054','pedropeosilva@hotmail.com');
insert into agendaII values ('Victor','VictorSilva','99836-2230','victorreis@hotmail.com');

-- Inserindo com redundância 
insert into agendaII values ('João','JoãoAntunesSilva','99226-4030','joãosilva@hotmail.com');

-- verificando os dados cadastrados
select * from agendaII;


-- Criando tabela de agendaIII
create table agendaIII
(
nome	varchar(20)	not null,
celular	varchar(18)		null,
email	varchar(30) not null
);

-- Inserindo dados na agenda
insert into agendaIII values ('Ana','99326-4530','anacamilo@outlook.com');
insert into agendaIII values ('Paula','99556-6754','paularomana@outlook.com');
insert into agendaIII values ('Romeu','99636-4330','romeumelo@outlook.com');

-- Inserindo com redundância 
insert into agendaIII values ('Ana','99326-4530','anacamilo@outlook.com');

-- verificando os dados cadastrados
select * from agendaIII;

-- excluir uma tabela 
drop table agenda

