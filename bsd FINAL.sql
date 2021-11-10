CREATE DATABASE LCI2_INT
USE LCI2_INT

-- tabla forma de compras
CREATE TABLE Formas_de_compra(
id_tipocompra INT IDENTITY (1,1),
forma varchar (30)
CONSTRAINT pk_formas_de_compra PRIMARY KEY (id_tipocompra))

--tabla forma de pagos
CREATE TABLE formas_de_pago(
id_formapago INT IDENTITY (1,1),
descripcion VARCHAR (50)
CONSTRAINT pk_formas_de_pago PRIMARY KEY (id_formapago))

---------- FALTA TABLA COMPROBANTE

--tabla Clasificacion edad
CREATE TABLE clasificacion_edad(
id_clasificacion INT IDENTITY (1,1),
clasificacion VARCHAR (30)
CONSTRAINT pk_clasificacion_edad PRIMARY KEY (id_clasificacion))

--tabla Genero peliculas
CREATE TABLE generos_peliculas(
id_genero INT IDENTITY (1,1),
genero VARCHAR (30)
CONSTRAINT pk_generos_peliculas PRIMARY KEY (id_genero))

--tabla peliculas ?????????????????
CREATE TABLE peliculas(
id_pelicula INT IDENTITY (1,1),
nombre VARCHAR (50),
director VARCHAR (50),
actores VARCHAR (200),
duracion_min INT,
id_genero INT, ------
id_clasificacion INT ----
CONSTRAINT pk_peliculas PRIMARY KEY (id_pelicula),
CONSTRAINT fk_peliculas_generos_peliculas FOREiGN KEY (id_genero) REFERENCES generos_peliculas (id_genero),
CONSTRAINT fk_peliculas_clasificacion_edad FOREIGN KEY (id_clasificacion) REFERENCES clasificacion_edad (id_clasificacion))

--tabla tipo_salas
CREATE TABLE tipo_salas(
id_tiposala INT IDENTITY (1,1),
nombre VARCHAR (25)
CONSTRAINT pk_tipo_salas PRIMARY KEY  (id_tiposala))

-- tabla salas
CREATE TABLE salas (
id_sala INT IDENTITY (1,1),
id_tiposala INT
CONSTRAINT pk_salas PRIMARY KEY (id_sala),
CONSTRAINT fk_salas_tipo_salas FOREIGN KEY (id_tiposala) REFERENCES tipo_salas (id_tiposala))

-- tabla promociones
CREATE TABLE promociones(
id_promo INT IDENTITY (1,1),
descripcion VARCHAR (50),
f_caducidad date
CONSTRAINT pk_promociones PRIMARY KEY (id_promo))

--tabla funciones
CREATE TABLE funciones (
id_funcion INT IDENTITY (1,1),
horario time,
id_pelicula int,------
id_sala int, --------
id_promo int--------
CONSTRAINT pk_funciones PRIMARY KEY (id_funcion),
CONSTRAINT fk_funciones_peliculas FOREIGN KEY (id_pelicula) REFERENCES peliculas (id_pelicula),
CONSTRAINT fk_funciones_salas FOREIGN KEY (id_sala) REFERENCES salas (id_sala),
CONSTRAINT fk_funciones_promociones FOREIGN KEY (id_promo) REFERENCES promociones (id_promo))



-- tabla reservas
CREATE TABLE reservas (
id_reserva INT IDENTITY (1,1),
nro_butaca INT,
id_funcion int
CONSTRAINT pk_reservas PRIMARY KEY (id_reserva),
CONSTRAINT fk_reservas_funciones FOREIGN KEY (id_funcion) REFERENCES funciones (id_funcion))

--tabla comprobantes
CREATE TABLE comprobantes (
id_comprobante INT IDENTITY (1,1),
total DECIMAL (4,2),
fecha date,
id_forma_pago int, -----------
id_tipocompra int ------------
CONSTRAINT pk_comprobantes PRIMARY KEY (id_comprobante),
CONSTRAINT fk_comprobantes_forma_de_pago FOREIGN KEY (id_forma_pago) REFERENCES formas_de_pago (id_formapago),
CONSTRAINT fk_comprobantes_forma_de_compra FOREIGN KEY (id_tipocompra) REFERENCES formas_de_compra (id_tipocompra))

