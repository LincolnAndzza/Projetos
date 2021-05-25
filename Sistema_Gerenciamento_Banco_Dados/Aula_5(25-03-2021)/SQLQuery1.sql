												------ CRIANDO O BANCO DE DADOS FIB2022 ---------
															   create database fib2022;

											    ------ USANDO O BANCO DE DADOS FIB2021 ----------
																use fib2022;
															
												-- AULA 5 -- LISTA DE EXERCICIOS 5 -- EXERCICIO 2
-- criando a tabela produto 
create table produtog_aula5
(
id			int				not null,
nome		varchar(30)		not null,
marca		varchar(30)		not null,
fabricante	varchar(30)		not null,
quantd		int				not null,
valor		decimal(7,3)	not null,
tipo		varchar(30)		not null
primary key(id)
);


-- criando uma store procedure para inclusão de dados
go
create procedure pr_insereProdutog_aula5
	@pid				int,
	@pnome			varchar(30),
	@pmarca			varchar(30),
	@pfabricante	varchar(30),
	@pquantd		int,
	@pvalor			decimal(7,3),
	@ptipo			varchar(30)			
as
	insert into produtog_aula5 (id, nome, marca, fabricante, quantd, valor, tipo)
	values	(@pid, @pnome, @pmarca, @pfabricante, @pquantd, @pvalor, @ptipo);
	
	print	('Produto cadastrado com Exito');

	
-- usando o select para ver a store procedure
Select name From sys.objects Where type='P';

select * from produtog_aula5;

-- executar Stored Procedure para passar os dados necessarios
exec pr_insereProdutog_aula5
@pid	=	01,	
@pnome	=	'Galaxy Book S Mercury Gray',	
@pmarca	=	'Samsung',	
@pfabricante	=	'Samsung',
@pquantd	=	500,
@pvalor	=	1.900,
@ptipo	=	'Notebook';


exec pr_insereProdutog_aula5
@pid	=	02,	
@pnome	=	'Playstation 7',	
@pmarca	=	'Sony',	
@pfabricante	=	'Sony',
@pquantd	=	800,
@pvalor	=	5.000,
@ptipo	=	'Console';


exec pr_insereProdutog_aula5
@pid	=	03,	
@pnome	=	'Split Philco 12000Btus',	
@pmarca	=	'Lg',	
@pfabricante	=	'Lg',
@pquantd	=	500,
@pvalor	=	9.000,
@ptipo	=	'Ar condicionado';


exec pr_insereProdutog_aula5
@pid	=	04,	
@pnome	=	'iPhone 20',	
@pmarca	=	'Apple',	
@pfabricante	=	'Apple',
@pquantd	=	800,
@pvalor	=	10.000,
@ptipo	=	'Celular';


exec pr_insereProdutog_aula5
@pid	=	05,	
@pnome	=	'PcV pro Gamer',
@pmarca	=	'Dell',	
@pfabricante	=	'Dell',
@pquantd	=	500,
@pvalor	=	40.000,
@ptipo	=	'Computador';



-- criando uma view para saber o total de produtos cadastrados
create view vwprodutosg_aula5
as 
select	id	'Codigo',
		nome,
		marca,
		fabricante,
		quantd	'Quantidade',
		valor	'Preço',
		tipo	'Produto'
from   
	   produtog_aula5;

select * from vwproduto_Aula5;



-- EXERCICIO 3
-- criando a tabela produto da aula3
create table produtogfilho_aula5
(
id_prod		int				not null,
nome		varchar(45)		not null,
fabricante	varchar(45)		not	null,
quantidade	decimal(6,2)	not	null,
vlunitario	decimal(7,2)	not null,
tipo		varchar(30)		not null
primary key	(id_prod)
);

-- criando a tabela auditoria geral
create	table	auditoriag_geral_aula5
(
id		int			not null,
usuario		varchar(40)	not null,
senha		int			not null,
acao		varchar(9)	not null,
venda		varchar(30)	not null,
dataatual	datetime	not null
);

-- criando a tabela auditoria para trigger 
create	table auditoriag_aula5
(
usuario		varchar(40)	not null,
senha		int			not null,
venda		varchar(30)	not null,
dataatual	datetime	not null
);


-- criando a tabela venda
create table vendag_Aula5(
id_v	int			identity	not null,
vendedora	varchar(40)	not null,
dtvenda		datetime	not null,
id_prod		int			not null,
quantd		int			not null,
endr_entrga	varchar(70) not null
primary key	(id_v)
foreign key (id_prod)	references	produtogfilho_aula5 (id_prod)
);


-- criando uma store procedure para inclusão de dados
go
create procedure pr_insereProdutogfilho_aula5
	@pid_prod		int,
	@pnome			varchar(30),
	@pfabricante	varchar(30),
	@pquantidade	int,
	@pvlunitario	decimal(7,3),
	@ptipo			varchar(30)			
as
	insert into produtogfilho_aula5 (id_prod,nome,fabricante,quantidade,vlunitario,tipo)
	values	(@pid_prod,@pnome,@pfabricante,@pquantidade,@pvlunitario,@ptipo);
	
	print	('Produtos cadastrado com Exito');
	

