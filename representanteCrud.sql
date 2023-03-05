
/*Script: Crud de las tablas relacionadas con representantes*/

/*Integrantes
 * 
 * 
 * 
 * 
 * Juan Jose Alvarado Piza 
 */

#-------------------------------------------------------------------------------------------------------------------

#----------------------CRUD representantes----------------

#-------insert
 
drop procedure if exists agregar_representantes;

Delimiter $$
create procedure agregar_representantes(
                                cedula varchar(20),
                                nombres varchar(50),
                                apellidos varchar(50),
                                fecha_nacimiento date,
                                genero enum('m','f'),
                                email varchar(100),
                                telefono varchar(20))
begin
        
    insert into representantes (
                                cedula,
                                nombres,
                                apellidos,
                                fecha_nacimiento,
                                genero,
                                email,
                                telefono
                                )
                        values (
                                cedula,
                                nombres,
                                apellidos,
                                fecha_nacimiento,
                                genero,
                                email,
                                telefono
                                );

end;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_representantes;
delimiter $$
create procedure actualizar_representantes(id int,
                                cedula varchar(20),
                                nombres varchar(50),
                                apellidos varchar(50),
                                fecha_nacimiento date,
                                genero enum('m','f'),
                                email varchar(100),
                                telefono varchar(20))
begin

   
    update representantes set representantes.cedula = cedula ,
                            representantes.nombres = nombres ,
                            representantes.apellidos = apellidos ,
                            representantes.fecha_nacimiento = fecha_nacimiento ,
                            representantes.genero = genero ,
                            representantes.email = email ,
                            representantes.telefono = telefono 
                            where id = id;
        
		
end;
$$
delimiter ;


#--------delete ------
drop procedure if exists eliminar_representantes;
DELIMITER $$
create procedure eliminar_representantes(IN id INT)
BEGIN	
    
    delete from representantes where representantes.id = id;

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_representantes;
Delimiter $$
create procedure listar_representantes(valor varchar(10) )
begin
    if ceil(valor) then
        select * from representantes where id = valor;		
    elseif valor = 'todos' then
        select * from representantes order by id desc;
    end if;
End;
$$
delimiter ;



#----------------------CRUD informacion_representante----------------
    
#-------insert
 
drop procedure if exists agregar_informacion_representante;

Delimiter $$
create procedure agregar_informacion_representante(
                                id_representante int(11),
                                estado_civil varchar(20),
                                etnia varchar(30),
                                nivel_formacion varchar(100),
                                ingresos decimal(10,2),
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
        
    insert into informacion_representante (
                                id_representante,
                                estado_civil,
                                etnia,
                                nivel_formacion,
                                ingresos,
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
                                id_representante,
                                estado_civil,
                                etnia,
                                nivel_formacion,
                                ingresos,
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
drop procedure if exists listar_informacion_representante;
Delimiter $$
create procedure listar_informacion_representante(valor varchar(10) )
begin
    if ceil(valor) then
        select * from informacion_representante where id = valor;		
    elseif valor = 'todos' then
        select * from informacion_representante order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_informacion_representante;
delimiter $$
create procedure actualizar_informacion_representante(id int,
                                id_representante int(11),
                                estado_civil varchar(20),
                                etnia varchar(30),
                                nivel_formacion varchar(100),
                                ingresos decimal(10,2),
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

   
    update informacion_representante set informacion_representante.id_representante = id_representante ,
                            informacion_representante.estado_civil = estado_civil ,
                            informacion_representante.etnia = etnia ,
                            informacion_representante.nivel_formacion = nivel_formacion ,
                            informacion_representante.ingresos = ingresos ,
                            informacion_representante.pais_nacionalidad = pais_nacionalidad ,
                            informacion_representante.pais_nacimiento = pais_nacimiento ,
                            informacion_representante.provincia_nacimiento = provincia_nacimiento ,
                            informacion_representante.ciudad_nacimiento = ciudad_nacimiento ,
                            informacion_representante.pais_residencia = pais_residencia ,
                            informacion_representante.provincia_residencia = provincia_residencia ,
                            informacion_representante.ciudad_residencia = ciudad_residencia ,
                            informacion_representante.direccion_domicilio = direccion_domicilio ,
                            informacion_representante.discapacidad = discapacidad ,
                            informacion_representante.porcentaje_disc = porcentaje_disc ,
                            informacion_representante.tipo_disc = tipo_disc ,
                            informacion_representante.nro_carnet = nro_carnet ,
                            informacion_representante.enfermedad = enfermedad ,
                            informacion_representante.tipo_sangre = tipo_sangre 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_informacion_representante;
DELIMITER $$
create procedure eliminar_informacion_representante(IN id INT)
BEGIN	
    
    delete from informacion_representante where informacion_representante.id = id;

end;
$$
delimiter ;


#----------------------CRUD documentos_representante----------------
    
#-------insert
 
drop procedure if exists agregar_documentos_representante;

Delimiter $$
create procedure agregar_documentos_representante(
                                id_representante int(11),
                                nombre_documento varchar(100),
                                url_documento varchar(255),
                                fecha_creacion datetime,
                                id_tipo_documento int(11))
begin
        
    insert into documentos_representante (
                                id_representante,
                                nombre_documento,
                                url_documento,
                                fecha_creacion,
                                id_tipo_documento)
                        values (
                                id_representante,
                                nombre_documento,
                                url_documento,
                                fecha_creacion,
                                id_tipo_documento);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_documentos_representante;
Delimiter $$
create procedure listar_documentos_representante(valor varchar(10) )
begin
    if ceil(valor) then
        select * from documentos_representante where id = valor;		
    elseif valor = 'todos' then
        select * from documentos_representante order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_documentos_representante;
delimiter $$
create procedure actualizar_documentos_representante(id int,
                                id_representante int(11),
                                nombre_documento varchar(100),
                                url_documento varchar(255),
                                fecha_creacion datetime,
                                id_tipo_documento int(11))
begin

   
    update documentos_representante set documentos_representante.id_representante = id_representante ,
                            documentos_representante.nombre_documento = nombre_documento ,
                            documentos_representante.url_documento = url_documento ,
                            documentos_representante.fecha_creacion = fecha_creacion ,
                            documentos_representante.id_tipo_documento = id_tipo_documento 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_documentos_representante;
DELIMITER $$
create procedure eliminar_documentos_representante(IN id INT)
BEGIN	
    
    delete from documentos_representante where documentos_representante.id = id;

end;
$$
delimiter ;
    
    









## En el formulario estudiantes se buscará a un representante y se preguntará el parentesco











