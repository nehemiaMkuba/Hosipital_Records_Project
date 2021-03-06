USE [master]
GO
/****** Object:  Database [Jamii_Application]    Script Date: 03/05/2018 17:26:49 ******/
CREATE DATABASE [Jamii_Application]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Jamii_Application', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Jamii_Application.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Jamii_Application_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.MSSQLSERVER\MSSQL\DATA\Jamii_Application_log.ldf' , SIZE = 1040KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Jamii_Application] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Jamii_Application].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Jamii_Application] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Jamii_Application] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Jamii_Application] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Jamii_Application] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Jamii_Application] SET ARITHABORT OFF 
GO
ALTER DATABASE [Jamii_Application] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Jamii_Application] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Jamii_Application] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Jamii_Application] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Jamii_Application] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Jamii_Application] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Jamii_Application] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Jamii_Application] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Jamii_Application] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Jamii_Application] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Jamii_Application] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Jamii_Application] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Jamii_Application] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Jamii_Application] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Jamii_Application] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Jamii_Application] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Jamii_Application] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Jamii_Application] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Jamii_Application] SET RECOVERY FULL 
GO
ALTER DATABASE [Jamii_Application] SET  MULTI_USER 
GO
ALTER DATABASE [Jamii_Application] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Jamii_Application] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Jamii_Application] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Jamii_Application] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Jamii_Application]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 03/05/2018 17:26:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY NONCLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jamii_AuditLogs]    Script Date: 03/05/2018 17:26:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jamii_AuditLogs](
	[Id] [uniqueidentifier] NOT NULL,
	[EventType] [tinyint] NOT NULL,
	[TableName] [nvarchar](128) NULL,
	[RecordID] [nvarchar](64) NULL,
	[AdditionalNarration] [nvarchar](max) NULL,
	[ApplicationUserName] [nvarchar](256) NULL,
	[EnvironmentUserName] [nvarchar](256) NULL,
	[EnvironmentMachineName] [nvarchar](256) NULL,
	[EnvironmentDomainName] [nvarchar](256) NULL,
	[EnvironmentOSVersion] [nvarchar](256) NULL,
	[EnvironmentMACAddress] [nvarchar](256) NULL,
	[EnvironmentMotherboardSerialNumber] [nvarchar](256) NULL,
	[EnvironmentProcessorId] [nvarchar](256) NULL,
	[EnvironmentIPAddress] [nvarchar](256) NULL,
	[EventDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Jamii_AuditLogs] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jamii_AuditLogsArchive]    Script Date: 03/05/2018 17:26:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jamii_AuditLogsArchive](
	[Id] [uniqueidentifier] NOT NULL,
	[EventType] [tinyint] NOT NULL,
	[TableName] [nvarchar](128) NULL,
	[RecordID] [nvarchar](64) NULL,
	[AdditionalNarration] [nvarchar](max) NULL,
	[ApplicationUserName] [nvarchar](256) NULL,
	[EnvironmentUserName] [nvarchar](256) NULL,
	[EnvironmentMachineName] [nvarchar](256) NULL,
	[EnvironmentDomainName] [nvarchar](256) NULL,
	[EnvironmentOSVersion] [nvarchar](256) NULL,
	[EnvironmentMACAddress] [nvarchar](256) NULL,
	[EnvironmentMotherboardSerialNumber] [nvarchar](256) NULL,
	[EnvironmentProcessorId] [nvarchar](256) NULL,
	[EnvironmentIPAddress] [nvarchar](256) NULL,
	[EventDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Jamii_AuditLogsArchive] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jamii_Companies]    Script Date: 03/05/2018 17:26:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jamii_Companies](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](32) NULL,
	[PostalAddress] [nvarchar](32) NULL,
	[PhysicalAddress] [nvarchar](32) NULL,
	[MobilePhoneNumber] [nvarchar](14) NULL,
	[EmailAddress] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](32) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Jamii_Companies] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jamii_Departments]    Script Date: 03/05/2018 17:26:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jamii_Departments](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](32) NULL,
	[CreatedBy] [nvarchar](32) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Jamii_Departments] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jamii_EmailAlerts]    Script Date: 03/05/2018 17:26:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jamii_EmailAlerts](
	[Id] [uniqueidentifier] NOT NULL,
	[MailMessage_From] [nvarchar](max) NULL,
	[MailMessage_To] [nvarchar](max) NULL,
	[MailMessage_CC] [nvarchar](max) NULL,
	[MailMessage_Subject] [nvarchar](50) NULL,
	[MailMessage_Body] [nvarchar](max) NULL,
	[MailMessage_IsBodyHtml] [bit] NOT NULL,
	[MailMessage_DLRStatus] [tinyint] NOT NULL,
	[MailMessage_Origin] [tinyint] NOT NULL,
	[MailMessage_Priority] [tinyint] NOT NULL,
	[MailMessage_SendRetry] [tinyint] NOT NULL,
	[MailMessage_SecurityCritical] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Jamii_EmailAlerts] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jamii_Employees]    Script Date: 03/05/2018 17:26:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jamii_Employees](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](25) NULL,
	[LastName] [nvarchar](75) NULL,
	[Gender] [int] NOT NULL,
	[DateOfBirth] [datetime] NULL,
	[PostalAddress] [nvarchar](30) NULL,
	[PhysicalAddress] [nvarchar](30) NULL,
	[MobilePhoneNumber] [nvarchar](14) NULL,
	[EmailAddress] [nvarchar](20) NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Department_Id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_dbo.Jamii_Employees] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jamii_Enumerations]    Script Date: 03/05/2018 17:26:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jamii_Enumerations](
	[Id] [uniqueidentifier] NOT NULL,
	[Key] [nvarchar](256) NULL,
	[Value] [int] NOT NULL,
	[Description] [nvarchar](256) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Jamii_Enumerations] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jamii_Patients]    Script Date: 03/05/2018 17:26:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jamii_Patients](
	[Id] [uniqueidentifier] NOT NULL,
	[NextOfKinName] [nvarchar](30) NULL,
	[ConsultationDate] [datetime] NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NOT NULL,
	[Person_Id] [uniqueidentifier] NULL,
 CONSTRAINT [PK_dbo.Jamii_Patients] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Jamii_Persons]    Script Date: 03/05/2018 17:26:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jamii_Persons](
	[Id] [uniqueidentifier] NOT NULL,
	[FirstName] [nvarchar](25) NULL,
	[LastName] [nvarchar](75) NULL,
	[Gender] [int] NOT NULL,
	[DateOfBirth] [datetime] NULL,
	[PostalAddress] [nvarchar](30) NULL,
	[PhysicalAddress] [nvarchar](30) NULL,
	[MobilePhoneNumber] [nvarchar](14) NULL,
	[County] [nvarchar](30) NULL,
	[SubCounty] [nvarchar](30) NULL,
	[Ward] [nvarchar](30) NULL,
	[EmailAddress] [nvarchar](20) NULL,
	[CreatedBy] [nvarchar](20) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Jamii_Persons] PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Index [IX_AuditLog_EventDate]    Script Date: 03/05/2018 17:26:52 ******/
