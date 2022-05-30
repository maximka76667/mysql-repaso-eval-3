CREATE DEFINER=`root`@`localhost` PROCEDURE `compararDosDecimales`(x decimal, y decimal)
BEGIN

	IF x > y THEN
	select x;
	ELSEIF x < y THEN
	select y;
    ELSE select "son iguales";
	END IF;

END