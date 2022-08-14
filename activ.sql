CREATE DATABASE peluqueria_canina;
USE peluqueria_canina;
CREATE TABLE dueno(
dni INT NOT NULL UNIQUE,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(30) NOT NULL,
telefono VARCHAR(10) NOT NULL,
direccion VARCHAR(50) NOT NULL,
CONSTRAINT claveprim_dueno PRIMARY KEY (dni)
);
CREATE TABLE perro(
id_perro INT AUTO_INCREMENT NOT NULL,
nombre_p VARCHAR(30) NOT NULL,
fecha_nac VARCHAR(15),
sexo VARCHAR (15) NOT NULL,
dni_dueno INT,
CONSTRAINT claveprim_id_perro PRIMARY KEY (id_perro),
CONSTRAINT fk_dni_dueno FOREIGN KEY (dni_dueno) REFERENCES dueno (dni)
);
CREATE TABLE historial(
id_historial INT AUTO_INCREMENT NOT NULL,
fecha_h DATE,
id_perro_h INT,
descripcion VARCHAR(300),
monto DECIMAL NOT NULL DEFAULT '0.00' NOT NULL,
CONSTRAINT claveprim_id_historial PRIMARY KEY (id_historial),
CONSTRAINT fk_id_perro FOREIGN KEY(id_perro_h) REFERENCES perro (id_perro)

);

INSERT INTO dueno VALUES
(28500700,'Juana', 'Ferreyra','3515830287','Chascomus 3232' ),
(29300800,'Mario', 'Carilo','3532857364','Matanza 987' ),
(31200500,'Cesar', 'Cordoba','3513567890','Tres Arroyos 321' ),
(36902000,'Facundo', 'Bustos','3533294567','Colon 876' );

INSERT INTO perro VALUES
(1,'Luna', '04/03/2020','Hembra',28500700 ),
(2,'Manila', '15/05/2021','Hembra',29300800 ),
(3,'Uma', '10/03/2019','Hembra',31200500 ),
(4,'Loky', '14/03/2015','Macho',36902000 );

SELECT * FROM historial;

INSERT INTO historial VALUES
(1, '2020/03/04', 1, 'Baño', 950.50),
(2, '2021/05/15', 2, 'Corte', 1100.30), 
(3, '2019/03/10', 3, 'Vacunas', 1530.20), 
(4, '2015/03/14', 4, 'Petshop', 1050.50); 

/*Punto 4: Se cambia fecha en el historial del Id Perro 3*/
UPDATE historial
SET fecha_h = '2022/07/10' 
WHERE id_perro_h = 3;

SELECT * FROM historial WHERE fecha_h BETWEEN '2022/07/10' AND '2022/07/10';
/*Punto 6: Se consulta los perros que asistieron julio 2022*/


INSERT INTO dueno VALUES
(230400400,'Juan Pablo', 'Contreras','3513245590','Chaco 40');
INSERT INTO perro VALUES
(5,'Loco', '2014/03/07','Macho',230400400 );
INSERT INTO historial VALUES
(5, '2014/03/07', 5, 'Corte', 980.50);