CREATE NONCLUSTERED INDEX [IX_AuditLog_EventDate] ON [dbo].[Jamii_AuditLogs]
(
	[EventDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AuditLogArchive_EventDate]    Script Date: 03/05/2018 17:26:52 ******/
CREATE NONCLUSTERED INDEX [IX_AuditLogArchive_EventDate] ON [dbo].[Jamii_AuditLogsArchive]
(
	[EventDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Department_CreatedDate]    Script Date: 03/05/2018 17:26:52 ******/
CREATE NONCLUSTERED INDEX [IX_Department_CreatedDate] ON [dbo].[Jamii_Departments]
(
	[CreatedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EmailAlert_CreatedDate]    Script Date: 03/05/2018 17:26:52 ******/
CREATE NONCLUSTERED INDEX [IX_EmailAlert_CreatedDate] ON [dbo].[Jamii_EmailAlerts]
(
	[CreatedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Department_Id]    Script Date: 03/05/2018 17:26:52 ******/
CREATE NONCLUSTERED INDEX [IX_Department_Id] ON [dbo].[Jamii_Employees]
(
	[Department_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Employee_CreatedDate]    Script Date: 03/05/2018 17:26:52 ******/
CREATE NONCLUSTERED INDEX [IX_Employee_CreatedDate] ON [dbo].[Jamii_Employees]
(
	[CreatedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Patient_CreatedDate]    Script Date: 03/05/2018 17:26:52 ******/
CREATE NONCLUSTERED INDEX [IX_Patient_CreatedDate] ON [dbo].[Jamii_Patients]
(
	[CreatedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Person_Id]    Script Date: 03/05/2018 17:26:52 ******/
CREATE NONCLUSTERED INDEX [IX_Person_Id] ON [dbo].[Jamii_Patients]
(
	[Person_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Person_CreatedDate]    Script Date: 03/05/2018 17:26:52 ******/
CREATE NONCLUSTERED INDEX [IX_Person_CreatedDate] ON [dbo].[Jamii_Persons]
(
	[CreatedDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Jamii_Employees]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Jamii_Employees_dbo.Jamii_Departments_Department_Id] FOREIGN KEY([Department_Id])
REFERENCES [dbo].[Jamii_Departments] ([Id])
GO
ALTER TABLE [dbo].[Jamii_Employees] CHECK CONSTRAINT [FK_dbo.Jamii_Employees_dbo.Jamii_Departments_Department_Id]
GO
ALTER TABLE [dbo].[Jamii_Patients]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Jamii_Patients_dbo.Jamii_Persons_Person_Id] FOREIGN KEY([Person_Id])
REFERENCES [dbo].[Jamii_Persons] ([Id])
GO
ALTER TABLE [dbo].[Jamii_Patients] CHECK CONSTRAINT [FK_dbo.Jamii_Patients_dbo.Jamii_Persons_Person_Id]
GO
USE [master]
GO
ALTER DATABASE [Jamii_Application] SET  READ_WRITE 
GO
