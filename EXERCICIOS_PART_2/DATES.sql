SELECT GETDATE();

SELECT DATEADD(DAY, 10, GETDATE());

SELECT DATEADD(DAY,-48, GETDATE()) AS DATA_48_DIAS_ATRAS

SELECT DATEDIFF(DAY, '2022-01-01', GETDATE()) AS DIAS_DESDE_INICIO_ANO

SELECT GETDATE() AS DATA_HOJE, DATEADD(DAY, 10, GETDATE()) AS DATA_DAQUI_10_DIAS

SELECT DATEDIFF(MONTH, '2022-01-01', GETDATE()) AS MESES_DESDE_INICIO_ANO

SELECT DATEDIFF(HOUR, '2022-01-01', GETDATE()) AS HORAS_DESDE_INICIO_ANO

SELECT DATEPART(DAY, GETDATE()) AS DIA_DE_HOJE

SELECT ISDATE(DATETIMEFROMPARTS(2022, 02, 28, 00, 00, 00, 00))

SELECT NOME + ' nasceu em ' + 
DATENAME (WEEKDAY,DATA_DE_NASCIMENTO) + ',' +
DATENAME (DAY,DATA_DE_NASCIMENTO) + ' de ' +
DATENAME(MONTH, DATA_DE_NASCIMENTO) + ' de ' +
DATENAME(YEAR, DATA_DE_NASCIMENTO) AS DATA_EXTENSO
FROM TABELA_DE_CLIENTES;