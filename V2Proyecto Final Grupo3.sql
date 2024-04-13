-- Crear Base de datos
CREATE DATABASE BIBLIOTECA_PRESTAMOS

GO


USE BIBLIOTECA_PRESTAMOS

GO
-- Create tables para Autor, Libro, Prestamo and Estudiantes

CREATE TABLE AUTOR
(IDAutor INT,
Nombre NVARCHAR(60),
Apellido NVARCHAR(60),
Nacionalidad NVARCHAR(50),
CONSTRAINT PK_AUTOR PRIMARY KEY (IDAutor));


GO

CREATE TABLE LIBRO 
(IDLibro INT,
IDAutor INT,
Titulo NVARCHAR(100),
Editorial NVARCHAR(50), 
Area NVARCHAR (50),
CONSTRAINT PK_LIBRO PRIMARY KEY (IDLibro),
CONSTRAINT FK_IDAutor FOREIGN KEY (IDAutor) REFERENCES AUTOR);


GO

CREATE TABLE ESTUDIANTES
(Idlector INT,
Cedula INT,
Nombre VARCHAR(50),
Apellido VARCHAR(50),
Direccion VARCHAR(150),
Carrera VARCHAR(50),
Edad INT,
CONSTRAINT PK_ESTUDIANTES PRIMARY KEY (Idlector)
) ;

GO

CREATE TABLE PRESTAMOS
(IdLibro INT, 
IdLector INT, 
FechaPrestamo DATETIME, 
FechaDevolucion DATETIME,
Devuelto DATETIME,
CONSTRAINT FK_IdLibro FOREIGN KEY (IdLibro) REFERENCES LIBRO,
CONSTRAINT FK_Idlector FOREIGN KEY (Idlector) REFERENCES ESTUDIANTES);


CHECKPOINT

Select *

FROM AUTOR

Select *

FROM LIBRO

Select *

FROM ESTUDIANTES

Select *

FROM PRESTAMOS

GO

-- Insertar datos para las tablas de Libro, 

-- Activar IDENTITY_INSERT

INSERT INTO AUTOR VALUES (1,'Miguel de Cervantes','Saavedra','Espana');
INSERT INTO AUTOR VALUES (2,'William','Faulkner','USA');
INSERT INTO AUTOR VALUES (3,'Antoine','Saint Exupery','Francia');
INSERT INTO AUTOR VALUES (4,'Nicolas','Maquiavelo','Italia');
INSERT INTO AUTOR VALUES (5,'Henry','Kissinger','Alemania');
INSERT INTO AUTOR VALUES (6,'Kitty','Kelley','Gran Bretana');
INSERT INTO AUTOR VALUES (7,'Henry','Pu Yi','China');
INSERT INTO AUTOR VALUES (8,'Benito','Perez Galdos','Espana');
INSERT INTO AUTOR VALUES (9,'Jose Manuel','Alarcon Aguin','Espana');
INSERT INTO AUTOR VALUES (10,'Federico G','Rudolph','Espana');
INSERT INTO AUTOR VALUES (11,'Guillermo','Cicileo','Argentina');
INSERT INTO AUTOR VALUES (12,'Isaias, Jesus','Una, San Martin','Espana');
INSERT INTO AUTOR VALUES (13,'Francisco, Saturnino, Manuel','Lopez, Maldonado, Rusa','Espana');
INSERT INTO AUTOR VALUES (14,'Mario','Benedetti','Uruguay');
INSERT INTO AUTOR VALUES (15,'Gabriela','Mistral','Chile');

GO