-- tabla detalle comprobante
CREATE TABLE  detalle_comprobantes (
id_detalle INT IDENTITY (1,1),
cant_entradas INT,
id_comprobante INT,--------
id_pelicula INT, ----------
id_funcion INT,------------
id_sala INT ----------
CONSTRAINT pk_detalle_comprobante PRIMARY KEY (id_detalle)
CONSTRAINT fk_detalle_comprobantes_comprobantes FOREIGN KEY (id_comprobante) REFERENCES comprobantes (id_comprobante),
CONSTRAINT fk_detalle_comprobante_peliculas FOREIGN KEY (id_pelicula) REFERENCES peliculas (id_pelicula),
CONSTRAINT fk_detalle_comprobante_funciones FOREIGN KEY (id_funcion) REFERENCES funciones (id_funcion),
CONSTRAINT fk_detalle_comprobante_salas FOREIGN KEY (id_sala) REFERENCES salas (id_sala))

--tabla ticket 
CREATE TABLE tickets (
nro_ticket INT IDENTITY (1,1),
nro_butaca int,
id_detalle int
CONSTRAINT pk_tickets PRIMARY KEY (nro_ticket),
CONSTRAINT fk_tickets_detalle_comprobante FOREIGN KEY (id_detalle) REFERENCES detalle_comprobantes (id_detalle))


-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-----------------------------------------------------------------------

--INSERT formas de pago
INSERT INTO formas_de_pago (descripcion)
VALUES ('debito'),('credito')

--SELECT * from formas_de_pago

--- INSERT formas de compra
INSERT INTO Formas_de_compra (forma)
VALUES ('En persona'), ('Internet')

--SELECT * FROM Formas_de_compra

-- INSERT clasificacion edad
INSERT INTO clasificacion_edad (clasificacion)
VALUES ('ATP'),('7+'),('13+'),('16+'),('18+')

--SELECT * FROM clasificacion_edad

-- INSERT generos peliculas
INSERT INTO generos_peliculas (genero)
VALUES ('Accion'),('Aventuras'),('Ciencia Ficcion'),('Comedia'),('Infantil'),('Terror'), ('Drama')

--SELECT * FROM generos_peliculas
--SELECT * FROM clasificacion_edad


-- INSERT peliculas
INSERT INTO peliculas(nombre,id_genero,id_clasificacion,director,actores,duracion_min)
VALUES ('Alerta Roja',1,3,'Rawson Marshall Thurber', 'Dwayne Johnson, Gal Gadot, Ryan Reynolds',115)

