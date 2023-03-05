
#-----------------------------------------------------------------------------------------
# Registro representante (info principal, info adicional)

drop procedure if exists registrar_representante;
delimiter $$
create procedure registrar_representante(
									    cedula VARCHAR(20),
									    nombres VARCHAR(50),
									    apellidos VARCHAR(50),
									    fecha_nacimiento DATE,
									    genero ENUM('m','f'),
									    email VARCHAR(100),
									    telefono VARCHAR(20),
									    
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
		                                tipo_sangre varchar(10)
									
									)
begin
	
	declare id_representante int;
	
	call agregar_representantes( cedula , nombres , apellidos , 
											fecha_nacimiento, genero, email , telefono );
	
	
	set id_representante = last_insert_id();


	call agregar_informacion_representante(id_representante,
										estado_civil ,
		                                etnia ,
		                                nivel_formacion ,
		                                ingresos,
		                                pais_nacionalidad ,
		                                pais_nacimiento ,
		                                provincia_nacimiento ,
		                                ciudad_nacimiento ,
		                                pais_residencia ,
		                                provincia_residencia ,
		                                ciudad_residencia ,
		                                direccion_domicilio,
		                                discapacidad,
		                                porcentaje_disc,
		                                tipo_disc ,
		                                nro_carnet ,
		                                enfermedad ,
		                                tipo_sangre ) ;
	
end;
$$
delimiter ;



call registrar_representante('1234567', 'prueba', 'prueba','2003-08-07','m', 'ioimfoe@gmail.com', '2434242',
'soltera','nose' , 'alto', 430.4 , 'ecuador', 'ecuador', 'guayas', 'guayaquil', 'ecuador', 'guayas', 'guayaquil',
'mi casa', true,45, 'cualquiera', 1234, 'NA', 'no se'); 


select * from representantes r
join informacion_representante ir 
on r.id = ir.id_representante 


