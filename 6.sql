CREATE DEFINER=`root`@`localhost` FUNCTION `añosTranscurridos`(fecha Date) RETURNS varchar(10) CHARSET utf8
BEGIN
RETURN FLOOR(DATEDIFF(CURDATE(), fecha) / 365);
END