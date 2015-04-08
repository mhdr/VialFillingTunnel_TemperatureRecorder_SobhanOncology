/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

insert into Items(ItemId,ItemName) values(1,N'Pre Heating Zone Temperature');
insert into Items(ItemId,ItemName) values(2,N'Sterilizer Zone Temperature');
insert into Items(ItemId,ItemName) values(3,N'Coolling Zone Temperature');