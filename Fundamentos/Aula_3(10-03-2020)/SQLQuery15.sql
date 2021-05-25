-- criando tabela americana com default e check
create table contaAmericana
(
nome			varchar(30)		not null,
produto			varchar(30)		not null,
id				int				not null,
cpf				varchar(30)		not null,
fornecedor		varchar(30)			null,
fone			varchar(30)		not null,
quantidade		int				default 10,
sexo			varchar(1)		check(upper(sexo)='M' or upper(sexo)='F')
primary key(id)
);

-- Inserindo dados na tabela americana
insert into contaAmericana values ('Samuel','ZenfoneAsus',1,'154.294.278-02','Asus','99876-1010',default,'M');
insert into contaAmericana values ('Gabriel','ZenfoneCinco',2,'273.977.598-90','Asus','99543-2020',default,'M');

-- verificando os dados cadastrados
select * from contaAmericana;
