-- Criando tabela com auto-incremento
create table autoemail
(
codigo	int			identity,
apelido	varchar(30)		null,
email	varchar(30) not null,
celular	varchar(20)		null
primary key (codigo)
);

-- Inserindo dados no cadastro
insert into autoemail values ('Marqas','marquias@gmail.com','99800-9011');
insert into autoemail values ('Maleon','maleonmarquias@gmail.com','99840-9011');
insert into autoemail values ('Milera','mileramaio@gmail.com','99880-9011');

-- inserindo com redundância de cadastro
insert into autoemail values ('Marqas','marquias@gmail.com','99800-9011');

-- verificando os dados cadastrados
select * from autoemail;


create table autoemail1
(
nome	varchar(30) not null,
email	varchar(30) not null,
senha	varchar(30)		null,
fone	varchar(20)		null
);

-- Inserindo dados no cadastro
insert into autoemail1 values ('Estefinis','estefinishello@hotmail.com','hellowor','44326-3200');
insert into autoemail1 values ('Julia','julianahello@hotmail.com','wordkk','44576-3299');
insert into autoemail1 values ('Juliana','julianaestefinis@hotmail.com','hellohi','44311-5500');

-- inserindo com redundância de cadastro
insert into autoemail1 values ('Estefinis','estefinishello@hotmail.com','hellowor','44326-3200');

-- verificando os dados cadastrados
select * from autoemail1;


create table autoemail2
(
email		varchar(30) not null,
senha		varchar(30) not null,
celular		varchar(20)		null,
fone		varchar(20) not null
);

-- Inserindo dados no cadastro
insert into autoemail2 values ('julionahello@outlook.com','54001','45076-3238','45006-3238');
insert into autoemail2 values ('julirisjunior@outlook.com','43201','45547-3201','40047-3201');
insert into autoemail2 values ('juniorianahellooutlook.com','40981','45500-2238','45110-2238');

-- inserindo com redundância de cadastro
insert into autoemail2 values ('julionahello@outlook.com','54001','45076-3238','45006-3238');

-- verificando os dados cadastrados
select * from autoemail2;


create table autoemail3
(
nome	varchar(30) not null,
email	varchar(30) not null,
senha	varchar(30) not null
);

-- Inserindo dados no cadastro
insert into autoemail3 values ('Marcia','marciaris@hotmail.com','123');
insert into autoemail3 values ('Marcio','marciomarciaris@hotmail.com','321');
insert into autoemail3 values ('Marcia','marciaris@hotmail.com','1234');

-- inserindo com redundância de cadastro
insert into autoemail3 values ('Marcia','marciaris@hotmail.com','123');

-- verificando os dados cadastrados
select * from autoemail3;

