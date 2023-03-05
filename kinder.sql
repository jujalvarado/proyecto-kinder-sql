
/*Script: construccion de base de datos "kinder"*/

/*Integrantes
 * 
 * 
 * 
 * 
 * Juan Jose Alvarado Piza 
 */



drop database if exists kinder;
create database kinder;

use kinder;


drop table if exists usuarios;
create table usuarios (
  id int not null auto_increment,
  nombre varchar(50) not null,
  email varchar(100) not null,
  contraseña varchar(100) not null,
  rol enum('administrador', 'representante', 'maestro', 'estudiante') not null,
  primary key (id)
);


drop table if exists administradores;
create table administradores (
  id int not null auto_increment,
  cedula varchar(20) not null,
  nombres varchar(50) not null,
  apellidos varchar(50) not null,
  genero enum('m','f') not null,
  email varchar(100) not null,
  telefono varchar(20) not null,
  id_usuario int,
  primary key (id),
  foreign key (id_usuario) references usuarios(id)
);


/*-------------------------------------------------------------------------------------------
 						Tabla tipo_documento
 -------------------------------------------------------------------------------------------*/
drop table if exists tipo_documento;
create table tipo_documento (
  id int not null auto_increment,
  nombre varchar(50) not null,
  descripcion varchar(60) not null,
  primary key (id)
);

/*-------------------------------------------------------------------------------------------
 						Tablas relacionadas con representantes 
 -------------------------------------------------------------------------------------------*/

drop table if exists representantes;
create table representantes (
  id int not null auto_increment,
  cedula varchar(20) not null,
  nombres varchar(50) not null,
  apellidos varchar(50) not null,
  fecha_nacimiento date not null,
  genero enum('m','f') not null,
  email varchar(100) not null,
  telefono varchar(20) not null,
  id_usuario int,
  primary key (id),
  foreign key (id_usuario) references usuarios(id)
);


drop table if exists informacion_representante;
create table informacion_representante (
  id int not null auto_increment,
  id_representante int not null,
  
  
  /*informacion adicional */
  estado_civil varchar(20) not null,
  etnia varchar(30) not null,
  nivel_formacion varchar (100)not null,
  ingresos decimal(10,2) not null,
  
  
  /*de donde proviene  */
  pais_nacionalidad varchar(50) not null,
  
  pais_nacimiento varchar(50) not null,
  provincia_nacimiento varchar(50) not null,
  ciudad_nacimiento varchar(50) not null,
  
  pais_residencia varchar(50) not null,
  provincia_residencia varchar(50) not null,
  ciudad_residencia varchar(50) not null,
  
  direccion_domicilio varchar(120)not null,
  
  
  /* salud*/
  discapacidad boolean not null,
  porcentaje_disc int ,
  tipo_disc varchar(50),
  nro_carnet int,
  enfermedad varchar(100),
  
  tipo_sangre varchar(10)not null,
  
  
  primary key (id),
  foreign key (id_representante) references representantes(id)
);


drop table if exists documentos_representantes;
create table documentos_representante (
    id int not null auto_increment,
    id_representante int not null,
    nombre_documento varchar(100) not null,
    url_documento varchar(255) not null,
    fecha_creacion datetime not null,
    id_tipo_documento int not null,
    primary key (id),
    foreign key (id_representante) references representantes(id),
    foreign key (id_tipo_documento)references tipo_documento(id)
);


/*-------------------------------------------------------------------------------------------
							Tablas relacionadas con estudiantes 
-------------------------------------------------------------------------------------------*/

drop table if exists estudiantes;
create table estudiantes (
  id int not null auto_increment,
  cedula varchar(20) not null,
  nombres varchar(50) not null,
  apellidos varchar(50) not null,
  genero enum('m','f') not null,
  fecha_nacimiento date not null,
  primary key (id)
);


drop table if exists representante_estudiante;
create table representante_estudiante (
  id int not null auto_increment,
  id_estudiante int not null,
  id_representante int not null,
  parentesco varchar(30)not null,
  primary key (id),
  foreign key (id_estudiante) references estudiantes(id),
  foreign key (id_representante) references representantes(id)
);


