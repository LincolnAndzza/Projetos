-- criando tabela gravadora
-- TABELA PAI 
create table gravadora
(
id_grav			int			not null,
gravadora		varchar(45) not null,
telefone		varchar(20)		null
primary key(id_grav)
);

-- criando tabela cd
-- TABELA FILHO
create table cd
(
id_cd		   int			identity,
id_grav		   int			not null,
banda		   varchar(40)	not null,
nome_cd		   varchar(40)	not null,
dta_lancamento datetime		not null
primary key(id_cd)
foreign key(id_grav) references gravadora (id_grav)
);

-- inserindo dois dados na tabela gravadora
-- TABELA PAI
insert into gravadora values (1,'som livre','99199-8099');
insert into gravadora values (2,'globo','99288-7188');

-- verificando dados cadastrados
select * from gravadora;

-- inserindo três dados tabela cd
-- TABELA FILHO
insert into cd values (1,'Legiao urbana','dois','20/12/2019');
insert into cd values (1,'Engenheiros do Hawaii','alivio imediato','10/11/2019');
insert into cd values (2,'Titãs','cabeça dinossauro','02/09/2019');

-- verificando dados cadastrados
select * from cd;



