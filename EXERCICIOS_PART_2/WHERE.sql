SELECT  * FROM TABELA_DE_PRODUTOS 
WHERE SABOR LIKE ('%Limao');

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR LIKE ('maca%');

SELECT * FROM TABELA_DE_PRODUTOS 
WHERE SABOR LIKE ('Morango%') AND EMBALAGEM = ('PET');

SELECT DISTINCT EMBALAGEM FROM TABELA_DE_PRODUTOS;

SELECT TOP 5 * FROM TABELA_DE_PRODUTOS;

SELECT TOP 5 * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Maca';

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA ASC;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA ASC;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY NOME_DO_PRODUTO;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY EMBALAGEM, NOME_DO_PRODUTO;

SELECT * FROM TABELA_DE_PRODUTOS ORDER BY EMBALAGEM DESC, NOME_DO_PRODUTO DESC;

SELECT TOP 5 * FROM TABELA_DE_PRODUTOS ORDER BY PRECO_DE_LISTA DESC;


SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT (SABOR = 'Manga' AND TAMANHO = '470 ml');
SELECT * FROM TABELA_DE_PRODUTOS WHERE NOT SABOR = 'Manga' AND TAMANHO = '470 ml';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR = 'Manga' OR SABOR = 'Laranja ' OR SABOR = 'Melancia';

SELECT * FROM TABELA_DE_PRODUTOS WHERE SABOR in ('Manga','Laranja ','Melancia');

SELECT * FROM TABELA_DE_PRODUTOS WHERE (SABOR in ('Manga','Laranja ','Melancia')) AND TAMANHO = '1 Litro';

SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('Rio de Janeiro','Sao Paulo') AND IDADE >= 20;
SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('Rio de Janeiro','Sao Paulo') AND (IDADE >= 20 AND IDADE <= 25);
SELECT * FROM TABELA_DE_CLIENTES WHERE CIDADE IN ('Rio de Janeiro','Sao Paulo') AND (IDADE BETWEEN 20 AND 25)
