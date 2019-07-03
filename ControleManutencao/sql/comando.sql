-- SQL
-- linguagem de consulta esctruturada
-- comando de DDL
-- linguagem de definiÃ§Ã£o de dados 
create database controle_manutencao;
show databeses;
use controle_manutencao;
create table quadro(
-- chave primaria
-- cÃ³digo unico dentro da tabela
cod 		   int primary key auto_increment,
descricao  varchar(100),
status         varchar(10),
observ          varchar(150),
local          varchar(20),
responsavel   varchar(25),
dt_inicio   varchar(10),
dt_fim   varchar(10)

);
show tables;
desc quadro;

-- DML (Linguagem de manipulação de dados)
-- insert - update - delete
insert into quadro(
	descricao   ,
	status      ,
	observ      ,
	local       ,
	responsavel ,
	dt_inicio   ,
	dt_fim      ,
	)
values ('Vazamento',
		'Agendado',
		'Quarto 10',
		'Andre',
		'05/06/2019',
		'06/06/2019',
		'observações'
		);

-- consulta no banco de dados
select * from quadro;

