USE [Salary]
GO
/****** Object:  Table [dbo].[T_Contract]    Script Date: 11/02/2016 8:14:05 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Contract](
	[C_ID] [nvarchar](20) NOT NULL,
	[C_Date] [nchar](10) NULL,
	[C_Kind] [nvarchar](50) NULL,
	[FK_Umor] [int] NULL,
 CONSTRAINT [PK_T_Contract] PRIMARY KEY CLUSTERED 
(
	[C_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Excel]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Excel](
	[EX_ID] [bigint] IDENTITY(1960,1) NOT NULL,
	[FK_Person] [nvarchar](20) NULL,
	[EX_Date] [nchar](10) NULL,
	[EX_TimeStart] [nvarchar](10) NULL,
	[EX_TimeEnd] [nvarchar](10) NULL,
	[EX_Status] [nvarchar](50) NULL,
	[EX_Salary] [float] NULL,
 CONSTRAINT [PK_T_Excel] PRIMARY KEY CLUSTERED 
(
	[EX_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_FinalSalary]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_FinalSalary](
	[FS_ID] [int] IDENTITY(2350,1) NOT NULL,
	[FS_Day] [nvarchar](5) NULL,
	[FS_Month] [nvarchar](5) NULL,
	[FS_Year] [nvarchar](5) NULL,
	[FS_Benfit] [nvarchar](10) NULL,
	[FS_MSalary] [nvarchar](10) NULL,
	[FS_FMSalary] [nvarchar](10) NULL,
	[FK_Person] [nvarchar](20) NULL,
 CONSTRAINT [PK_T_FinalSalary] PRIMARY KEY CLUSTERED 
(
	[FS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Menu]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Menu](
	[M_ID] [int] IDENTITY(81,1) NOT NULL,
	[M_File] [bit] NULL,
	[M_Data] [bit] NULL,
	[M_Salary] [bit] NULL,
	[M_Report] [bit] NULL,
	[M_Chart] [bit] NULL,
	[M_SysConfig] [bit] NULL,
	[M_Utility] [bit] NULL,
	[M_AboutMe] [bit] NULL,
 CONSTRAINT [PK_T_Menu] PRIMARY KEY CLUSTERED 
(
	[M_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Mul]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Mul](
	[M_ID] [int] NOT NULL,
	[M_Mul] [float] NULL,
	[M_HourStart] [nchar](10) NULL,
	[M_HourEnd] [nchar](10) NULL,
	[FK_Umor] [int] NULL,
 CONSTRAINT [PK_T_Mul] PRIMARY KEY CLUSTERED 
(
	[M_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Person]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Person](
	[P_Code] [nvarchar](20) NOT NULL,
	[P_Name] [nvarchar](50) NULL,
	[P_Family] [nvarchar](50) NULL,
	[P_Phone] [nchar](15) NULL,
	[FK_Section] [int] NULL,
	[P_Username] [nvarchar](50) NULL,
	[P_Password] [nvarchar](50) NULL,
	[P_View] [bit] NULL,
	[P_Access] [int] NULL,
	[P_UmorName] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_Person] PRIMARY KEY CLUSTERED 
(
	[P_Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PersonExtraSalary]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PersonExtraSalary](
	[PES_ID] [int] IDENTITY(57990,1) NOT NULL,
	[FK_Person] [nvarchar](20) NOT NULL,
	[PES_StartDate] [int] NULL,
	[PES_Month] [int] NULL,
	[PES_Year] [int] NULL,
	[PES_DialyJob] [nvarchar](50) NULL,
	[PES_StartTime] [nvarchar](50) NULL,
	[PES_EndTime] [nvarchar](50) NULL,
	[PES_Mamoriat] [float] NULL,
	[PES_SalaryDaily] [float] NULL,
	[PES_Shift] [int] NULL,
	[PES_Off] [int] NULL,
	[PES_NightJob] [int] NULL,
	[PES_Description] [nvarchar](max) NULL,
	[PES_Jome] [int] NULL,
	[PES_Ecip] [int] NULL,
 CONSTRAINT [PK_T_PersonExtraSalary] PRIMARY KEY CLUSTERED 
(
	[PES_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PersonMenu]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PersonMenu](
	[FK_Person] [nvarchar](20) NOT NULL,
	[FK_Menu] [int] NOT NULL,
 CONSTRAINT [PK_T_PersonMenu] PRIMARY KEY CLUSTERED 
(
	[FK_Person] ASC,
	[FK_Menu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PESP]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PESP](
	[PE_ID] [int] IDENTITY(34870,1) NOT NULL,
	[FK_POST] [int] NOT NULL,
	[FK_PES] [int] NOT NULL,
	[PE_Permit] [int] NULL,
	[PE_DialyKindJob] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_PESP] PRIMARY KEY CLUSTERED 
(
	[PE_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Post]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Post](
	[Po_ID] [int] IDENTITY(4585,1) NOT NULL,
	[Po_Name] [nvarchar](50) NULL,
	[Po_View] [nchar](10) NULL,
	[FK_Umor] [int] NULL,
 CONSTRAINT [PK_T_Post] PRIMARY KEY CLUSTERED 
(
	[Po_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PostCenter]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PostCenter](
	[PC_ID] [int] NOT NULL,
	[PC_Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_T_PostCenter] PRIMARY KEY CLUSTERED 
(
	[PC_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_PPCenter]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_PPCenter](
	[FK_Post] [int] NOT NULL,
	[FK_PostCenter] [int] NOT NULL,
	[PPC_Mul] [float] NULL,
	[Po_Part] [int] NULL,
 CONSTRAINT [PK_T_PPCenter] PRIMARY KEY CLUSTERED 
(
	[FK_Post] ASC,
	[FK_PostCenter] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Section]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Section](
	[S_ID] [int] IDENTITY(46,1) NOT NULL,
	[FK_Umor] [int] NOT NULL,
	[S_Name] [nvarchar](50) NULL,
	[S_View] [bit] NULL,
 CONSTRAINT [PK_T_Section_1] PRIMARY KEY CLUSTERED 
(
	[S_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[T_Umor]    Script Date: 11/02/2016 8:14:06 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[T_Umor](
	[U_ID] [int] IDENTITY(12,1) NOT NULL,
	[U_Name] [nvarchar](50) NULL,
	[U_View] [bit] NULL,
 CONSTRAINT [PK_T_Umor] PRIMARY KEY CLUSTERED 
(
	[U_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