INSERT INTO LIBRO VALUES('1','1','Don Quijote de la Mancha I','Anaya','Caballeresco');
INSERT INTO LIBRO VALUES('2','1','Don Quijote de la Mancha II','Anaya','Caballeresco');
INSERT INTO LIBRO VALUES('3','2','Historias de Nueva Orleans','Alfaguara','Novela');
INSERT INTO LIBRO VALUES('4','3','El Principito','Andina','Aventura');
INSERT INTO LIBRO VALUES('5','4','El Principe','S.M.','Politico');
INSERT INTO LIBRO VALUES('6','5','Diplomacia','S.M.','Politico');
INSERT INTO LIBRO VALUES('7','6','Los Windsor','Plaza and Janes','Biografias');
INSERT INTO LIBRO VALUES('8','7','El Ultimo Emperador','Caralt','Autobiografias');
INSERT INTO LIBRO VALUES('9','8','Fortunata y Jacinta','Plaza and Janes','Novela');
INSERT INTO LIBRO VALUES('10','9','Programacion Web con Visual Studio y ASP.NET 2.0','Krasis Press','Informatica');
INSERT INTO LIBRO VALUES('11','10','Introduccion a Visual Studio.NET','Bubok','Informatica');
INSERT INTO LIBRO VALUES('12','11','IPv6 para todos Guia de uso y Aplicacion para diversos entornos','Capitulo Argentino','Informatica');
INSERT INTO LIBRO VALUES('13','12','Calculo en una variable 701 Ejercicios Desarrollados','Alfa Omega','Ciencias');
INSERT INTO LIBRO VALUES('14','13','Analisis de Circuitos Lineales 3era Ed.','Alfa Omega','Ciencias');
INSERT INTO LIBRO VALUES('15','14','La Tregua','Sudamericana','Ficcion y Literatura');

GO

INSERT INTO ESTUDIANTES VALUES (1,603110472,'Ines','Maza Rodriguez','Calle Falsa 11 ,Casa Falsa 77','Contaduria',18);
INSERT INTO ESTUDIANTES VALUES (2,137930998,'Jose Manuel','Melendez Garcia','Calle Falsa 89 ,Casa Falsa 93','Cs Politicas',23);
INSERT INTO ESTUDIANTES VALUES (3,104558258,'Miguel','','Calle Falsa 85 ,Casa Falsa 6','Administracion',20);
INSERT INTO ESTUDIANTES VALUES (4,495972450,'Eva','','Calle Falsa 19 ,Casa Falsa 51','Informatica',20);
INSERT INTO ESTUDIANTES VALUES (5,638249898,'Yolanda','Lozano Encabo','Calle Falsa 97 ,Casa Falsa 18','Informatica',21);
INSERT INTO ESTUDIANTES VALUES (6,491822303,'Juan Luis','Lopez Vazquez','Calle Falsa 80 ,Casa Falsa 64','Arquitectura',26);
INSERT INTO ESTUDIANTES VALUES (7,261113752,'Louisa','Lopez Rubin','Calle Falsa 96 ,Casa Falsa 94','Cs Politicas',19);
INSERT INTO ESTUDIANTES VALUES (8,487549552,'Anselmo','Melendez Garcia','Calle Falsa 19 ,Casa Falsa 0','Derecho',19);
INSERT INTO ESTUDIANTES VALUES (9,253661051,'Gudencio','Noriega Garcia','Calle Falsa 30 ,Casa Falsa 55','Quimica',18);
INSERT INTO ESTUDIANTES VALUES (10,235579827,'Genaro','Lozano Marina','Calle Falsa 36 ,Casa Falsa 78','Fisica',21);
INSERT INTO ESTUDIANTES VALUES (11,135014572,'Artemio','Armesto Rodriguez','Calle Falsa 95 ,Casa Falsa 91','Informatica',22);
INSERT INTO ESTUDIANTES VALUES (12,154708519,'Raul','Valdez Alanes','Calle Falsa 98 ,Casa Falsa 24','Cs Sociales',23);
INSERT INTO ESTUDIANTES VALUES (13,479048250,'Mario','Arias Fernandez','Calle Falsa 60 ,Casa Falsa 48','Abogacia',24);
INSERT INTO ESTUDIANTES VALUES (14,131600532,'Juan','Anaya Rugarcia','Calle Falsa 18 ,Casa Falsa 35','Medicina',26);
INSERT INTO ESTUDIANTES VALUES (15,277450086,'Gabriela','Alavarez Lopez','Calle Falsa 31 ,Casa Falsa 1','Criminalistica',19);

GO