drop table if exists informacion_estudiante;
create table informacion_estudiante (
  id int not null auto_increment,
  id_estudiante int not null,
  
  
  /*informacion adicional */
  estado_civil varchar(20) not null,
  etnia varchar(30) not null,
  hobbie varchar(100),
  
  /*de donde proviene  */
  pais_nacionalidad varchar(50) not null,
  
  pais_nacimiento varchar(50) not null,
  provincia_nacimiento varchar(50) not null,
  ciudad_nacimiento varchar(50) not null,
  
  pais_residencia varchar(50) not null,
  provincia_residencia varchar(50) not null,
  ciudad_residencia varchar(50) not null,
  
  direccion_domicilio varchar(120)not null,
  
  
  /* salud*/
  discapacidad boolean not null,
  porcentaje_disc int ,
  tipo_disc varchar(50),
  nro_carnet int,
  enfermedad varchar(100),
  
  tipo_sangre varchar(10)not null,
  
  
  primary key (id),
  foreign key (id_estudiante) references estudiantes(id)
);



drop table if exists documentos_estudiante;
create table documentos_estudiante (
    id int not null auto_increment,
    id_estudiante int not null,
    nombre_documento varchar(100) not null,
    url_documento varchar(255) not null,
    fecha_creacion datetime not null,
    id_tipo_documento int not null,
    
    primary key (id),
    foreign key (id_estudiante) references estudiantes(id),
    foreign key (id_tipo_documento)references tipo_documento(id)
);




/*-------------------------------------------------------------------------------------------
 							Tablas relacionadas con maestros 
 -------------------------------------------------------------------------------------------*/

drop table if exists maestros;
create table maestros (
  id int not null auto_increment,
  cedula varchar(20) not null,
  nombres varchar(50) not null,
  apellidos varchar(50) not null,
  genero enum('m','f') not null,
  email varchar(100) not null,
  telefono varchar(20) not null,
  id_usuario int,
  primary key (id),
  foreign key (id_usuario) references usuarios(id)
);


drop table if exists informacion_maestro;
create table informacion_maestro (
  id int not null auto_increment,
  id_maestro int not null,
  
  
  /*informacion adicional */
  estado_civil varchar(20) not null,
  etnia varchar(30) not null,
  
  nivel_formacion varchar (100)not null,
  especialidad varchar (100)not null,
  experiencia_laboral int not null,
  ingresos decimal(10,2) not null,
  
  prueba_personalidad decimal(5,2)not null,
  
  
  /*de donde proviene  */
  pais_nacionalidad varchar(50) not null,
  
  pais_nacimiento varchar(50) not null,
  provincia_nacimiento varchar(50) not null,
  ciudad_nacimiento varchar(50) not null,
  
  pais_residencia varchar(50) not null,
  provincia_residencia varchar(50) not null,
  ciudad_residencia varchar(50) not null,
  
  direccion_domicilio varchar(120)not null,
  
  
  /* salud*/
  discapacidad boolean not null,
  porcentaje_disc int ,
  tipo_disc varchar(50),
  nro_carnet int,
  enfermedad varchar(100),
  
  tipo_sangre varchar(10)not null,
  
  
  primary key (id),
  foreign key (id_maestro) references maestros(id)
);



drop table if exists documentos_maestro;
create table documentos_maestro (
    id int not null auto_increment,
    id_maestro int not null,
    nombre_documento varchar(100) not null,
    url_documento varchar(255) not null,
    fecha_creacion datetime not null,
    id_tipo_documento int not null,
    
    primary key (id),
    foreign key (id_maestro) references maestros(id),
    foreign key (id_tipo_documento)references tipo_documento(id)
);



/*------------------------------------------------------------------------------------------- 
	 					Tablas relacionadas con el curso y matricula
					(asignacion del maestro y periodo lectivo al curso, 
	 								datos de matricula)
 --------------------------------------------------------------------------------------------*/

drop table if exists cursos;
create table cursos (
  id int not null auto_increment,
  nombre varchar(50) not null,
  descripción text not null,
  primary key (id)
);


drop table if exists periodo_lectivo;
create table periodo_lectivo (
  id int not null auto_increment,
  nombre varchar(50) not null,
  descripción text not null,
  desde datetime not null,
  hasta datetime not null, 
  primary key (id)
);


drop table if exists curso_maestro;
create table curso_maestro(
  id int not null auto_increment,
  id_curso int not null,
  id_maestro int not null,
  id_periodo_lectivo int not null,
  vigente boolean not null,
  primary key (id),
  foreign key (id_curso) references cursos(id),
  foreign key (id_maestro) references maestros(id),
  foreign key (id_periodo_lectivo) references periodo_lectivo(id)
);


