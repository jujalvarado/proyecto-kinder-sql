/*Script: Crud de las tablas relacionadas con administradores, usuarios*/

/*Integrantes
 * 
 * 
 * 
 * 
 * Juan Jose Alvarado Piza 
 */



#----------------------CRUD administradores----------------
    
#-------insert
 
drop procedure if exists agregar_administradores;

Delimiter $$
create procedure agregar_administradores(
                                cedula varchar(20),
                                nombres varchar(50),
                                apellidos varchar(50),
                                genero enum('m','f'),
                                email varchar(100),
                                telefono varchar(20),
                                id_usuario int(11))
begin
        
    insert into administradores (
                                cedula,
                                nombres,
                                apellidos,
                                genero,
                                email,
                                telefono,
                                id_usuario)
                        values (
                                cedula,
                                nombres,
                                apellidos,
                                genero,
                                email,
                                telefono,
                                id_usuario);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_administradores;
Delimiter $$
create procedure listar_administradores(valor varchar(10) )
begin
    if ceil(valor) then
        select * from administradores where id = valor;		
    elseif valor = 'todos' then
        select * from administradores order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_administradores;
delimiter $$
create procedure actualizar_administradores(id int,
                                cedula varchar(20),
                                nombres varchar(50),
                                apellidos varchar(50),
                                genero enum('m','f'),
                                email varchar(100),
                                telefono varchar(20),
                                id_usuario int(11))
begin

   
    update administradores set administradores.cedula = cedula ,
                            administradores.nombres = nombres ,
                            administradores.apellidos = apellidos ,
                            administradores.genero = genero ,
                            administradores.email = email ,
                            administradores.telefono = telefono ,
                            administradores.id_usuario = id_usuario 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_administradores;
DELIMITER $$
create procedure eliminar_administradores(IN id INT)
BEGIN	
    
    delete from administradores where administradores.id = id;

end;
$$
delimiter ;
    

#----------------------CRUD usuarios----------------
    
#-------insert
 
drop procedure if exists agregar_usuarios;

Delimiter $$
create procedure agregar_usuarios(
                                nombre varchar(50),
                                email varchar(100),
                                contraseña varchar(100),
                                rol enum('administrador','representante','maestro','estudiante'))
begin
        
    insert into usuarios (
                                nombre,
                                email,
                                contraseña,
                                rol)
                        values (
                                nombre,
                                email,
                                contraseña,
                                rol);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_usuarios;
Delimiter $$
create procedure listar_usuarios(valor varchar(10) )
begin
    if ceil(valor) then
        select * from usuarios where id = valor;		
    elseif valor = 'todos' then
        select * from usuarios order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_usuarios;
delimiter $$
create procedure actualizar_usuarios(id int,
                                nombre varchar(50),
                                email varchar(100),
                                contraseña varchar(100),
                                rol enum('administrador','representante','maestro','estudiante'))
begin

   
    update usuarios set usuarios.nombre = nombre ,
                            usuarios.email = email ,
                            usuarios.contraseña = contraseña ,
                            usuarios.rol = rol 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_usuarios;
DELIMITER $$
create procedure eliminar_usuarios(IN id INT)
BEGIN	
    
    delete from usuarios where usuarios.id = id;

end;
$$
delimiter ;
    







