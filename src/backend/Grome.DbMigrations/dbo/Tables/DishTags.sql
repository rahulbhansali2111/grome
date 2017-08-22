CREATE TABLE [dbo].[DishTags]
(
	[Id] INT NOT NULL IDENTITY (1,1), 
	[DishId] INT NOT NULL,
	[TagName] VARCHAR(100) NOT NULL,

	CONSTRAINT [PK_dbo_DishTags_Id] PRIMARY KEY (Id),
	CONSTRAINT [UQ_dbo_DishTags_DishId_TagName] UNIQUE (DishId, TagName),
	CONSTRAINT [FK_dbo_DishTags_DishId_dbo_Dish_Id] FOREIGN KEY (DishId) REFERENCES dbo.Dish(Id)
)
GO 

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'List of search tags defined for a given dish', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishTags';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'A machine-readable identifier for this record.', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishTags', 
	@level2type = N'COLUMN', @level2name = N'Id';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Identifier of the dish', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishTags', 
	@level2type = N'COLUMN', @level2name = N'DishId';
GO

EXECUTE sp_addextendedproperty 
	@name = N'MS_Description', 
	@value = N'Name of the Tag to search the dish by', 
	@level0type = N'SCHEMA', @level0name = N'dbo', 
	@level1type = N'TABLE', @level1name = N'DishTags', 
	@level2type = N'COLUMN', @level2name = N'TagName';
GO