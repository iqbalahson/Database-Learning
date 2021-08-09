CREATE TABLE [dbo].[RolePermission]
(
	[RolePermissionId] INT NOT NULL IDENTITY(1,1),
	[RoleId] INT,
	[PermissionId] INT,
	CONSTRAINT [Pk_RolePermission_RolePermissionId] PRIMARY KEY ([RolePermissionId]),
	CONSTRAINT [FK_RolePermission_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [Role]([RoleId]) ,
	CONSTRAINT [FK_RolePermission_Permission] FOREIGN KEY ([PermissionId]) REFERENCES [Permission]([PermissionId]),
	INDEX [UN_RolePermission_RoleId_PermissionId] UNIQUE NONCLUSTERED ([RoleId],[PermissionId]),
	INDEX [NN_RolePermission_RoleId_permissionId] NONCLUSTERED ([RoleId],[PermissionId]),

)
