﻿CREATE TABLE [dbo].[Logs]
(
	[LogId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ItemId] INT NOT NULL, 
    [ItemValue] FLOAT NOT NULL, 
    [Date] DATETIME2 NOT NULL, 
	[HashValue] NVARCHAR(MAX) NOT NULL, 
    [TimeStamp] TIMESTAMP NOT NULL, 
    CONSTRAINT [FK_Logs_ToItems] FOREIGN KEY (ItemId) REFERENCES [Items]([ItemId])
)