CREATE DEFINER=`root`@`localhost` PROCEDURE `aumentarPrecio`()
BEGIN
    DECLARE finished int default false;
    
    DECLARE multiplicador double default 1.05;
    DECLARE contador int default 1;
    DECLARE p_num_articulos int;
    
    DECLARE articulosCursor cursor for
		SELECT cod_articulo
        FROM articulos
        ORDER BY precio
        LIMIT 3;
        
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET finished = true;
    
    open articulosCursor;
    
    aumentarPrecio: LOOP
		FETCH articulosCursor into p_num_articulos;
        if finished then
			leave aumentarPrecio;
		end if;
        
	    if contador = 2 then set multiplicador = 1.03;
		elseif contador = 3 then set multiplicador = 1.01;
		end if;
        
        UPDATE articulos
        SET precio = precio * multiplicador
        WHERE cod_articulo = p_num_articulos;
        
        SET contador = contador + 1;
        
	END LOOP aumentarPrecio;
END