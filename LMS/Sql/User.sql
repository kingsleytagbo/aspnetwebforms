CREATE TABLE [dbo].[User]
(
	[UserID] INT NOT NULL IDENTITY(1,1) PRIMARY KEY, 
    [UserName] NVARCHAR(50) NOT NULL, 
    [Password] NVARCHAR(50) NOT NULL, 
    [EmailAddress] NVARCHAR(50) NULL, 
    [FirstName] NVARCHAR(50) NULL, 
    [LastName] NVARCHAR(50) NULL, 
    [State] NVARCHAR(50) NULL
);
