﻿--FUNCION PARA MOSTRAR REGISTRO POR ID Y MOSTRAR SOLO LOS ACTIVOS
CREATE FUNCTION fn_Curso_SeleccionarsPorId
(
		@CodigoCurso VARCHAR(10)
)
RETURNS TABLE
AS
RETURN
SELECT * FROM Cursos
WHERE CodigoCurso = @CodigoCurso
AND Activo = 1