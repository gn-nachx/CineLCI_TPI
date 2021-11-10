USE SistCine
GO
-- Consultas 2da entrega
/* 1. Presentar las peliculas de determinado genero en un SP que recibe como parametro el id del genero
retornando la pelicula con su respectivo genero */
CREATE PROC Peliculas_Genero
@idgenero INT
AS
BEGIN
SELECT id_pelicula 'Id pelicula', nombre 'Titulo', p.id_genero 'Id genero', gp.genero 'Genero'
FROM Peliculas p JOIN Generos_Peliculas gp ON p.id_genero = gp.id_genero
WHERE p.id_genero = @idgenero
END

/* 2. Peliculas mas vistas*/
SELECT TOP 1 nombre, director,duracion_min, COUNT(dc.id_pelicula) 'Entradas vendidas'
FROM peliculas p JOIN detalle_comprobante dc ON p.id_pelicula=dc.id_pelicula
GROUP BY nombre, director, duracion_min
ORDER BY 4 DESC

/* 3. Clasificacion de peliculas con menos asistentes */
SELECT TOP 1 p.nombre 'Titulo', clasificacion 'Clasificacion', COUNT(dc.id_detalle) 'Asistentes'
FROM Peliculas p 
JOIN Detalle_Comprobante dc ON p.id_pelicula = dc.id_pelicula
JOIN Clasificacion_Edad ce ON p.id_clasificacion = ce.id_clasificacion
GROUP BY p.nombre, clasificacion
ORDER BY 3 ASC

/* 4. Listado de clasificaciones con mas asistentes */
SELECT p.nombre 'Titulo', clasificacion 'Clasificacion', COUNT(dc.id_detalle) 'Asistentes'
FROM Peliculas p 
JOIN Detalle_Comprobante dc ON p.id_pelicula = dc.id_pelicula
JOIN Clasificacion_Edad ce ON p.id_clasificacion = ce.id_clasificacion
GROUP BY p.nombre, clasificacion
ORDER BY 3 DESC
GO
/* 5. Registro anual de ventas de entradas por cada pelicula */
CREATE PROC SP_FacturacionAnual
@año INT
AS
BEGIN
SELECT nombre 'Pelicula', SUM(cant_entradas) 'Entradas vendidas', SUM(total) 'Ganancia'
FROM Comprobante c
JOIN Detalle_Comprobante dc ON c.id_comprobante = dc.id_comprobante
JOIN Peliculas p ON dc.id_pelicula = p.id_pelicula
WHERE YEAR(fecha) = @año
GROUP BY nombre
END
GO
/* 6. Consultar cantidad de visitas segun el mes y año */
CREATE PROC SP_VisitasMensuales
@año INT,
@mes INT
AS
BEGIN
SELECT nombre 'Pelicula', SUM(cant_entradas) 'Entradas vendidas', SUM(total) 'Ganancia'
FROM Comprobante c
JOIN Detalle_Comprobante dc ON c.id_comprobante = dc.id_comprobante
JOIN Peliculas p ON dc.id_pelicula = p.id_pelicula
WHERE YEAR(fecha) = @año AND MONTH(fecha) = @mes
GROUP BY nombre
END
go
/* 7. Consulta de funciones a partir de determinado horario */
CREATE PROC SP_ConsultaHorario
@horario DATETIME
AS
BEGIN 
SELECT *
FROM Funciones f
JOIN Peliculas p ON f.id_pelicula = p.id_pelicula
WHERE horario >= @horario
END