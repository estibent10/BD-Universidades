
-- CREACIÓN DE LA BASE DE DATOS
CREATE DATABASE Universidad;
GO

--USO DE LA BASE DE DATOS
USE Universidad
GO

EXEC SP_Universidades_Insertar
	@CodigoUniversidad = 5,
	@NombreUniversidad = 'ULICORI',
	@CedulaJuridica = '5-5846564',
	@CreadoPor = NULL;
GO

EXEC SP_Universidades_Insertar
	@CodigoUniversidad = 3,
	@NombreUniversidad = 'U LATINA',
	@CedulaJuridica = '6-9123091',
	@CreadoPor = NULL;
GO

EXEC SP_Universidades_Insertar
	@CodigoUniversidad = 2,
	@NombreUniversidad = 'UNA',
	@CedulaJuridica = '2-0912342',
	@CreadoPor = NULL;
GO

EXEC SP_Universidades_Actualizar
	@CodigoUniversidad = 5,
	@NombreUniversidad = 'U LATINA',
	@CedulaJuridica = '5-5846564',
	@Activo = 1,
	@CreadoPor = NULL,
	@ModificadoPor = NULL;
GO

EXEC SP_Universidades_Eliminar
	@CodigoUniversidad = 5;
GO

--SELECT PARA VER LA TABLA "UNIVERSIDADES" CON LOS DATOS INGRESADOS
SELECT * FROM Universidades
GO

SELECT * FROM vw_Universidad_SeleccionarActivos
GO

SELECT * FROM vw_Universidad_SeleccionarUnregistroPorId
GO

--SE BUSCA UNO POR UNO LOS ID
SELECT * FROM FN_Universidad_SeleccionarsPorId(1)
GO

SELECT * FROM FN_Universidad_SeleccionarsPorId(2)
GO

SELECT * FROM [FN_Universidad_SeleccionarTodos]();
GO

EXEC SP_Sedes_Insertar
	@CodigoSede = 58, 
	@NombreSede = 'CaÃ±as',
	@Telefono = '2435-6436', 
	@CorreoElectronico = 'caÃ±as@una.cr', 
	@Direccion = 'Contiguo al banco',
	@CreadoPor = NULL;
GO

EXEC SP_Sedes_Insertar
	@CodigoSede = 27, 
	@NombreSede = 'Santa Cruz',
	@Telefono = '2685-6321', 
	@CorreoElectronico = 'stacruz@una.cr', 
	@Direccion = 'Contiguo al parque',
	@CreadoPor = NULL;
GO

EXEC SP_Sedes_Actualizar
	@CodigoSede = 58, 
	@NombreSede = 'CaÃ±as',
	@Telefono = '2435-6436', 
	@CorreoElectronico = 'caÃ±as@ulatina.net', 
	@Direccion = 'Contiguo al banco',
	@Activo = 1,
	@CreadoPor = NULL,
	@ModificadoPor = NULL;
GO

EXEC SP_Sedes_Eliminar
	@CodigoSede = 27;
GO

--SELECT PARA VER LA TABLA "SEDES" CON LOS DATOS INGRESADOS
SELECT * FROM Sedes
GO

SELECT * FROM vw_Sedes_SeleccionarActivos
GO

SELECT * FROM vw_Sedes_SeleccionarUnregistroPorId
GO

SELECT * FROM FN_Sedes_SeleccionarsPorId(27)
GO

SELECT * FROM [FN_Sedes_SeleccionarTodos]();
GO

EXEC SP_Carrera_Insertar
	@CodigoCarrera = 255,
	@NombreCarrera = 'IngenierÃ­a En Sistemas',
	@CreadoPor = NULL;
GO

--SELECT PARA VER LA TABLA "CARRERAS" CON LOS DATOS INGRESADOS
SELECT * FROM Carreras
GO

SELECT * FROM vw_Carreras_SeleccionarActivos
GO

SELECT * FROM vw_Carreras_SeleccionarUnregistroPorId
GO

SELECT * FROM FN_Carreras_SeleccionarsPorId(255)
GO

SELECT * FROM [FN_Carreras_SeleccionarTodos]();
GO

EXEC SP_Curso_Insertar
	@CodigoCurso = 'A4352',	
	@NombreCurso = 'Bases de datos', 
	@Precio = 125000.0,
	@CreadoPor = NULL;
GO

EXEC SP_Curso_Insertar
	@CodigoCurso = 'B6138',	
	@NombreCurso = 'Programacion III', 
	@Precio = 155000.0,
	@CreadoPor = NULL;
GO

--SELECT PARA VER LA TABLA "CURSOS" CON LOS DATOS INGRESADOS
SELECT * FROM Cursos
GO

SELECT * FROM vw_Cursos_SeleccionarActivos
GO

SELECT * FROM vw_Cursos_SeleccionarUnregistroPorId
GO

