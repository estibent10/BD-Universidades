--TABLA PARA GUARDAR LISTA DE UNIVERSIDADES
CREATE TABLE Universidades(  
	CodigoUniversidad INT,
	NombreUniversidad VARCHAR(100) NOT NULL,
	CedulaJuridica VARCHAR(25) NOT NULL,
	Activo BIT NOT NULL DEFAULT 1,
	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,
	CONSTRAINT PK_Universidades PRIMARY KEY (CodigoUniversidad)
)
GO

EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Universidades que el sistema gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Universidades'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código o identificador de la universidad',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'CodigoUniversidad'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre de la universidad',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'NombreUniversidad'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Cédula jurídica de la universidad',
   	@level0type =  N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'CedulaJuridica'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra el registro: 1 = Activo; 0 = Inactivo o Borrado',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'Activo'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del usuario que crea el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del usuario que modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Universidades', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO