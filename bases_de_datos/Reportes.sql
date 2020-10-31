CREATE DATABASE reportes;
use reportes;

GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'example';
CREATE TABLE GRUPO(
    IDGRUPO VARCHAR(10) NOT NULL,
    IDMAESTRO VARCHAR(10) NOT NULL,
    IDCARRERA VARCHAR(10) NOT NULL,
    IDMATERIA VARCHAR(10) NOT NULL,
    PERIODO VARCHAR(30)  NOT NULL, 
    GRUPO VARCHAR(10) NOT NULL,
    AULA VARCHAR(20) NOT NULL, 
    NUMALUMNOS VARCHAR(20) NOT NULL, 
    TURNO VARCHAR(50) NOT NULL,
    HORARIO VARCHAR(150) NOT NULL,
    PRIMARY KEY(IDGRUPO)

);

CREATE TABLE MAESTRO
( 
  IDMAESTRO VARCHAR(10) NOT NULL PRIMARY KEY,
  NOMBREMAESTRO VARCHAR(30) NOT NULL 
); 


CREATE TABLE MATERIA
( 
IDMATERIA VARCHAR(10) NOT NULL PRIMARY KEY,
NOMBREMATERIA VARCHAR(50) NOT NULL, 
SEMESTRE VARCHAR(50) NOT NULL, 
CREDITOS VARCHAR(20) NOT NULL, 
HT VARCHAR(20) NOT NULL, 
HP VARCHAR(20) NOT NULL 

); 

CREATE TABLE USUARIOS
( 

IDUSUARIO VARCHAR(50) NOT NULL PRIMARY KEY,
USUARIO  VARCHAR(50) NOT NULL, 
CONTRASENA  VARCHAR(50) NOT NULL,
IDMAESTRO VARCHAR(10) NOT NULL,
TIPO INT NOT NULL

);

CREATE TABLE CARRERA
( 

  IDCARRERA VARCHAR(10) NOT NULL PRIMARY KEY, 
  NOMBRECARRERA  VARCHAR(50) NOT NULL 

); 



ALTER TABLE GRUPO ADD CONSTRAINT FK_MATERIA FOREIGN KEY (IDMATERIA) REFERENCES  MATERIA(IDMATERIA) ;

ALTER TABLE GRUPO ADD  CONSTRAINT FK_MAESTRO FOREIGN KEY (IDMAESTRO) REFERENCES  MAESTRO(IDMAESTRO) ;

ALTER TABLE GRUPO ADD CONSTRAINT FK_CARRERA FOREIGN KEY (IDCARRERA) REFERENCES  CARRERA(IDCARRERA) ;

 


ALTER TABLE USUARIOS ADD CONSTRAINT FK_IDMAESTRO FOREIGN KEY (IDMAESTRO) REFERENCES  MAESTRO(IDMAESTRO);




INSERT INTO CARRERA VALUES('ISX','INGENIERIA EN SISTEMAS COMPUTACIONALES');
INSERT INTO CARRERA VALUES('TIX','INGENIERIA EN TECNOLOGIAS DE LA INFORMACIÓN');
INSERT INTO CARRERA VALUES('IGE','INGENIERIA EN GESTION EMPRESARIAL');
INSERT INTO CARRERA VALUES('IEIC','INGENIERIA EN ELECTRONICA');
INSERT INTO CARRERA VALUES('MCX','INGENIERIA EN MECATRONICA');


insert into MAESTRO VALUES ('A01','JOSE LUIS SUAREZ Y GOMEZ');
insert into MAESTRO VALUES ('A02','DOMINGO GARCIA ORNELAS');
insert into MAESTRO VALUES ('A03','EDNA MILITZA MARTINEZ PRADO');
insert into MAESTRO VALUES ('A25','ANTONIO AGUILA REYES');

INSERT INTO USUARIOS VALUES("U1",'suarez.gomez','1234','A01',2);
INSERT INTO USUARIOS VALUES("U2",'domingo.ornelas','1234','A02',2);
INSERT INTO USUARIOS VALUES("U3",'militza.prado','1234','A03',2);
INSERT INTO USUARIOS VALUES("U4",'antonio.reyes','1234','A25',1);


INSERT INTO MATERIA VALUES ('ACF0901','Calculo Diferencial','1','5','3','2'); 
INSERT INTO MATERIA VALUES ('AED1026','Estructura de datos','3','5','2','3'); 
INSERT INTO MATERIA VALUES ('SCF1006','Fisica General','3','5','3','2'); 
INSERT INTO MATERIA VALUES ('SCC1017','Metodos numericos','4','4','2','2'); 
INSERT INTO MATERIA VALUES ('SCA1025','Taller de base de datos','5','4','1','3');


INSERT INTO GRUPO VALUES ('G01','A02','ISX','AED1026','Agosto-Diciembre2020','A','D12','20','Matutino','Lunes, Miercoles 7:00-8:40 Viernes 08:45-09:35');
INSERT INTO GRUPO VALUES ('G02','A01','ISX','SCF1006','Agosto-Diciembre2020','C','F08','15','Matutino','Martes, Jueves 12:15-13:55 Viernes 13:05-13:55');
INSERT INTO GRUPO VALUES ('G03','A01','ISX','SCC1017','Agosto-Diciembre2020','A','H10','25','Matutino','Martes, Jueves 10:30-12:15');
INSERT INTO GRUPO VALUES ('G04','A03','ISX','ACF0901','Agosto-Diciembre2020','B','D03','30','Matutino','Lunes, Miercoles 7:00-8:40 Viernes 08:45-09:35');
INSERT INTO GRUPO VALUES ('G05','A25','ISX','ACF0901','Agosto-Diciembre2020','E','D05','25','Matutino','Martes, Jueves 10:30-12:15 Viernes 10:30-11:20');
