CREATE TABLE [dbo].[MealType]
(
	[Id] INT NOT NULL IDENTITY (1,1), 
    [Name] VARCHAR(100) NOT NULL,

	CONSTRAINT [PK_dbo_MealType_Id] PRIMARY KEY (Id),
	CONSTRAINT [UQ_dbo_MealType_MealTypeName] UNIQUE ([Name])
)
GO 

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Type of meal. Example: Breakfast, Lunch, Dinner, Supper etc', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'MealType';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'A machine-readable identifier for this record.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'MealType', 
	@level2type = N'COLUMN', @level2name = N'Id';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Name of the meal type. Example: Breakfast, Lunch, Dinner, etc.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'MealType', 
	@level2type = N'COLUMN', @level2name = 'Name';
GO