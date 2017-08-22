﻿CREATE TABLE [dbo].[Cuisine]
(
	[Id] INT NOT NULL IDENTITY (1,1), 
    [Name] VARCHAR(100) NOT NULL,
 
	CONSTRAINT [PK_dbo_Cuisine] PRIMARY KEY (Id),
	CONSTRAINT [UQ_dbo_Cuisine_CuisineName] UNIQUE ([Name])
)
GO 

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'A style or method of cooking, especially as characteristic of a particular country, region, or establishment. Example: Cajun, Italian, Mexican, etc', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'Cuisine';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'A machine-readable identifier for this record.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'Cuisine', 
	@level2type = N'COLUMN', @level2name = N'Id';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Name of the Cuisine', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'Cuisine', 
	@level2type = N'COLUMN', @level2name = 'Name';
GO