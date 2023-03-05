/*Script: Crud de las tablas relacionadas con matriculas*/

/*Integrantes
 * 
 * 
 * 
 * 
 * Juan Jose Alvarado Piza 
 */



#----------------------CRUD matriculas----------------
    
#-------insert
 
drop procedure if exists agregar_matriculas;

Delimiter $$
create procedure agregar_matriculas(
                                id_estudiante int(11),
                                id_curso int(11),
                                id_periodo_lectivo int(11),
                                fecha_matricula datetime,
                                vigente boolean)
begin
        
    insert into matriculas (
                                id_estudiante,
                                id_curso,
                                id_periodo_lectivo,
                                fecha_matricula,
                                vigente)
                        values (
                                id_estudiante,
                                id_curso,
                                id_periodo_lectivo,
                                fecha_matricula,
                                vigente);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_matriculas;
Delimiter $$
create procedure listar_matriculas(valor varchar(10) )
begin
    if ceil(valor) then
        select * from matriculas where id = valor;		
    elseif valor = 'todos' then
        select * from matriculas order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_matriculas;
delimiter $$
create procedure actualizar_matriculas(id int,
                                id_estudiante int(11),
                                id_curso int(11),
                                id_periodo_lectivo int(11),
                                fecha_matricula datetime,
                                vigente boolean)
begin

   
    update matriculas set matriculas.id_estudiante = id_estudiante ,
                            matriculas.id_curso = id_curso ,
                            matriculas.id_periodo_lectivo = id_periodo_lectivo ,
                            matriculas.fecha_matricula = fecha_matricula ,
                            matriculas.vigente = vigente 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_matriculas;
DELIMITER $$
create procedure eliminar_matriculas(IN id INT)
BEGIN	
    
    delete from matriculas where matriculas.id = id;

end;
$$
delimiter ;
    


#----------------------CRUD documentos_matricula----------------
    
#-------insert
 
drop procedure if exists agregar_documentos_matricula;

Delimiter $$
create procedure agregar_documentos_matricula(
                                id_matricula int(11),
                                nombre_documento varchar(100),
                                url_documento varchar(255),
                                fecha_creacion datetime,
                                id_tipo_documento int(11))
begin
        
    insert into documentos_matricula (
                                id_matricula,
                                nombre_documento,
                                url_documento,
                                fecha_creacion,
                                id_tipo_documento)
                        values (
                                id_matricula,
                                nombre_documento,
                                url_documento,
                                fecha_creacion,
                                id_tipo_documento);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_documentos_matricula;
Delimiter $$
create procedure listar_documentos_matricula(valor varchar(10) )
begin
    if ceil(valor) then
        select * from documentos_matricula where id = valor;		
    elseif valor = 'todos' then
        select * from documentos_matricula order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_documentos_matricula;
delimiter $$
create procedure actualizar_documentos_matricula(id int,
                                id_matricula int(11),
                                nombre_documento varchar(100),
                                url_documento varchar(255),
                                fecha_creacion datetime,
                                id_tipo_documento int(11))
begin

   
    update documentos_matricula set documentos_matricula.id_matricula = id_matricula ,
                            documentos_matricula.nombre_documento = nombre_documento ,
                            documentos_matricula.url_documento = url_documento ,
                            documentos_matricula.fecha_creacion = fecha_creacion ,
                            documentos_matricula.id_tipo_documento = id_tipo_documento 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_documentos_matricula;
DELIMITER $$
create procedure eliminar_documentos_matricula(IN id INT)
BEGIN	
    
    delete from documentos_matricula where documentos_matricula.id = id;

end;
$$
delimiter ;
    






