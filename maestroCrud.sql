/*Script: Crud de las tablas relacionadas con maestros*/

/*Integrantes
 * 
 * 
 * 
 * 
 * Juan Jose Alvarado Piza 
 */



#----------------------CRUD maestros----------------
    
#-------insert
 
drop procedure if exists agregar_maestros;

Delimiter $$
create procedure agregar_maestros(
                                cedula varchar(20),
                                nombres varchar(50),
                                apellidos varchar(50),
                                genero enum('m','f'),
                                email varchar(100),
                                telefono varchar(20))
begin
        
    insert into maestros (
                                cedula,
                                nombres,
                                apellidos,
                                genero,
                                email,
                                telefono)
                        values (
                                cedula,
                                nombres,
                                apellidos,
                                genero,
                                email,
                                telefono);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_maestros;
Delimiter $$
create procedure listar_maestros(valor varchar(10) )
begin
    if ceil(valor) then
        select * from maestros where id = valor;		
    elseif valor = 'todos' then
        select * from maestros order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_maestros;
delimiter $$
create procedure actualizar_maestros(id int,
                                cedula varchar(20),
                                nombres varchar(50),
                                apellidos varchar(50),
                                genero enum('m','f'),
                                email varchar(100),
                                telefono varchar(20))
begin

   
    update maestros set maestros.cedula = cedula ,
                            maestros.nombres = nombres ,
                            maestros.apellidos = apellidos ,
                            maestros.genero = genero ,
                            maestros.email = email ,
                            maestros.telefono = telefono 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_maestros;
DELIMITER $$
create procedure eliminar_maestros(IN id INT)
BEGIN	
    
    delete from maestros where maestros.id = id;

end;
$$
delimiter ;
    


#----------------------CRUD informacion_maestro----------------
    
#-------insert
 
drop procedure if exists agregar_informacion_maestro;

Delimiter $$
create procedure agregar_informacion_maestro(
                                id_maestro int(11),
                                estado_civil varchar(20),
                                etnia varchar(30),
                                nivel_formacion varchar(100),
                                especialidad varchar(100),
                                experiencia_laboral int(11),
                                ingresos decimal(10,2),
                                prueba_personalidad decimal(5,2),
                                pais_nacionalidad varchar(50),
                                pais_nacimiento varchar(50),
                                provincia_nacimiento varchar(50),
                                ciudad_nacimiento varchar(50),
                                pais_residencia varchar(50),
                                provincia_residencia varchar(50),
                                ciudad_residencia varchar(50),
                                direccion_domicilio varchar(120),
                                discapacidad boolean,
                                porcentaje_disc int(11),
                                tipo_disc varchar(50),
                                nro_carnet int(11),
                                enfermedad varchar(100),
                                tipo_sangre varchar(10))
begin
        
    insert into informacion_maestro (
                                id_maestro,
                                estado_civil,
                                etnia,
                                nivel_formacion,
                                especialidad,
                                experiencia_laboral,
                                ingresos,
                                prueba_personalidad,
                                pais_nacionalidad,
                                pais_nacimiento,
                                provincia_nacimiento,
                                ciudad_nacimiento,
                                pais_residencia,
                                provincia_residencia,
                                ciudad_residencia,
                                direccion_domicilio,
                                discapacidad,
                                porcentaje_disc,
                                tipo_disc,
                                nro_carnet,
                                enfermedad,
                                tipo_sangre)
                        values (
                                id_maestro,
                                estado_civil,
                                etnia,
                                nivel_formacion,
                                especialidad,
                                experiencia_laboral,
                                ingresos,
                                prueba_personalidad,
                                pais_nacionalidad,
                                pais_nacimiento,
                                provincia_nacimiento,
                                ciudad_nacimiento,
                                pais_residencia,
                                provincia_residencia,
                                ciudad_residencia,
                                direccion_domicilio,
                                discapacidad,
                                porcentaje_disc,
                                tipo_disc,
                                nro_carnet,
                                enfermedad,
                                tipo_sangre);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_informacion_maestro;
Delimiter $$
create procedure listar_informacion_maestro(valor varchar(10) )
begin
    if ceil(valor) then
        select * from informacion_maestro where id = valor;		
    elseif valor = 'todos' then
        select * from informacion_maestro order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_informacion_maestro;
delimiter $$
create procedure actualizar_informacion_maestro(id int,
                                id_maestro int(11),
                                estado_civil varchar(20),
                                etnia varchar(30),
                                nivel_formacion varchar(100),
                                especialidad varchar(100),
                                experiencia_laboral int(11),
                                ingresos decimal(10,2),
                                prueba_personalidad decimal(5,2),
                                pais_nacionalidad varchar(50),
                                pais_nacimiento varchar(50),
                                provincia_nacimiento varchar(50),
                                ciudad_nacimiento varchar(50),
                                pais_residencia varchar(50),
                                provincia_residencia varchar(50),
                                ciudad_residencia varchar(50),
                                direccion_domicilio varchar(120),
                                discapacidad boolean,
                                porcentaje_disc int(11),
                                tipo_disc varchar(50),
                                nro_carnet int(11),
                                enfermedad varchar(100),
                                tipo_sangre varchar(10))
