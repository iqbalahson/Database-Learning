CREATE TABLE [dbo].[Position]
(
	[PositionId] INT NOT NULL IDENTITY(1,1),
	[PositionName] NVARCHAR(50), 
	[Desgination] NVARCHAR(50),
	[GroupId] INT NULL ,
	[ReportsToPositionId] INT NULL,
	[StatusId] INT ,
	CONSTRAINT [PK_Position_PositionId] PRIMARY KEY ([PositionId]),
	CONSTRAINT [FK_Position_GroupId] FOREIGN KEY ([GroupId]) REFERENCES [Group]([GroupId]),
	CONSTRAINT [FK_Position_ReportsToPositionId] FOREIGN KEY (ReportsToPositionId) REFERENCES [Position]([PositionId]),
	CONSTRAINT [FK_Position_StatusId] FOREIGN KEY ([StatusId]) REFERENCES  [Status]([StatusId]),
	INDEX[UN_Position_PositionName] UNIQUE NONCLUSTERED ([PositionName]),
	INDEX[NN_Position_ReportsToPositionId] NONCLUSTERED ([ReportsToPositionId]),
	INDEX[NN_Position_StatusId] NONCLUSTERED ([StatusId])
)
