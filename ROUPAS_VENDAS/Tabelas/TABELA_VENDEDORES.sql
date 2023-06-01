USE [ROUPAS_VENDAS]
GO

UPDATE [dbo].[TABELA DE VENDEDORES]
   SET [MATRICULA] = <MATRICULA, varchar(5),>
      ,[NOME] = <NOME, varchar(100),>
      ,[CIDADE] = <CIDADE, varchar(100),>
      ,[PERCENTUAL COMISSÃO] = <PERCENTUAL COMISSÃO, float,>
      ,[DATA INICIO] = <DATA INICIO, date,>
      ,[TEM DEPENDENTE] = <TEM DEPENDENTE, bit,>
 WHERE <Critérios de Pesquisa,,>
GO

