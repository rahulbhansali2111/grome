CREATE TABLE [dbo].[DishIngredients]
(
	[Id] INT NOT NULL IDENTITY (1,1), 
    [DishId] INT NOT NULL,
	[IngredientId] INT NOT NULL, 
	[QtyPerServing] DECIMAL(4,2) NOT NULL CONSTRAINT [DF_dbo_DishIngredients_QtyPerServing] DEFAULT 1.00,
	[RecordCreated]	DATETIMEOFFSET NOT NULL CONSTRAINT [DF_dbo_DishIngredients_RecordCreated] DEFAULT SYSDATETIMEOFFSET(),
	[RecordModified] DATETIMEOFFSET NOT NULL CONSTRAINT [DF_dbo_DishIngredients_RecordModified] DEFAULT SYSDATETIMEOFFSET(),

	CONSTRAINT [PK_dbo_DishIngredients_Id] PRIMARY KEY (Id),
	CONSTRAINT [UQ_dbo_DishIngredients_DishId_IngredientId] UNIQUE (DishId, IngredientId),
	CONSTRAINT [FK_dbo_DishIngredients_DishId_dbo_Dish_Id] FOREIGN KEY (DishId) REFERENCES dbo.Dish(Id),
	CONSTRAINT [FK_dbo_DishIngredients_IngredientId_dbo_Ingredient_Id] FOREIGN KEY (IngredientId) REFERENCES dbo.Ingredient(Id)
)
GO 

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Listing of Ingredients needed by a Dish', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishIngredients';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'A machine-readable identifier for this record.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishIngredients', 
	@level2type = N'COLUMN', @level2name = N'Id';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Identifier of the Dish', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishIngredients', 
	@level2type = N'COLUMN', @level2name = N'DishId';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Identifier of the Ingredient', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishIngredients', 
	@level2type = N'COLUMN', @level2name = N'IngredientId';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Quantity of the Ingredient needed for a single serving', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishIngredients', 
	@level2type = N'COLUMN', @level2name = N'QtyPerServing';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'The date and time (database time) at which this record was first created.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishIngredients', 
	@level2type = N'COLUMN', @level2name = N'RecordCreated';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'The date and time (database time) at which this record was last modified.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishIngredients', 
	@level2type = N'COLUMN', @level2name = N'RecordModified';
GO