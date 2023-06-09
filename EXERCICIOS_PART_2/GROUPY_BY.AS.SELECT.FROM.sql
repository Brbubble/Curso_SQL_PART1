
SELECT CPF, NOME, BAIRRO, CIDADE FROM TABELA_DE_CLIENTES;

SELECT CPF AS IDENTIFICADOR, NOME AS [NOME DE CLIENTE], 
BAIRRO, CIDADE FROM TABELA_DE_CLIENTES TDC;

SELECT TDC.CPF, TDC.NOME, TDC. BAIRRO FROM TABELA_DE_CLIENTES TDC;

SELECT * FROM TABELA_DE_PRODUTOS WHERE 1=1; --True

SELECT * FROM TABELA_DE_PRODUTOS WHERE 1=0; -- False

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Laranja';

SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE > 18;

SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE < = 18;

SELECT * FROM TABELA_DE_CLIENTES WHERE IDADE <> 18;

SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO >= 'Lapa';

SELECT CIDADE, SUM(IDADE) AS IDADE, SUM(LIMITE_DE_CREDITO) 
FROM TABELA_DE_CLIENTES GROUP BY CIDADE;


SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO FROM TABELA_DE_CLIENTES GROUP BY ESTADO HAVING SUM(LIMITE_DE_CREDITO) >=500;