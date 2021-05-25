-- Criando tabela de cadastro
create table email
(
email		varchar(30) not null,
apelido		varchar(30)		null,
celular		varchar(20) not null,
);

-- Inserindo dados no cadastro
insert into email values ('marquias@gmail.com','Marqas','68993-9090');
insert into email values ('maleonmarquias@gmail.com','Maleon','68233-2290');
insert into email values ('mileramaio@gmail.com','Milera','68463-6260');

-- inserindo com redundância de cadastro
insert into email values ('Marqas','marquias@gmail.com','68993-9090');

-- verificando os dados cadastrados
select * from email;


create table email1
(
nome	varchar(30) not null,
email	varchar(30) not null,
senha	varchar(30)		null,
fone	varchar(20)		null
);

-- Inserindo dados no cadastro
insert into email1 values ('Estefinis','estefinishello@hotmail.com','hellowor','99426-3200');
insert into email1 values ('Julia','julianahello@hotmail.com','wordkk','99576-3299');
insert into email1 values ('Juliana','julianaestefinis@hotmail.com','hellohi','99311-5500');

-- inserindo com redundância de cadastro
insert into email1 values ('Estefinis','estefinishello@hotmail.com','hellowor','44326-3200');

-- verificando os dados cadastrados
select * from email1;


create table email2
(
email		varchar(40) not null,
senha		int			not null,
celular		varchar(20)		null,
fone		varchar(20) not null
);

-- Inserindo dados no cadastro
insert into email2 values ('julionahello@outlook.com',54001,'99076-3238','45006-3238');
insert into email2 values ('julirisjunior@outlook.com',43201,'99547-3201','40047-3201');
insert into email2 values ('juniorianahellooutlook.com',40981,'99500-2238','45110-2238');

-- inserindo com redundância de cadastro
insert into email2 values ('julionahello@outlook.com','54001','99076-3238','45006-3238');

-- verificando os dados cadastrados
select * from email2;


create table email3
(
nome		varchar(30) not null,
email		varchar(30) not null,
senha		int			not null
);

-- Inserindo dados no cadastro
insert into email3 values ('Marcia','marciaris@hotmail.com','123');
insert into email3 values ('Marcio','marciomarciaris@hotmail.com','321');
insert into email3 values ('Marcia','marciaris@hotmail.com','1234');

-- inserindo com redundância de cadastro
insert into email3 values ('Marcia','marciaris@hotmail.com','123');

-- verificando os dados cadastrados
select * from email3;
