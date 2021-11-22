USE [master]
GO
/****** Object:  Database [DB_NetCare_ASPCoreMVC]    Script Date: 11/22/2021 10:00:32 AM ******/
CREATE DATABASE [DB_NetCare_ASPCoreMVC]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DB_NetCare_ASPCoreMVC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DB_NetCare_ASPCoreMVC.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DB_NetCare_ASPCoreMVC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DB_NetCare_ASPCoreMVC_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DB_NetCare_ASPCoreMVC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET ARITHABORT OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET  MULTI_USER 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET QUERY_STORE = OFF
GO
USE [DB_NetCare_ASPCoreMVC]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor](
	[DoctorId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[HPCSAno] [nvarchar](100) NOT NULL,
	[IDNo] [nvarchar](100) NOT NULL,
	[Discipline] [nvarchar](100) NOT NULL,
	[Province] [nvarchar](100) NOT NULL,
	[Region] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Doctor] PRIMARY KEY CLUSTERED 
(
	[DoctorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.1.8')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'251f7fd5-300b-4c58-bce8-e0dbcfcb3908', N'vucy.ngomane@gmail.com', N'VUCY.NGOMANE@GMAIL.COM', N'vucy.ngomane@gmail.com', N'VUCY.NGOMANE@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAENWlcYepMuWihm/FN7IRKga3DzOyUwGEDsz3L4E9M6SE2K7tIlXw18ZBFXBpgQ7dlA==', N'ABPZUP5GOQ5BBWS737TE6EKSLBZ2E2Q4', N'e0367590-1afb-46b6-b888-4656a9fff8ed', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2a603fb4-1fee-4017-80e9-0391a9b08738', N'vusi.ngomane@hotmail.com', N'VUSI.NGOMANE@HOTMAIL.COM', N'vusi.ngomane@hotmail.com', N'VUSI.NGOMANE@HOTMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKf7mEIWMjLUc8CSVBRoTk/hXPqw262Uvjgp+aXNeoQzyXs8wL/Pc0eSYEoWg6sIrg==', N'NQOSFOATVAFPUXCFCYJLS7TQ3ABCTA3E', N'66f8d3cb-89b9-4c9a-a523-95c0d01781d4', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Doctor] ON 
GO
INSERT [dbo].[Doctor] ([DoctorId], [Title], [FirstName], [LastName], [HPCSAno], [IDNo], [Discipline], [Province], [Region]) VALUES (1, N'DR', N'Vusi', N'Ngomane', N'DR2021', N'1234566', N'Anesthesiologists', N'Gauteng', N'Pretoria')
GO
INSERT [dbo].[Doctor] ([DoctorId], [Title], [FirstName], [LastName], [HPCSAno], [IDNo], [Discipline], [Province], [Region]) VALUES (2, N'DR', N'Sizwe', N'Ngomane', N'Prof987', N'0987', N'GYNECOLOGISTS', N'North West', N'Northen Suburb')
GO
SET IDENTITY_INSERT [dbo].[Doctor] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/22/2021 10:00:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/22/2021 10:00:32 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/22/2021 10:00:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/22/2021 10:00:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/22/2021 10:00:32 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/22/2021 10:00:32 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/22/2021 10:00:32 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[spAddDoctor]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spAddDoctor]         
(        
    @Title NVARCHAR(100),         
    @FirstName NVARCHAR(100),        
    @LastName NVARCHAR(100),        
    @HPCSAno NVARCHAR(100),        
	@IDNo NVARCHAR(100),
	@Discipline NVARCHAR(100),
	@Province NVARCHAR(100),
	@Region NVARCHAR(100)
)
     
AS         
BEGIN         
    INSERT INTO [dbo].[Doctor]
           ([Title]
           ,[FirstName]
           ,[LastName]
           ,[HPCSAno]
           ,[IDNo]
           ,[Discipline]
           ,[Province]
           ,[Region])
     VALUES (@Title,@FirstName,@LastName,@HPCSAno,@IDNo,@Discipline,@Province,@Region)
END
GO
/****** Object:  StoredProcedure [dbo].[spDeleteDoctor]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[spDeleteDoctor]         
(          
   @IDNo NVARCHAR(100)          
)          
as           
begin          
   Delete from [dbo].[Doctor] where IDNo=@IDNo          
End




GO
/****** Object:  StoredProcedure [dbo].[spGetAllDoctors]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[spGetAllDoctors]      
as      
Begin      
    select DoctorId, Title AS TitleName, FirstName, LastName, HPCSAno, IDNo, Discipline, Province, Region      
    from [dbo].[Doctor]   
    order by DoctorId 
End
GO
/****** Object:  StoredProcedure [dbo].[spGetDoctorByIDNo]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[spGetDoctorByIDNo]
  @IDNo NVARCHAR(100)
as      
Begin      
    select DoctorId, Title AS TitleName, FirstName, LastName, HPCSAno, IDNo, Discipline, Province, Region      
    from [dbo].[Doctor] WHERE IDNo=@IDNo   
End
GO
/****** Object:  StoredProcedure [dbo].[spSearchDoctors]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[spSearchDoctors] 
      @SearchString NVARCHAR(100) 
AS      
BEGIN      
    SELECT DoctorId, Title AS TitleName, FirstName, LastName, HPCSAno, IDNo, Discipline, Province, Region      
    FROM [dbo].[Doctor] D
	WHERE  D.Title LIKE '%'+ @SearchString+'%'  OR
	       D.FirstName LIKE '%'+ @SearchString+'%'  OR
		   D.LastName LIKE '%'+ @SearchString+'%'  OR
		   D.HPCSAno LIKE '%'+ @SearchString+'%'  OR 
		   D.IDNo LIKE '%'+ @SearchString+'%'  OR
		   D.Discipline LIKE '%'+ @SearchString+'%'  OR
		   D.Province LIKE '%'+ @SearchString+'%'  OR
		   D.Region LIKE '%'+ @SearchString+'%'  
     
END
GO
/****** Object:  StoredProcedure [dbo].[spUpdateDoctor]    Script Date: 11/22/2021 10:00:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[spUpdateDoctor]          
(          
    @Title NVARCHAR(100),         
    @FirstName NVARCHAR(100),        
    @LastName NVARCHAR(100),        
    @HPCSAno NVARCHAR(100),        
	@IDNo NVARCHAR(100),
	@Discipline NVARCHAR(100),
	@Province NVARCHAR(100),
	@Region NVARCHAR(100)       
)          
as          
begin          
   UPDATE[dbo].[Doctor]
        SET [Title]=@Title
           ,[FirstName]=@FirstName
           ,[LastName]=@LastName
           ,[HPCSAno]=@HPCSAno           
           ,[Discipline]=@Discipline
           ,[Province]=@Province
           ,[Region]=@Region
   WHERE [IDNo]=@IDNo
End
GO
USE [master]
GO
ALTER DATABASE [DB_NetCare_ASPCoreMVC] SET  READ_WRITE 
GO
