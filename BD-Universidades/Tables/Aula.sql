--TABLA PARA GUARDAR EL AULA
CREATE TABLE Aula(
	NumeroAula VARCHAR(10),
    NombreAula VARCHAR(10), -- Nuevo
	--Horario VARCHAR(30),	
    Activo BIT NOT NULL DEFAULT 1,
    --CodigoCurso VARCHAR(10),
	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,
	CONSTRAINT PK_Aula PRIMARY KEY(NumeroAula),
	--CONSTRAINT FK_Curso FOREIGN KEY(CodigoCurso) REFERENCES Cursos(CodigoCurso),
)
GO

EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Aulas que el sistema gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Aula'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Número del aula',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'NumeroAula'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del aula',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'NombreAula'
GO

--EXEC sp_addextendedproperty 
--	@name = N'MS_Description',	@value = 'Horario',
--   	@level0type = N'Schema',	@level0name = 'dbo',
--   	@level1type = N'Table',		@level1name = 'Aula', 
--   	@level2type = N'Column',	@level2name = 'Horario'
--GO

--EXEC sp_addextendedproperty 
--	@name = N'MS_Description',	@value = 'Código de curso',
--   	@level0type = N'Schema',	@level0name = 'dbo',
--   	@level1type = N'Table',		@level1name = 'Aula', 
--   	@level2type = N'Column',	@level2name = 'CodigoCurso'
--GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra el registro: 1 = Activo; 0 = Inactivo o Borrado',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'Activo'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del usuario que crea el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del usuario que modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Aula', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO