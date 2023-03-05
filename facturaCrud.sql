/*Script: Crud de las tablas relacionadas con facturas*/

/*Integrantes
 * 
 * 
 * 
 * 
 * Juan Jose Alvarado Piza 
 */




#----------------------CRUD facturas----------------
    
#-------insert
 
drop procedure if exists agregar_facturas;

Delimiter $$
create procedure agregar_facturas(
                                id_estudiante int(11),
                                id_tipo_factura int(11),
                                descripción text,
                                monto decimal(10,2),
                                fecha_emision timestamp,
                                fecha_vencimiento date,
                                pagado boolean)
begin
        
    insert into facturas (
                                id_estudiante,
                                id_tipo_factura,
                                descripción,
                                monto,
                                fecha_emision,
                                fecha_vencimiento,
                                pagado)
                        values (
                                id_estudiante,
                                id_tipo_factura,
                                descripción,
                                monto,
                                fecha_emision,
                                fecha_vencimiento,
                                pagado);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_facturas;
Delimiter $$
create procedure listar_facturas(valor varchar(10) )
begin
    if ceil(valor) then
        select * from facturas where id = valor;		
    elseif valor = 'todos' then
        select * from facturas order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_facturas;
delimiter $$
create procedure actualizar_facturas(id int,
                                id_estudiante int(11),
                                id_tipo_factura int(11),
                                descripción text,
                                monto decimal(10,2),
                                fecha_emision timestamp,
                                fecha_vencimiento date,
                                pagado boolean)
begin

   
    update facturas set facturas.id_estudiante = id_estudiante ,
                            facturas.id_tipo_factura = id_tipo_factura ,
                            facturas.descripción = descripción ,
                            facturas.monto = monto ,
                            facturas.fecha_emision = fecha_emision ,
                            facturas.fecha_vencimiento = fecha_vencimiento ,
                            facturas.pagado = pagado 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_facturas;
DELIMITER $$
create procedure eliminar_facturas(IN id INT)
BEGIN	
    
    delete from facturas where facturas.id = id;

end;
$$
delimiter ;
    



#----------------------CRUD tipo_factura----------------
    
#-------insert
 
drop procedure if exists agregar_tipo_factura;

Delimiter $$
create procedure agregar_tipo_factura(
                                nombre varchar(50),
                                descripcion text)
begin
        
    insert into tipo_factura (
                                nombre,
                                descripcion)
                        values (
                                nombre,
                                descripcion);

end;
$$
delimiter ;

#--------select------
drop procedure if exists listar_tipo_factura;
Delimiter $$
create procedure listar_tipo_factura(valor varchar(10) )
begin
    if ceil(valor) then
        select * from tipo_factura where id = valor;		
    elseif valor = 'todos' then
        select * from tipo_factura order by id desc;
    end if;
End;
$$
delimiter ;


#--------update------
drop procedure if exists actualizar_tipo_factura;
delimiter $$
create procedure actualizar_tipo_factura(id int,
                                nombre varchar(50),
                                descripcion text)
begin

   
    update tipo_factura set tipo_factura.nombre = nombre ,
                            tipo_factura.descripcion = descripcion 
                            where id = id;
        
		
end;
$$
delimiter ;

#--------delete ------
drop procedure if exists eliminar_tipo_factura;
DELIMITER $$
create procedure eliminar_tipo_factura(IN id INT)
BEGIN	
    
    delete from tipo_factura where tipo_factura.id = id;

end;
$$
delimiter ;
    



