CREATE DATABASE
peluqueria_canina;

USE peluqueria_canina;
CREATE TABLE dueno(
dni INT NOT NULL,
nombre VARCHAR(25) NOT NULL,
apellido VARCHAR(25) NOT NULL,
telefono VARCHAR(30) NOT NULL,
direccion VARCHAR(50) NOT NULL,
PRIMARY KEY (dni)
);

CREATE TABLE perro(
id_perro INT AUTO_INCREMENT,
dni_dueno INT NOT NULL,
nombre VARCHAR(25) NOT NULL,
fecha_nac DATETIME,
sexo ENUM("macho","hembra","no sabe") DEFAULT "no sabe",
PRIMARY KEY(id_perro),
FOREIGN KEY(dni_dueno) REFERENCES dueno(dni)
);

CREATE TABLE historial(
id_perro INT NOT NULL,
id_historial INT AUTO_INCREMENT PRIMARY KEY,
fecha DATETIME NOT NULL,
FOREIGN KEY(id_perro) REFERENCES perro(id_perro),
descripcion TEXT,
monto DOUBLE
);

INSERT INTO dueno(dni,nombre,apellido,telefono,direccion)
VALUES(44549524,"Pedro","Jimenez",153688423," La Rioja
849");

INSERT INTO perro(dni_dueno,nombre,fecha_nac,sexo)
VALUES(44549524,"Gero","2013-07-16","macho");

INSERT INTO historial(id_perro,fecha,descripcion,monto)

VALUES(1,"2016-04-10"," Corte y baño, tenia el pelo muy largo",3000);

INSERT INTO dueno(dni,nombre,apellido,telefono,direccion)
VALUES(30455324,"Sofia","Cabrera",153243325,"Avenida Fuerza Aerea 3754");

INSERT INTO perro(dni_dueno,nombre,fecha_nac,sexo)
VALUES(30455324,"Milo","2017-12-12","macho");

INSERT INTO historial(id_perro,fecha,descripcion,monto)
VALUES(2,"2021-09-08","Baño unicamente.",2000);

INSERT INTO dueno(dni,nombre,apellido,telefono,direccion)
VALUES(25545144,"Juan Ignacio","Contreras",153235789,"Mendoza 20");

INSERT INTO perro(dni_dueno,nombre,fecha_nac,sexo)
VALUES(25545144,"Negra","2008-07-15","hembra");

INSERT INTO historial(id_perro,fecha,descripcion,monto)
VALUES(3,"2013-08-21","Baño,corte,peinado.",4000);

INSERT INTO dueno(dni,nombre,apellido,telefono,direccion)
VALUES(35521847,"Eduardo","Guevara",154848726," Calderon de la Barca
1548");

INSERT INTO perro(dni_dueno,nombre,fecha_nac,sexo)
VALUES(35521847,"Pelusa","2010-04-28","macho");

INSERT INTO historial(id_perro,fecha,descripcion,monto)
VALUES(4,"2010-11-06","Baño, peinado y corte de uñas",3700);

INSERT INTO dueno(dni,nombre,apellido,telefono,direccion)
VALUES(42358456,"Sol","Olivero",153458326,"San Nicolas 3248");

INSERT INTO perro(dni_dueno,nombre,fecha_nac,sexo)
VALUES(42358456,"Frivento","2021-09-22","Macho");

INSERT INTO historial(id_perro,fecha,descripcion,monto)
VALUES(5,"2022-06-23","Corte unicamente.",2000);

INSERT INTO dueno(dni,nombre,apellido,telefono,direccion)
VALUES(43328848,"Juana","Arco",154998726,"Julio Roca 326");

INSERT INTO perro(dni_dueno,nombre,fecha_nac,sexo)
VALUES(43328848,"Fufy","2020-01-02","Hembra");

INSERT INTO historial(id_perro,fecha,descripcion,monto)
VALUES(6,"2022-06-21","Baño,corte,peinado.",4000);

INSERT INTO dueno(dni,nombre,apellido,telefono,direccion)
VALUES(18018526,"Ivana","Soldano",153328348,"Alcorta 798");

INSERT INTO perro(dni_dueno,nombre,fecha_nac,sexo)
VALUES(18018526,"Firulais","2019-09-29","macho");

INSERT INTO historial(id_perro,fecha,descripcion,monto)
VALUES(7,"2022-03-07","Baño, corte de uñas.",3500);

INSERT INTO dueno(dni,nombre,apellido,telefono,direccion)
VALUES(31685348,"Emiliano","Darthes",152328456,"Paso de uspallata 3426");

INSERT INTO perro(dni_dueno,nombre,fecha_nac,sexo)
VALUES(31685348,"Tuca","2021-04-13","hembra");

INSERT INTO historial(id_perro,fecha,descripcion,monto)

VALUES(8,"2022-07-10","Baño,cepillado,peinado.",3200);

INSERT INTO dueno(dni,nombre,apellido,telefono,direccion)
VALUES(33564865,"Susana","Rodriguez",153959578,"Chaco 230");

INSERT INTO perro(dni_dueno,nombre,fecha_nac,sexo)
VALUES(33564865,"Mora","2021-02-22","hembra");

INSERT INTO historial(id_perro,fecha,descripcion,monto)
VALUES(9,"2022-06-08","Baño,corte,peinado.",4000);

INSERT INTO dueno(dni,nombre,apellido,telefono,direccion)
VALUES(17328695,"Gabriel","Reyna",154326456,"Buenos aires
3895");

INSERT INTO perro(dni_dueno,nombre,fecha_nac,sexo)
VALUES(17328695,"Roca","2012-05-25","macho");

INSERT INTO historial(id_perro,fecha,descripcion,monto)
VALUES(10,"2022-07-08","Baño unicamente.",2000);

SELECT * FROM historial ORDER BY fecha ASC;

DELETE FROM historial WHERE id_perro = 4;

DELETE from perro WHERE dni_dueno = 35521847;

UPDATE perro SET fecha_nac="2021-08-10" WHERE id_perro=9;