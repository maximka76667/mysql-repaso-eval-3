CREATE DEFINER=`root`@`localhost` FUNCTION `precio_con_descuento`(precio decimal, descuento int) RETURNS decimal(10,0)
BEGIN
RETURN precio * (1 - IF(descuento is NULL, 0, descuento) / 100);
END