INSERT INTO peliculas(nombre,id_genero,id_clasificacion,director,actores,duracion_min)
VALUES ('El Apego',7,4,'Valentin Javier Diment','Jimena Anganuzzi, Lola Berthet',102),
		('Eternals',1,3,'Chloe Zhao','Angelina Jolie, Barry Keoghan, Richard Madden, Kit Harington',157),
		('Chernobil la pelicula',7,3,'Danila Kozlovskiy','Danila Kozlovskiy, Oksana Akinshina',137),
		('Duna',1,3,'Denis Villeneuve','Zendaya Rebecca Ferguson, Timothee Chalamet',156),
		('El Rescate',1,3,'Hicham Hajji','Andy Garcia, Gary Dourdan, Serinda Swan',100),
		('El secreto de maro',7,1,'Alejandro Magnone','Norma Aleandro',85),
		('Espiritus Oscuros',6,4,'Scott Cooper','Jeremy T. Thomas, Jesse Plemons, Keri Russell',99),
		('Halloween Kills',6,4,'David Gordon Green','Andi Matichak, Jamie Lee Curtis, Judy Greer',106),
		('Harry Potter y la piedra filosofal',2,1,'Chris Columbus','Daniel Radcliffe, Emma Watson, Rupert Grint', 153),
		('Ron da error',5,1,'Jean Philippe Vine, Sarah Smith', NULL,107),
		('Sin tiempo para morir',1,3,'Cari Joji Fukunaga','Anna De Armas, Daniel Craig, Rami Malek',163),
		('Venom carnage liberado',1,3,'Andy Serkis','Tom Hardy, Woody Harrelson',98),
		('Yo nena yo princesa',7,1,'Federico Palazzo','Eleonora Wexler, Juan Palomino',120),
		('La familia monster 2',5,1,'Holger Tappe',' Emily Watson, Jason Isaacs, Jessica Brown Findlay',105),
		('Más allá de los dos minutos infinitos',4,4,'Junta Yamaguchi','Gôta Ishida, Kazunari Tosa, Riko Fujitani',70),
		('¡Qué duro es el amor!',4,4,'Hernán Jiménez García','Darren Barnet, Lochlyn Munro, Nina Dobrev',104),
		('The Estate',4,3,'James Kapner','Chris Baker, Eliza Coupe, Greg Finley',85),
		('Mi otra yo',4,4,'Julián Gaviria','Adelaida Buscato, Conny Fernandez, Jessica Cediel',129),
		('Claw',3,3,'Gerald Rascionato','Chynna Walker, Mel Mede, Richard Rennie',81),
		('Extraction Point',3,3,'Franklin Correa','Charles Heimlich, Michael Ciesla, Tara London',72),
		('Warning',3,4,'Agata Alexander','Alice Eve, Annabelle Wallis, Kylie Bunbury',85),
		('Megalodon Rising',3,3,'Brian Nowack','OShay Neal, Tom Sizemore, Wynter Eddins', 93),
		('Paranormal Activity: Next of Kin',6,4,'William Eubank','Emily Bader, Kyli Zion, Roland Buck III',120),
		('Llanto Maldito',6,4,'Andrés Beltrán','Jerónimo Barón, Mario Bolaños, Paula Castaño',90),
		('Finch',7,3,'Miguel Sapochnik','Caleb Jones, Lora Martinez-Cunningham, Tom Hanks', 115),
		('Plan A',7,3,'Doron Paz','August Diehl, Michael Aloni, Sylvia Hoeks',109),
		('A un paso de mí',2,4,'Jose Mario Salas Boza','Esteban Hidalgo, Gustavo Rojas, Johanna Solano',115),
		('Pokémon: Los secretos de la selva',2,2,'Tetsuo Yajima','James Carter Cathcart, Ken yû Horiuchi',99),
		('Family Fox on Expedition',5,2,'Bob Wilbers','Anna Drijver, Levi Otto, Raymonde de Kuyper',72)
--		('Moonbound',5,1,'Ali Samadi Ahadi',85)

--SELECT * FROM peliculas

-- INSERT TIPO DE SALA
INSERT INTO tipo_salas (nombre)
VALUES ('2D'),('3D'),('VIP'),('4D'), ('COMFORT'),('Premium class')

--SELECT * FROM tipo_salas

-- INSERT salas
INSERT INTO salas (id_tiposala)
VALUES (1),(1),(1),(2),(2),(3),(3),(4),(5)

--SELECT * FROM salas
--SELECT * FROM tipo_salas
--SELECT * FROM promociones
--SELECT * FROM peliculas

--INSERT promociones
INSERT INTO promociones (descripcion,f_caducidad)
VALUES ('5','2022-06-01'),('15','2021-12-15'),('20','2021-12-20'),('25','2021-12-30')
--('5','2022-06-01'),
--('15','2021-12-15')
--SELECT * FROM promociones

INSERT INTO promociones (descripcion)
VALUES ('0')

--INSERT funciones
INSERT INTO funciones (id_pelicula,id_sala,horario,id_promo)
VALUES 
		(3,6,'23:45:00',5),(4,6,'22:30:00',5),(4,1,'23:45:00',5) ,(2,2,'22:30:00',5),
		(6,5,'23:45:00',5),(7,6,'21:00:00',5),
		(8,1,'20:20:00',5),(8,4,'22:30:00',5),(9,7,'23:45:00',5),(10,8,'23:45:00',5),(10,8,'22:30:00',5),
		(11,9,'23:45:00',5),(11,9,'22:30:00',5),(5,2,'20:00:00',5),(5,2,'18:45:00',5),
		(14,3,'18:15:00',5),(16,4,'17:30:00',5),
		(18,6,'19:45:00',5),(18,6,'18:30:00',5),(19,7,'20:45:00',5),
		(20,7,'19:30:00',5),(20,7,'18:00:00',5),(21,8,'21:00:00',5),(22,8,'18:30:00',5),(22,8,'17:00:00',5),
		(23,9,'19:45:00',5),(24,9,'18:15:00',5),(24,9,'17:00:00',5),(25,1,'16:15:00',5),
		(26,2,'17:15:00',5),(27,3,'16:45:00',5),(27,3,'15:30:00',5),
		(28,4,'16:00:00',5),(29,5,'18:30:00',5),
		(30,5,'14:00:00',5),

		(7,5,'22:30:00',4),(19,7,'22:00:00',4),
		(3,1,'23:45:00',1),(2,3,'22:30:00',1),(5,4,'23:45:00',2),(5,1,'21:30:00',3),(6,2,'21:30:00',1),
		(9,3,'21:00:00',2),(12,1,'19:00:00',3),(12,1,'17:45:00',1),(14,3,'19:45:00',2),
		(15,4,'21:15:00',3),(15,4,'20:00:00',4),(16,4,'18:45:00',1),(17,5,'21:15:00',1),(17,5,'20:00:00',4),
		(21,8,'19:45:00',4),(23,9,'21:00:00',1),(25,1,'15:00:00',4),(26,2,'15:45:00',3),(28,4,'14:30:00',2),
		(29,5,'17:00:00',2),(30,5,'15:30:00',3)


--SELECT * FROM funciones
--DELETE FROM funciones

INSERT INTO reservas (id_funcion,nro_butaca)
VALUES (1,3),(1,4),(1,5),(1,11),(1,19),
		(2,5),(2,6),(2,7),(2,11),(2,12),(2,17),
		(3,8),(3,9),(3,14),(3,15),(3,18),(3,20),
		(4,3),(4,7),(4,13),(4,19),(4,20),
		(5,2),(5,3),(5,4),(5,9),(5,10),(5,12),(5,16),(5,17),
		(6,2),(6,7),(6,8),(6,14),(6,15),
		(7,1),(7,2),(7,3),(7,11),(7,12),(7,13),(7,18),
		(7,3),(7,4),(7,8),(7,9),(7,15),(7,16),(7,17),
		(8,5),(8,9),(8,10),(8,11),
		(9,1),(9,2),(9,3),(9,4),(9,5),(9,17),(9,18),(9,19),
		(10,5),(10,7),(10,8),(10,9),(10,16),
		(11,11),(11,12),(11,13),(11,5),(11,6),(11,16),(11,17),(11,20),(11,19),
		(12,4),(12,5),(12,9),(12,12),(12,13),
		(13,1),(13,2),(13,14),(13,15),(13,18),
		(14,6),(14,7),(14,8),(14,13),(14,15),(14,16),(14,20),
		(15,4),(15,5),(15,6),
		(16,4),(16,5),(16,8),(16,9),(16,10),(16,14),(16,15),
		(17,7),(17,10),(17,11),(17,19),
		(18,1),(18,2),(18,3),(18,6),(18,7),(18,8),(18,11),(18,12),(18,15),(18,16),(18,17),
		(19,12),(19,14),(19,15),(19,19),(19,20),
		(20,3),(20,4),(20,5),(20,8),(20,9),(20,13),(20,14),(20,17),(20,18),
		(21,1),(21,2),(21,6),(21,7),(21,9),
		(22,3),(22,4),(22,8),(22,11),(22,12),(22,17),(22,18),
		(23,7),(23,8),(23,9),(23,16),(23,17),(23,19),
		(24,8),(24,15),(24,16),(24,20),
		(25,3),(25,4),(25,5),(25,6),(25,11),(25,12),(25,13),
		(26,4),(26,7),(26,8),(26,10),(26,11),
		(27,7),(27,8),(27,9),(27,10),(27,13),(27,14),(27,15),(27,17),
		(28,4),(28,5),(28,18),(28,19),
		(29,1),(29,2),(29,3),(29,8),(29,9),(29,17),
		(30,2),(30,4),(30,5),(30,12),(30,13),
		(31,7),(31,8),(31,9),(31,12),(31,13),
		(32,5),(32,6),(32,7),(32,11),(32,12),(32,13),(32,15),
		(33,1),(33,2),(33,3),(33,7),(33,13),(33,14),
		(34,3),(34,4),(34,6),(34,11),(34,12),(34,16),(34,17),
		(35,9),(35,10),(35,14),(35,17),
		(36,2),(36,3),(36,6),(36,7),(36,9),(36,11),(36,12),
		(37,5),(37,7),(37,8),(37,9),(37,13),(37,14),
		(38,3),(38,4),(38,13),(38,18),
		(39,4),(39,6),(39,7),(39,8),(39,12),(39,13),
		(40,1),(40,11),(40,12),(40,15),
		(41,8),(41,9),(41,13),(41,14),(41,16),
		(42,2),(42,3),(42,8),(42,9),(42,11),
		(43,7),(43,8),(43,13),
		(44,5),(44,6),(44,7),(44,11),(44,12),(44,13),
		(45,10),(45,11),(45,12),(45,13),
		(46,3),(46,4),(46,5),(46,11),(46,12),
		(47,4),(47,5),(47,7),(47,9),(47,13),
		(48,2),(48,16),(48,17),
		(49,7),(49,8),(49,9),(49,10),
		(50,3),(50,4),(50,9),(50,10),(50,13),
		(51,1),(51,2),(51,7),(51,8),(51,11),(51,12),
		(52,9),(52,10),(52,14),(52,15),
		(53,7),(53,8),(53,10),(53,11),(53,12),(53,15),
		(54,3),(54,6),(54,7),(54,9),
		(55,6),(55,7),(55,10),(55,11),(55,12),
		(56,9),(56,10),(56,11),
		(57,6),(57,7),(57,8),(57,11),(57,12),(57,14),
		(58,13),(58,14),(58,15)

