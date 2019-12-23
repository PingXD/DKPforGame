/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.123.2301
 Source Server Type    : SQL Server
 Source Server Version : 10001600
 Source Host           : 192.168.123.230:1433
 Source Catalog        : Exam
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10001600
 File Encoding         : 65001

 Date: 14/12/2019 13:54:41
*/


-- ----------------------------
-- Table structure for Books
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Books]') AND type IN ('U'))
	DROP TABLE [dbo].[Books]
GO

CREATE TABLE [dbo].[Books] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Name] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [ISBN] varchar(15) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Author] varchar(20) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Price] float(53)  NOT NULL,
  [Publish] varchar(50) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Books] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Books
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Books] ON
GO

INSERT INTO [dbo].[Books] ([ID], [Name], [ISBN], [Author], [Price], [Publish]) VALUES (N'1', N'123', N'23', N'231', N'12345', N'154325')
GO

INSERT INTO [dbo].[Books] ([ID], [Name], [ISBN], [Author], [Price], [Publish]) VALUES (N'2', N'354', N'985', N'8439024', N'9184230', N'293048')
GO

SET IDENTITY_INSERT [dbo].[Books] OFF
GO


-- ----------------------------
-- Table structure for DKP
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DKP]') AND type IN ('U'))
	DROP TABLE [dbo].[DKP]
GO

CREATE TABLE [dbo].[DKP] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Name] nchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [NameTwo] nchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [addTime] time(7)  NULL,
  [DKPNumForactivity] int  NULL,
  [DKPNumForYYonline] int  NULL,
  [DKPNumForFlield] int  NULL,
  [DKPTotal] int  NULL
)
GO

ALTER TABLE [dbo].[DKP] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of DKP
-- ----------------------------
SET IDENTITY_INSERT [dbo].[DKP] ON
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'1', N'张瑾一       ', NULL, NULL, NULL, NULL, NULL, N'1153')
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'2', N'醉轻狂       ', NULL, NULL, NULL, NULL, NULL, N'1334')
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'3', N'能饮一杯无     ', NULL, NULL, NULL, NULL, NULL, N'1326')
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'4', N'梨烬        ', NULL, NULL, NULL, NULL, NULL, N'-83')
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'5', N'了了        ', NULL, NULL, NULL, NULL, NULL, N'14')
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'8', N'暴走车憨憨     ', NULL, NULL, NULL, NULL, NULL, N'139')
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'12', N'你好        ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'13', N'123       ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'14', N'测试        ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'15', N'测试1       ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'16', N'测试2       ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'17', N'测试5       ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[DKP] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'18', N'测试6       ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[DKP] OFF
GO


-- ----------------------------
-- Table structure for DKP_copy1
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[DKP_copy1]') AND type IN ('U'))
	DROP TABLE [dbo].[DKP_copy1]
GO

CREATE TABLE [dbo].[DKP_copy1] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Name] nchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [NameTwo] nchar(10) COLLATE Chinese_PRC_CI_AS  NULL,
  [addTime] time(7)  NULL,
  [DKPNumForactivity] int  NULL,
  [DKPNumForYYonline] int  NULL,
  [DKPNumForFlield] int  NULL,
  [DKPTotal] int  NULL
)
GO

ALTER TABLE [dbo].[DKP_copy1] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of DKP_copy1
-- ----------------------------
SET IDENTITY_INSERT [dbo].[DKP_copy1] ON
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'1', N'张瑾一       ', NULL, NULL, NULL, NULL, NULL, N'1153')
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'2', N'醉轻狂       ', NULL, NULL, NULL, NULL, NULL, N'1334')
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'3', N'能饮一杯无     ', NULL, NULL, NULL, NULL, NULL, N'1326')
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'4', N'梨烬        ', NULL, NULL, NULL, NULL, NULL, N'-83')
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'5', N'了了        ', NULL, NULL, NULL, NULL, NULL, N'14')
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'8', N'暴走车憨憨     ', NULL, NULL, NULL, NULL, NULL, N'139')
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'12', N'你好        ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'13', N'123       ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'14', N'测试        ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'15', N'测试1       ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'16', N'测试2       ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'17', N'测试5       ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

INSERT INTO [dbo].[DKP_copy1] ([ID], [Name], [NameTwo], [addTime], [DKPNumForactivity], [DKPNumForYYonline], [DKPNumForFlield], [DKPTotal]) VALUES (N'18', N'测试6       ', NULL, NULL, NULL, NULL, NULL, NULL)
GO

