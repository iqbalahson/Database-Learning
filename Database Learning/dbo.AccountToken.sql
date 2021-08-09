CREATE TABLE [dbo].[AccountToken]
(
	[AccountTokenId] INT NOT NULL IDENTITY(1,1),
	[AccountId] INT NOT NULL ,
	[RefreshToken] NVARCHAR(256) ,
	[ValidUntilUTCDateTime] DATETIME DEFAULT GETUTCDATE(),
	[CreatUTCDateTime] DATETIME DEFAULT GETUTCDATE(),
	[CreatUserSystem] NVARCHAR(100) DEFAULT SYSTEM_USER,
	CONSTRAINT [PK_AccountToken_AccountTokeId] PRIMARY KEY ([AccountTokenId]),
	CONSTRAINT [FK_AccountToken_AccountId] FOREIGN KEY ([AccountId]) REFERENCES [Account]([AccountId]),
	INDEX [UN_AccountToken_RefreshToken] UNIQUE NONCLUSTERED ([RefreshToken]),
	INDEX [NN_AccountToken_ValidUntilUTCDateTime] NONCLUSTERED ([ValidUntilUTCDateTime]),

 )
