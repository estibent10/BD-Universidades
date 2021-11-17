﻿--TABLA PARA GUARDAR LAS CARRERAS DISPONIBLES
CREATE TABLE Carreras ( 
	CodigoCarrera INT,  
	NombreCarrera VARCHAR (100) NOT NULL,
	Acreditada BIT NOT NULL DEFAULT 1,
	Activo BIT NOT NULL DEFAULT 1,
	FechaCreacion DATETIME NOT NULL DEFAULT GETDATE(),
	FechaModificacion DATETIME NULL,
	CreadoPor VARCHAR(60) NULL,
	ModificadoPor VARCHAR(60) NULL,
	CONSTRAINT PK_Carreras PRIMARY KEY(CodigoCarrera)
)
GO

EXEC sp_addextendedproperty
	@name = N'MS_Description',	@value = 'Carreras que el sistema gestiona',
   	@level0type = N'Schema',	@level0name = 'dbo',
  	@level1type = N'Table',		@level1name = 'Carreras'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Código de la carrera',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'CodigoCarrera'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre de la carrera',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'NombreCarrera'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra una carrera: 1 = Acreditada; 0 = No Acreditada',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'Acreditada'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Condición en la que se encuentra el registro: 1 = Activo; 0 = Inactivo o Borrado',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'Activo'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de creación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'FechaCreacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Fecha de modificación del registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'FechaModificacion'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del usuario que crea el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'CreadoPor'
GO

EXEC sp_addextendedproperty 
	@name = N'MS_Description',	@value = 'Nombre del usuario que modifica el registro',
   	@level0type = N'Schema',	@level0name = 'dbo',
   	@level1type = N'Table',		@level1name = 'Carreras', 
   	@level2type = N'Column',	@level2name = 'ModificadoPor'
GO