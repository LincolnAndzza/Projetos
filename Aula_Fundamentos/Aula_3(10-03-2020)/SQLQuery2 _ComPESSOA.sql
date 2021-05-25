-- criando tabela de pessoa
-- tabela PAI  
create table pessoa
(
id		int			identity,
nome	varchar(40) not null,
fone	varchar(20)		null,
email	varchar(40)		null
primary key(id)
);

-- TABELA PAI 
-- inserindo dados na tabela pessoa com erros
insert into pessoa values ('Ju','99802-0808','Judeabigail@hotmail');
insert into pessoa values ('Julecas','99112-0111','Julecasbigail@outlook.com');
insert into pessoa values ('Julias','922-0822','Juliascasbigail@gmail.com');

-- forçando o erros na TABELA PAI 
insert into pessoa values (5,'Julias','92822-0822','Juliascasbigail@gmail.com');

-- verificando dados cadastrados pessoa
select * from pessoa;

