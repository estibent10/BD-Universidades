﻿--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Sedes_SeleccionarsPorId
(
	@CodigoSede INT
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Sedes
WHERE CodigoSede = @CodigoSede
AND Activo = 1