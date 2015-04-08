CREATE TABLE [dbo].[Logs]
(
	[LogId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ItemId] INT NOT NULL, 
    [ItemValue] FLOAT NOT NULL, 
    [Date] DATETIME NOT NULL, 
	[HashValue] NVARCHAR(MAX) NULL, 
    [TimeStamp] TIMESTAMP NOT NULL, 
    CONSTRAINT [FK_Logs_ToItems] FOREIGN KEY (ItemId) REFERENCES [Items]([ItemId])
)