SET IDENTITY_INSERT [dbo].[DKP_copy1] OFF
GO


-- ----------------------------
-- Table structure for Goods
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Goods]') AND type IN ('U'))
	DROP TABLE [dbo].[Goods]
GO

CREATE TABLE [dbo].[Goods] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Name] varchar(100) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [Number] int  NOT NULL,
  [Price] float(53)  NOT NULL,
  [Category] varchar(10) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Goods] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Goods
-- ----------------------------
SET IDENTITY_INSERT [dbo].[Goods] ON
GO

INSERT INTO [dbo].[Goods] ([ID], [Name], [Number], [Price], [Category]) VALUES (N'1', N'baicai', N'89', N'1', N'1')
GO

INSERT INTO [dbo].[Goods] ([ID], [Name], [Number], [Price], [Category]) VALUES (N'3', N'luobo', N'60', N'1', N'1')
GO

SET IDENTITY_INSERT [dbo].[Goods] OFF
GO


-- ----------------------------
-- Table structure for modifyLog
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[modifyLog]') AND type IN ('U'))
	DROP TABLE [dbo].[modifyLog]
GO

CREATE TABLE [dbo].[modifyLog] (
  [ID] int  IDENTITY(1,1) NOT NULL,
  [Remarks] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [member] varchar(1000) COLLATE Chinese_PRC_CI_AS  NULL,
  [DKPmodify] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL,
  [time] varchar(50) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[modifyLog] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of modifyLog
-- ----------------------------
SET IDENTITY_INSERT [dbo].[modifyLog] ON
GO

INSERT INTO [dbo].[modifyLog] ([ID], [Remarks], [member], [DKPmodify], [time]) VALUES (N'15', N'测试加一', N'醉轻狂          醉轻狂       ', N'加1', NULL)
GO

INSERT INTO [dbo].[modifyLog] ([ID], [Remarks], [member], [DKPmodify], [time]) VALUES (N'16', N'测试加一', N'醉轻狂          张瑾一          醉轻狂       ', N'加1', NULL)
GO

INSERT INTO [dbo].[modifyLog] ([ID], [Remarks], [member], [DKPmodify], [time]) VALUES (N'17', N'测试加一3', N'醉轻狂          张瑾一          醉轻狂       ', N'加1', NULL)
GO

INSERT INTO [dbo].[modifyLog] ([ID], [Remarks], [member], [DKPmodify], [time]) VALUES (N'18', N'测试键一3', N'醉轻狂          张瑾一          醉轻狂       ', N'减1', NULL)
GO

INSERT INTO [dbo].[modifyLog] ([ID], [Remarks], [member], [DKPmodify], [time]) VALUES (N'19', N'测试键一3', N'醉轻狂          张瑾一          醉轻狂       ', N'减2', NULL)
GO

INSERT INTO [dbo].[modifyLog] ([ID], [Remarks], [member], [DKPmodify], [time]) VALUES (N'20', N'最后测试加时间', N'测试1          醉轻狂          能饮一杯无        梨烬           了了           暴走车憨憨        你好           123          测试           测试1       ', N'加12', N'2019/12/14 3:20:05')
GO

INSERT INTO [dbo].[modifyLog] ([ID], [Remarks], [member], [DKPmodify], [time]) VALUES (N'21', N'打架2', N'', N'加1', N'2019/12/14 12:35:21')
GO

SET IDENTITY_INSERT [dbo].[modifyLog] OFF
GO


-- ----------------------------
-- Primary Key structure for table Books
-- ----------------------------
ALTER TABLE [dbo].[Books] ADD CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table DKP
-- ----------------------------
ALTER TABLE [dbo].[DKP] ADD CONSTRAINT [PK_DKP] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table DKP_copy1
-- ----------------------------
ALTER TABLE [dbo].[DKP_copy1] ADD CONSTRAINT [PK_DKP_copy1] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Goods
-- ----------------------------
ALTER TABLE [dbo].[Goods] ADD CONSTRAINT [PK_Goods] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table modifyLog
-- ----------------------------
ALTER TABLE [dbo].[modifyLog] ADD CONSTRAINT [PK_modifyLog] PRIMARY KEY CLUSTERED ([ID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