SELECT * FROM FN_Curso_SeleccionarsPorId('B6138')
GO

SELECT * FROM [FN_Cursos_SeleccionarTodos]();
GO

EXEC SP_Aula_Insertar
	@NumeroAula = '4_2', 
	@Horario = 'S 10:30 am / 1:20pm',
	@CodigoCurso = 'A4352',
	@CreadoPor = NULL;
GO

EXEC SP_Aula_Insertar
	@NumeroAula = '3_2', 
	@Horario = 'L 8:00 am / 12:00pm',
	@CodigoCurso = 'B6138',
	@CreadoPor = NULL;
GO

--SELECT PARA VER LA TABLA "AULA" CON LOS DATOS INGRESADOS
SELECT * FROM Aula;
GO

SELECT * FROM vw_Aula_SeleccionarActivos
GO

SELECT * FROM vw_Aula_SeleccionarUnregistroPorId
GO

SELECT * FROM FN_Aula_SeleccionarsPorId('3_2')
GO

SELECT * FROM [FN_Aula_SeleccionarTodos]();
GO

EXEC SP_Profesor_Insertar
	@CedulaProfesor = '1-0625-0789',
	@NombreProfesor = 'Jirafales',
	@Apellidos = 'Perez Jimenez',
	@Telefono = '5667-8789',
	@Profesion = 'Docente',
	@CorreoElectronico = 'jirafales@gmail.com',
	@Edad = 31, 
	@CreadoPor = NULL;
GO

EXEC SP_Profesor_Insertar
	@CedulaProfesor = '5-8932-5634',
	@NombreProfesor = 'Elba',
	@Apellidos = 'Surero',
	@Telefono = '9812-5409',
	@Profesion = 'Docente',
	@CorreoElectronico = 'surero@gmail.com',
	@Edad = 45, 
	@CreadoPor = NULL;
GO

--SELECT PARA VER LA TABLA "PROFESOR" CON LOS DATOS INGRESADOS
SELECT * FROM Profesor
GO

SELECT * FROM vw_Profesor_SeleccionarActivos
GO

SELECT * FROM vw_Profesor_SeleccionarUnregistroPorId
GO

SELECT * FROM FN_Profesor_SeleccionarsPorId('5-8932-5634')
GO

SELECT * FROM [FN_Profesor_SeleccionarTodos]();
GO

EXEC SP_Estudiantes_Insertar
	@CedulaEstudiante = '5-09480567', 
	@Nombre = 'Luis',
	@Apellidos = 'Rosales Espinoza',
	@Telefono = '8372-5362', 
	@Direccion = 'Santorini', 
	@CorreoElectronico = 'luis@gmail.com', 
	@Edad = 19, 
	@CreadoPor = NULL;
GO

--SELECT PARA VER LA TABLA "ESTUDIANTES" CON LOS DATOS INGRESADOS
SELECT * FROM Estudiantes;
GO

SELECT * FROM vw_Estudiantes_SeleccionarActivos
GO

SELECT * FROM vw_Estudiantes_SeleccionarUnregistroPorId
GO

SELECT * FROM FN_Estudiantes_SeleccionarsPorId('5-09480567')
GO

SELECT * FROM [FN_Estudiantes_SeleccionarsPorId]();
GO

EXEC SP_Matricula_Insertar
	@CodigoUniversidad = 5, 
	@CodigoSede = 58, 
	@CodigoCarrera = 255, 
	@CodigoCurso = 'A4352',
	@NumeroAula = '4_2',
	@CedulaProfesor = '1-0625-0789', 
	@CedulaEstudiante = '5-09480567',
	@CostoDeMatricula = 50000,
	@CreadoPor = NULL;
GO

EXEC SP_Matricula_Insertar
	@CodigoUniversidad = 5, 
	@CodigoSede = 58, 
	@CodigoCarrera = 255, 
	@CodigoCurso = 'B6138',
	@NumeroAula = '3_2',
	@CedulaProfesor = '5-8932-5634', 
	@CedulaEstudiante = '5-09480567',
	@CostoDeMatricula = 50000,
	@CreadoPor = NULL;
GO

--SELECT PARA VER LA TABLA "MATRICULA" CON LOS DATOS INGRESADOS
SELECT * FROM Matricula;
GO

SELECT * FROM vw_Matricula_SeleccionarActivos
GO

SELECT * FROM vw_Estudiantes_SeleccionarUnregistroPorId
GO

SELECT * FROM FN_Matricula_SeleccionarsPorId(2)
GO

SELECT * FROM [FN_Matricula_SeleccionarTodos]();
GO

--DROP VIEW vw_Matriculas_SeleccionarTodos;

SELECT * FROM vw_Matriculas_SeleccionarTodos
GO

--SE PUEDE HACER UN "SELECT" DEL PROCESO ALMACENADO
EXEC ObtenerDatosMatriculaPorId1 2
GO
