-- criando ficha cadastral de proprietario
create table proprietario
(
nome		varchar(30)		not null,
enderprop	varchar(30)		not null,
estcivil	varchar(30)			null,
cpf			varchar(30)		not null,
rg			varchar(30)		not null,
contato		varchar(30)			null,
email		varchar(30)		not null,
banco		varchar(30)		not null,
agencia		int				not null,
conta		varchar(30)		not null,
endereco	varchar(30)		not null,
valaluguel	int				not null,
datinicio	varchar(30)		not null,
percontato	varchar(30)		not null
primary key (nome,rg)
);

-- inserindo registro na tabela dos proprietarios
insert into proprietario values ('Xavier','Rua Antonia das Cunhas','Solteiro','120.410.780-10','90.502.322-1','14992-5412','Xaviermelordes@gmail.com','Bradesco','3375','0152504-P','Avenida dos Santos','500','04/02/2020','05/01/1700');

-- inserindo mais cinco registro na tabela dos proprietarios
insert into proprietario values ('Bianca','Rua dos Tres Mello ','Cansada','220.440.770-20','10.552.332-2','14988-5410','Biancameesilva@outlook.com','ltau','4272','0100504-P','Avenida Fatima dos Relo','600','01/03/1999','02/01/1700');
insert into proprietario values ('Carlos','Rua dos Carlos Cunhas','Solteiro','320.515.780-20','30.509.322-3','14902-5002','Carlosdoslordes@hotmail.com','Citibank','5570','0786504-P','Avenida Hello dos Pereira','700','05/08/2020','01/01/1700');
insert into proprietario values ('Daniela','Rua Daniela das Releira','Cansada','424.415.781-30','40.508.328-4','14951-5610','Danielamelordes@gmail.com','Santander','6301','0132533-P','Avenida de Avenida dos Santos','800','14/011/1888','06/01/1700');
insert into proprietario values ('Erique','Rua Word das Dales','Solteiro','724.321.409-40','50.412.100-5','14941-0411','Eriquelordesria@hotmail.com','Bradesco','7470','0104404-P','Avenida de Avenida dos Santos','900','04/02/2020','05/01/1700');
insert into proprietario values ('Fabia','Rua Cunhas da Rimeiras','Cansada','322.450.320-60','60.412.602-6','14933-5109','Wordrinfabiana@outlook.com','Citibank','3085','0454404-P','Avenida Santos de Avenidas','1000','04/02/2020','05/01/1700');

-- verificando dados dos proprietarios
select * from proprietario;
