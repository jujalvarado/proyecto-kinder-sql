

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
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  genero enum('m','f') not null,
  email varchar(100) not null,
  telefono varchar(20) not null,
  id_usuario int not null,
  primary key (id),
  foreign key (id_usuario) references usuarios(id)
);


drop table if exists representantes;
create table representantes (
  id int not null auto_increment,
  cedula varchar(20) not null,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  genero enum('m','f') not null,
  email varchar(100) not null,
  telefono varchar(20) not null,
  id_usuario int not null,
  primary key (id),
  foreign key (id_usuario) references usuarios(id)
);


drop table if exists documentos_representantes;
create table documentos_representante (
    id int not null auto_increment,
    id_representante int not null,
    nombre_documento varchar(100) not null,
    url_documento varchar(255) not null,
    fecha_creacion datetime not null,
    primary key (id),
    foreign key (id_representante) references representantes(id)
);


drop table if exists estudiantes;
create table estudiantes (
  id int not null auto_increment,
  cedula varchar(20) not null,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  genero enum('m','f') not null,
  fecha_nacimiento date not null,
  id_representante int not null,
  primary key (id),
  foreign key (id_representante) references representantes(id)
);


drop table if exists documentos_estudiante;
create table documentos_estudiante (
    id int not null auto_increment,
    id_estudiante int not null,
    nombre_documento varchar(100) not null,
    url_documento varchar(255) not null,
    fecha_creacion datetime not null,
    primary key (id),
    foreign key (id_estudiante) references estudiantes(id)
);


drop table if exists asistencias;
create table asistencias (
  id int auto_increment,
  id_estudiante int not null,
  fecha_asistencia date not null,
  asistio tinyint(1) not null,
  primary key (id),
  foreign key (id_estudiante) references estudiantes(id)
);


drop table if exists maestros;
create table maestros (
  id int not null auto_increment,
  cedula varchar(20) not null,
  nombre varchar(50) not null,
  apellido varchar(50) not null,
  genero enum('m','f') not null,
  email varchar(100) not null,
  telefono varchar(20) not null,
  id_usuario int not null,
  primary key (id),
  foreign key (id_usuario) references usuarios(id)
);


drop table if exists documentos_maestro;
create table documentos_maestro (
    id int not null auto_increment,
    id_maestro int not null,
    nombre_documento varchar(100) not null,
    url_documento varchar(255) not null,
    fecha_creacion datetime not null,
    primary key (id),
    foreign key (id_maestro) references maestros(id)
);


drop table if exists cursos;
create table cursos (
  id int not null auto_increment,
  nombre varchar(50) not null,
  descripción text not null,
  primary key (id)
);


drop table if exists curso_maestro;
create table curso_maestro(
  id int not null auto_increment,
  id_curso int not null,
  id_maestro int not null,
  primary key (id),
  foreign key (id_curso) references cursos(id),
  foreign key (id_maestro) references maestros(id)
);


drop table if exists matriculas;
create table matriculas (
  id int not null,
  id_estudiante int not null,
  id_curso int not null,
  fecha_matricula date not null,
  vigente boolean not null,
  primary key (id),
  foreign key (id_estudiante) references estudiantes(id),
  foreign key (id_curso) references cursos(id)
);


drop table if exists documentos_matricula;
create table documentos_matricula (
    id int not null auto_increment,
    id_matricula int not null,
    nombre_documento varchar(100) not null,
    url_documento varchar(255) not null,
    fecha_creacion datetime not null,
    primary key (id),
    foreign key (id_matricula) references matriculas(id)
);


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
  primary key (id),
  foreign key (curso_id) references cursos(id),
  foreign key (materia_id) references materias(id)
);


drop table if exists parcial_quimestre;
create table parcial_quimestre (
  id int not null auto_increment,
  nombre varchar(50) not null,
  descripcion text not null,
  primary key (id)
);


drop table if exists tareas;
create table tareas (
  id int auto_increment,
  id_asignatura int not null,
  id_parcial_quimestre int not null,
  titulo varchar(255) not null,
  descripcion text,
  fecha timestamp default current_timestamp,
  primary key (id),
  foreign key (id_asignatura) references asignaturas(id),
  foreign key (id_parcial_quimestre) references parcial_quimestre(id)
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




-- agregar tablas de informacion adicional de estudiante, representante, maestro


-- show tables

-- describe database 





