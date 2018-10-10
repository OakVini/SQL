create database aula2
use aula2

-- Listar todos os equipamentos.
select * from dbo.T_EQUIPAMENTO


-- Listar os c�digos e os nomes das companhias.
select CDCIA as C�digos, NMCIA as Companhias from dbo.T_COMPANHIA


-- Listar os n�meros, a data/hora de sa�da dos v�os que partem a meia-noite
select NRVOO, DTSAIDA, HRSAIDA from dbo.T_VOO
where HRSAIDA = '00:00:00.000'


-- Listar os nomes dos clientes brasileiros.
select * from dbo.T_CLIENTE
where CDPAIS_CLI = 'BR'


-- Listar os c�digos e nomes dos equipamentos que tiverem mais de 1 motor.
select CDEQU, NMEQP from dbo.T_EQUIPAMENTO
where QTMOTOR > 1


-- Listar os n�meros, a data/hora de sa�da dos v�os que atendem as rotas 001, 002, 003.
select NRVOO, DTSAIDA, HRSAIDA from T_VOO
where NRROTA_VOO = 001
or NRROTA_VOO = 002
or NRROTA_VOO = 003


-- Listar os nomes dos clientes nascidos no ano de 1992.select NMCLI from dbo.T_CLIENTEwhere DTNASC_CLI LIKE '%1992%'-- Listar sem repeti��o os n�meros dos v�os em que algum cliente viajou sem desconto.
select NRVOO_RSV from dbo.T_RESERVA
where PCDESC_RSV is null


-- Listar os c�digos dos equipamentos com a quantidade de motores desconhecida.
select CDEQU from dbo.T_EQUIPAMENTO
where QTMOTOR is null


-- Listar o c�digo dos clientes de sexo conhecido.
select CDCLI from dbo.T_CLIENTE
where  IDSEX_CLI is null


-- Listar os n�meros das rotas que partem dos aeroportos GALE�O (GIG), SANTOS DUMONT (SDU),
-- ou GUARULHOS (GRU) .
select NRROTA_VOO from T_ROTA
where CDAEROP_ORI = 'GIG'
or CDAEROP_ORI = 'GRU'
or CDAEROP_ORI = 'SDU'


-- Listar os n�meros das rotas que n�o chegam aos aeroportos SANTOS DUMONT (SDU), GALE�O (GIG),
-- CONFINS (CNF) ou GUARULHOS (GRU).
select * from T_ROTA
where CDAEROP_DES not in ('GIG', 'GRU', 'SDU')


-- Listar os n�meros, a data/hora de sa�da dos v�os que partam antes das 6 da manh� e
-- n�o atendem as rotas 001, 002, 003.
select NRVOO, DTSAIDA, HRSAIDA from dbo.T_VOO
where HRSAIDA < '06:00:00.000'
and NRROTA_VOO not in (001, 002, 003)

-- Listar os c�digos e nomes dos equipamentos cujo tipo de propuls�o seja motor (�M�) e n�o sejam "JATO".
select CDEQU from dbo.T_EQUIPAMENTO
where IDTIP_PROP = 'M'
and DCTIP_EQP not in ('Jato')


-- Listar o nome do cliente e o c�digo do respectivo respons�vel para os que nasceram
-- em data desconhecida.
select NMCLI, CDCLI from dbo.T_CLIENTE
where DTNASC_CLI is null


-- Listar os nomes dos equipamentos que tem propuls�o com 2 motores.
select * from dbo.T_EQUIPAMENTO
where QTMOTOR = 2


-- Listar os c�digos e nomes dos equipamentos que sejam a jato e transportem mais
-- de 100 pessoas, ou tenham propuls�o a motor e transportem menos de 20 pessoas.
select * from dbo.T_EQUIPAMENTO
where DCTIP_EQP = 'Jato'
and QTPASSAG > 100
or IDTIP_PROP = 'M'
and QTPASSAG < 20


-- Listar os nomes das companhias cujo c�digo do pa�s ou da companhia contenham as letras "B" ou "R".
select * from dbo.T_COMPANHIA


-- Listar os v�os dispon�veis cuja data de sa�da estejam programados para os dias de 01 e
-- 10 de janeiro de 1993 e que n�o atendam a rota 001. Na listagem, atras�-los em 28
-- dias.



-- Listar o nome, a data de nascimento e a idade de todos os clientes brasileiros (BR),
-- japoneses (JA) ou franceses (FR).