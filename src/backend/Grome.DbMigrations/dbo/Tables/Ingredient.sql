CREATE TABLE [dbo].[Ingredient]
(
	[Id] INT NOT NULL IDENTITY (1,1), 
    [Name] VARCHAR(100) NOT NULL,

	CONSTRAINT [PK_dbo_Ingredient_Id] PRIMARY KEY (Id),
	CONSTRAINT [UQ_dbo_Ingredient_IngredientName] UNIQUE ([Name])
)
GO 

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'A food or substance required to make a particular dish.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'Ingredient';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'A machine-readable identifier for this record.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'Ingredient', 
	@level2type = N'COLUMN', @level2name = N'Id';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Name of the ingredient.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'Ingredient', 
	@level2type = N'COLUMN', @level2name = 'Name';
GO