--SELECT * FROM reservas

----- INSERT COMPROBANTES
--SELECT * FROM comprobantes
--SELECT * FROM formas_de_pago
--SELECT * FROM Formas_de_compra

ALTER TABLE comprobantes
ALTER COLUMN total DECIMAL (8,2)

INSERT INTO comprobantes(total,fecha,id_forma_pago,id_tipocompra)
VALUES (1200,'2021-08-19',1,1),(600,'2021-08-19',1,1),(800,'2021-08-19',1,2),(600,'2021-08-19',1,2),
		(1800,'2021-08-19',1,1),(1200,'2021-08-19',1,1),(1600,'2021-08-19',1,1),
		(1200,'2021-08-19',1,2),(2400,'2021-08-19',2,1),(1200,'2021-08-19',1,2),
		(1200,'2021-08-19',1,2),(1800,'2021-08-19',2,1),(1800,'2021-08-19',1,1),(1200,'2021-08-19',1,1),
		(2400,'2021-08-19',2,1),(1200,'2021-08-19',1,1),(600,'2021-08-19',2,1),(600,'2021-08-19',1,1),
		(900,'2021-08-19',1,2),(600,'2021-08-19',1,1),(1800,'2021-08-19',1,1),(1200,'2021-08-19',1,1),
		(1200,'2021-08-19',1,1),(600,'2021-08-19',1,1),(2400,'2021-08-19',1,2),(1200,'2021-08-19',1,1),
		(3000,'2021-08-19',1,1),(1200,'2021-08-19',2,1),(750,'2021-08-19',1,1),
		(600,'2021-08-19',1,1),(1200,'2021-08-19',2,1),(1500,'2021-08-19',1,1),
--
		(1200,'2021-08-20',2,1),(1200,'2021-08-20',1,1),(600,'2021-08-20',2,1),(1200,'2021-08-20',2,1),
		(600,'2021-08-20',1,2),(750,'2021-08-20',1,1),(800,'2021-08-20',1,2),(1200,'2021-08-20',1,1),
		(1800,'2021-08-20',1,1),(900,'2021-08-20',1,2),(1600,'2021-08-20',1,1),(1200,'2021-08-20',1,1),
		(1200,'2021-08-20',1,1),(1600,'2021-08-20',2,1),(1200,'2021-08-20',1,1),(1200,'2021-08-20',1,1),
		(600,'2021-08-20',2,1),(1500,'2021-08-20',1,1),(1200,'2021-08-20',1,1),(1200,'2021-08-20',1,1),
		(1500,'2021-08-20',1,1),(1200,'2021-08-20',1,2),(1200,'2021-08-20',1,1),(1200,'2021-08-20',1,1),
		(750,'2021-08-20',1,1),(1200,'2021-08-20',1,1),(1200,'2021-08-20',1,1),(1200,'2021-08-20',1,1),
