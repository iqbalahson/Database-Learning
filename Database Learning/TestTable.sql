
CREATE TABLE [dbo].[TestTable]
(
	[Id] INT NOT NULL ,
	[EmployeeData] INT NOT NULL, 
    CONSTRAINT [PK_TestTable] PRIMARY KEY clustered ([Id]),
	CONSTRAINT [CK_TestTable_EmployeeData] CHECK (EmployeeData>0),

)