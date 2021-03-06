create database gestiondefallas;

use gestiondefallas;


create table Administrador 
(
 idAdministrador int not null,
 nombre varchar (45) not null,
 apellido varchar (45) not null,
 num_identificacion int not null,
 contra varchar (45) not null,
 correo varchar (45) not null,
primary key (idAdministrador)
);

create table Profesores 
(
    
    idProfesores int not null,
    nombres varchar (45) not null,
    apellidos varchar(45) not null,
    facultad_area varchar (45) not null,
    telefono int ,
    correo varchar (45) ,
	primary key (idProfesores)
 
);

create table materias
(
    
	idmaterias int not null,
	nom_materia varchar (80) not null,
	ciclo int not null,
    salon varchar(45) not null,
    jornada varchar (45) not null,
    hora varchar(20) not null,
    programa varchar (45) not null,
    Profesores_idProfesores int not null,
    nom_profesor varchar (45) not null,
    primary key (idmaterias),
    foreign key (Profesores_idProfesores) references Profesores (idProfesores)
);


create table reporte 

(
	idreporte int not null,
    fallas int not null,
    observaciones varchar (45) not null,
    asignatura varchar (45) not null,
    fecha date not null,
    semana int not null,
    Profesores_idProfesores int not null,
    primary key (idreporte), 
    foreign key (Profesores_idProfesores) references Profesores(idProfesores)

);


create table salon
(
   idsalon int not null,
   sillas int not null,
   piso int not null,
   materias_idmaterias int not null,
   primary key (idsalon),
   foreign key (materias_idmaterias) references materias(idmaterias)
);

create table facultad
(
   idfacultad int not null,
   nom_facultad varchar(45) not null,
   decano varchar(45) not null,
   piso int not null,
   Profesores_idProfesores int not null,
   foreign key (Profesores_idProfesores) references Profesores(idProfesores)
);


-- inserccion de registros 

