SELECT * FROM INE_ENTIDAD_2020;
/*Need change the mistakes in the accents of the column 'NOM_ENT' */
UPDATE INE_DISTRITO_2020
SET NOM_ENT = 'Ciudad de M�xico'
WHERE NOM_ENT like 'Ciudad de M%';

UPDATE INE_DISTRITO_2020 SET NOM_ENT = 'Michoac�n de Ocampo' WHERE NOM_ENT like 'Michoac%'; UPDATE INE_DISTRITO_2020 SET NOM_ENT = 'M�xico' WHERE NOM_ENT like 'M%xico'; 
UPDATE INE_DISTRITO_2020 SET NOM_ENT = 'Nuevo Le�n' WHERE NOM_ENT like 'Nuevo Le%n'; UPDATE INE_DISTRITO_2020 SET NOM_ENT= 'Yucat�n' WHERE NOM_ENT LIKE 'Yuca%';
UPDATE INE_DISTRITO_2020 SET NOM_ENT = 'Quer�taro' WHERE NOM_ENT like 'Quer%'; UPDATE INE_DISTRITO_2020 SET NOM_ENT = 'San Luis Potos�' WHERE NOM_ENT like 'San Luis%';
SELECT*FROM INE_DISTRITO_2020
/*Need change the mistakes in the accents of the column 'COMPLEJIDA */
UPDATE INE_DISTRITO_2020
SET COMPLEJIDA='Concentraci�n Media' WHERE COMPLEJIDA like 'Concentraci%n Media';
SELECT*FROM INE_DISTRITO_2020
/*Select the entities in the column 'COMPLEJIDA' for that not repetive*/
SELECT DISTINCT COMPLEJIDA FROM INE_DISTRITO_2020;
SELECT*FROM INE_DISTRITO_2020
/*Create new columns named as the rows of the column "COMPLEJIDA"*/
ALTER TABLE dbo.INE_DISTRITO_2020
ADD ALT_CON_1 INT, ALT_CON_2 INT, CON_MED INT, CONC1 INT, CONC2 INT, DIS1 INT, DISP2 INT, MUY_DIS1 INT, MUY_DISP2 INT;
SELECT*FROM INE_DISTRITO_2020
/*Change the table for add new columns with the names of the column "COMPLEJIDA" (that is down)*/

/*Altamente Concentrado 1
Altamente Concentrado 2
Concentraci�n Med�a
Concentrado 1
Concentrado 2
Disperso 1
Disperso 2
Muy Disperso 1
Muy Disperso 2*/

/*Create Dummies in the column "COMPLEJIDA"*/
SELECT *FROM INE_DISTRITO_2020 ORDER BY COMPLEJIDA;
SELECT DISTINCT  CONCAT('WHERE COMPLEJIDA = ''', COMPLEJIDA, ''';') FROM INE_DISTRITO_2020;

UPDATE INE_DISTRITO_2020 SET ALT_CON_1 = 0, ALT_CON_2 = 0,CON_MED = 0, CONC1 = 0, CONC2 = 0, DIS1 = 0, DISP2 = 0, MUY_DIS1 = 0, MUY_DISP2= 0;

UPDATE INE_DISTRITO_2020 SET ALT_CON_1 = 1 WHERE COMPLEJIDA = 'Altamente Concentrado 1'; UPDATE INE_DISTRITO_2020 SET ALT_CON_2 = 1 WHERE COMPLEJIDA = 'Altamente Concentrado 2';
UPDATE INE_DISTRITO_2020 SET CON_MED = 1 WHERE COMPLEJIDA = 'Concentraci�n Media'; UPDATE INE_DISTRITO_2020 SET CONC1 = 1 WHERE COMPLEJIDA = 'Concentrado 1';
UPDATE INE_DISTRITO_2020 SET CONC2 = 1 WHERE COMPLEJIDA = 'Concentrado 2'; UPDATE INE_DISTRITO_2020 SET DIS1 = 1 WHERE COMPLEJIDA = 'Disperso 1';
UPDATE INE_DISTRITO_2020 SET DISP2 = 1 WHERE COMPLEJIDA = 'Disperso 2'; UPDATE INE_DISTRITO_2020 SET MUY_DIS1 = 1 WHERE COMPLEJIDA = 'Muy Disperso 1'; 
UPDATE INE_DISTRITO_2020 SET MUY_DISP2 = 1 WHERE COMPLEJIDA = 'Muy Disperso 2';
SELECT*FROM INE_DISTRITO_2020




