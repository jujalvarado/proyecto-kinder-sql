/*Script: Procedimientos Varios
  base de datos Kinder"*/

/*Integrantes
 * 
 * 
 * 
 * 
 * Juan Jose Alvarado Piza 
 */




#-------------------------------Procedimientos varios------------------------

-- procedure que permite buscar cualquier cosa en cualquier tabla
drop procedure if exists buscar;
delimiter $$
create procedure buscar(campo varchar(50),
						tabla varchar(50),
						dato varchar (50))
begin
	
	declare consulta varchar (400);
	
	set @resultado = '';
	set consulta = Concat('Select ',campo,' into @resultado from ',tabla,' where ',campo," = '" ,dato,"' limit 1;");
	
	prepare declaracion from consulta;
	execute declaracion;

end
$$
delimiter ;


# obtener el id solo mediante un dato unico (cedula, color, etc..)

drop procedure if exists buscarid;
delimiter $$
create procedure buscarid(campo_id varchar(50),
						campo varchar(50),
						tabla varchar(50),
						dato varchar (50))
begin
	
	declare consulta varchar (300);
	
	set @resultado = '';
	set consulta = Concat('Select ',campo_id,' into @resultado from ',tabla,' where ',campo," = '" ,dato,"' ;");
	
	prepare declaracion from consulta;
	execute declaracion;

end
$$
delimiter ;


