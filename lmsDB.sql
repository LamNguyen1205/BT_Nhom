USE [LmsDB]
GO
/****** Object:  Table [dbo].[Book_Master]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Master](
	[Book_Id] [varchar](50) NULL,
	[Book_Name] [varchar](100) NULL,
	[Book_Auth] [varchar](50) NULL,
	[Book_Edition] [int] NULL,
	[Book_Pages] [int] NULL,
	[Book_Publish] [int] NULL,
	[Sr_Id] [int] NULL,
	[Book_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_Register_Main]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Register_Main](
	[Reg_Id] [int] NULL,
	[Reg_Date] [datetime] NULL,
	[Mem_Id] [varchar](50) NULL,
	[Reg_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book_Register_Sub]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book_Register_Sub](
	[Reg_Id] [int] NULL,
	[Reg_Date] [datetime] NULL,
	[Mem_Id] [varchar](50) NULL,
	[Brs_No] [int] NULL,
	[Book_Id] [varchar](50) NULL,
	[Br_Out_Date] [datetime] NULL,
	[Br_In_Date] [datetime] NULL,
	[Br_Qty] [int] NULL,
	[Br_Fine] [float] NULL,
	[Br_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mem_Transaction]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mem_Transaction](
	[Trans_Id] [int] NULL,
	[Trans_Date] [datetime] NULL,
	[Mem_Id] [varchar](50) NULL,
	[Mem_Name] [varchar](50) NULL,
	[Amount] [float] NULL,
	[Fine] [float] NULL,
	[Type] [varchar](50) NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Member_Master]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Member_Master](
	[Mem_Id] [varchar](50) NULL,
	[Mem_Name] [varchar](150) NULL,
	[Mem_Email] [varchar](150) NULL,
	[Mem_Mobile] [varchar](50) NULL,
	[Mem_Address] [varchar](250) NULL,
	[Mem_Dob] [datetime] NULL,
	[Mem_Doj] [datetime] NULL,
	[Plan_Id] [varchar](50) NULL,
	[Mem_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Plan_Master]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plan_Master](
	[Plan_Id] [varchar](50) NULL,
	[Plan_Name] [varchar](50) NULL,
	[Plan_Doc] [datetime] NULL,
	[Plan_Book_Limit] [int] NULL,
	[Plan_Book_Hold] [int] NULL,
	[Plan_Validity] [int] NULL,
	[Plan_Amount] [float] NULL,
	[Plan_Dis] [float] NULL,
	[Plan_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profile_Master]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profile_Master](
	[Pro_User_Id] [varchar](50) NULL,
	[Pro_Name] [varchar](100) NULL,
	[Pro_Email] [varchar](150) NULL,
	[Pro_Mobile] [varchar](50) NULL,
	[Pro_Password] [varchar](50) NULL,
	[Pro_Address] [varchar](250) NULL,
	[Pro_Role] [varchar](50) NULL,
	[Pro_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase_Main]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase_Main](
	[Pur_Id] [varchar](50) NULL,
	[Pur_Date] [datetime] NULL,
	[Pur_From] [varchar](50) NULL,
	[Pur_Amount] [float] NULL,
	[Pur_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Purchase_Sub]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Purchase_Sub](
	[Pur_Id] [varchar](50) NULL,
	[Pur_Date] [datetime] NULL,
	[Pur_No] [int] NULL,
	[Book_Id] [varchar](50) NULL,
	[Book_Name] [varchar](100) NULL,
	[Qty] [int] NULL,
	[Rate] [float] NULL,
	[Amount] [float] NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rack_Master]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rack_Master](
	[Rack_Id] [int] NULL,
	[Rack_Name] [varchar](50) NULL,
	[Rack_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role_Master]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role_Master](
	[Role_Id] [varchar](50) NULL,
	[Role] [varchar](50) NULL,
	[Role_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sec_Rac_Map]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sec_Rac_Map](
	[Sr_Id] [int] NULL,
	[Sec_Id] [int] NULL,
	[Rack_Id] [int] NULL,
	[Sr_Print] [int] NULL,
	[Sr_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section_Master]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section_Master](
	[Sec_Id] [int] NULL,
	[Sec_Name] [varchar](50) NULL,
	[Sec_Status] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stocks]    Script Date: 9/18/2021 11:40:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stocks](
	[Book_Id] [varchar](50) NULL,
	[Book_Name] [varchar](150) NULL,
	[Qty] [int] NULL,
	[Status] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Profile_Master] ([Pro_User_Id], [Pro_Name], [Pro_Email], [Pro_Mobile], [Pro_Password], [Pro_Address], [Pro_Role], [Pro_Status]) VALUES (N'001', N'Lam', N'Lam@gmail.com', N'123456', N'123', N'Nguyen Kiem', N'Lam', NULL)
GO
INSERT [dbo].[Role_Master] ([Role_Id], [Role], [Role_Status]) VALUES (N'BK00001', N'Hello Loc', N'Active')
INSERT [dbo].[Role_Master] ([Role_Id], [Role], [Role_Status]) VALUES (N'BK00002', N'Làm ti?p nha', N'Active')
GO
/****** Object:  StoredProcedure [dbo].[Proc_Nev_Role]    Script Date: 9/18/2021 11:40:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Proc_Nev_Role]
AS
BEGIN
	Declare @MaxNo int,@No Varchar(50);
	Select @MaxNo = ISNULL(Max(Cast(RIGHT(Role_Id,5) as Int)),0) + 1 From Role_Master;
	
	Select 'BK' + RIGHT('00000' + CAST(@MaxNo AS varchar),5);

END
GO
