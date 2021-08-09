CREATE TABLE [dbo].[Account]
(
	[AccountId] INT NOT NULL IDENTITY(1,1),
	[Email] NVARCHAR(100) NOT NULL,
	CONSTRAINT [PK_Account_AccountId] PRIMARY KEY ([AccountId]),
	INDEX [UN_Account_Email] UNIQUE NONCLUSTERED ([Email])
)
