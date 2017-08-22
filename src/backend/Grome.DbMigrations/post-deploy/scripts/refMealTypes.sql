SET IDENTITY_INSERT dbo.MealType ON; 

MERGE dbo.MealType AS t 
USING (SELECT Id, Name FROM 
(VALUES
	(1, 'Breakfast'),
	(2, 'Appetizers'),
	(3, 'Entree'),
	(4, 'Dessert')
) x (Id, Name)) AS s ON s.Id = t.Id 
WHEN MATCHED THEN 
	UPDATE SET Name = s.Name 
WHEN NOT MATCHED THEN INSERT (Id, Name) 
	VALUES (s.Id, s.Name);

SET IDENTITY_INSERT dbo.MealType OFF;
