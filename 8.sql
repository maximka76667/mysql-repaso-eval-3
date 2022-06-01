CREATE DEFINER=`root`@`localhost` TRIGGER `tienda`.`articulos_BEFORE_UPDATE` BEFORE UPDATE ON `articulos` FOR EACH ROW
BEGIN
SET NEW.precioConDesc= IF(NEW.precio IS NULL, 0, NEW.precio) * (1 - IF(NEW.descuento IS NULL, 0, NEW.descuento / 100));
END