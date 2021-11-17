--TABLA PARA GUARDAR LA INFORMACIÓN DE MATRÃCULA
CREATE TABLE Matricula( 
	NumeroMatricula INT IDENTITY(1,1),     
  	CostoDeMatricula DECIMAL(18,3),
    CodigoUniversidad INT NOT NULL,
    CodigoSede INT NOT NULL,
    CodigoCarrera INT NOT NULL,
    --CodigoCurso VARCHAR(10) NOT NULL,
	--NumeroAula VARCHAR(10) NOT NULL,
    --CedulaProfesor VARCHAR(15) NOT NULL, 
    CedulaEstudiante VARCHAR(15)NOT NULL,
    Activo BIT NOT NULL DEFAULT 1,
	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,	
	CONSTRAINT PK_Matricula PRIMARY KEY(NumeroMatricula),
   	CONSTRAINT FK_Universidades FOREIGN KEY(CodigoUniversidad) REFERENCES Universidades(CodigoUniversidad),
    CONSTRAINT FK_Sedes FOREIGN KEY(CodigoSede) REFERENCES Sedes(CodigoSede),
    CONSTRAINT FK_Carreras FOREIGN KEY(CodigoCarrera) REFERENCES Carreras(CodigoCarrera),
   	--CONSTRAINT FK_Cursos FOREIGN KEY(CodigoCurso) REFERENCES Cursos(CodigoCurso),
    --CONSTRAINT FK_Profesor FOREIGN KEY(CedulaProfesor) REFERENCES Profesor(CedulaProfesor),
    CONSTRAINT FK_Estudiantes FOREIGN KEY(CedulaEstudiante) REFERENCES Estudiantes(CedulaEstudiante),
	--CONSTRAINT FK_Aula FOREIGN KEY(NumeroAula) REFERENCES Aula(NumeroAula) 
    --Faltaria crear la relación con la tabla CicloLectivo
)
GO

EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Matrículas que el sistema gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Matricula'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Número de matrícula',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'NumeroMatricula'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Costo de la matrícula',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CostoDeMatricula'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código de universidad',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CodigoUniversidad'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código de la sede',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CodigoSede'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código de carrera',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CodigoCarrera'
GO

--EXEC sp_addextendedproperty 
--	@name = N'MS_Description',	@value = 'Código Curso',
--   	@level0type = N'Schema',	@level0name = 'dbo',
--   	@level1type = N'Table',		@level1name = 'Matricula', 
--   	@level2type = N'Column',	@level2name = 'CodigoCurso'
--GO

--EXEC sp_addextendedproperty 
--	@name = N'MS_Description',	@value = 'Número de Aula',
--   	@level0type = N'Schema',	@level0name = 'dbo',
--   	@level1type = N'Table',		@level1name = 'Matricula', 
--   	@level2type = N'Column',	@level2name = 'NumeroAula'
--GO

--EXEC sp_addextendedproperty 
--	@name = N'MS_Description',	@value = 'Cédula del profesor',
--   	@level0type = N'Schema',	@level0name = 'dbo',
--   	@level1type = N'Table',		@level1name = 'Matricula', 
--   	@level2type = N'Column',	@level2name = 'CedulaProfesor'
--GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Cédula del estudiante',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CedulaEstudiante'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra el registro: 1 = Activo; 0 = Inactivo o Borrado',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'Activo'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del usuario que crea el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del usuario que modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Matricula', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO