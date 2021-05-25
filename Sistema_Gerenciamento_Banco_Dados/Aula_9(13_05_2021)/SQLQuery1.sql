												--	-	AULA 9	--	LISTA DE EXERCICIOS 9	--

--	USANDO O BANCO DE DADOS LINCOLN
--	EXERCICIO 1
use lincoln;


--	EXERCICIO 2
-- VERIDICADO AS TABELAS, VIEWS E STOREd PROCEDURES
select name From sys.objects Where type='U';
Select name From sys.objects Where type='V';
select * from sys.triggers;
Select name From sys.objects Where type='P';


-- FAZENDO O PRIMEIRO BACKUP NO BANCO DE DADOS -- BACKUP FULL
-- EXERCICIO 3
backup database lincoln to disk = 'C:\Backup_BancoDados\backup19052021.bak';


-- CRIAR MAIS UMA TABELA E INSERIR 2 CAMPOS
-- EXERCICIO 4
create table criarconta_aula9
(
id_cria	int			identity	not null,
nome	varchar(30)				not null,
email	varchar(30)				not null,
senha	varchar(30)				not null,
dtnasc	date					not null,
celular	varchar(30)				not null
primary key (id_cria)
);

-- CRIANDO A TABELA CONTA USUARIO
create table contausuario_aula9
(
id_cont	int			identity	not null,
nome	varchar(30)				not null,
senha	varchar(30)				not null,
id_cria	int						not null
primary key (id_cont)
foreign key (id_cria) references criarconta (id_cria)
);

-- CRIANDO OS REGISTROS NA TABELA
insert into criarconta_aula9 values ('Helena','helenaaria@gmail.com','58daria67','05/08/1990','(14) 998714-5704');
insert into criarconta_aula9 values ('Sophia','sophialima@gmail.com','rin2081','10/05/2000','(14) 99010-2983');
insert into criarconta_aula9 values ('Cecília','cecílianaria@gmail.com','dark23@','02/07/1970','(14) 99564-1432');
insert into criarconta_aula9 values ('Melissa','melissamartins@gmail.com','873fp6','13/04/2010','(14) 99809-0201');

-- CRIANDO REGISTROS NA TABELA 
insert into contausuario_aula9 values ('Cecília','dark23@',3);
insert into contausuario_aula9 values ('Melissa','873fp6',4);
insert into contausuario_aula9 values ('Helena','58daria67',1);
insert into contausuario_aula9 values ('Sophia','rin2081',2);

select * from criarconta_aula9;
select * from contausuario_aula9;


-- FAZER UM BACKUP DIFFERENTIAL
-- EXERCICIO 5
backup database lincoln to disk = 'C:\Backup_BancoDados\backup21052021.bak'
with differential;


-- DELETAR O BANCO DE DADOS MEU
-- EXERCICIO 6
drop database lincoln;


-- RESTAURANDO O MEU BANCO DE DADOS
-- EXERCICIO 7
restore database lincoln from disk =  'C:\Backup_BancoDados\backup19052021.bak'
with recovery;


-- VERIFICANDO TABELAS, VIEWS, TRIGGERS E STORED PROCEDURES
-- EXERCICIO 8
select name From sys.objects Where type='U';
Select name From sys.objects Where type='V';
select * from sys.triggers;
Select name From sys.objects Where type='P';


-- DELETANDO UMA TABELA
-- EXERCICIO 9
drop table alunos;
drop table atletas
-- VERIFICANDO 
select * from alunos;
select * from atletas;


-- EXERCICIO 10
restore database lincoln from disk =  'C:\Backup_BancoDados\backup19052021.bak'
with recovery;


-- EXERCICIO 11
select name From sys.objects Where type='U';
-- VERIFICANDO OS REGISTROS DAS TABELAS PARA VER QUE ESTÁ OK
select * From proprietario;
select * From funcionario_aula1;
select * From ambulancia;
select * From equipe;
select * From contacorrenteg_aula8;