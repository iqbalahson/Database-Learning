CREATE TABLE [dbo].[child_Table1]
(
	[Id] INT foreign key references TestTable([Id]) ,
	[employ_name] NVARCHAR(50) NOT NULL, [gender] NCHAR(10) NULL, 
    [age] INT NULL DEFAULT 18,
	constraint [FK_child_Table] foreign key ([age]) references TestTable([Id]),
	constraint [CK_child_table] check(age>16)
)
