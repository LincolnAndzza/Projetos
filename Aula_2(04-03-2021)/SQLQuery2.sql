											-- --- USANDO O BANCO DE DADOS FIB2021 -- -- ---
																use fib2021;
												
											-- AULA 2 -- LISTA DE EXERCICIO 2 -- EXERCICIO 2

											-- -- -- CRIANDO AS VIEWS DO EXERCICIO 2 -- -- --

-- CRIANDO A PRIMEIRA VIEWS --
create view vwempresas
as	
	select	nome		'Nome Empresa',
			dtcriacao	'Data da Criação Empresa',
			bairro		'Endereço Bairro',
			cidade		'Localização da Empresa na Cidade'
	from
			empresa

	where	dtcriacao > '20/11/1910' or estado <> 'SP';



-- CRIANDO A SEGUNDA VIEWS --
create view vwfuncionario_aula2
as	
	select	nome	'Nome Funcionaria',
			telfone	'Telefone Funcionaria',
			salario	'Salario Funcionaria'

	from
			funcionario_aula2
	where salario > 4.900
	group by nome, telfone, salario;


	
-- CRIANDO A TERCEIRA VIEWS --
create view vwprodutos_aula2
as	
	select	nome		'Nome do Produto',
			fabricte	'Fabricante do Produto',
			funcionr	'Funcionaria fez o Produto'

	from
			produto_aula2

	where id_prod > 5;



-- CRIANDO A QUARTA VIEWS --
create view vwclientes
as	
	select	count(id_cli)	'Codigo Cliente',
			nome			'Nome Cliente'

	from
			cliente
			group by id_cli,nome
			having id_cli >= 4;


-- criando as novas views pra usuarios 
select * from vwempresas;
select * from vwfuncionario_aula2;
select * from vwprodutos_aula2;
select * from vwclientes;



		

											-- -- COM FUNÇÕES AVG, COUNT, MAX, MIN E SUM -- --
-- CRIANDO A PRIMEIRA VIEWS 
create view vwempresas1
as	
	select	count(nome)				'Total Empresa',	
			count(bairro)			'Total Bairro',
			count(cnpj)				'Total Cnpj',
			count(distinct estado)	'Total Estado'
	from
			empresa;


-- CRIANDO A SEGUNDA VIEWS 
create view vwfuncionarias1_aula2
as	
	select	count(distinct telfone)		'Telefones da Funcionarias',
			max(salario)				'Maior Salario da Funcionarias'

	from
			funcionario_aula2;



-- CRIANDO A TERCEIRA VIEWS --
create view vwprodutos1_aula2
as	
	select	count(distinct fabricte)	'Total Fabricante',
			count(distinct funcionr)	'Total Funcionaria',
			min(valor)					'Salario Minimo',	
			sum(valor)					'Soma o Produto'
			

	from
			produto_aula2;
			

-- CRIANDO A QUARTA VIEWS --
create view vwprodutosI_aula2
as	
	select	count(distinct id_prod)	'Total do Codigo',
			count(distinct nome)	'Total do Produto',
			avg(valor)					'Media do Produto'

	from
			produto_aula2;


-- criando as select de views pra usuarios 
select * from vwempresas1;
select * from vwfuncionarias1_aula2;
select * from vwprodutos1_aula2;
select * from vwprodutosI_aula2;




								
										-- CRIANDO VIEW COM DISTINCT, BETWEEN, LIKE, IN E WHERE --
-- CRIANDO A PRIMEIRA VIEWS 
create view vwempresas2
as	
	select	cidade			'Nome da Cidade',
			bairro			'Nome do Bairro'
					 
	from
			empresa
	where bairro like '_u%'
	group by bairro,cidade;



-- CRIANDO A SEGUNDA VIEWS 
create view vwfuncionarios2_aula2
as	
	select	distinct sexo			'Sexo da Funcionaria',
					id_funcnrio		'Codigo da Funcionaria',
					salario			'Salario da Funcionaria'	

	from
			funcionario_aula2

	where salario between 4.000 and 8.500 and (id_funcnrio in (4,5,7));



-- CRIANDO A TERCEIRA VIEWS 
create view vwprodutos_aula2
as	
	select	fabricte		'Nome do Fabricante',
			valor			'Preço do Produto',
			nome			'Nome produto'

	from
			produto_aula2

	where valor between 6.000 and 9.500 and (nome like 'A%')
	group by fabricte,valor,nome;



-- CRIANDO A QUARTA VIEWS 
create view vwcargo2
as	
	select	id_carg		'Codigo do Cargo',
			nome		'Nome com a letra A'
			
	from
			cargo

	where nome like 'A%'
	group by id_carg,nome;
	


-- criando as novas views pra usuarios 
select * from vwempresas2;
select * from vwfuncionarios2_aula2;
select * from vwprodutos_aula2;
select * from vwcargo2;
