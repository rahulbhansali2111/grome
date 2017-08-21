CREATE TABLE [dbo].[DishMealTypes]
(
	[Id] INT NOT NULL IDENTITY (1,1), 
	[DishId] INT NOT NULL,
	[MealTypeId] INT NOT NULL,
	[RecordCreated]	DATETIMEOFFSET NOT NULL CONSTRAINT [DF_dbo_DishMealTypes_RecordCreated] DEFAULT SYSDATETIMEOFFSET(),
	[RecordModified] DATETIMEOFFSET NOT NULL CONSTRAINT [DF_dbo_DishMealTypes_RecordModified] DEFAULT SYSDATETIMEOFFSET(),

	CONSTRAINT [PK_dbo_DishMealTypes_Id] PRIMARY KEY (Id),
	CONSTRAINT [UQ_dbo_DishMealTypes_DishId_MealTypeId] UNIQUE (DishId, MealTypeId),
	CONSTRAINT [FK_dbo_DishMealTypes_DishId_dbo_Dish_Id] FOREIGN KEY (DishId) REFERENCES dbo.Dish(Id), 
	CONSTRAINT [FK_dbo_DishMealTypes_MealTypeId_dbo_MealType_Id] FOREIGN KEY (MealTypeId) REFERENCES dbo.MealType(Id), 
)
GO 

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Meal types a given dish is associated with', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishMealTypes';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'A machine-readable identifier for this record.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishMealTypes', 
	@level2type = N'COLUMN', @level2name = N'Id';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Identifier of the dish', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishMealTypes', 
	@level2type = N'COLUMN', @level2name = N'DishId';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Identifier of the meal type', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishMealTypes', 
	@level2type = N'COLUMN', @level2name = N'MealTypeId';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'The date and time (database time) at which this record was first created.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishMealTypes', 
	@level2type = N'COLUMN', @level2name = N'RecordCreated';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'The date and time (database time) at which this record was last modified.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishMealTypes', 
	@level2type = N'COLUMN', @level2name = N'RecordModified';
GO