CREATE TABLE [dbo].[EmployeePosition]
(
	[EmployeePositionId] INT NOT NULL IDENTITY(1,1),
	[EmployeeId] INT ,
	[PositionId] INT,
	CONSTRAINT [PK_EmployeePosition_EmployeePositionId] PRIMARY kEY ([EmployeePositionId]),
	CONSTRAINT [FK_EmployeePosition_EmployeeId] FOREIGN KEY ([EmployeeId]) REFERENCES [Employee]([EmployeeId]),
	CONSTRAINT [FK_EmployeePosition_PositionId] FOREIGN KEY (PositionId) REFERENCES [Position]([PositionId]),
	INDEX [UN_EmplyeePosition_EmployeeId_PositionId] UNIQUE NONCLUSTERED ([EmployeeId], [PositionId]),
	INDEX [NN_EmpolyeePosition_EmplyeeId_PositionId] NONCLUSTERED ([EmployeeId], [PositionId])
)
