--FUNCION PARA MOSTRAR DE LA TABLA TODOS LOS REGISTROS ACTIVOS
CREATE FUNCTION FN_Matricula_SeleccionarTodos()
RETURNS TABLE
AS
RETURN 
	SELECT * FROM Matricula WHERE Activo = 1