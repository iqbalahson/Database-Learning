CREATE TABLE [dbo].[Gender]
(
	[GenderId] INT NOT NULL IDENTITY(1,1),
	[GenderName] NVARCHAR(15),
    CONSTRAINT [PK_Gender_GenderId] PRIMARY KEY ([GenderId]),
	INDEX [UN_Gender_GenderName] UNIQUE NONCLUSTERED ([GenderName]),
)
