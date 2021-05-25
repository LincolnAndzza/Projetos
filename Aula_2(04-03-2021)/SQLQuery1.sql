												------ USANDO O BANCO DE DADOS FIB2021 --------
																use fib2021;
												
												-- AULA 2 -- LISTA DE EXERCICIO 2 -- EXERCICIO 1


-- criando a tabela empresa
create table empresa
(
id_emprsa	int				not null,
nome		varchar(30)		not null,
dtcriacao	date			not	null,
bairro		varchar(30)		not	null,
cnpj		varchar(30)		not	null,
cidade		varchar(30)		not	null,
estado		varchar(30)			null
primary key(id_emprsa)
);


-- criando a tabela cargo
create table cargo
(
id_carg	int					not	null,
nome	varchar(30)			not null
primary key(id_carg)
);


-- criando a tabela funcionario 
create table funcionario_aula2
(
id_funcnrio	int				not	null,
id_carg		int				not	null,
nome		varchar(30)		not null,
telfone		varchar(30)			null,
sexo		varchar(30)			null,
salario		decimal(7,3)	not null,
primary key(id_funcnrio),
foreign key(id_carg) references cargo (id_carg)
);


-- criando a tabela produto
create table produto_aula2
(
id_prod		int				not	null,
nome		varchar(30)		not null,
fabricte	varchar(30)		not null,
funcionr	varchar(30)		not null,
valor		decimal(9,3)	not null
primary key(id_prod)
);


-- criando a tabela cliente
create table cliente
(
id_cli		int				not	null,
nome		varchar(30)		not null,
id_emprsa	int				not	null,
id_funcnrio	int				not	null,
id_prod		int				not	null
primary key(id_cli)
foreign key(id_emprsa)		references empresa	(id_emprsa),
foreign key(id_funcnrio)	references funcionario_Aula2	(id_funcnrio),
foreign key(id_prod)		references produto_aula2	(id_prod)
);


-- criando os select das tabelas
select * from empresa;
select * from cargo;
select * from funcionario_Aula2;
select * from produto_aula2;
select * from cliente;


-- criando o registro da tabela proprietario
insert into empresa values (1,'Nextel Futro','20/11/1500','Athenas e Deusas','16.676.663/0001-60','Bauru','SP');
insert into empresa values (2,'DS Armazendo','10/07/2010','Romeria dos Ricos','31.713.211/0001-03','Ourinhos','SP');
insert into empresa values (3,'Exata Tecnologica','01/10/1999','Folcoes sem Visiones','13.989.156/0001-99','Lins','');
insert into empresa values (4,'PRIO Developer','04/04/2000','Alvas Omanoides','74.641.241/0001-56','Botas','RJ');
insert into empresa values (5,'Evolution Ti','19/04/1970','Queixadas rssr OS','55.621.812/0001-46','Botucatu','SP');
insert into empresa values (6,'Rob MegaTeclogico','05/12/1900','Misto bro Mista','35.813.657/0001-52','Olimpia','BH');
insert into empresa values (7,'Developer 3D','02/06/1910','Galopes pra Tudo','23.076.960/0001-30','Jau','SP');
insert into empresa values (8,'Tecnolog WX','16/08/2020','Buchudores da Noites','90.951.367/0001-83','Bauru','BH');
insert into empresa values (9,'','03/09/2034','','','','');


-- criando o registro da tabela cargo
insert into cargo values (1,'Diretor de Ti');
insert into cargo values (2,'Data Scientist');
insert into cargo values (3,'Desenvolvedor Mobile');
insert into cargo values (4,'Analista de Rede');
insert into cargo values (5,'Desenvolvedor Back-End');
insert into cargo values (6,'Analista de Suporte');
insert into cargo values (7,'Desenvolvedor Web');
insert into cargo values (8,'DBA');
insert into cargo values (9,'Desenvolvedor Frond-End');
insert into cargo values (10,'Gerente de Ti');
insert into cargo values (11,'');



