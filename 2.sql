CREATE DEFINER=`root`@`localhost` PROCEDURE `buscarPorMarca`(marca VARCHAR(50))
BEGIN

SELECT *
FROM articulos
WHERE articulos.marca = marca;

END