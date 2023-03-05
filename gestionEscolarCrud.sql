/*Script: Crud de las tablas relacionadas con gestion escolar*/

/*Integrantes
 * 
 * 
 * 
 * 
 * Juan Jose Alvarado Piza 
 */




#----------------------CRUD periodo_lectivo----------------
    
#-------insert
 
drop procedure if exists agregar_periodo_lectivo;

Delimiter $$
create procedure agregar_periodo_lectivo(
                                nombre varchar(50),
                                descripción text,
                                desde datetime,
                                hasta datetime)
begin
        
    insert into periodo_lectivo (
                                nombre,
                                descripción,
                                desde,
                                hasta)
                        values (
                                nombre,
                                descripción,
                                desde,
                                hasta);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_periodo_lectivo;
Delimiter $$
create procedure listar_periodo_lectivo(valor varchar(10) )
begin
    if ceil(valor) then
        select * from periodo_lectivo where id = valor;		
    elseif valor = 'todos' then
        select * from periodo_lectivo order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_periodo_lectivo;
delimiter $$
create procedure actualizar_periodo_lectivo(id int,
                                nombre varchar(50),
                                descripción text,
                                desde datetime,
                                hasta datetime)
begin

   
    update periodo_lectivo set periodo_lectivo.nombre = nombre ,
                            periodo_lectivo.descripción = descripción ,
                            periodo_lectivo.desde = desde ,
                            periodo_lectivo.hasta = hasta 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_periodo_lectivo;
DELIMITER $$
create procedure eliminar_periodo_lectivo(IN id INT)
BEGIN	
    
    delete from periodo_lectivo where periodo_lectivo.id = id;

end;
$$
delimiter ;
    


#----------------------CRUD quimestre----------------
    
#-------insert
 
drop procedure if exists agregar_quimestre;

Delimiter $$
create procedure agregar_quimestre(
                                nombre varchar(50),
                                descripcion text,
                                id_periodo_lectivo int(11))
begin
        
    insert into quimestre (
                                nombre,
                                descripcion,
                                id_periodo_lectivo)
                        values (
                                nombre,
                                descripcion,
                                id_periodo_lectivo);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_quimestre;
Delimiter $$
create procedure listar_quimestre(valor varchar(10) )
begin
    if ceil(valor) then
        select * from quimestre where id = valor;		
    elseif valor = 'todos' then
        select * from quimestre order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_quimestre;
delimiter $$
create procedure actualizar_quimestre(id int,
                                nombre varchar(50),
                                descripcion text,
                                id_periodo_lectivo int(11))
begin

   
    update quimestre set quimestre.nombre = nombre ,
                            quimestre.descripcion = descripcion ,
                            quimestre.id_periodo_lectivo = id_periodo_lectivo 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_quimestre;
DELIMITER $$
create procedure eliminar_quimestre(IN id INT)
BEGIN	
    
    delete from quimestre where quimestre.id = id;

end;
$$
delimiter ;
    


#----------------------CRUD parcial----------------
    
#-------insert
 
drop procedure if exists agregar_parcial;

Delimiter $$
create procedure agregar_parcial(
                                nombre varchar(50),
                                descripcion text,
                                id_quimestre int(11))
begin
        
    insert into parcial (
                                nombre,
                                descripcion,
                                id_quimestre)
                        values (
                                nombre,
                                descripcion,
                                id_quimestre);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_parcial;
Delimiter $$
create procedure listar_parcial(valor varchar(10) )
begin
    if ceil(valor) then
        select * from parcial where id = valor;		
    elseif valor = 'todos' then
        select * from parcial order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_parcial;
delimiter $$
create procedure actualizar_parcial(id int,
                                nombre varchar(50),
                                descripcion text,
                                id_quimestre int(11))
begin

   
    update parcial set parcial.nombre = nombre ,
                            parcial.descripcion = descripcion ,
                            parcial.id_quimestre = id_quimestre 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_parcial;
DELIMITER $$
create procedure eliminar_parcial(IN id INT)
BEGIN	
    
    delete from parcial where parcial.id = id;

end;
$$
delimiter ;
    

#----------------------CRUD materias----------------
    
#-------insert
 
drop procedure if exists agregar_materias;

Delimiter $$
create procedure agregar_materias(
                                nombre varchar(50),
                                descripcion text)