--
		(600,'2021-08-22',1,1),(1200,'2021-08-22',1,1),(900,'2021-08-22',1,1),(600,'2021-08-22',1,1),
		(1200,'2021-08-22',2,1),(600,'2021-08-22',1,2),(600,'2021-08-22',1,1),(1200,'2021-08-22',1,2),
		(750,'2021-08-22',1,2),(1200,'2021-08-22',1,1),(1200,'2021-08-22',1,2),(600,'2021-08-22',2,1),
		(1500,'2021-08-22',1,2),(1500,'2021-08-22',1,1),(600,'2021-08-22',1,1),(1200,'2021-08-22',1,2),
--
		(1500,'2021-09-05',1,1),(750,'2021-09-05',2,1),(1200,'2021-09-05',1,2),(1200,'2021-09-05',1,1),
		(900,'2021-09-05',1,1),(1200,'2021-09-05',1,2),(600,'2021-09-05',1,1),(1200,'2021-09-05',1,2),
--
		(1200,'2021-09-06',1,1),(600,'2021-09-06',2,1),(750,'2021-09-06',1,1),(1500,'2021-09-06',1,2),
		(1200,'2021-09-06',1,2),
--
		(1200,'2021-10-04',1,2),(750,'2021-10-04',1,1),(1500,'2021-10-04',1,1),(1800,'2021-10-04',1,1),
		(600,'2021-10-04',1,1),
--
		(600,'2021-10-05',1,2),(1200,'2021-10-05',1,1),(900,'2021-10-05',1,1),(1200,'2021-10-05',1,1),
		(1200,'2021-10-05',2,1),(750,'2021-10-05',1,1),(1200,'2021-10-05',1,1),(1500,'2021-10-05',1,2),
--
		(600,'2021-11-07',1,2),(1200,'2021-11-07',1,1),(1200,'2021-11-07',1,1),(1200,'2021-11-07',1,1),
		(1500,'2021-11-07',1,2),(1200,'2021-11-07',1,1),(1200,'2021-11-07',1,1),
--
		(1500,'2021-11-08',2,1),(1200,'2021-11-08',1,1),(750,'2021-11-08',1,1),(1200,'2021-11-08',1,2),
		(1800,'2021-11-08',1,1),(900,'2021-11-08',1,1),(1200,'2021-11-08',1,2),(1200,'2021-11-08',1,1)


----- INSERT detalle comprobante
--SELECT * FROM detalle_comprobantes
--SELECT * FROM salas
INSERT INTO detalle_comprobantes (cant_entradas,id_comprobante,id_pelicula,id_funcion,id_sala)
VALUES 
		(2,1,1,1,1),(1,2,1,1,1),(1,3,1,1,1),(1,4,1,3,1),(1,5,2,5,9),(2,6,1,1,1),
		(2,7,1,3,4),(2,8,1,1,2),(4,9,1,1,3),(2,10,3,1,2),(2,11,4,1,2),(2,12,5,6,8),
		(2,13,5,7,8),(2,14,1,1,3),(4,15,6,2,3),(2,16,7,3,3),(1,17,8,1,2),(1,18,8,1,3),
		(1,19,9,7,8),(1,20,9,2,3),(2,21,10,6,8),(2,22,10,1,3),(2,23,10,1,2),(1,24,12,1,1),
		(4,25,13,5,4),(2,26,12,2,3),(5,27,14,1,4),(2,28,15,6,5),(1,29,16,30,8),(1,30,15,1,1),(2,31,16,5,4),
		(2,32,17,8,8),(2,33,17,1,3),(2,34,18,1,4),(1,35,19,1,2),(2,36,19,1,2),(1,37,20,30,2),(1,38,21,35,7),
		(1,39,22,6,7),(2,40,22,31,3),(3,41,23,35,2),(1,42,24,1,9),(2,43,24,19,8),(2,44,24,1,1),(2,45,25,23,3),
		(2,46,25,25,9),(2,47,25,25,1),(2,48,26,16,1),(1,49,1,30,2),(2,50,26,28,4),(2,51,27,26,2),(2,52,27,27,1),
		(2,53,28,12,3),(2,54,27,25,1),(2,55,28,26,3),(2,56,28,24,3),(1,57,29,40,5),(2,58,30,43,1),(2,59,30,43,2),
		(2,60,30,44,2),(1,61,27,48,1),(2,62,26,33,2),(1,63,29,25,8),(1,64,17,25,1),(2,65,19,19,2),(1,66,14,47,1),
		(1,67,7,28,3),(2,68,20,27,1),(1,69,8,5,1),(2,70,1,8,3),(2,71,13,9,2),(1,72,16,19,1),(2,73,26,35,2),	
		(2,74,2,9,6),(1,75,1,1,1),(1,76,2,9,2),(2,77,20,9,8),(1,78,21,36,5),(2,79,28,12,1),(2,80,28,7,1),
		(2,81,14,36,2),(2,82,8,9,1),(1,83,23,16,1),(2,84,16,41,2),(2,85,19,33,1),(1,86,30,27,2),
		(1,87,26,9,1),(2,88,25,47,3),(2,89,11,41,2),(2,90,16,9,1),(1,91,1,1,5),(2,92,2,9,6),(2,93,27,30,8),
		(1,94,1,36,3),(1,95,8,36,1),(2,96,18,45,1),(1,97,2,33,8),(2,98,19,1,1),(2,99,22,36,2),(1,100,2,1,6),
		(2,101,16,35,2),(2,102,3,40,2),(1,103,1,1,1),(2,104,3,48,2),(2,105,2,37,1),(2,106,21,47,3),
		(1,107,13,16,5),(2,108,2,49,1),(2,109,1,48,1),(2,110,2,38,4),(2,111,26,38,1),(1,112,30,37,5),
		(2,113,9,42,3),(2,114,2,39,8),(1,115,1,48,8),(2,116,29,15,3),(2,117,19,41,3)