INSERT INTO PRESTAMOS VALUES ('3','1','03/25/2012 00:00:00','04/10/2012 00:00:00',NULL);
INSERT INTO PRESTAMOS VALUES ('2','9','02/03/2013 00:00:00','02/20/2013 00:00:00','02/25/2013 00:00:00');
INSERT INTO PRESTAMOS VALUES ('5','8','02/18/2013 00:00:00',NULL,'02/25/2013 00:00:00');
INSERT INTO PRESTAMOS VALUES ('6','5','02/21/2013 00:00:00','03/03/2013 00:00:00','03/05/2013 00:00:00');
INSERT INTO PRESTAMOS VALUES ('12','9','02/21/1999 00:00:00','03/05/2013 00:00:00',NULL);
INSERT INTO PRESTAMOS VALUES ('4','2','02/26/2013 00:00:00','03/07/2013 00:00:00','03/01/2013 00:00:00');
INSERT INTO PRESTAMOS VALUES ('3','4',NULL,'03/07/2013 00:00:00','03/08/2013 00:00:00');
INSERT INTO PRESTAMOS VALUES ('1','1','03/01/2012 00:00:00','04/10/2012 00:00:00',NULL);
INSERT INTO PRESTAMOS VALUES ('6','3','03/03/2013 00:00:00','03/09/2013 00:00:00','03/09/2013 00:00:00');
INSERT INTO PRESTAMOS VALUES ('3','7','03/03/2013 00:00:00','03/18/2013 00:00:00','03/15/2013 00:00:00');
INSERT INTO PRESTAMOS VALUES ('2','3','03/05/2013 00:00:00','03/22/2013 00:00:00','03/20/2013 00:00:00');
INSERT INTO PRESTAMOS VALUES ('4','12','04/03/2013 00:00:00','04/15/2013 00:00:00',NULL);
INSERT INTO PRESTAMOS VALUES ('2','6','03/28/2013 00:00:00','04/10/2013 00:00:00',NULL);
INSERT INTO PRESTAMOS VALUES ('1','7','03/12/2013 00:00:00','03/24/2013 00:00:00','03/20/2013 00:00:00');
INSERT INTO PRESTAMOS VALUES ('12','2','03/18/2013 00:00:00','04/03/2013 00:00:00','04/02/2013 00:00:00');


CHECKPOINT

Select *

FROM AUTOR

Select *

FROM LIBRO

Select *

FROM ESTUDIANTES

SELECT *

FROM PRESTAMOS

GO

-- Consultas --

--1.	Listar todos los datos de los autores

select * from AUTOR

GO

--2.	Listar nombre, apellido y edad de los estudiantes

Select 
E.Nombre,
E.Apellido,
E.Edad
FROM ESTUDIANTES E
order by E.Nombre 

GO

--3.	Cuales estudiantes pertenecen a la carrera de “Informatica”

Select 
E.Nombre,
E.Apellido
FROM ESTUDIANTES E
WHERE E.Carrera = 'Informatica'
order by E.Nombre 

GO

--4.	Listar los nombres y apellido de los estudiantes cuyo nombre comience con la letra “G”

Select 
E.Nombre,
E.Apellido
FROM ESTUDIANTES E
WHERE E.Nombre like 'G%'
order by E.Nombre 

GO

--5. ¿Quien es el autor del libro “Introducción a Visual Studio .NET”?-- 

SELECT L.Titulo as Libro, A.Nombre as Nombre, A.Apellido as Apellido
From LIBRO L
Right Join Autor A
ON L.IDAutor = A.IDAutor
WHERE L.Titulo = 'Introduccion a Visual Studio.NET';

GO

--6. Listar nombre y apellido de los estudiantes a los que se les prestaron libros de “Bases de Datos”

SELECT E.Nombre as Nombre, E.Apellido as Apellido, L.Titulo as Libro
FROM PRESTAMOS P
Join Estudiantes E
ON E.Idlector = P.IdLector
Right Join Libro L
ON L.IDLibro = P.IdLibro
WHERE L.Area = 'Bases de Datos';

GO

--7. Que libros no son del area de “INTERNET”

SELECT *
FROM LIBRO L
WHERE L.Area != 'Internet';

GO

--8. Que Libro se prestó al lector “Raúl Valdez Alanes”--

