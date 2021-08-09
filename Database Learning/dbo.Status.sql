CREATE TABLE [dbo].[Status]
(
	[StatusId] INT NOT NULL IDENTITY(1,1),
	[StatusName] NVARCHAR(25) ,
	CONSTRAINT [PK_Status_StatusId]  PRIMARY KEY ([StatusId]),
	INDEX [UN_Status_StatusName] UNIQUE NONCLUSTERED([StatusName])
)