begin
        
    insert into materias (
                                nombre,
                                descripcion)
                        values (
                                nombre,
                                descripcion);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_materias;
Delimiter $$
create procedure listar_materias(valor varchar(10) )
begin
    if ceil(valor) then
        select * from materias where id = valor;		
    elseif valor = 'todos' then
        select * from materias order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_materias;
delimiter $$
create procedure actualizar_materias(id int,
                                nombre varchar(50),
                                descripcion text)
begin

   
    update materias set materias.nombre = nombre ,
                            materias.descripcion = descripcion 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_materias;
DELIMITER $$
create procedure eliminar_materias(IN id INT)
BEGIN	
    
    delete from materias where materias.id = id;

end;
$$
delimiter ;



#----------------------CRUD cursos----------------
    
#-------insert
 
drop procedure if exists agregar_cursos;

Delimiter $$
create procedure agregar_cursos(
                                nombre varchar(50),
                                descripción text)
begin
        
    insert into cursos (
                                nombre,
                                descripción)
                        values (
                                nombre,
                                descripción);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_cursos;
Delimiter $$
create procedure listar_cursos(valor varchar(10) )
begin
    if ceil(valor) then
        select * from cursos where id = valor;		
    elseif valor = 'todos' then
        select * from cursos order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_cursos;
delimiter $$
create procedure actualizar_cursos(id int,
                                nombre varchar(50),
                                descripción text)
begin

   
    update cursos set cursos.nombre = nombre ,
                            cursos.descripción = descripción 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_cursos;
DELIMITER $$
create procedure eliminar_cursos(IN id INT)
BEGIN	
    
    delete from cursos where cursos.id = id;

end;
$$
delimiter ;
    
    

#----------------------CRUD asignaturas----------------
    
#-------insert
 
drop procedure if exists agregar_asignaturas;

Delimiter $$
create procedure agregar_asignaturas(
                                curso_id int(11),
                                materia_id int(11),
                                id_periodo_lectivo int(11))
begin
        
    insert into asignaturas (
                                curso_id,
                                materia_id,
                                id_periodo_lectivo)
                        values (
                                curso_id,
                                materia_id,
                                id_periodo_lectivo);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_asignaturas;
Delimiter $$
create procedure listar_asignaturas(valor varchar(10) )
begin
    if ceil(valor) then
        select * from asignaturas where id = valor;		
    elseif valor = 'todos' then
        select * from asignaturas order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_asignaturas;
delimiter $$
create procedure actualizar_asignaturas(id int,
                                curso_id int(11),
                                materia_id int(11),
                                id_periodo_lectivo int(11))
begin

   
    update asignaturas set asignaturas.curso_id = curso_id ,
                            asignaturas.materia_id = materia_id ,
                            asignaturas.id_periodo_lectivo = id_periodo_lectivo 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_asignaturas;
DELIMITER $$
create procedure eliminar_asignaturas(IN id INT)
BEGIN	
    
    delete from asignaturas where asignaturas.id = id;

end;
$$
delimiter ;


 
#----------------------CRUD asistencias----------------
    
#-------insert
 
drop procedure if exists agregar_asistencias;

Delimiter $$
create procedure agregar_asistencias(
                                id_estudiante int(11),
                                id_parcial int(11),
                                id_asignatura int(11),
                                fecha_asistencia date,
                                asistio boolean)
begin
        
    insert into asistencias (
                                id_estudiante,
                                id_parcial,
                                id_asignatura,
                                fecha_asistencia,
                                asistio)
                        values (
                                id_estudiante,
                                id_parcial,
                                id_asignatura,
                                fecha_asistencia,
                                asistio);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_asistencias;
Delimiter $$
create procedure listar_asistencias(valor varchar(10) )
begin
    if ceil(valor) then
        select * from asistencias where id = valor;		
    elseif valor = 'todos' then
        select * from asistencias order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_asistencias;
delimiter $$
create procedure actualizar_asistencias(id int,
                                id_estudiante int(11),
                                id_parcial int(11),
                                id_asignatura int(11),
                                fecha_asistencia date,
                                asistio boolean)
begin

   
    update asistencias set asistencias.id_estudiante = id_estudiante ,
                            asistencias.id_parcial = id_parcial ,
                            asistencias.id_asignatura = id_asignatura ,
                            asistencias.fecha_asistencia = fecha_asistencia ,
                            asistencias.asistio = asistio 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_asistencias;
