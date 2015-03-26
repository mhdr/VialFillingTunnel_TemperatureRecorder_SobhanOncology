CREATE TABLE [dbo].[Hashes]
(
	[HashId] INT NOT NULL PRIMARY KEY, 
    [LogId] INT NOT NULL, 
    [HashValue] NVARCHAR(MAX) NOT NULL, 
    [TimeStamp] TIMESTAMP NOT NULL, 
    CONSTRAINT [FK_Hashes_Logs] FOREIGN KEY ([LogId]) REFERENCES [Logs]([LogId])
)
