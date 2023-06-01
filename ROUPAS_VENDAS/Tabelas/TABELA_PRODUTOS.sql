USE [ROUPAS_VENDAS]
GO

INSERT INTO [dbo].[TABELA_DE_PRODUTOS]
           ([CODIGO DO PRODUTO]
           ,[NOME DO PRODUTO]
           ,[PACOTE]
           ,[TAMANHO]
           ,[TIPO DA PECA]
           ,[MARCA]
           ,[PRECO DE LISTA])
     VALUES
           (<CODIGO DO PRODUTO, varchar(20),>
           ,<NOME DO PRODUTO, varchar(150),>
           ,<PACOTE, varchar(50),>
           ,<TAMANHO, varchar(50),>
           ,<TIPO DA PECA, varchar(50),>
           ,<MARCA, varchar(50),>
           ,<PRECO DE LISTA, smallmoney,>)
GO

