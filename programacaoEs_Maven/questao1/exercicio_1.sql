--1.Fazer em SQL Server os seguintes algoritmos:
  
-- a) Fazer um algoritmo que leia 1 n�mero e mostre se s�o m�ltiplos de 2,3,5 ou nenhum deles
  
	DECLARE @num INT

	SET @num = 13

	IF(@num % 2 = 0)
	BEGIN
		PRINT('O n�mero � multiplo de 2')
	END
		ELSE IF(@num % 3 = 0)
		BEGIN
			PRINT('O n�mero � multiplo de 3')
		END
			ELSE IF(@num % 5 = 0)
			BEGIN
				PRINT('O n�mero � multiplo de 5')
			END
				ELSE
					PRINT('O n�mero n�o � multiplo de 2, 3 ou 5.')

-- b)  Fazer um algoritmo que leia 3 n�meros e mostre o maior e o menor
  
	DECLARE @num1 INT,
			@num2 INT,
			@num3 INT

	SET @num1 = 1
	SET @num2 = 2
	SET @num3 = 3

	IF(@num1 > @num2 AND @num1 > @num3) 
	BEGIN
		PRINT('O maior n�mero �: ' + CAST(@num1 AS CHAR(3)))
	END
		ELSE IF(@num2 > @num1 AND @num2 > @num3)
		BEGIN
			PRINT('O maior n�mero �: ' + CAST(@num2 AS CHAR(3)))
		END
			ELSE IF(@num3 > @num1 AND @num3 > @num2)
			BEGIN
				PRINT('O maior n�mero �: ' + CAST(@num3 AS CHAR(3)))
			END

	IF(@num1 < @num2 AND @num1 < @num3) 
	BEGIN
		PRINT('O menor n�mero �: ' + CAST(@num1 AS CHAR(3)))
	END
		ELSE IF(@num2 < @num1 AND @num2 < @num3)
		BEGIN
			PRINT('O menor n�mero �: ' + CAST(@num2 AS CHAR(3)))
		END
			ELSE IF(@num3 < @num1 AND @num3 < @num2)
			BEGIN
				PRINT('O menor n�mero �: ' + CAST(@num3 AS CHAR(3)))
			END

-- c) Fazer um algoritmo que calcule os 15 primeiros termos da s�rie 1,1,2,3,5,8,13,21,34, 55, 89, 144, 233, 377, 610 E calcule a soma dos 15 termos

	DECLARE @numAtual INT,
			@numAnterior INT,
			@resp INT,
			@aux INT

	SET @numAtual = 1
	SET @numAnterior = 0
	SET @resp = 0
	SET @aux = 1

	WHILE(@aux <= 15)
	BEGIN
		SET @resp = @numAnterior + @numAtual
		PRINT(@resp)

		SET @numAnterior = @numAtual
		SET @numAtual = @resp
		
		SET @aux = @aux + 1
	END

-- d) Fazer um algoritmo que separa uma frase, colocando todas as letras em mai�sculo e em min�sculo (Usar fun��es UPPER e LOWER)
  
  CREATE DATABASE exec1
  GO
  USE exec1
  GO
  CREATE TABLE frase(
  id INT NOT NULL,
  frase VARCHAR(100)
  PRIMARY KEY(id)
  )

  DECLARE @id		INT,
			@frase	VARCHAR(100)

SET @id = (SELECT id FROM frase WHERE id = 1)
SET @frase = (SELECT UPPER(SUBSTRING(frase,1,5)) + LOWER(SUBSTRING(frase,6,5)) FROM frase WHERE id = 1)

PRINT ('id da frase: '+CAST(@id AS VARCHAR(3)))
PRINT ('frase: '+@frase)


-- e) Fazer um algoritmo que inverta uma palavra (Usar a fun��o SUBSTRING)

	DECLARE @id INT,
			@frase VARCHAR(100)

	SET @id = (SELECT id FROM frase WHERE id = 2)
	SET @frase = (SELECT SUBSTRING(frase,4,1) + SUBSTRING(frase,3,1) + SUBSTRING(frase,2,1) + SUBSTRING(frase,1,1) FROM frase WHERE id = 2)

	PRINT('A palavra invertida �: ' + @frase)
