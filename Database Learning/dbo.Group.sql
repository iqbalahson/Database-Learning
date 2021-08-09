CREATE TABLE [dbo].[Group]
(
	[GroupId] INT NOT NULL IDENTITY(1,1),
	[GroupName] NVARCHAR(50),
	CONSTRAINT [PK_Group_GroupId] PRIMARY KEY ([GroupId]),
	INDEX [UN_Group_GroupName] UNIQUE NONCLUSTERED ([GroupName])
)