-- criando o registro da tabela funcionario
insert into funcionario_Aula2 values (1,1,'Athena','99011-0743','F',15.000);
insert into funcionario_Aula2 values (2,2,'Hera','99864-0227','F',6.000);
insert into funcionario_Aula2 values (3,3,'Ester','99090-2348','F',4.500);
insert into funcionario_Aula2 values (4,4,'Narinha','99572-3421','F',3.500);
insert into funcionario_Aula2 values (5,5,'Yamis','99068-7386','F',4.000);
insert into funcionario_Aula2 values (6,6,'Xena','99013-6543','F',3.000);
insert into funcionario_Aula2 values (7,7,'Carol','99021-6874','F',5.000);
insert into funcionario_Aula2 values (8,8,'Abigail','99217-3246','F',9.000);
insert into funcionario_Aula2 values (9,9,'Daya','99012-7534','F',4.900);
insert into funcionario_Aula2 values (10,10,'Melodi','99136-3214','F',10.000);
insert into funcionario_Aula2 values (11,11,'Josiana','','',1.000);



-- criando o registro da tabela produto
insert into produto_aula2 values (1,'Site Função Back-End','Nextel Futro','Yamis',7.000);
insert into produto_aula2 values (2,'Banco Dados','Exata Tecnologica','Abigail',6.500);
insert into produto_aula2 values (3,'Aplicativo Android','Exata Tecnologica','Ester',7.500);
insert into produto_aula2 values (4,'Algoritmo','Evolution Ti','Hera',6.000);
insert into produto_aula2 values (5,'Suporte Rede ','Developer 3D','Narinha',8.500);
insert into produto_aula2 values (6,'Analise Suporte','Evolution Ti','Xena',7.000);
insert into produto_aula2 values (7,'Site Função Web','Rob MegaTeclogico','Carol',8.000);
insert into produto_aula2 values (8,'Teste Rede','Developer 3D','Narinha',7.500);
insert into produto_aula2 values (9,'Banco Dados','Exata Tecnologica','Abigail',9.000);
insert into produto_aula2 values (10,'Site Função Frond-End','DS Armazendo','Daya',10.000);
insert into produto_aula2 values (11,'Algoritmo Alfa','Evolution Ti','Hera',9.500);
insert into produto_aula2 values (12,'','Developer','',15.000);



-- criando o registro da tabela entregador
insert into cliente values (1,'Marta',1,5,1);
insert into cliente values (2,'Lois',2,8,2);
insert into cliente values (3,'Roberta',3,3,3);
insert into cliente values (4,'Guilherme',4,2,4);
insert into cliente values (5,'Natdia',5,4,5);
insert into cliente values (6,'Didi',6,6,6);
insert into cliente values (7,'Loide',7,7,7);
insert into cliente values (8,'Fante',8,4,8);
insert into cliente values (9,'Beatrix',9,8,9);

insert into cliente values (10,'Musa',10,9,10);
insert into cliente values (11,'Bloom',11,2,11);
insert into cliente values (12,'Yiuri',12,12,12);



											        -- CRIANDO AS VIEWS DO EXERCICIO 1 --
-- CRIANDO A PRIMEIRA VIEWS --
create view vwempresa
as	
	select	nome		'Nome Empresa',
			dtcriacao	'Data da Criação Empresa',
			bairro		'Endereço Bairro',
			cidade		'Localização da Empresa na Cidade'
	from
			empresa;



-- CRIANDO A SEGUNDA VIEWS --
create view vwfuncionaria_aula2
as	
	select	nome	'Nome Funcionaria',
			telfone	'Telefone Funcionaria',
			salario	'Salario Funcionaria'

	from
			funcionario_aula2;



-- CRIANDO A TERCEIRA VIEWS --
create view vwproduto_aula2
as	
	select	nome		'Nome do Produto',
			fabricte	'Fabricante do Produto',
			funcionr	'Funcionaria fez o Produto'

	from
			produto_aula2;



-- CRIANDO A QUARTA VIEWS --
create view vwcliente
as	
	select	nome	'Nome Cliente'

	from
			cliente;



-- criando as select de views pra usuarios 
select * from vwempresa;
select * from vwfuncionaria_Aula2;
select * from vwproduto_aula2;
select * from vwcliente;