-- criando uma trigger para gravar os dados
go
create	trigger	tr_auditoriag_aula5
on	auditoriag_aula5
for	insert	
as	
	begin	
		declare
	
		@usuario	varchar(40),
		@senha		int,
		@venda		varchar(30),
		@dataatual	datetime
	
	select
		@usuario	=	usuario,
		@senha		=	senha,
		@venda		=	venda,
		@dataatual	=	dataatual
	
	from  inserted	
	print ('Gravado com Exito')
end
	
	
-- inserindo uma operaçaõ na tabela de auditoria
insert into auditoriag_aula5
values ('Laila',7381,'Notebook',GETDATE());

insert into auditoriag_aula5
values ('Daria',3012,'Celular',GETDATE());

insert into auditoriag_aula5
values ('Lorista',8641,'Tablet',GETDATE());

insert into auditoriag_aula5
values ('Dorio',4107,'Tv Smart',GETDATE());

-- criando o select para a tabela auditoria
select * from auditoriag_aula5;




-- EXERCICIO 4
-- criando a tabela conta corrente
create table contacorrenteg_aula5
(
nconta	int				not null,
cliente	varchar(30)		not null,
saldo	decimal(8,2)	not null
);

insert into contacorrenteg_aula5 values (2001,'Joice', 1040);
insert into contacorrenteg_aula5 values (2020,'Agnaldo Agnangelo', 200);
insert into contacorrenteg_aula5 values (2030,'Helvino Helvetico', 10);
insert into contacorrenteg_aula5 values (2040,'Petronio Pedroso', 5.20);

-- criando a tabela movimento da conta corrente
create table movimentoccg_aula5
(
nconta		int				not null,
dta_mov		datetime		not null,
valor		int				not null,
operacao	varchar(5)		not null
);

-- criando a tabela operação 
create table operacaog_aula5
(
dtoperacao	datetime	not null,
operacao	varchar(5)	not null,
valor		int			not null	
);



-- criando tabela cliente
create table clienteg_aula5
(
id		int			not null,
nome	varchar(30)	not null,
fone	varchar(30)	not null,
email	varchar(30)	not null,
rg		varchar(30)	not null,
bairro	varchar(30)	not null
);


-- criando um stored procedure
go
create procedure pr_insereClienteg_aula5

	@pid			int,
	@pnome			varchar(30),
	@pfone			varchar(30),
	@pemail			varchar(30),
	@prg			varchar(30),
	@pbairro		varchar(30)			

as
	if @pid <> 0 and @pnome <> '' and @pfone <> '' and @pemail <> '' and @prg <> '' 
				 and @pbairro <> ''
     begin
       insert into clienteg_aula5 (id,nome,fone,email,rg,bairro)
       values(@pid,@pnome,@pfone,@pemail,@prg,@pbairro);

       print'Cliente cadastrado com Exito';
  end
else
     print'Preencher corretamente';

	insert into clienteg_aula5 (id,nome,fone,email,rg,bairro)
	values	(@pid,@pnome,@pfone,@pemail,@prg,@pbairro);



-- executar Stored Procedure para passar os dados necessarios
exec pr_insereClienteg_aula5
@pid		=	01,
@pnome		=	'Loris',	
@pfone		=	'99801-7381',	
@pemail		=	'lorisdalay@gmail.com',
@prg		=	'85.320.323-23',
@pbairro	=	'Rua do passaro ouro';


exec pr_insereClienteg_aula5
@pid		=	02,
@pnome		=	'Fabiana',	
@pfone		=	'99412-0302',	
@pemail		=	'fabianadalay@gmail.com',
@prg		=	'22.645.454-05',
@pbairro	=	'Rua alamentas anjos';


-- lançar movimentação de depósito 
go
create trigger tr_movimentoccg_aula5
on movimentoccg_aula5
for insert
as
begin
	declare @nconta   int,
			@dta_mov  datetime,
			@valor    int,
			@operacao varchar(5)

	select @nconta = nconta, 
		   @dta_mov = dta_mov, 
		   @valor = valor, 
		   @operacao = operacao
	from inserted

	if @operacao = 'D'
		begin
			update contacorrenteg_aula5 set saldo = saldo + @valor where nconta = @nconta;
		end
	
	if @operacao = 'S'
		begin
			update contacorrenteg_aula5 set saldo = saldo - @valor where nconta = @nconta;
		end

	insert into operacaog_aula5 values (@nconta,@dta_mov,@valor,@operacao)
	insert into auditoriag_aula5 values (@nconta,@dta_mov,@valor,@operacao)
end


insert into movimentoccg_aula5 values (2001,getdate(),5000,'D');
insert into movimentoccg_aula5 values (2020,getdate(), 198.10,'S');
insert into movimentoccg_aula5 values (2030,getdate(),9000,'S');

select * from contacorrenteg_aula5;
select * from movimentoccg_aula5;
select * from operacaog_aula5;
select * from auditoriag_aula5;
