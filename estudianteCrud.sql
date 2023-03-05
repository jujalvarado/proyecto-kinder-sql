/*Script: Crud de las tablas relacionadas con estudiantes*/

/*Integrantes
 * 
 * 
 * 
 * 
 * Juan Jose Alvarado Piza 
 */

#----------------------CRUD estudiantes----------------
    
#-------insert
 
drop procedure if exists agregar_estudiantes;

Delimiter $$
create procedure agregar_estudiantes(
                                cedula varchar(20),
                                nombres varchar(50),
                                apellidos varchar(50),
                                genero enum('m','f'),
                                fecha_nacimiento date)
begin
        
    insert into estudiantes (
                                cedula,
                                nombres,
                                apellidos,
                                genero,
                                fecha_nacimiento)
                        values (
                                cedula,
                                nombres,
                                apellidos,
                                genero,
                                fecha_nacimiento);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_estudiantes;
Delimiter $$
create procedure listar_estudiantes(valor varchar(10) )
begin
    if ceil(valor) then
        select * from estudiantes where id = valor;		
    elseif valor = 'todos' then
        select * from estudiantes order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_estudiantes;
delimiter $$
create procedure actualizar_estudiantes(id int,
                                cedula varchar(20),
                                nombres varchar(50),
                                apellidos varchar(50),
                                genero enum('m','f'),
                                fecha_nacimiento date)
begin

   
    update estudiantes set estudiantes.cedula = cedula ,
                            estudiantes.nombres = nombres ,
                            estudiantes.apellidos = apellidos ,
                            estudiantes.genero = genero ,
                            estudiantes.fecha_nacimiento = fecha_nacimiento 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_estudiantes;
DELIMITER $$
create procedure eliminar_estudiantes(IN id INT)
BEGIN	
    
    delete from estudiantes where estudiantes.id = id;

end;
$$
delimiter ;
    

   
#-------insert
 
drop procedure if exists agregar_informacion_estudiante;

Delimiter $$
create procedure agregar_informacion_estudiante(
                                id_estudiante int(11),
                                estado_civil varchar(20),
                                etnia varchar(30),
                                hobbie varchar(100),
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
        
    insert into informacion_estudiante (
                                id_estudiante,
                                estado_civil,
                                etnia,
                                hobbie,
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
                                id_estudiante,
                                estado_civil,
                                etnia,
                                hobbie,
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
drop procedure if exists listar_informacion_estudiante;
Delimiter $$
create procedure listar_informacion_estudiante(valor varchar(10) )
begin
    if ceil(valor) then
        select * from informacion_estudiante where id = valor;		
    elseif valor = 'todos' then
        select * from informacion_estudiante order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_informacion_estudiante;
delimiter $$
create procedure actualizar_informacion_estudiante(id int,
                                id_estudiante int(11),
                                estado_civil varchar(20),
                                etnia varchar(30),
                                hobbie varchar(100),
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

   
    update informacion_estudiante set informacion_estudiante.id_estudiante = id_estudiante ,
                            informacion_estudiante.estado_civil = estado_civil ,
                            informacion_estudiante.etnia = etnia ,
                            informacion_estudiante.hobbie = hobbie ,
                            informacion_estudiante.pais_nacionalidad = pais_nacionalidad ,
                            informacion_estudiante.pais_nacimiento = pais_nacimiento ,
                            informacion_estudiante.provincia_nacimiento = provincia_nacimiento ,
                            informacion_estudiante.ciudad_nacimiento = ciudad_nacimiento ,
                            informacion_estudiante.pais_residencia = pais_residencia ,
                            informacion_estudiante.provincia_residencia = provincia_residencia ,
                            informacion_estudiante.ciudad_residencia = ciudad_residencia ,
                            informacion_estudiante.direccion_domicilio = direccion_domicilio ,
                            informacion_estudiante.discapacidad = discapacidad ,
                            informacion_estudiante.porcentaje_disc = porcentaje_disc ,
                            informacion_estudiante.tipo_disc = tipo_disc ,
                            informacion_estudiante.nro_carnet = nro_carnet ,
                            informacion_estudiante.enfermedad = enfermedad ,
                            informacion_estudiante.tipo_sangre = tipo_sangre 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_informacion_estudiante;
DELIMITER $$
create procedure eliminar_informacion_estudiante(IN id INT)
BEGIN	
    
    delete from informacion_estudiante where informacion_estudiante.id = id;

end;
$$
delimiter ;



#----------------------CRUD documentos_estudiante----------------
    
#-------insert
 
drop procedure if exists agregar_documentos_estudiante;

Delimiter $$
create procedure agregar_documentos_estudiante(
                                id_estudiante int(11),
                                nombre_documento varchar(100),
                                url_documento varchar(255),
                                fecha_creacion datetime,
                                id_tipo_documento int(11))
begin
        
    insert into documentos_estudiante (
                                id_estudiante,
                                nombre_documento,
                                url_documento,
                                fecha_creacion,
                                id_tipo_documento)
                        values (
                                id_estudiante,
                                nombre_documento,
                                url_documento,
                                fecha_creacion,
                                id_tipo_documento);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_documentos_estudiante;
Delimiter $$
create procedure listar_documentos_estudiante(valor varchar(10) )
begin
    if ceil(valor) then
        select * from documentos_estudiante where id = valor;		
    elseif valor = 'todos' then
        select * from documentos_estudiante order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_documentos_estudiante;
delimiter $$
create procedure actualizar_documentos_estudiante(id int,
                                id_estudiante int(11),
                                nombre_documento varchar(100),
                                url_documento varchar(255),
                                fecha_creacion datetime,
                                id_tipo_documento int(11))
begin

   
    update documentos_estudiante set documentos_estudiante.id_estudiante = id_estudiante ,
                            documentos_estudiante.nombre_documento = nombre_documento ,
                            documentos_estudiante.url_documento = url_documento ,
                            documentos_estudiante.fecha_creacion = fecha_creacion ,
                            documentos_estudiante.id_tipo_documento = id_tipo_documento 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_documentos_estudiante;
DELIMITER $$
create procedure eliminar_documentos_estudiante(IN id INT)
BEGIN	
    
    delete from documentos_estudiante where documentos_estudiante.id = id;

end;
$$
delimiter ;
    
    



# esta no se donde iba

#----------------------CRUD representante_estudiante----------------
    
#-------insert
 
drop procedure if exists agregar_representante_estudiante;

Delimiter $$
create procedure agregar_representante_estudiante(
                                id_estudiante int(11),
                                id_representante int(11),
                                parentesco varchar(30))
begin
        
    insert into representante_estudiante (
                                id_estudiante,
                                id_representante,
                                parentesco)
                        values (
                                id_estudiante,
                                id_representante,
                                parentesco);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_representante_estudiante;
Delimiter $$
create procedure listar_representante_estudiante(valor varchar(10) )
begin
    if ceil(valor) then
        select * from representante_estudiante where id = valor;		
    elseif valor = 'todos' then
        select * from representante_estudiante order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_representante_estudiante;
delimiter $$
create procedure actualizar_representante_estudiante(id int,
                                id_estudiante int(11),
                                id_representante int(11),
                                parentesco varchar(30))
begin

   
    update representante_estudiante set representante_estudiante.id_estudiante = id_estudiante ,
                            representante_estudiante.id_representante = id_representante ,
                            representante_estudiante.parentesco = parentesco 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_representante_estudiante;
DELIMITER $$
create procedure eliminar_representante_estudiante(IN id INT)
BEGIN	
    
    delete from representante_estudiante where representante_estudiante.id = id;

end;
$$
delimiter ;
    








