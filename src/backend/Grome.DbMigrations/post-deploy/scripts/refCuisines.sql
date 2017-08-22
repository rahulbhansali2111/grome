SET IDENTITY_INSERT dbo.Cuisine ON; 

MERGE dbo.Cuisine AS t 
USING (SELECT Id, Name FROM 
(VALUES
	(1, 'American'),
	(2, 'Chinese'),
	(3, 'Ethiopian'),
	(4, 'French'),
	(5, 'South Indian'),
	(6, 'Italian'),
	(7, 'Japanese'),
	(8, 'Mediterranean'),
	(9, 'Mexican'),
	(10, 'Punjabi'),
	(11, 'Thai'),		
	(12, 'Rajasthani'),
	(13, 'Gujarathi')

) x (Id, Name)) AS s ON s.Id = t.Id 
WHEN MATCHED THEN 
	UPDATE SET Name = s.Name 
WHEN NOT MATCHED THEN INSERT (Id, Name) 
	VALUES (s.Id, s.Name);

SET IDENTITY_INSERT dbo.Cuisine OFF;