insert into Profesores values (01, 'Claudia Liliana', 'Rodriguez Nitola', 'Futbol', null, null);
insert into Profesores values (02, 'Daniel', ' Hernandez Gomez', 'Futbol',null, null);
insert into Profesores values (03, 'Leidy Tatiana', 'Gonzales Frayle', 'Futbol',null, null);
insert into Profesores values (04, 'Karen Johana', 'Lievano Espinosa', 'Futbol',null, null);
insert into Profesores values (05, 'Jenny Kariana', 'Bautista Sagobal', 'Tenis',null, null);
insert into Profesores values (06, 'Hassbleibie', ' Alape Vergara', 'Tenis',null, null);
insert into Profesores values (07, 'Monica Paola', ' Bejarano Castillo', 'Tenis',null, null);
insert into Profesores values (08, 'Diego Leonardo', 'Cardona Bermudez', 'Tenis',null, null);
insert into Profesores values (09, 'Juan Camilo', 'Ceballos Huertas', 'Tenis',null, null);
insert into Profesores values (010, 'Olga Lucia ', 'Garcia Castiblanco', 'Tenis',null, null);
insert into Profesores values (011, 'Elvira Constanza ', 'Juvinao Borras', 'Tenis',null, null);
insert into Profesores values (012, 'Ana Lucia ', 'Meza Ponce', 'Tenis',null, null);
insert into Profesores values (013, 'Hugo', 'Morales Vargas', 'Tenis',null, null);
insert into Profesores values (014, 'Cristhiam Camilo', 'Quiroga Nieto', 'Futbol',null, null);
insert into Profesores values (015, 'Diego Andres', 'Sanchez Mendez', 'Tenis',null, null);
insert into Profesores values (016, 'Luz Veronica', 'Aponte Vasquez', 'voleibol',null, null);
insert into Profesores values (017, 'Jhon Anderson', 'Bautista Medina', 'voleibol',null, null);
insert into Profesores values (018, 'Carlos Gabriel', 'Caycedo Restrepo', 'voleibol',null, null);
insert into Profesores values (019, 'Cristian Camilo', 'Celis Galindo', 'voleibol',null, null);
insert into Profesores values (020, 'Jorge Hernando', 'Delgado Cordoba', 'voleibol',null, null);
insert into Profesores values (021, 'Cristian Camilo ', 'Gaitan Mancipe', 'voleibol',null, null);
insert into Profesores values (022, 'Dalia Gabriela', 'Galvis Salazar', 'voleibol',null, null);
insert into Profesores values (023, 'Jhon Alexander', 'Gomez Sanchez', 'voleibol',null, null);
insert into Profesores values (024, 'Sandra Patricia', 'Jaramillo Botero', 'voleibol',null, null);
insert into Profesores values (025, 'Jorge Ivan', 'Medina Perez', 'voleibol',null, null);
insert into Profesores values (026, 'Maria Rubiana', 'Oliveros Forero', 'voleibol',null, null);
insert into Profesores values (027, 'Yohan Julian', 'Vargas Castellanos', 'voleibol',null, null);
insert into Profesores values (028, 'Sindy Lorena', 'Wilches Piñeros', 'voleibol',null, null);
insert into Profesores values (029, 'Adriana Marcela', 'Gomez Bermudez','basketball', null,null);
insert into Profesores values (030, 'Dayra Isabel', 'Martinez Galindo','basketball', null,null);
insert into Profesores values (031, 'Denisse', 'Mejia Lancheros','basketball', null,null);
insert into Profesores values (032, 'Kate Jennyffer', 'Pedraza Baron','basketball', null,null);
insert into Profesores values (033, 'Alejandra', 'Zapata Cortes','basketball', null, null);
insert into Profesores values (034, 'Ricardo Javier', 'Albarracin Vanoy','Judo', null, null);
insert into Profesores values (035, 'Javier', 'Aldana Jimmy','Judo', null, null);
insert into Profesores values (036, 'Javier Andres', 'Almeida Moreno','Judo', null, null);
insert into Profesores values (037, 'Nataly', 'Blanco Guaquetá','Judo', null, null);
insert into Profesores values (038, 'Hector Fabio', 'Calderon Beltran','Judo', null, null);
insert into Profesores values (039, 'Daniel', 'Carmona Rodriguez','Judo', null, null);
insert into Profesores values (040, 'Maria Fernanda', 'Collazos','Judo', null, null);
insert into Profesores values (041, 'Luz Alcira', 'Cortes Angel','Judo', null, null);
insert into Profesores values (042, 'Edwin Giovanny', 'Duarte Suarez','Taekwondo', null, null);
insert into Profesores values (043, 'Briyit Estefania', 'Florez Castellanos','Taekwondo', null, null);
insert into Profesores values (044, 'Luis Hernado', 'Giraldo Valdes','Taekwondo', null, null);
insert into Profesores values (045, 'Juan Pablo', 'Gonzales Rojas','Taekwondo', null, null);
insert into Profesores values (046, 'Edisson', 'Montaña Franco','Taekwondo', null, null);
insert into Profesores values (047, 'William', 'Ovalle Matamoros','Taekwondo', null, null);
insert into Profesores values (048, 'Maria Esperanza', 'Piñeros Piñeros','Taekwondo', null, null);
insert into Profesores values (049, 'Javier', 'Posada Cortina','Taekwondo', null, null);
insert into Profesores values (050, 'Andres Felipe', 'Prieto Lizarazo','Futbol', null, null);
insert into Profesores values (051, 'Eduardo Andres', 'Ramos Garcia','Futbol', null, null);
insert into Profesores values (052, 'Nestor Andres', 'Rodriguez Garcia','Futbol', null, null);
insert into Profesores values (053, 'Jose Luis', 'Rodriguez Lagos','Futbo', null, null);
insert into Profesores values (054, 'Fiorella Constanza', 'Rojas Rodriguez','Atletismo', null, null);
insert into Profesores values (055, 'Marco Dionicio', 'Salcedo Garzon','Atletismo', null, null);
insert into Profesores values (056, 'Andres David', 'Suarez','Atletismo', null, null);
insert into Profesores values (057, 'Himer Antonio', 'Tellez','Atletismo', null, null);
insert into Profesores values (058, 'Juan Pablo', 'Traslaviña Vega','Atletismo', null, null);
insert into Profesores values (059, 'Isabel', 'Duarte', 'Aerobics',null,null);
insert into Profesores values (060, 'Cesar Augusto', 'Hernandez Ramos', 'Aerobics',null,null);
insert into Profesores values (061, 'Cristian Camilo', 'Rojas Calcetero', 'Aerobics',null,null);

