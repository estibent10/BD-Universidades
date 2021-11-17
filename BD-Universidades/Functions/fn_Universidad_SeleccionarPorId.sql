--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION FN_Universidad_SeleccionarPorId
(
	@CodigoUniversidad INT
)
RETURNS TABLE
AS
RETURN
	SELECT * FROM Universidades
	WHERE CodigoUniversidad = @CodigoUniversidad 
	AND Activo = 1