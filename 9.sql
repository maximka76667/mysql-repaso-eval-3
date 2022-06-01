CREATE DEFINER=`root`@`localhost` TRIGGER `tienda`.`articulos_AFTER_DELETE` AFTER DELETE ON `articulos` FOR EACH ROW
BEGIN
INSERT INTO log
VALUES(OLD.cod_articulo, OLD.marca, OLD.modelo, OLD.precio, OLD.descuento, OLD.descripcion, OLD.codigo_familia, OLD.precioConDesc);
END