-- INSERCCION DE REGISTROS TABLA MATERIAS


insert into materias values (001,'futbol',4,'judo','Diurna', '7:00 a 10:00', 'FUTD1',020,'Jorge Hernando Delgado Cordoba');
insert into materias values (002,'futbol',7,'judo','Diurna', '7:00 a 10:00', 'FUTD1',019,'Cristian Camilo Celis' );
insert into materias values (003,'taekwondo',2,'judo','Diurna','7:00 a 10:00', 'TAED1', 018, 'Carlos Gabriel Caycedo Restrepo' );
insert into materias values (004,'judo',5,'taekwondo','Diurna','7:00 a 10:00', 'TAED1',017, 'Jhon Anderson Bautista Medina' );
insert into materias values (005,'aerobics',3,'futbol','Diurna', '7:00 a 10:00', 'TAED1',016, 'Luz Veronica Aponte Vasquez' );
insert into materias values (006,'Tenis',1,'Voleibol','Diurna', '7:00 a 10:00', 'TEND1',040,'Maria Fernanda Collazos');
insert into materias values (007,'Tenis',3,'voleibol','Diurna', '7:00 a 10:00', 'FUTD2',026,'Mariana  Oliveros Forero' );
insert into materias values (008,'aerobics',2,'futbol','Diurna','7:00 a 8:30', 'FUTD1 ',051, 'Eduardo Andres Ramos Garcia');
insert into materias values (009,'aerobics',7,'judo','Diurna', '7:00 a 8:30', 'AERD1',048,' Maria Esperanza Piñeros Piñeros');
insert into materias values (0010,'judo',7,'taekwondo','Diurna', '7:00 a 10:00', 'aerobics',025, 'Jorge Ivan Medina Piñeros' );
insert into materias values (0011,'taekwondo',7,'aerobics','Diurna', '7:00 a 10:00', 'aerobics', 01,'Jimmy Javier Aldana');
insert into materias values (0012,'aerobics',3,'judo','Diurna', '7:00 a 10:00', 'aerobics',01, 'Dayra Isabel Martinez Galindo' );
insert into materias values (0013,'tenis',5,'voleibol','Diurna','7:00 a 10:00', 'aerobics',01, 'Diego Leonardo Cardona' );
insert into materias values (0014,'tenis',3,'voleibol','Diurna','7:00 a 10:00', 'aerobics',01, 'Constanza Juvinao' );
insert into materias values (0015,'tenis',2,'voleibol','Diurna', '7:00 a 10:00', 'aerobics',01,'Ana Lucia Meza' );
insert into materias values (0016,'aerobics',7,'futbol','Diurna','7:00 a 10:00', 'aerobics',01,'Chistian Camilo Quiroga' );
insert into materias values (0017,'aerobics',3,'403','Diurna', '7:00 a 8:30', 'aerobics',01, 'Juan Pablo Traslaviña' );
insert into materias values (0018,'futbol',1,'501','Diurna', '7:00 a 10:00', 'aerobics',01, 'Karen Johana Lievano Espinosa' );
insert into materias values (0019,'aerobics',5,'502','Diurna', '7:00 a 10:00', 'aerobics',01, 'Dalia Gabriela Galvis Salazar' );
insert into materias values (0020,'aerobics',6,'futbol','504', '7:00 a 10:00', 'aerobics',01,'Briyit Estefania Flores Castellanos');
insert into materias values (0021,'judo',1,'505','Diurna', '7:00 a 10:00', 'aerobics',01, 'Marco Salcedo' );
insert into materias values (0022,'judo',6,'506-A','Diurna','7:00 a 10:00', 'aerobics',01,'Javier Posada' );
insert into materias values (0023,'judo',5,'507','Diurna', '7:00 a 10:00', 'aerobics',01,'Sandra Patricia Jaramillo botero' );
insert into materias values (0024,'futbol',3,'503','Diurna','7:00 a 10:00', 'aerobics',01, 'Lorena Wilches' );
insert into materias values (0025,'futbol',2,'601','Diurna', '7:00 a 8:30', 'aerobics',01,'Claudia Liliana Rodriguez' );
insert into materias values (0026,'futbol',1,'602','Diurna', '7:00 a 8:30', 'aerobics',01,'Edwin Duarte');
insert into materias values (0027,'taekwondo',7,'603','Diurna', '7:00 a 10:00', 'aerobics',01, 'Luis Hernando Giraldo' );
insert into materias values (0028,'taekwondo',1,'604','Diurna', '7:00 a 10:00', 'aerobics',01,'Jhon Alexander Gomez Sanchez' );
insert into materias values (0029,'taekwondo',1,'605','Diurna', '7:00 a 8:30', 'aerobics',01, '');
insert into materias values (0030,'futbol',2,'606','Diurna','7:00 a 8:30', 'aerobics',01,'Leidy Tatiana Gonzales Frayle');
insert into materias values (0031,'futbol',3,'703','Diurna', '7:00 a 10:00', 'aerobics',01, 'Lux Alcira Cortez' );
insert into materias values (0032,'voleibol',6,'705','Diurna', '7:00 a 8:30', 'aerobics',01,'Monica Bejarano' );
insert into materias values (0033,'voleibol',7,'tenis','Diurna', '7:00 a 10:00', 'aerobics',01,'Nataly Guaqueta' );
insert into materias values (0034,'futbol',2,'aerobics ','Diurna', '8:30 a 10:00', 'aerobics',01,'Eduardo Andres Ramos Garcia');
insert into materias values (0035,'aerobics',3,'futbol','Diurna', '8:30 a 10:00', 'aerobics',01,'Diego Sanches' );
insert into materias values (0036,'tenis',1,'403','Diurna', '8:30 a 10:00', 'aerobics',01,'Jhon Alexander Gomez Sanchez' );
insert into materias values (0037,'taekwondo',2,'601','Diurna', 7-10, 'aerobics',01,'Esperanza Piñeros');
insert into materias values (0038,'taekwondo',7,'602','Diurna', '8:30 a 10:00', 'aerobics',01, 'Claudia Liliana Rodriguez' );
insert into materias values (0039,'taekwondo',1,'605','Diurna', '8:30 a 10:00', 'aerobics',01,'Leydi Tatiana Gonzales Frayle');
insert into materias values (0040,'judo',2,'606','Diurna', '8:30 a 10:00', 'aerobics',01,'Alejandra Zapata');
insert into materias values (0041,'futbol',9,'701','Diurna', '8:30 a 10:00', 'aerobics',01,'Hector Fabio Zapata');
insert into materias values (0042,'aerobics',6,'705','Diurna', '8:30 a 10:00', 'aerobics',01,'Hector Fabio Calderon' );
insert into materias values (0043,'voleibol',1,'aerobics','Especial', '10:00 a 1:00', 'aerobics',01,'Luz Veronica Aponte Vasquez' );
insert into materias values (0044,'futbol',3,'basketball','Especial', '10:00 a 1:00', 'aerobics',01,'Cristian Camilo Gaitan Mancipe');
insert into materias values (0045,'basketball',5,'judo','Especial', '10:00 a 1:00', 'aerobics',01,'Jhon Anderson Bautista Medina' );
insert into materias values (0046,'basketball',7,'602','Especial', '10:00 a 1:00', 'aerobics',01, 'Daniel Hernandez Gomez');
insert into materias values (0047,'basketball',6,'605','Especial', '10:00 a 1:00', 'aerobics',01,'Sandra Patricia Jaramillo Botero');
insert into materias values (0048,'basketball',7,'606','Especial', '10:00 a 1:00', 'aerobics',01,'Leydi Tatiana Gonzales Frayle');

select * from materias;
select * from Profesores;
select apellidos from Profesores;
select nom_materia from materias;
select nom_materia, hora from materias;
select nombres, facultad_area from Profesores;
select nom_profesor from materias;
select nom_profesor, nom_materia from materias;