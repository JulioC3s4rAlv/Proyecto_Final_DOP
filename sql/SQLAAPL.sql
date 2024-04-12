use Proyecto_Parcial;

IF NOT EXISTS (SELECT * FROM SYS.TABLES WHERE object_id=OBJECT_ID(N'dbo.aapl') AND type='U')
CREATE TABLE aapl(Dia Date,
Abierto FLOAT ,
ALTO FLOAT,
BAJO FLOAT,
CERRADO FLOAT,
Adj_Close FLOAT,
Volume FLOAT)
GO


truncate table dbo.aapl;

BULK INSERT dbo.aapl
FROM 'C:\Users\Usuario\Desktop\Proyecto_parcial\python\dataset\AAPL.csv' --UBICACION DE MI ARCHIVO
WITH
(
 FIRSTROW = 2, --empieza a insertar data desde la fila 2, porque la 1era fila es la cabecera del archivo
 FIELDTERMINATOR = ',', --delimitador de las columnas
 ROWTERMINATOR = '0x0a' --delimitador de las filas, salto de linea
)
GO
select * from aapl;
