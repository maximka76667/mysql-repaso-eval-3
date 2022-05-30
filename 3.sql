CREATE DEFINER=`root`@`localhost` PROCEDURE `estadísticas`()
BEGIN

select
(
	select count(*)
	from articulos
) as articulos_total,
(
	select count(*)
	from familias
) as familias_total;

END