-- INSERT ticket

SELECT * FROM tickets
INSERT INTO tickets (nro_butaca,id_detalle)
VALUES (2,1),(3,1),(4,2),(5,3),(6,4),(7,5),(8,6),(9,6),(10,7),(11,7),(12,8),(13,8),(14,9),(15,9),(16,9),(17,9),
		(18,10),(19,10),(20,11),(1,11),(2,12),(3,12),(4,13),(5,13),(6,14),(7,14),(8,15),(9,15),(10,15),(11,15),
		(12,16),(13,16),(14,17),(15,18),(16,19),(17,20),(18,21),(19,22),(1,23),(2,23),(3,24),
		(4,25),(5,25),(6,25),(7,25),(8,26),(9,26),(10,27),(11,27),(12,27),(13,27),(14,27),
		(15,28),(16,28),(17,29),(18,30),(19,31),(20,31),(3,32),(4,32),(5,33),(6,33),(7,34),(8,34),(9,35),
		(10,36),(11,36),(12,37),(13,38),(14,39),(15,40),(16,40),(17,41),(18,41),(19,41),(20,42),(1,43),(2,43),
		(3,44),(4,44),(5,45),(6,45),(7,46),(8,46),(9,47),(10,47),(11,48),(12,48),(13,49),
		(14,50),(15,50),(16,51),(17,51),(18,52),(19,52),(1,53),(2,53),(3,54),(4,54),(5,55),(6,55),(7,56),(8,56),
		(9,57),(10,58),(11,58),(12,59),(13,59),(14,60),(15,60),(16,61),(17,62),(18,62),(19,63),(20,64),(1,65),(2,65),
		(3,66),(4,67),(5,68),(6,68),(7,69),(8,70),(9,70),(10,71),(11,71),(12,72),(13,73),(14,73),(15,74),(16,74),
		(17,75),(18,76),(19,77),(20,77),(1,78),(2,79),(3,79),(4,80),(5,80),(6,81),(7,81),(8,82),(9,82),
		(10,83),(11,84),(12,84),(13,85),(14,85),(15,86),(16,87),(17,88),(18,88),(19,89),(20,89),(1,90),(2,90),
		(3,91),(4,92),(5,92),(6,93),(7,93),(8,94),(9,95),(10,96),(11,96),(12,97),(13,98),(14,98),(15,99),(16,99),
		(17,100),(18,101),(19,101),(1,102),(2,102),(3,103),(4,104),(5,105),(6,105),(7,106),(8,106),
		(9,107),(10,108),(11,108),(12,109),(13,109),(14,110),(15,110),(16,111),(17,111),(18,112),
		(19,113),(20,113),(1,114),(2,114),(3,115),(4,116),(5,116),(6,117),(7,117)



