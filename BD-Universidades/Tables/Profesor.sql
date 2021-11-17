--TABLA PARA GUARDAR INFORMACIÓN DE LOS PROFESORES
CREATE TABLE Profesor(
	CedulaProfesor VARCHAR(15),
	NombreProfesor VARCHAR(30) NOT NULL,
	Apellidos VARCHAR(50) NOT NULL,
	Telefono VARCHAR(12),
	Profesion VARCHAR(30) NOT NULL,
	CorreoElectronico VARCHAR(50) NOT NULL,
	Edad INT NOT NULL,
	Activo BIT NOT NULL DEFAULT 1,
	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,
	CONSTRAINT PK_Profesor PRIMARY KEY(CedulaProfesor)
)
GO

EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Profesores que el sistema de gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Profesor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Cédula del profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'CedulaProfesor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'NombreProfesor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Apellidos del profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'Apellidos'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Número de teléfono del profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'Telefono'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Profesión que tiene el profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'Profesion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Correo electróico del profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'CorreoElectronico'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Edad del profesor',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'Edad'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra el registro: 1 = Activo; 0 = Inactivo o Borrado',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'Activo'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del usuario que crea el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del usuario que modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Profesor', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO