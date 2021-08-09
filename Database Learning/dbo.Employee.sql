CREATE TABLE [dbo].[Employee]
(
     [EmployeeId] INT NOT NULL IDENTITY(1,1),
      [AccountId] INT NOT NULL,
     [GenderId] INT,
     [StatusId] INT,
    [UserGuId] UNIQUEIDENTIFIER DEFAULT NEWID() NULL,
    [Prefix] NVARCHAR(15) NULL,
    [FirstName] NVARCHAR(100) NOT NULL,
    [Suffix] NVARCHAR(15) NULL,
    [MiddleName] NVARCHAR(100) NULL,
    [LastName] NVARCHAR(100) ,
    [DateOfJoinig] DATETIME,
    [DateOfConfirmation] DATETIME NULL,
    [DateOfRelieving] DATETIME NULL,
    [CreatUTCDateTime] DATETIME DEFAULT GETUTCDATE(),
    [CreatSystemUser] NVARCHAR(100)  DEFAULT SYSTEM_USER,
    [CreatEmployeeId] INT NULL,
    [UpdateUTCateTime] DATETIME DEFAULT GETUTCDATE(),
    [UpdateSystemUser] NVARCHAR(100) DEFAULT SYSTEM_USER,
    [UpdateEmployeeId] INT NULL,
    CONSTRAINT [PK_Employee_EmployeeId] PRIMARY KEY ([EmployeeId]),
    CONSTRAINT [FK_Employee_AccountId] FOREIGN KEY ([AccountId]) REFERENCES [Account]([AccountId]),
    CONSTRAINT [FK_Employee_GenderId] FOREIGN KEY ([GenderId]) REFERENCES [Gender]([GenderId]),
    CONSTRAINT [FK_Employee_StatusId] FOREIGN KEY ([StatusId]) REFERENCES [Status]([StatusId]),
    INDEX [UN_Employee_UserGuId] UNIQUE NONCLUSTERED ([UserGuId]),
    INDEX [NN_Employee_StatusId] NONCLUSTERED ([StatusId])

)

--column name,

--Constraints,
--Keys,
--1Primary key
--Foreigh

--UN indexes

--NN indexes