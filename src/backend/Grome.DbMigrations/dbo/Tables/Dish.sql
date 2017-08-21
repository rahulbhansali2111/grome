﻿CREATE TABLE [dbo].[Dish]
(
	[Id] INT NOT NULL IDENTITY (1,1), 
    [DishName] VARCHAR(200) NOT NULL,
	[CuisineId] INT NULL, 
	[RecordCreated]	DATETIMEOFFSET NOT NULL CONSTRAINT [DF_dbo_Dish_RecordCreated] DEFAULT SYSDATETIMEOFFSET(),
	[RecordModified] DATETIMEOFFSET NOT NULL CONSTRAINT [DF_dbo_Dish_RecordModified] DEFAULT SYSDATETIMEOFFSET(),
	
	CONSTRAINT [PK_dbo_Dish_Id] PRIMARY KEY (Id),
	CONSTRAINT [UQ_dbo_Dish_DishName] UNIQUE (DishName),
	CONSTRAINT [FK_dbo_Dish_CuisineId_dbo_Cuisine_Id] FOREIGN KEY (CuisineId) REFERENCES dbo.Cuisine(Id)
)
GO 

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'A food item', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'Dish';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'A machine-readable identifier for this record.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'Dish', 
	@level2type = N'COLUMN', @level2name = N'Id';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Name of the Dish', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'Dish', 
	@level2type = N'COLUMN', @level2name = N'DishName';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'(Identifier of the) Cuisine to which this Dish belongs to. Optional. Example: Cajun, Italian, Mexican, NULL etc', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'Dish', 
	@level2type = N'COLUMN', @level2name = N'CuisineId';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'The date and time (database time) at which this record was first created.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'Dish', 
	@level2type = N'COLUMN', @level2name = N'RecordCreated';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'The date and time (database time) at which this record was last modified.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'Dish', 
	@level2type = N'COLUMN', @level2name = N'RecordModified';
GO