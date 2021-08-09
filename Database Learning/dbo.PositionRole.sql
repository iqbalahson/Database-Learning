CREATE TABLE [dbo].[PositionRole]
(
	[PositionRoleId] INT NOT NULL IDENTITY(1,1),
	[PositionId] INT ,
	[RoleId] INT ,
	CONSTRAINT [PK_PositionRole_PositionRoleId] PRIMARY KEY ([PositionRoleId]),
	CONSTRAINT [FK_PositionRole_PositionId] FOREIGN KEY ([PositionId]) REFERENCES [Position]([PositionId]),
	CONSTRAINT [FK_PositonRole_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [Role]([RoleId]),
	INDEX [UN_PositionRole_PositionId_RoleId] UNIQUE NONCLUSTERED ([PositionId], [RoleId]),
	INDEX [NN_PositionRole_PositionId_RoleId] NONCLUSTERED ([PositionId],[RoleId])
)
