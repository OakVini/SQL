create database aula2
use aula2

-- Listar todos os equipamentos.
select * from dbo.T_EQUIPAMENTO


-- Listar os códigos e os nomes das companhias.
select CDCIA as Códigos, NMCIA as Companhias from dbo.T_COMPANHIA


-- Listar os números, a data/hora de saída dos vôos que partem a meia-noite
select NRVOO, DTSAIDA, HRSAIDA from dbo.T_VOO
where HRSAIDA = '00:00:00.000'


-- Listar os nomes dos clientes brasileiros.
select * from dbo.T_CLIENTE
where CDPAIS_CLI = 'BR'


-- Listar os códigos e nomes dos equipamentos que tiverem mais de 1 motor.
select CDEQU, NMEQP from dbo.T_EQUIPAMENTO
where QTMOTOR > 1


-- Listar os números, a data/hora de saída dos vôos que atendem as rotas 001, 002, 003.
select NRVOO, DTSAIDA, HRSAIDA from T_VOO
where NRROTA_VOO = 001
or NRROTA_VOO = 002
or NRROTA_VOO = 003


-- Listar os nomes dos clientes nascidos no ano de 1992.select NMCLI from dbo.T_CLIENTEwhere DTNASC_CLI LIKE '%1992%'-- Listar sem repetição os números dos vôos em que algum cliente viajou sem desconto.
select NRVOO_RSV from dbo.T_RESERVA
where PCDESC_RSV is null


-- Listar os códigos dos equipamentos com a quantidade de motores desconhecida.
select CDEQU from dbo.T_EQUIPAMENTO
where QTMOTOR is null


-- Listar o código dos clientes de sexo conhecido.
select CDCLI from dbo.T_CLIENTE
where  IDSEX_CLI is null


-- Listar os números das rotas que partem dos aeroportos GALEÃO (GIG), SANTOS DUMONT (SDU),
-- ou GUARULHOS (GRU) .
select NRROTA_VOO from T_ROTA
where CDAEROP_ORI = 'GIG'
or CDAEROP_ORI = 'GRU'
or CDAEROP_ORI = 'SDU'


-- Listar os números das rotas que não chegam aos aeroportos SANTOS DUMONT (SDU), GALEÃO (GIG),
-- CONFINS (CNF) ou GUARULHOS (GRU).
select * from T_ROTA
where CDAEROP_DES not in ('GIG', 'GRU', 'SDU')


-- Listar os números, a data/hora de saída dos vôos que partam antes das 6 da manhã e
-- não atendem as rotas 001, 002, 003.
select NRVOO, DTSAIDA, HRSAIDA from dbo.T_VOO
where HRSAIDA < '06:00:00.000'
and NRROTA_VOO not in (001, 002, 003)

-- Listar os códigos e nomes dos equipamentos cujo tipo de propulsão seja motor (“M”) e não sejam "JATO".
select CDEQU from dbo.T_EQUIPAMENTO
where IDTIP_PROP = 'M'
and DCTIP_EQP not in ('Jato')


-- Listar o nome do cliente e o código do respectivo responsável para os que nasceram
-- em data desconhecida.
select NMCLI, CDCLI from dbo.T_CLIENTE
where DTNASC_CLI is null


-- Listar os nomes dos equipamentos que tem propulsão com 2 motores.
select * from dbo.T_EQUIPAMENTO
where QTMOTOR = 2


-- Listar os códigos e nomes dos equipamentos que sejam a jato e transportem mais
-- de 100 pessoas, ou tenham propulsão a motor e transportem menos de 20 pessoas.
select * from dbo.T_EQUIPAMENTO
where DCTIP_EQP = 'Jato'
and QTPASSAG > 100
or IDTIP_PROP = 'M'
and QTPASSAG < 20


-- Listar os nomes das companhias cujo código do país ou da companhia contenham as letras "B" ou "R".
select * from dbo.T_COMPANHIA


-- Listar os vôos disponíveis cuja data de saída estejam programados para os dias de 01 e
-- 10 de janeiro de 1993 e que não atendam a rota 001. Na listagem, atrasá-los em 28
-- dias.



-- Listar o nome, a data de nascimento e a idade de todos os clientes brasileiros (BR),
-- japoneses (JA) ou franceses (FR).