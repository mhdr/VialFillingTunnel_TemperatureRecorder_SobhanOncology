/*
Navicat SQL Server Data Transfer

Source Server         : WINCCFLEX
Source Server Version : 90000
Source Host           : (local)\WINCCFLEXEXPRESS:1433
Source Database       : BSLogger
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 90000
File Encoding         : 65001

Date: 2015-03-29 16:47:27
*/


-- ----------------------------
-- Table structure for TunnelLog0
-- ----------------------------
DROP TABLE [dbo].[TunnelLog0]
GO
CREATE TABLE [dbo].[TunnelLog0] (
[VarName] varchar(255) NULL ,
[TimeString] char(26) NULL ,
[VarValue] float(53) NULL ,
[Validity] smallint NULL ,
[Time_ms] float(53) NULL 
)


GO

-- ----------------------------
-- Records of TunnelLog0
-- ----------------------------
BEGIN TRANSACTION
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:38:47 PM      ', N'221', N'1', N'42092693594.7338')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:38:47 PM      ', N'194', N'1', N'42092693594.7338')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:38:47 PM      ', N'224', N'1', N'42092693594.7338')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:38:57 PM      ', N'221', N'1', N'42092693710.4861')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:38:57 PM      ', N'195', N'1', N'42092693710.4861')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:38:57 PM      ', N'224', N'1', N'42092693710.4861')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:39:07 PM      ', N'221', N'1', N'42092693826.2269')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:39:07 PM      ', N'195', N'1', N'42092693826.2269')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:39:07 PM      ', N'224', N'1', N'42092693826.2269')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:39:17 PM      ', N'221', N'1', N'42092693941.9676')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:39:17 PM      ', N'195', N'1', N'42092693941.9676')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:39:17 PM      ', N'224', N'1', N'42092693941.9676')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:39:27 PM      ', N'221', N'1', N'42092694057.7083')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:39:27 PM      ', N'195', N'1', N'42092694057.7083')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:39:27 PM      ', N'224', N'1', N'42092694057.7083')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:39:37 PM      ', N'221', N'1', N'42092694173.4491')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:39:37 PM      ', N'195', N'1', N'42092694173.4491')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:39:37 PM      ', N'224', N'1', N'42092694173.4491')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:39:47 PM      ', N'221', N'1', N'42092694289.1898')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:39:47 PM      ', N'195', N'1', N'42092694289.1898')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:39:47 PM      ', N'224', N'1', N'42092694289.1898')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:39:57 PM      ', N'221', N'1', N'42092694404.9305')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:39:57 PM      ', N'195', N'1', N'42092694404.9305')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:39:57 PM      ', N'224', N'1', N'42092694404.9305')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:40:07 PM      ', N'222', N'1', N'42092694520.6713')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:40:07 PM      ', N'195', N'1', N'42092694520.6713')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:40:07 PM      ', N'224', N'1', N'42092694520.6713')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:40:17 PM      ', N'221', N'1', N'42092694636.412')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:40:17 PM      ', N'195', N'1', N'42092694636.412')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:40:17 PM      ', N'224', N'1', N'42092694636.412')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:40:27 PM      ', N'222', N'1', N'42092694752.1875')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:40:27 PM      ', N'194', N'1', N'42092694752.1875')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:40:27 PM      ', N'224', N'1', N'42092694752.1875')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:40:37 PM      ', N'222', N'1', N'42092694867.9282')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:40:37 PM      ', N'194', N'1', N'42092694867.9282')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:40:37 PM      ', N'224', N'1', N'42092694867.9282')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:40:47 PM      ', N'222', N'1', N'42092694983.6921')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:40:47 PM      ', N'194', N'1', N'42092694983.6921')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:40:47 PM      ', N'224', N'1', N'42092694983.6921')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:40:57 PM      ', N'222', N'1', N'42092695099.4329')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:40:57 PM      ', N'193', N'1', N'42092695099.4329')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:40:57 PM      ', N'224', N'1', N'42092695099.4329')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:41:07 PM      ', N'221', N'1', N'42092695215.1736')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:41:07 PM      ', N'193', N'1', N'42092695215.1736')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:41:07 PM      ', N'224', N'1', N'42092695215.1736')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:41:17 PM      ', N'222', N'1', N'42092695330.9491')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:41:17 PM      ', N'193', N'1', N'42092695330.9491')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:41:17 PM      ', N'224', N'1', N'42092695330.9491')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:41:27 PM      ', N'221', N'1', N'42092695446.6898')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:41:27 PM      ', N'192', N'1', N'42092695446.6898')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:41:27 PM      ', N'224', N'1', N'42092695446.6898')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:41:37 PM      ', N'222', N'1', N'42092695562.4306')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:41:37 PM      ', N'192', N'1', N'42092695562.4306')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:41:37 PM      ', N'223', N'1', N'42092695562.4306')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:41:47 PM      ', N'221', N'1', N'42092695678.1829')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:41:47 PM      ', N'192', N'1', N'42092695678.1829')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:41:47 PM      ', N'223', N'1', N'42092695678.1829')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:41:57 PM      ', N'221', N'1', N'42092695793.9236')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:41:57 PM      ', N'192', N'1', N'42092695793.9236')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:41:57 PM      ', N'223', N'1', N'42092695793.9236')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:42:07 PM      ', N'221', N'1', N'42092695909.6644')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:42:07 PM      ', N'191', N'1', N'42092695909.6644')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:42:07 PM      ', N'223', N'1', N'42092695909.6644')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:42:17 PM      ', N'221', N'1', N'42092696025.4051')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:42:17 PM      ', N'191', N'1', N'42092696025.4051')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:42:17 PM      ', N'223', N'1', N'42092696025.4051')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:42:27 PM      ', N'221', N'1', N'42092696141.1574')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:42:27 PM      ', N'191', N'1', N'42092696141.1574')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:42:27 PM      ', N'223', N'1', N'42092696141.1574')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:42:37 PM      ', N'222', N'1', N'42092696256.8981')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:42:37 PM      ', N'191', N'1', N'42092696256.8981')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:42:37 PM      ', N'223', N'1', N'42092696256.8981')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:42:47 PM      ', N'221', N'1', N'42092696372.6389')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:42:47 PM      ', N'191', N'1', N'42092696372.6389')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:42:47 PM      ', N'223', N'1', N'42092696372.6389')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:42:57 PM      ', N'221', N'1', N'42092696488.3796')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:42:57 PM      ', N'190', N'1', N'42092696488.3796')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:42:57 PM      ', N'223', N'1', N'42092696488.3796')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:43:07 PM      ', N'221', N'1', N'42092696604.1319')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:43:07 PM      ', N'191', N'1', N'42092696604.1319')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:43:07 PM      ', N'223', N'1', N'42092696604.1319')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:43:17 PM      ', N'221', N'1', N'42092696719.8727')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:43:17 PM      ', N'190', N'1', N'42092696719.8727')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:43:17 PM      ', N'223', N'1', N'42092696719.8727')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:43:27 PM      ', N'221', N'1', N'42092696835.6134')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:43:27 PM      ', N'191', N'1', N'42092696835.6134')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:43:27 PM      ', N'223', N'1', N'42092696835.6134')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:43:37 PM      ', N'221', N'1', N'42092696951.7708')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:43:37 PM      ', N'191', N'1', N'42092696951.7708')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:43:37 PM      ', N'223', N'1', N'42092696951.7708')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:43:47 PM      ', N'221', N'1', N'42092697067.5231')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:43:47 PM      ', N'190', N'1', N'42092697067.5231')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:43:47 PM      ', N'223', N'1', N'42092697067.5231')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:43:57 PM      ', N'221', N'1', N'42092697183.2639')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:43:57 PM      ', N'191', N'1', N'42092697183.2639')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:43:57 PM      ', N'223', N'1', N'42092697183.2639')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:44:07 PM      ', N'221', N'1', N'42092697299.0393')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:44:07 PM      ', N'191', N'1', N'42092697299.0393')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:44:07 PM      ', N'223', N'1', N'42092697299.0393')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:44:17 PM      ', N'221', N'1', N'42092697414.7801')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:44:17 PM      ', N'191', N'1', N'42092697414.7801')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:44:17 PM      ', N'223', N'1', N'42092697414.7801')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:44:27 PM      ', N'221', N'1', N'42092697530.5208')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:44:27 PM      ', N'191', N'1', N'42092697530.5208')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:44:27 PM      ', N'223', N'1', N'42092697530.5208')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:44:37 PM      ', N'221', N'1', N'42092697646.2731')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:44:37 PM      ', N'191', N'1', N'42092697646.2731')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:44:37 PM      ', N'223', N'1', N'42092697646.2731')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:44:47 PM      ', N'221', N'1', N'42092697762.0139')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:44:47 PM      ', N'191', N'1', N'42092697762.0139')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:44:47 PM      ', N'223', N'1', N'42092697762.0139')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:44:57 PM      ', N'221', N'1', N'42092697877.7662')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:44:57 PM      ', N'192', N'1', N'42092697877.7662')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:44:57 PM      ', N'223', N'1', N'42092697877.7662')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:45:07 PM      ', N'221', N'1', N'42092697993.6111')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:45:07 PM      ', N'192', N'1', N'42092697993.6111')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:45:07 PM      ', N'223', N'1', N'42092697993.6111')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:45:17 PM      ', N'221', N'1', N'42092698109.3518')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:45:17 PM      ', N'192', N'1', N'42092698109.3518')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:45:17 PM      ', N'223', N'1', N'42092698109.3518')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:45:27 PM      ', N'221', N'1', N'42092698225.1389')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:45:27 PM      ', N'192', N'1', N'42092698225.1389')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:45:27 PM      ', N'223', N'1', N'42092698225.1389')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:45:37 PM      ', N'221', N'1', N'42092698340.8796')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:45:37 PM      ', N'192', N'1', N'42092698340.8796')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:45:37 PM      ', N'223', N'1', N'42092698340.8796')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:45:47 PM      ', N'221', N'1', N'42092698456.6204')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:45:47 PM      ', N'192', N'1', N'42092698456.6204')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:45:47 PM      ', N'223', N'1', N'42092698456.6204')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:45:57 PM      ', N'221', N'1', N'42092698572.3727')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:45:57 PM      ', N'193', N'1', N'42092698572.3727')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:45:57 PM      ', N'223', N'1', N'42092698572.3727')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:46:07 PM      ', N'221', N'1', N'42092698688.1134')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:46:07 PM      ', N'193', N'1', N'42092698688.1134')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:46:07 PM      ', N'223', N'1', N'42092698688.1134')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:46:17 PM      ', N'221', N'1', N'42092698803.8542')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:46:17 PM      ', N'193', N'1', N'42092698803.8542')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:46:17 PM      ', N'223', N'1', N'42092698803.8542')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:46:27 PM      ', N'221', N'1', N'42092698919.6065')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:46:27 PM      ', N'193', N'1', N'42092698919.6065')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:46:27 PM      ', N'223', N'1', N'42092698919.6065')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:46:37 PM      ', N'221', N'1', N'42092699035.3472')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:46:37 PM      ', N'194', N'1', N'42092699035.3472')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:46:37 PM      ', N'223', N'1', N'42092699035.3472')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:46:47 PM      ', N'221', N'1', N'42092699151.088')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:46:47 PM      ', N'194', N'1', N'42092699151.088')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:46:47 PM      ', N'223', N'1', N'42092699151.088')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:46:57 PM      ', N'221', N'1', N'42092699266.8287')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:46:57 PM      ', N'194', N'1', N'42092699266.8287')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:46:57 PM      ', N'223', N'1', N'42092699266.8287')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:47:07 PM      ', N'221', N'1', N'42092699382.5694')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:47:07 PM      ', N'194', N'1', N'42092699382.5694')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:47:07 PM      ', N'223', N'1', N'42092699382.5694')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:47:17 PM      ', N'221', N'1', N'42092699498.3218')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:47:17 PM      ', N'195', N'1', N'42092699498.3218')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:47:17 PM      ', N'223', N'1', N'42092699498.3218')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureSterilisierZone', N'3/29/2015 4:47:27 PM      ', N'221', N'1', N'42092699614.132')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperatureCoolZone', N'3/29/2015 4:47:27 PM      ', N'195', N'1', N'42092699614.132')
GO
GO
INSERT INTO [dbo].[TunnelLog0] ([VarName], [TimeString], [VarValue], [Validity], [Time_ms]) VALUES (N'TemperaturePreHeatingZone', N'3/29/2015 4:47:27 PM      ', N'223', N'1', N'42092699614.132')
GO
GO
COMMIT TRANSACTION
GO

-- ----------------------------
-- Indexes structure for table TunnelLog0
-- ----------------------------
CREATE INDEX [idxcomplex] ON [dbo].[TunnelLog0]
([Time_ms] ASC, [VarName] ASC) 
GO
