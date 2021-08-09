CREATE TABLE [dbo].[Permission]
(
	[PermissionId] INT NOT NULL IDENTITY(1,1),
	[PermissionCode] NVARCHAR(50),
	[PermissionName] NVARCHAR(100),
	[PermissionDescription] NVARCHAR(2000),
	CONSTRAINT [PK_Permission_PermissionId] PRIMARY KEY ([PermissionId]),
	INDEX [UN_Permission_PermissionCode] UNIQUE NONCLUSTERED ([PermissionCode])


)