drop table if exists matriculas;
create table matriculas (
  id int not null,
  id_estudiante int not null,
  id_curso int not null,
  id_periodo_lectivo int not null,
  fecha_matricula datetime not null,
  vigente boolean not null,
  primary key (id),
  foreign key (id_estudiante) references estudiantes(id),
  foreign key (id_curso) references cursos(id),
  foreign key (id_periodo_lectivo)references periodo_lectivo(id)
);


drop table if exists documentos_matricula;
create table documentos_matricula (
    id int not null auto_increment,
    id_matricula int not null,
    nombre_documento varchar(100) not null,
    url_documento varchar(255) not null,
    fecha_creacion datetime not null,
    id_tipo_documento int not null,
   	
    primary key (id),
    foreign key (id_matricula) references matriculas(id),
    foreign key (id_tipo_documento)references tipo_documento(id)
);




/*-------------------------------------------------------------------------------------------
						Tablas relacionadas con los procesos del curso 
					(materias, asignaturas, como se divide el periodo lectivo,
							tareas,calificaciones, asistencia)
 *------------------------------------------------------------------------------------------- */


drop table if exists materias;
create table materias (
  id int not null auto_increment,
  nombre varchar(50) not null,
  descripcion text not null,
  primary key (id)
);


drop table if exists asignaturas;
create table asignaturas (
  id int not null auto_increment,
  curso_id int not null,
  materia_id int not null,
  id_periodo_lectivo int not null,
  primary key (id),
  foreign key (curso_id) references cursos(id),
  foreign key (materia_id) references materias(id),
  foreign key (id_periodo_lectivo) references periodo_lectivo(id)
);



drop table if exists quimestre;
create table quimestre (
  id int not null auto_increment,
  nombre varchar(50) not null,
  descripcion text not null,
  id_periodo_lectivo int not null,
  primary key (id),
  foreign key (id_periodo_lectivo) references periodo_lectivo(id)
);


drop table if exists parcial;
create table parcial (
  id int not null auto_increment,
  nombre varchar(50) not null,
  descripcion text not null,
  id_quimestre int not null,
  primary key (id),
  foreign key (id_quimestre) references quimestre(id)
);


drop table if exists tareas;
create table tareas (
  id int auto_increment,
  id_asignatura int not null,
  id_parcial int not null,
  titulo varchar(255) not null,
  descripcion text,
  fecha timestamp default current_timestamp,
  primary key (id),
  foreign key (id_asignatura) references asignaturas(id),
  foreign key (id_parcial) references parcial(id)
);


drop table if exists asistencias;
create table asistencias (
  id int auto_increment,
  id_estudiante int not null,
  id_parcial int not null,
  id_asignatura int not null,
  fecha_asistencia date not null,
  asistio boolean not null,
  primary key (id),
  foreign key (id_estudiante) references estudiantes(id),
  foreign key (id_parcial) references parcial(id),
  foreign key (id_asignatura) references asignaturas(id)
);



drop table if exists calificaciones;
create table calificaciones (
  id int not null auto_increment,
  id_estudiante int not null,
  id_tarea int not null,
  calificacion decimal(5,2) not null,
  fecha timestamp default current_timestamp,
  primary key (id),
  foreign key (id_estudiante) references estudiantes(id),
  foreign key (id_tarea) references tareas(id)
);




/*----------------------------------------------------------------------------------
 						Tablas relacionadas con el sistema de facturas/pagos 
 -----------------------------------------------------------------------------------*/

drop table if exists tipo_factura;
create table tipo_factura (
  id int not null auto_increment,
  nombre varchar(50) not null,
  descripcion text not null,
  primary key (id)
);


drop table if exists facturas;
create table facturas (
  id int not null auto_increment,
  id_estudiante int not null,
  id_tipo_factura int not null,
  descripción text not null,
  monto decimal(10, 2) not null,
  fecha_emision timestamp default current_timestamp,
  fecha_vencimiento date not null,
  pagado boolean not null,
  primary key (id),
  foreign key (id_estudiante) references estudiantes(id),
  foreign key (id_tipo_factura) references tipo_factura(id)
);





/*show tables;*/


 /*selecciona los procedures*/
 /*
	 select routine_name
	 from information_schema.routines
	 where routine_type = 'procedure'
	 and routine_schema like 'kinder' 
	 and (routine_name like 'agregar%'
	 or routine_name like 'listar%'
	 or routine_name like 'actualizar%' 
	 or routine_name like 'eliminar%');
*/







