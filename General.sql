
USE [SAMPLE INFORMATIONDB]
GO
/****** Object:  Table [dbo].[EMPLOYEE]    Script Date: 26-02-2024 11:06:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE](
	[EMP_ID] [int] NOT NULL,
	[EMP_NAME] [char](20) NULL,
	[EMP_SALARY] [int] NULL,
	[EMP_DEPTID] [varchar](2) NULL,
	[PHONE] [varchar](10) NULL,
 CONSTRAINT [FK_EMPLOYEE] PRIMARY KEY CLUSTERED 
(
	[EMP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_EMPNAMESALARY]    Script Date: 26-02-2024 11:06:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_EMPNAMESALARY]
AS SELECT EMP_NAME,EMP_SALARY FROM EMPLOYEE;
GO
/****** Object:  Table [dbo].[DEPARTMENT]    Script Date: 26-02-2024 11:06:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DEPARTMENT](
	[DEPT_ID] [varchar](2) NOT NULL,
	[DEPT_NAME] [char](20) NULL,
	[DEPT_LOCATION] [char](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[DEPT_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_EMPDETAILSWITHDEPTNAME]    Script Date: 26-02-2024 11:06:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_EMPDETAILSWITHDEPTNAME]
AS SELECT EMP_NAME,EMP_SALARY,DEPT_NAME
FROM EMPLOYEE E INNER JOIN DEPARTMENT D
ON E.EMP_DEPTID=D.DEPT_ID WHERE D.DEPT_NAME='MARKETING';
GO
/****** Object:  View [dbo].[V_EMPDETAILSWITHOUTSALARY]    Script Date: 26-02-2024 11:06:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_EMPDETAILSWITHOUTSALARY]
AS SELECT EMP_NAME,DEPT_NAME
FROM EMPLOYEE E INNER JOIN DEPARTMENT D
ON E.EMP_DEPTID=D.DEPT_ID WHERE D.DEPT_NAME='MARKETING';
GO
/****** Object:  Table [dbo].[EMPLOYEE_SOURCE]    Script Date: 26-02-2024 11:06:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE_SOURCE](
	[E_ID] [int] NOT NULL,
	[E_NAME] [char](20) NULL,
	[E_SALARY] [int] NULL,
	[E_AGE] [int] NULL,
	[E_GENDER] [char](10) NULL,
	[E_DEPT] [char](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE_TARG]    Script Date: 26-02-2024 11:06:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE_TARG](
	[E_ID] [int] NOT NULL,
	[E_NAME] [char](20) NULL,
	[E_SALARY] [int] NULL,
	[E_AGE] [int] NULL,
	[E_GENDER] [char](10) NULL,
	[E_DEPT] [char](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLOYEE_TARGET]    Script Date: 26-02-2024 11:06:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLOYEE_TARGET](
	[E_ID] [int] NOT NULL,
	[E_NAME] [char](20) NULL,
	[E_SALARY] [int] NULL,
	[E_GENDER] [char](10) NULL,
	[E_DEPT] [char](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[E_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[DEPARTMENT] ([DEPT_ID], [DEPT_NAME], [DEPT_LOCATION]) VALUES (N'D1', N'DEVELOPMENT         ', N'CALIFORNIA          ')
INSERT [dbo].[DEPARTMENT] ([DEPT_ID], [DEPT_NAME], [DEPT_LOCATION]) VALUES (N'D2', N'MARKETING           ', N'MUMBAI              ')
INSERT [dbo].[DEPARTMENT] ([DEPT_ID], [DEPT_NAME], [DEPT_LOCATION]) VALUES (N'D3', N'ACCOUNTS            ', N'NEW YORK            ')
INSERT [dbo].[DEPARTMENT] ([DEPT_ID], [DEPT_NAME], [DEPT_LOCATION]) VALUES (N'D4', N'MANAGEMENT          ', N'SYDNEY              ')
GO
INSERT [dbo].[EMPLOYEE] ([EMP_ID], [EMP_NAME], [EMP_SALARY], [EMP_DEPTID], [PHONE]) VALUES (1111, N'STEVE               ', 35000, N'D1', NULL)
INSERT [dbo].[EMPLOYEE] ([EMP_ID], [EMP_NAME], [EMP_SALARY], [EMP_DEPTID], [PHONE]) VALUES (1112, N'ADAM                ', 28000, N'D2', NULL)
INSERT [dbo].[EMPLOYEE] ([EMP_ID], [EMP_NAME], [EMP_SALARY], [EMP_DEPTID], [PHONE]) VALUES (1113, N'JOHN                ', 50000, N'D3', NULL)
INSERT [dbo].[EMPLOYEE] ([EMP_ID], [EMP_NAME], [EMP_SALARY], [EMP_DEPTID], [PHONE]) VALUES (1114, N'MIKE                ', 45000, N'D2', NULL)
INSERT [dbo].[EMPLOYEE] ([EMP_ID], [EMP_NAME], [EMP_SALARY], [EMP_DEPTID], [PHONE]) VALUES (1115, N'PETER               ', 60000, N'D5', NULL)
GO
INSERT [dbo].[EMPLOYEE_SOURCE] ([E_ID], [E_NAME], [E_SALARY], [E_AGE], [E_GENDER], [E_DEPT]) VALUES (1, N'SAM                 ', 95000, 45, N'MALE      ', N'OPERATIONS                    ')
INSERT [dbo].[EMPLOYEE_SOURCE] ([E_ID], [E_NAME], [E_SALARY], [E_AGE], [E_GENDER], [E_DEPT]) VALUES (2, N'BOB                 ', 80000, 21, N'MALE      ', N'SUPPORT                       ')
INSERT [dbo].[EMPLOYEE_SOURCE] ([E_ID], [E_NAME], [E_SALARY], [E_AGE], [E_GENDER], [E_DEPT]) VALUES (3, N'ANNE                ', 125000, 25, N'FEMALE    ', N'ANALTYICS                     ')
INSERT [dbo].[EMPLOYEE_SOURCE] ([E_ID], [E_NAME], [E_SALARY], [E_AGE], [E_GENDER], [E_DEPT]) VALUES (4, N'JEFF                ', 73000, 30, N'FEMALE    ', N'ANALTYICS                     ')
INSERT [dbo].[EMPLOYEE_SOURCE] ([E_ID], [E_NAME], [E_SALARY], [E_AGE], [E_GENDER], [E_DEPT]) VALUES (5, N'ADAM                ', 159000, 33, N'MALE      ', N'SALES                         ')
INSERT [dbo].[EMPLOYEE_SOURCE] ([E_ID], [E_NAME], [E_SALARY], [E_AGE], [E_GENDER], [E_DEPT]) VALUES (6, N'PRIYA               ', 112000, 27, N'FEMALE    ', N'OPERATIONS                    ')
GO
INSERT [dbo].[EMPLOYEE_TARG] ([E_ID], [E_NAME], [E_SALARY], [E_AGE], [E_GENDER], [E_DEPT]) VALUES (1, N'SAM                 ', 95000, 45, N'MALE      ', N'OPERATIONS                    ')
INSERT [dbo].[EMPLOYEE_TARG] ([E_ID], [E_NAME], [E_SALARY], [E_AGE], [E_GENDER], [E_DEPT]) VALUES (2, N'BOB                 ', 80000, 21, N'MALE      ', N'SUPPORT                       ')
INSERT [dbo].[EMPLOYEE_TARG] ([E_ID], [E_NAME], [E_SALARY], [E_AGE], [E_GENDER], [E_DEPT]) VALUES (3, N'ANNE                ', 125000, 25, N'FEMALE    ', N'ANALTYICS                     ')
INSERT [dbo].[EMPLOYEE_TARG] ([E_ID], [E_NAME], [E_SALARY], [E_AGE], [E_GENDER], [E_DEPT]) VALUES (4, N'JEFF                ', 73000, 30, N'FEMALE    ', N'ANALTYICS                     ')
INSERT [dbo].[EMPLOYEE_TARG] ([E_ID], [E_NAME], [E_SALARY], [E_AGE], [E_GENDER], [E_DEPT]) VALUES (5, N'ADAM                ', 159000, 33, N'MALE      ', N'SALES                         ')
INSERT [dbo].[EMPLOYEE_TARG] ([E_ID], [E_NAME], [E_SALARY], [E_AGE], [E_GENDER], [E_DEPT]) VALUES (6, N'JEFF                ', 112000, 27, N'MALE      ', N'OPERATIONS                    ')
GO