DELIMITER $$
create procedure eliminar_asistencias(IN id INT)
BEGIN	
    
    delete from asistencias where asistencias.id = id;

end;
$$
delimiter ;
       

#----------------------CRUD tareas----------------
    
#-------insert
 
drop procedure if exists agregar_tareas;

Delimiter $$
create procedure agregar_tareas(
                                id_asignatura int(11),
                                id_parcial int(11),
                                titulo varchar(255),
                                descripcion text,
                                fecha timestamp)
begin
        
    insert into tareas (
                                id_asignatura,
                                id_parcial,
                                titulo,
                                descripcion,
                                fecha)
                        values (
                                id_asignatura,
                                id_parcial,
                                titulo,
                                descripcion,
                                fecha);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_tareas;
Delimiter $$
create procedure listar_tareas(valor varchar(10) )
begin
    if ceil(valor) then
        select * from tareas where id = valor;		
    elseif valor = 'todos' then
        select * from tareas order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_tareas;
delimiter $$
create procedure actualizar_tareas(id int,
                                id_asignatura int(11),
                                id_parcial int(11),
                                titulo varchar(255),
                                descripcion text,
                                fecha timestamp)
begin

   
    update tareas set tareas.id_asignatura = id_asignatura ,
                            tareas.id_parcial = id_parcial ,
                            tareas.titulo = titulo ,
                            tareas.descripcion = descripcion ,
                            tareas.fecha = fecha 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_tareas;
DELIMITER $$
create procedure eliminar_tareas(IN id INT)
BEGIN	
    
    delete from tareas where tareas.id = id;

end;
$$
delimiter ;
    


#----------------------CRUD calificaciones----------------
    
#-------insert
 
drop procedure if exists agregar_calificaciones;

Delimiter $$
create procedure agregar_calificaciones(
                                id_estudiante int(11),
                                id_tarea int(11),
                                calificacion decimal(5,2),
                                fecha timestamp)
begin
        
    insert into calificaciones (
                                id_estudiante,
                                id_tarea,
                                calificacion,
                                fecha)
                        values (
                                id_estudiante,
                                id_tarea,
                                calificacion,
                                fecha);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_calificaciones;
Delimiter $$
create procedure listar_calificaciones(valor varchar(10) )
begin
    if ceil(valor) then
        select * from calificaciones where id = valor;		
    elseif valor = 'todos' then
        select * from calificaciones order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_calificaciones;
delimiter $$
create procedure actualizar_calificaciones(id int,
                                id_estudiante int(11),
                                id_tarea int(11),
                                calificacion decimal(5,2),
                                fecha timestamp)
begin

   
    update calificaciones set calificaciones.id_estudiante = id_estudiante ,
                            calificaciones.id_tarea = id_tarea ,
                            calificaciones.calificacion = calificacion ,
                            calificaciones.fecha = fecha 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_calificaciones;
DELIMITER $$
create procedure eliminar_calificaciones(IN id INT)
BEGIN	
    
    delete from calificaciones where calificaciones.id = id;

end;
$$
delimiter ;
    


# no se donde va


#----------------------CRUD tipo_documento----------------
    
#-------insert
 
drop procedure if exists agregar_tipo_documento;

Delimiter $$
create procedure agregar_tipo_documento(
                                nombre varchar(50),
                                descripcion varchar(60))
begin
        
    insert into tipo_documento (
                                nombre,
                                descripcion)
                        values (
                                nombre,
                                descripcion);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_tipo_documento;
Delimiter $$
create procedure listar_tipo_documento(valor varchar(10) )
begin
    if ceil(valor) then
        select * from tipo_documento where id = valor;		
    elseif valor = 'todos' then
        select * from tipo_documento order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_tipo_documento;
delimiter $$
create procedure actualizar_tipo_documento(id int,
                                nombre varchar(50),
                                descripcion varchar(60))
begin

   
    update tipo_documento set tipo_documento.nombre = nombre ,
                            tipo_documento.descripcion = descripcion 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_tipo_documento;
DELIMITER $$
create procedure eliminar_tipo_documento(IN id INT)
BEGIN	
    
    delete from tipo_documento where tipo_documento.id = id;

end;
$$
delimiter ;
    









