CREATE TABLE [dbo].[Logs]
(
	[LogId] INT NOT NULL PRIMARY KEY, 
    [ItemId] INT NOT NULL, 
    [ItemValue] FLOAT NOT NULL, 
    [Date] DATETIME2 NOT NULL, 
    [TimeStamp] TIMESTAMP NOT NULL, 
    CONSTRAINT [FK_Logs_ToItems] FOREIGN KEY (ItemId) REFERENCES [Items]([ItemId])
)
