CREATE TABLE [dbo].[Role]
(
	[RoleId] INT NOT NULL IDENTITY(1,1),
	[RoleName] NVARCHAR(50),
	CONSTRAINT [PK_Role_RoleId] PRIMARY KEY ([RoleId]),
	INDEX [UN_Role_RoleName] UNIQUE NONCLUSTERED ([RoleName]),
	INDEX [NN_Role_RoleName]  NONCLUSTERED ([RoleName])
)