SELECT E.Nombre as Nombre, E.Apellido as Apellido, L.Titulo as Libro
FROM PRESTAMOS P
JOIN LIBRO L
ON P.IdLibro = L.IDLibro
RIGHT JOIN ESTUDIANTES E
ON P.IdLector = E.Idlector
WHERE E.Nombre = 'Raul';

GO

-- 9.	Listar el nombre y el apellido del estudiante de menor edad*/

select top 1 Nombre, Apellido
from ESTUDIANTES
order by Edad asc

GO

-- 10.	Listar nombre y apellido de los estudiantes a los que se les prestaron libros de “Bases de Datos”*/

select 
ESTUDIANTES.Nombre as 'Nombre',
ESTUDIANTES.Apellido as 'Apellido'
from ESTUDIANTES
join PRESTAMOS on ESTUDIANTES.Idlector = PRESTAMOS.IdLector
join LIBRO on PRESTAMOS.IdLibro = PRESTAMOS.IdLibro
where LIBRO.Area = 'Bases de Datos'

GO
-- 11.	Listar los libros de la editorial “Alfa Omega”*/

select LIBRO.Titulo
from LIBRO
where Editorial = 'Alfa Omega';

GO

-- 12.	Listar los libros que pertenecen al autor “Mario Benedetti”*/*/

select 
LIBRO.Titulo
from AUTOR
join LIBRO on AUTOR.Nombre = 'Mario' and AUTOR.Apellido = 'Benedetti'
where LIBRO.IDAutor = AUTOR.IDAutor

GO
-- 13. ¿Existen estudiantes que tengan el mismo nombre que un autor (solo el nombre)?

SELECT DISTINCT E.Nombre AS NombreEstudiante, A.Nombre AS NombreAutor
FROM Estudiantes E
JOIN Autor A ON E.Nombre = A.Nombre;

GO

-- 14. Listar nombre y apellido de los autores con sus correspondientes libros ordenados por area

SELECT 
    A.Nombre AS NombreAutor,
    A.Apellido AS ApellidoAutor,
    L.Titulo AS TituloLibro,
    L.Area
FROM 
    Autor A
JOIN 
    Libro L ON A.IdAutor = L.IdAutor
ORDER BY 
    L.Area, A.Nombre, A.Apellido;

	GO

-- 15. Listar area del libro, titulo del libro, Id del libro y fecha de prestamo (hacerlo a traves de la creación de una vista)

CREATE VIEW VistaPrestamos AS
	SELECT 
    L.Area,
    L.Titulo AS TituloLibro,
    P.Idlibro,
    P.FechaPrestamo
FROM 
    Libro L
JOIN 
    PRESTAMOS P ON L.IdLibro = P.IdLibro;

GO

SELECT * FROM VistaPrestamos


GO

-- 16. Listar los titulos de los libros que debian devolverse el 10/04/12

SELECT 
    L.Titulo AS TituloLibro
FROM 
    PRESTAMOS P
JOIN 
    Libro L ON P.IdLibro = L.IdLibro
WHERE 
    P.FechaDevolucion = '2012-04-10';

	

GO

-- 17.	Hallar la suma de las edades de los estudiantes


Select SUM(Edad) AS SumaEdades
From ESTUDIANTES

GO

-- 18.	Hallar el promedio de edad de los estudiantes

Select AVG(Edad) AS EdadPromedio
From ESTUDIANTES
GO

-- 19.	Listar el nombre y el apellido de los estudiantes cuya edad es mayor al promedio

Select 
Nombre, 
Apellido, 
Edad
From ESTUDIANTES
where Edad>21

GO

-- 20.	Listar cedula del estudiante, nombre, apellido, carrera, Id del libro y fecha de prestamo (hacerlo a traves de una vista).

Create View Vista_Estudiantes_Prestamos1 as
Select 
E.Cedula, 
E.Nombre, 
E.Apellido,
E.Carrera,
P.IDLibro,
P.FechaPrestamo
From ESTUDIANTES E
Left join Prestamos P
On E.IdLector = P.IdLector;

GO

Select * from Vista_Estudiantes_Prestamos1

-- FIN --