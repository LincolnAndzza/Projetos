												------ USANDO O BANCO DE DADOS FIB2021 --------
																use fib2021;
															
												-- AULA 3 -- LISTA DE EXERCICIOS 3 -- EXERCICIO 2

-- criando as tabelas 
create table contacorrente (
    nconta      int             not null,
    cliente     varchar(40)     not null,
    saldo       decimal(8,2)    not null
);

create table movimentocc (
    nconta      int             not null,
    dtmov       datetime        not null,
    valor       decimal(8,2)    not null,
    operacao    varchar(1)      not null
);

create table operacao (
    dtoperacao  datetime        not null,
    operacao    varchar(1)      not null,
    valor       decimal(8,2)    not null
);

create table auditoria (
    dtoperacao  datetime        not null,
    funcionaria varchar(40)     not null,
    operacao    varchar(1)      not null,
    valor       decimal(7,2)    not null
);


-- exercicio 3
-- criando os registros da tabela contacorrente
insert into contacorrente values (1, 'Rosana', 50000);
insert into contacorrente values (2, 'Luiza', 0.30);
insert into contacorrente values (3, 'Ryanana', 1000);
insert into contacorrente values (4, 'Fabia', 20);
insert into contacorrente values (5, 'Hanala', 5);


select * from contacorrente;
select * from movimentocc;
select * from operacao;
select * from auditoria;



-- exercicio 4
-- crinado a primeira trigger de financeira de deposito
go
create trigger tr_saque on movimentocc
for insert
as 
begin
	if (select count(*) from inserted) <> 0 begin

	declare
            @nconta int,
			@dtmov	datetime,
			@valor	decimal(8,2),
            @operacao varchar(1)

	select	@nconta = nconta, 
			@dtmov = dtmov, 
			@valor = valor,
            @operacao = operacao
			
			from inserted

	if @operacao = 'D'
		begin
			update contacorrente set saldo = saldo + @valor where nconta = @nconta
        end

	if @operacao = 'S'
		begin
			update contacorrente set saldo = saldo - @valor where nconta = @nconta
        end

        insert into operacao values (@dtmov, @operacao, @valor)
        insert into auditoria values (@dtmov, 'Luiza', @operacao, @valor)
		insert into auditoria values (@dtmov, 'Hanala', @operacao, @valor)
    end
end;

-- depositando na movimento conta corrente
insert into movimentocc values (1,getdate(),500,'D');
insert into movimentocc values (2,getdate(),70,'S');



-- crinado a terceira trigger
go
create trigger tr_impedindo_cliente_excluidos on contacorrente
for delete
as
begin
	if (select count(*) from deleted) <> 1 
		begin
			print 'Erro de Exclusão: Os Clientes não pode ser excluidos da tabela';
			rollback transaction;
		end
end;