begin

   
    update informacion_maestro set informacion_maestro.id_maestro = id_maestro ,
                            informacion_maestro.estado_civil = estado_civil ,
                            informacion_maestro.etnia = etnia ,
                            informacion_maestro.nivel_formacion = nivel_formacion ,
                            informacion_maestro.especialidad = especialidad ,
                            informacion_maestro.experiencia_laboral = experiencia_laboral ,
                            informacion_maestro.ingresos = ingresos ,
                            informacion_maestro.prueba_personalidad = prueba_personalidad ,
                            informacion_maestro.pais_nacionalidad = pais_nacionalidad ,
                            informacion_maestro.pais_nacimiento = pais_nacimiento ,
                            informacion_maestro.provincia_nacimiento = provincia_nacimiento ,
                            informacion_maestro.ciudad_nacimiento = ciudad_nacimiento ,
                            informacion_maestro.pais_residencia = pais_residencia ,
                            informacion_maestro.provincia_residencia = provincia_residencia ,
                            informacion_maestro.ciudad_residencia = ciudad_residencia ,
                            informacion_maestro.direccion_domicilio = direccion_domicilio ,
                            informacion_maestro.discapacidad = discapacidad ,
                            informacion_maestro.porcentaje_disc = porcentaje_disc ,
                            informacion_maestro.tipo_disc = tipo_disc ,
                            informacion_maestro.nro_carnet = nro_carnet ,
                            informacion_maestro.enfermedad = enfermedad ,
                            informacion_maestro.tipo_sangre = tipo_sangre 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_informacion_maestro;
DELIMITER $$
create procedure eliminar_informacion_maestro(IN id INT)
BEGIN	
    
    delete from informacion_maestro where informacion_maestro.id = id;

end;
$$
delimiter ;


#----------------------CRUD documentos_maestro----------------
    
#-------insert
 
drop procedure if exists agregar_documentos_maestro;

Delimiter $$
create procedure agregar_documentos_maestro(
                                id_maestro int(11),
                                nombre_documento varchar(100),
                                url_documento varchar(255),
                                fecha_creacion datetime,
                                id_tipo_documento int(11))
begin
        
    insert into documentos_maestro (
                                id_maestro,
                                nombre_documento,
                                url_documento,
                                fecha_creacion,
                                id_tipo_documento)
                        values (
                                id_maestro,
                                nombre_documento,
                                url_documento,
                                fecha_creacion,
                                id_tipo_documento);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_documentos_maestro;
Delimiter $$
create procedure listar_documentos_maestro(valor varchar(10) )
begin
    if ceil(valor) then
        select * from documentos_maestro where id = valor;		
    elseif valor = 'todos' then
        select * from documentos_maestro order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_documentos_maestro;
delimiter $$
create procedure actualizar_documentos_maestro(id int,
                                id_maestro int(11),
                                nombre_documento varchar(100),
                                url_documento varchar(255),
                                fecha_creacion datetime,
                                id_tipo_documento int(11))
begin

   
    update documentos_maestro set documentos_maestro.id_maestro = id_maestro ,
                            documentos_maestro.nombre_documento = nombre_documento ,
                            documentos_maestro.url_documento = url_documento ,
                            documentos_maestro.fecha_creacion = fecha_creacion ,
                            documentos_maestro.id_tipo_documento = id_tipo_documento 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_documentos_maestro;
DELIMITER $$
create procedure eliminar_documentos_maestro(IN id INT)
BEGIN	
    
    delete from documentos_maestro where documentos_maestro.id = id;

end;
$$
delimiter ;
    


#----------------------CRUD curso_maestro----------------
    
#-------insert
 
drop procedure if exists agregar_curso_maestro;

Delimiter $$
create procedure agregar_curso_maestro(
                                id_curso int(11),
                                id_maestro int(11),
                                id_periodo_lectivo int(11),
                                vigente boolean)
begin
        
    insert into curso_maestro (
                                id_curso,
                                id_maestro,
                                id_periodo_lectivo,
                                vigente)
                        values (
                                id_curso,
                                id_maestro,
                                id_periodo_lectivo,
                                vigente);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_curso_maestro;
Delimiter $$
create procedure listar_curso_maestro(valor varchar(10) )
begin
    if ceil(valor) then
        select * from curso_maestro where id = valor;		
    elseif valor = 'todos' then
        select * from curso_maestro order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_curso_maestro;
delimiter $$
create procedure actualizar_curso_maestro(id int,
                                id_curso int(11),
                                id_maestro int(11),
                                id_periodo_lectivo int(11),
                                vigente boolean)
begin

   
    update curso_maestro set curso_maestro.id_curso = id_curso ,
                            curso_maestro.id_maestro = id_maestro ,
                            curso_maestro.id_periodo_lectivo = id_periodo_lectivo ,
                            curso_maestro.vigente = vigente 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_curso_maestro;
DELIMITER $$
create procedure eliminar_curso_maestro(IN id INT)
BEGIN	
    
    delete from curso_maestro where curso_maestro.id = id;

end;
$$
delimiter ;
    









