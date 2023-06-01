USE [ROUPAS_VENDAS]
GO

UPDATE [dbo].[TABELA DE CLIENTES]
   SET [CPF] = <CPF, char(11),>
      ,[NOME] = <NOME, varchar(100),>
      ,[ENDERECO1] = <ENDERECO1, varchar(150),>
      ,[ENDERECO2] = <ENDERECO2, varchar(150),>
      ,[BAIRRO] = <BAIRRO, varchar(50),>
      ,[CIDADE] = <CIDADE, varchar(50),>
      ,[ESTADO] = <ESTADO, char(2),>
      ,[CEP] = <CEP, char(8),>
      ,[DATA DE NASCIMENTO] = <DATA DE NASCIMENTO, date,>
      ,[IDADE] = <IDADE, smallint,>
      ,[GENERO] = <GENERO, char(1),>
      ,[LIMITE DE CREDITO] = <LIMITE DE CREDITO, money,>
      ,[VOLUME DE COMPRA] = <VOLUME DE COMPRA, float,>
      ,[PRIMEIRA COMPRA] = <PRIMEIRA COMPRA, bit,>
 WHERE <Critérios de Pesquisa,,>
GO

