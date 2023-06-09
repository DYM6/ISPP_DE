USE [master]
GO
/****** Object:  Database [ispp05ex13]    Script Date: 23.05.2023 13:25:41 ******/
CREATE DATABASE [ispp05ex13]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ispp05ex13', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ispp05ex13.mdf' , SIZE = 9216KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ispp05ex13_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ispp05ex13_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ispp05ex13] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ispp05ex13].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ispp05ex13] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ispp05ex13] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ispp05ex13] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ispp05ex13] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ispp05ex13] SET ARITHABORT OFF 
GO
ALTER DATABASE [ispp05ex13] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ispp05ex13] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ispp05ex13] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ispp05ex13] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ispp05ex13] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ispp05ex13] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ispp05ex13] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ispp05ex13] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ispp05ex13] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ispp05ex13] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ispp05ex13] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ispp05ex13] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ispp05ex13] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ispp05ex13] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ispp05ex13] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ispp05ex13] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ispp05ex13] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ispp05ex13] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ispp05ex13] SET  MULTI_USER 
GO
ALTER DATABASE [ispp05ex13] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ispp05ex13] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ispp05ex13] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ispp05ex13] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ispp05ex13] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ispp05ex13] SET QUERY_STORE = OFF
GO
USE [ispp05ex13]
GO
/****** Object:  Table [dbo].[ChiefExpert]    Script Date: 23.05.2023 13:25:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiefExpert](
	[IdChiefExpert] [int] NOT NULL,
	[FullName] [nvarchar](200) NOT NULL,
	[Sex] [nvarchar](10) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Passport] [nvarchar](11) NOT NULL,
	[Photo] [nvarchar](50) NULL,
	[IdSkill] [nvarchar](10) NULL,
 CONSTRAINT [PK_ChiefExpert] PRIMARY KEY CLUSTERED 
(
	[IdChiefExpert] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Exam]    Script Date: 23.05.2023 13:25:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exam](
	[IdExam] [int] IDENTITY(1,1) NOT NULL,
	[IdSkill] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Exam] PRIMARY KEY CLUSTERED 
(
	[IdExam] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExamParticipant]    Script Date: 23.05.2023 13:25:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExamParticipant](
	[IdExam] [int] NOT NULL,
	[IdParticipant] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Expert]    Script Date: 23.05.2023 13:25:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Expert](
	[IdExpert] [int] NOT NULL,
	[FullName] [nvarchar](200) NOT NULL,
	[Sex] [nvarchar](10) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Passport] [nvarchar](11) NOT NULL,
	[Photo] [nvarchar](50) NULL,
	[IdSkill] [nvarchar](10) NULL,
 CONSTRAINT [PK_Expert] PRIMARY KEY CLUSTERED 
(
	[IdExpert] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizer]    Script Date: 23.05.2023 13:25:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizer](
	[IdOrganizer] [int] IDENTITY(200,1) NOT NULL,
	[FullName] [nvarchar](200) NOT NULL,
	[Sex] [nvarchar](10) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Passport] [nvarchar](11) NOT NULL,
	[Photo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Organizer] PRIMARY KEY CLUSTERED 
(
	[IdOrganizer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Participant]    Script Date: 23.05.2023 13:25:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Participant](
	[IdParticipant] [int] NOT NULL,
	[FullName] [nvarchar](200) NOT NULL,
	[Sex] [nvarchar](10) NOT NULL,
	[BirthDate] [date] NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Passport] [nvarchar](11) NOT NULL,
	[Photo] [nvarchar](50) NULL,
 CONSTRAINT [PK_Participant] PRIMARY KEY CLUSTERED 
(
	[IdParticipant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 23.05.2023 13:25:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[IdSkill] [nvarchar](10) NOT NULL,
	[SkillName_Russian] [nvarchar](200) NOT NULL,
	[SkillName_English] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[IdSkill] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiefExpert] ([IdChiefExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (1, N'Моренов Трофим Юлианович', N'Мужчина', CAST(N'1987-07-25' AS Date), N'+7 (983) 326-40', N'trofim93@outlook.com', N'4765 421287', N'picture (12).jpg', N'02')
INSERT [dbo].[ChiefExpert] ([IdChiefExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (2, N'Зылькова Нина Нифонтовна', N'Женщина', CAST(N'1978-02-02' AS Date), N'+7 (945) 882-26', N'nina91@mail.ru', N'4973 633385', N'picture (17).jpg', N'09')
INSERT [dbo].[ChiefExpert] ([IdChiefExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (3, N'Шеляпин Роман Викторович', N'Мужчина', CAST(N'1968-05-10' AS Date), N'+7 (933) 954-75', N'roman10051968@hotmail.com', N'4148 271134', N'picture (14).jpg', N'F8')
INSERT [dbo].[ChiefExpert] ([IdChiefExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (4, N'Немцов Константин Викторович', N'Мужчина', CAST(N'1972-11-20' AS Date), N'+7 (927) 422-89', N'konstantin.nemcov@rambler.ru', N'4486 117836', N'picture (12).jpg', N'F8')
INSERT [dbo].[ChiefExpert] ([IdChiefExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (5, N'Хуртина Алиса Афанасьевна', N'Женщина', CAST(N'1972-03-14' AS Date), N'+7 (920) 799-48', N'alisa14031972@outlook.com', N'4154 169152', N'picture (12).jpg', N'09')
INSERT [dbo].[ChiefExpert] ([IdChiefExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (6, N'Стукалов Яков Ильич', N'Мужчина', CAST(N'1966-05-21' AS Date), N'+7 (940) 476-89', N'yakov2699@outlook.com', N'4098 479713', N'picture (6).jpg', N'F8')
INSERT [dbo].[ChiefExpert] ([IdChiefExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (7, N'Ярилова Катерина Георгьевна', N'Женщина', CAST(N'1960-11-19' AS Date), N'+7 (919) 542-98', N'katerina19111960@hotmail.com', N'4123 170850', N'picture (2).png', N'R81')
INSERT [dbo].[ChiefExpert] ([IdChiefExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (8, N'Петрухин Феликс Савванович', N'Мужчина', CAST(N'1963-10-07' AS Date), N'+7 (931) 834-85', N'feliks07101963@mail.ru', N'4398 991681', N'picture (4).png', N'R81')
INSERT [dbo].[ChiefExpert] ([IdChiefExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (9, N'Ивашкина София Александровна', N'Женщина', CAST(N'1964-12-20' AS Date), N'+7 (998) 401-69', N'sofiya24@hotmail.com', N'4921 840663', N'picture (8).jpg', N'R89')
INSERT [dbo].[ChiefExpert] ([IdChiefExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (10, N'Золотова Рада Юлиановна', N'Женщина', CAST(N'1984-07-01' AS Date), N'+7 (982) 913-95', N'rada29@rambler.ru', N'4438 240819', N'picture (5).jpg', N'17')
GO
SET IDENTITY_INSERT [dbo].[Exam] ON 

INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (1, N'17', N'Экзамен1', CAST(N'2021-05-11' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (2, N'09', N'Экзамен3', CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (3, N'02', N'Экзамен4', CAST(N'2023-03-01' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (4, N'09', N'Экзамен5', CAST(N'2014-09-16' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (5, N'09', N'Экзамен6', CAST(N'2020-08-05' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (6, N'39 WSI', N'Экзамен7', CAST(N'2015-05-23' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (7, N'39 WSI', N'Экзамен8', CAST(N'2019-04-25' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (8, N'09', N'Экзамен10', CAST(N'2014-08-04' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (9, N'02', N'Экзамен11', CAST(N'2018-08-02' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (10, N'09', N'Экзамен12', CAST(N'2018-11-17' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (11, N'F8', N'Экзамен13', CAST(N'2012-09-02' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (12, N'F8', N'Экзамен14', CAST(N'2011-11-14' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (13, N'09', N'Экзамен15', CAST(N'2011-11-06' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (14, N'F8', N'Экзамен16', CAST(N'2012-05-27' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (15, N'R81', N'Экзамен17', CAST(N'2019-08-09' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (16, N'R81', N'Экзамен18', CAST(N'2022-12-28' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (17, N'R89', N'Экзамен19', CAST(N'2023-01-26' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (18, N'17', N'Экзамен20', CAST(N'2019-09-03' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (19, N'09', N'Экзамен22', CAST(N'2019-07-05' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (20, N'02', N'Экзамен23', CAST(N'2016-01-20' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (21, N'09', N'Экзамен24', CAST(N'2015-08-05' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (22, N'09', N'Экзамен25', CAST(N'2015-11-12' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (23, N'39 WSI', N'Экзамен26', CAST(N'2015-09-09' AS Date))
INSERT [dbo].[Exam] ([IdExam], [IdSkill], [Name], [Date]) VALUES (24, N'39 WSI', N'Экзамен27', CAST(N'2019-09-03' AS Date))
SET IDENTITY_INSERT [dbo].[Exam] OFF
GO
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (100, N'Базарова Ольга Павловна', N'Женщина', CAST(N'1992-08-22' AS Date), N'+7 (923) 230-93', N'olga.bazarova@ya.ru', N'4713 580078', N'picture (6).jpg', N'17')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (101, N'Хуснутдинов Валентин Макарович', N'Мужчина', CAST(N'1985-05-15' AS Date), N'+7 (921) 783-40', N'valentin1985@outlook.com', N'4269 628189', N'picture (1).jpg', N'09')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (102, N'Лукьянова Вера Константиновна', N'Женщина', CAST(N'1974-03-01' AS Date), N'+7 (967) 143-74', N'vera1974@mail.ru', N'4060 460768', N'picture (3).png', N'02')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (103, N'Ярмоленко Ева Серафимовна', N'Женщина', CAST(N'1992-02-17' AS Date), N'+7 (954) 426-46', N'eva1992@ya.ru', N'4677 708908', N'picture (8).jpg', N'09')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (104, N'Федосеева Алла Прохор', N'Женщина', CAST(N'1976-04-19' AS Date), N'+7 (943) 841-45', N'alla7235@gmail.com', N'4989 891444', N'picture (20).jpg', N'09')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (105, N'Бурцова Юлия Павловна', N'Женщина', CAST(N'1996-05-05' AS Date), N'+7 (995) 553-35', N'yuliya1996@ya.ru', N'4723 614685', N'picture (8).png', N'39 WSI')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (106, N'Тизенгаузена Светлана Георгьевна', N'Женщина', CAST(N'1973-02-22' AS Date), N'+7 (912) 930-82', N'svetlana57@gmail.com', N'4321 448056', N'picture (18).jpg', N'39 WSI')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (107, N'Рыченкова Анна Степановна', N'Женщина', CAST(N'1986-02-17' AS Date), N'+7 (995) 583-89', N'anna15@hotmail.com', N'4379 365579', N'picture (17).jpg', N'17')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (108, N'Есипова Юлиана Фадеевна', N'Женщина', CAST(N'1980-10-10' AS Date), N'+7 (933) 384-80', N'yuliana20@gmail.com', N'4424 942158', N'picture (11).jpg', N'17')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (109, N'Ёжиков Валерий Давидович', N'Мужчина', CAST(N'1982-09-03' AS Date), N'+7 (947) 786-92', N'valeriy77@yandex.ru', N'4716 277897', N'picture (4).jpg', N'09')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (110, N'Крюков Вячеслав Леонидович', N'Мужчина', CAST(N'1963-12-13' AS Date), N'+7 (944) 355-69', N'vyacheslav13121963@rambler.ru', N'4344 547115', N'picture (19).jpg', N'02')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (111, N'Сазонтов Илья Панкратович', N'Мужчина', CAST(N'1968-10-01' AS Date), N'+7 (939) 963-15', N'ilya86@hotmail.com', N'4078 955891', N'picture (6).jpg', N'09')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (112, N'Ягнятев Лаврентий Ильич', N'Мужчина', CAST(N'1978-05-02' AS Date), N'+7 (941) 625-44', N'lavrentiy4683@hotmail.com', N'4522 699723', N'picture (7).jpg', N'09')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (113, N'Лагранский Тарас Филиппович', N'Мужчина', CAST(N'1967-02-15' AS Date), N'+7 (957) 966-75', N'taras1967@ya.ru', N'4441 576025', N'picture (10).jpg', N'39 WSI')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (114, N'Корявина Екатерина Васильевна', N'Женщина', CAST(N'1968-05-07' AS Date), N'+7 (972) 832-62', N'ekaterina2832@outlook.com', N'4674 163981', N'picture (17).jpg', N'39 WSI')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (115, N'Анюков Илья Филиппович', N'Мужчина', CAST(N'1984-02-27' AS Date), N'+7 (930) 473-85', N'ilya58@gmail.com', N'4645 165137', N'picture (8).png', N'17')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (116, N'Горлова Надежда Витальевна', N'Женщина', CAST(N'1960-06-08' AS Date), N'+7 (991) 462-70', N'nadejda69@hotmail.com', N'4464 780862', N'picture (11).jpg', N'09')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (117, N'Коровин Прохор Яковеевичевич', N'Мужчина', CAST(N'1967-06-01' AS Date), N'+7 (976) 211-74', N'prohor7239@rambler.ru', N'4881 213142', N'picture (21).jpg', N'02')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (118, N'Набоков Герасим Васильевич', N'Мужчина', CAST(N'1979-10-08' AS Date), N'+7 (905) 403-28', N'gerasim1979@ya.ru', N'4139 649753', N'picture (13).jpg', N'09')
INSERT [dbo].[Expert] ([IdExpert], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo], [IdSkill]) VALUES (119, N'Сотникова Рада Алексеевна', N'Женщина', CAST(N'1969-02-08' AS Date), N'+7 (961) 256-78', N'rada.sotnikova@outlook.com', N'4214 784297', N'picture (21).jpg', N'F8')
GO
SET IDENTITY_INSERT [dbo].[Organizer] ON 

INSERT [dbo].[Organizer] ([IdOrganizer], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (200, N'Маслака Жанна Петровна', N'Женщина', CAST(N'1981-10-22' AS Date), N'+7 (969) 681-71', N'janna22101981@mail.ru', N'4282 450721', N'picture (7).png')
INSERT [dbo].[Organizer] ([IdOrganizer], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (201, N'Гриневеца Наталия Афанасьевна', N'Женщина', CAST(N'1983-06-23' AS Date), N'+7 (905) 769-52', N'nataliya27@yandex.ru', N'4972 329168', N'picture (4).png')
INSERT [dbo].[Organizer] ([IdOrganizer], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (202, N'Янов Игнатий Тимофеевич', N'Мужчина', CAST(N'1987-09-04' AS Date), N'+7 (907) 675-91', N'ignatiy1987@yandex.ru', N'4439 706015', N'picture (6).jpg')
INSERT [dbo].[Organizer] ([IdOrganizer], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (203, N'Фастера Клара Герасимовна', N'Женщина', CAST(N'1964-04-21' AS Date), N'+7 (909) 182-89', N'klara6712@mail.ru', N'4619 108064', N'picture (16).jpg')
INSERT [dbo].[Organizer] ([IdOrganizer], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (204, N'Кирсанов Филипп Германович', N'Мужчина', CAST(N'1982-09-05' AS Date), N'+7 (979) 631-90', N'filipp7232@outlook.com', N'4687 731090', N'picture (7).png')
INSERT [dbo].[Organizer] ([IdOrganizer], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (205, N'Быкова Ольга Герасимовна', N'Женщина', CAST(N'1971-04-28' AS Date), N'+7 (980) 165-72', N'olga21@yandex.ru', N'4774 849631', N'picture (16).jpg')
INSERT [dbo].[Organizer] ([IdOrganizer], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (206, N'Осина Нонна Ростиславовна', N'Женщина', CAST(N'1963-08-23' AS Date), N'+7 (935) 322-45', N'nonna.osina@gmail.com', N'4120 125651', N'picture (7).jpg')
INSERT [dbo].[Organizer] ([IdOrganizer], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (207, N'Илюшин Тимофей Савванович', N'Мужчина', CAST(N'1965-09-05' AS Date), N'+7 (927) 221-17', N'timofey05091965@yandex.ru', N'4085 748295', N'picture (5).png')
INSERT [dbo].[Organizer] ([IdOrganizer], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (208, N'Блантер Аполлинария Григориевна', N'Женщина', CAST(N'1968-05-16' AS Date), N'+7 (911) 374-73', N'apollinariya25@yandex.ru', N'4488 865481', N'picture (9).jpg')
INSERT [dbo].[Organizer] ([IdOrganizer], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (209, N'Левковича Василиса Вячеславовна', N'Женщина', CAST(N'1988-11-16' AS Date), N'+7 (938) 249-10', N'vasilisa1988@yandex.ru', N'4071 593651', N'picture (7).png')
SET IDENTITY_INSERT [dbo].[Organizer] OFF
GO
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (300, N'Аниканова Римма Вячеславовна', N'Женщина', CAST(N'1965-08-23' AS Date), N'+7 (917) 493-29', N'rimma.anikanova@rambler.ru', N'4789 530264', N'picture (5).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (301, N'Шорин Савва Семенович', N'Мужчина', CAST(N'1990-10-11' AS Date), N'+7 (905) 936-34', N'savva67@rambler.ru', N'4748 919067', N'picture (21).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (302, N'Левченко Николай Яковлевич', N'Мужчина', CAST(N'1973-12-23' AS Date), N'+7 (963) 125-74', N'nikolay23121973@outlook.com', N'4056 786676', N'picture (13).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (303, N'Онипченко Иван Яковлевич', N'Мужчина', CAST(N'1981-02-17' AS Date), N'+7 (976) 919-27', N'ivan8381@hotmail.com', N'4312 568195', N'picture (1).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (304, N'Сазонтова Инна Никитьевна', N'Женщина', CAST(N'1965-01-20' AS Date), N'+7 (963) 328-58', N'inna20011965@mail.ru', N'4066 999471', N'picture (8).png')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (305, N'Подчасов Александр Викторович', N'Мужчина', CAST(N'1991-03-21' AS Date), N'+7 (953) 410-16', N'aleksandr.podchasov@yandex.ru', N'4984 847790', N'picture (1).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (306, N'Викашева Юлиана Прокловна', N'Женщина', CAST(N'1965-05-01' AS Date), N'+7 (986) 669-21', N'yuliana01051965@outlook.com', N'4944 608863', N'picture (20).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (307, N'Забирова Анастасия Ильиновна', N'Женщина', CAST(N'1988-01-20' AS Date), N'+7 (920) 761-80', N'anastasiya5199@mail.ru', N'4977 360062', N'picture (3).png')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (308, N'Чилаев Филипп Власович', N'Мужчина', CAST(N'1974-11-08' AS Date), N'+7 (953) 968-77', N'filipp84@ya.ru', N'4764 148660', N'picture (14).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (309, N'Дегтярев Максим Юринович', N'Мужчина', CAST(N'1995-10-16' AS Date), N'+7 (964) 544-81', N'maksim.degtyarev@outlook.com', N'4120 657886', N'picture (9).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (310, N'Дьяченко Александр Федорович', N'Мужчина', CAST(N'1992-12-26' AS Date), N'+7 (916) 269-52', N'aleksandr.dyachenko@hotmail.com', N'4679 597711', N'picture (20).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (311, N'Любимцева Лариса Егоровна', N'Женщина', CAST(N'1992-09-03' AS Date), N'+7 (958) 258-18', N'larisa.lyubimceva@hotmail.com', N'4667 209858', N'picture (9).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (312, N'Грош Савва Дмитриевич', N'Мужчина', CAST(N'1979-11-26' AS Date), N'+7 (984) 723-11', N'savva.grosh@gmail.com', N'4513 103714', N'picture (17).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (313, N'Типалова Альбина Вениаминовна', N'Женщина', CAST(N'1966-02-20' AS Date), N'+7 (922) 357-70', N'albina1966@hotmail.com', N'4448 309925', N'picture (20).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (314, N'Дементьев Константин Николаевич', N'Мужчина', CAST(N'1967-09-19' AS Date), N'+7 (939) 842-35', N'konstantin1967@yandex.ru', N'4889 439740', N'picture (2).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (315, N'Клим Таисия Емельяновна', N'Женщина', CAST(N'1985-02-06' AS Date), N'+7 (981) 763-96', N'taisiya8398@hotmail.com', N'4633 194980', N'picture (5).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (316, N'Унгерн Данила Гаврннлович', N'Мужчина', CAST(N'1964-07-09' AS Date), N'+7 (968) 529-93', N'danila35@gmail.com', N'4558 533085', N'picture (21).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (317, N'Грош Валерий Павлович', N'Мужчина', CAST(N'1984-05-21' AS Date), N'+7 (961) 170-54', N'valeriy21051984@yandex.ru', N'4589 314328', N'picture (5).png')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (318, N'Трохина Антонина Климентьевна', N'Женщина', CAST(N'1976-04-26' AS Date), N'+7 (995) 641-58', N'antonina8270@mail.ru', N'4756 531306', N'picture (4).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (319, N'Пестов Семен Антонович', N'Мужчина', CAST(N'1973-07-20' AS Date), N'+7 (939) 867-86', N'semen76@gmail.com', N'4991 788059', N'picture (12).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (320, N'Хахалин Леонтий Климентович', N'Мужчина', CAST(N'1963-06-17' AS Date), N'+7 (944) 665-88', N'leontiy17061963@hotmail.com', N'4784 622440', N'picture (7).png')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (321, N'Толкачев Валерий Артемович', N'Мужчина', CAST(N'1982-08-17' AS Date), N'+7 (998) 660-29', N'valeriy.tolkachev@ya.ru', N'4853 522824', N'picture (4).png')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (322, N'Тимиряев Юрий Ростиславович', N'Мужчина', CAST(N'1969-03-28' AS Date), N'+7 (953) 212-37', N'yuriy1969@ya.ru', N'4933 815058', N'picture (9).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (323, N'Мутовина Алина Денисовна', N'Женщина', CAST(N'1994-09-01' AS Date), N'+7 (944) 536-51', N'alina01091994@mail.ru', N'4562 774155', N'picture (9).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (324, N'Сапалёва Марьямна Никандровна', N'Женщина', CAST(N'1969-10-18' AS Date), N'+7 (919) 940-39', N'maryamna1969@ya.ru', N'4517 796000', N'picture (9).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (325, N'Панкратов Михаил Панкратович', N'Мужчина', CAST(N'1988-10-23' AS Date), N'+7 (911) 254-87', N'mihail1988@yandex.ru', N'4147 123053', N'picture (11).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (326, N'Стрелков Степан Артемович', N'Мужчина', CAST(N'1977-07-23' AS Date), N'+7 (999) 844-48', N'stepan92@rambler.ru', N'4351 381116', N'picture (3).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (327, N'Быкова Юлиана Викторовна', N'Женщина', CAST(N'1964-01-23' AS Date), N'+7 (943) 612-29', N'yuliana.bykova@gmail.com', N'4076 368255', N'picture (4).png')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (328, N'Созыкин Максим Максимович', N'Мужчина', CAST(N'1964-08-09' AS Date), N'+7 (985) 373-40', N'maksim6497@gmail.com', N'4932 338977', N'picture (2).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (329, N'Островерх Елизавета Максимовна', N'Женщина', CAST(N'1984-04-20' AS Date), N'+7 (906) 406-82', N'elizaveta32@rambler.ru', N'4314 468424', N'picture (5).png')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (330, N'Жванецкий Савва Феоктистович', N'Мужчина', CAST(N'1984-11-13' AS Date), N'+7 (907) 504-86', N'savva.jvaneckiy@mail.ru', N'4315 284633', N'picture (14).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (331, N'Оборин Петр Нифонтович', N'Мужчина', CAST(N'1979-12-18' AS Date), N'+7 (968) 813-14', N'petr.oborin@yandex.ru', N'4042 735498', N'picture (21).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (332, N'Мичурина Маргарита Феоктистовна', N'Женщина', CAST(N'1980-09-02' AS Date), N'+7 (926) 967-88', N'margarita26@hotmail.com', N'4659 666209', N'picture (5).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (333, N'Блаженнов Алексей Севастьянович', N'Мужчина', CAST(N'1966-06-27' AS Date), N'+7 (991) 960-22', N'aleksey.blajennov@outlook.com', N'4810 848544', N'picture (1).png')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (334, N'Кожевин Прохор Никанорович', N'Мужчина', CAST(N'1967-01-05' AS Date), N'+7 (994) 825-60', N'prohor1967@hotmail.com', N'4356 138139', N'picture (2).png')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (335, N'Саврасова Лариса Ефремовна', N'Женщина', CAST(N'1992-05-23' AS Date), N'+7 (972) 970-41', N'larisa.savrasova@mail.ru', N'4982 966896', N'picture (5).png')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (336, N'Рыбакова Вероника Филипповна', N'Женщина', CAST(N'1965-02-26' AS Date), N'+7 (980) 793-71', N'veronika1965@hotmail.com', N'4675 570112', N'picture (6).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (337, N'Яманова Варвара Михаиловна', N'Женщина', CAST(N'1996-05-13' AS Date), N'+7 (925) 114-41', N'varvara8263@yandex.ru', N'4579 481830', N'picture (19).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (338, N'Шаповалов Давид Феоктистович', N'Мужчина', CAST(N'1991-02-02' AS Date), N'+7 (929) 893-95', N'david.apovalov@outlook.com', N'4929 776986', N'picture (13).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (339, N'Емельяненко Марина Ивановна', N'Женщина', CAST(N'1980-12-25' AS Date), N'+7 (931) 962-20', N'marina88@yandex.ru', N'4413 882242', N'picture (7).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (340, N'Калитин Юрий Трофимович', N'Мужчина', CAST(N'1974-12-19' AS Date), N'+7 (907) 419-48', N'yuriy.kalitin@yandex.ru', N'4548 456482', N'picture (10).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (341, N'Яресько Илья Александрович', N'Мужчина', CAST(N'1993-02-14' AS Date), N'+7 (981) 962-25', N'ilya1948@hotmail.com', N'4977 672187', N'picture (21).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (342, N'Савенков Герасим Емельянович', N'Мужчина', CAST(N'1979-01-12' AS Date), N'+7 (961) 296-50', N'gerasim1979@hotmail.com', N'4748 514770', N'picture (7).png')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (343, N'Аленин Константин Маркович', N'Мужчина', CAST(N'1991-06-10' AS Date), N'+7 (905) 150-77', N'konstantin8668@mail.ru', N'4785 339267', N'picture (2).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (344, N'Малахов Адам Германович', N'Мужчина', CAST(N'1974-08-19' AS Date), N'+7 (966) 296-90', N'adam3380@rambler.ru', N'4038 549286', N'picture (7).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (345, N'Цур Феликс Антонрвич', N'Мужчина', CAST(N'1990-05-14' AS Date), N'+7 (971) 277-27', N'feliks1990@rambler.ru', N'4674 806377', N'picture (4).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (346, N'Стожко Вероника Серафимовна', N'Женщина', CAST(N'1965-02-07' AS Date), N'+7 (997) 491-72', N'veronika1965@mail.ru', N'4191 550817', N'picture (12).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (347, N'Корявова Марфа Феоктистовна', N'Женщина', CAST(N'1981-03-15' AS Date), N'+7 (952) 835-52', N'marfa.koryavova@ya.ru', N'4465 579021', N'picture (15).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (348, N'Левкин Никита Севастьянович', N'Мужчина', CAST(N'1994-06-25' AS Date), N'+7 (999) 966-90', N'nikita.levkin@hotmail.com', N'4783 688278', N'picture (15).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (349, N'Татаров Федор Саввеевич', N'Мужчина', CAST(N'1963-12-05' AS Date), N'+7 (973) 199-13', N'fedor1963@rambler.ru', N'4874 869737', N'picture (21).jpg')
INSERT [dbo].[Participant] ([IdParticipant], [FullName], [Sex], [BirthDate], [Phone], [Email], [Passport], [Photo]) VALUES (350, N'Иванов Иван Иванович', N'Мужчина', CAST(N'1963-12-05' AS Date), N'+7 (973) 199-13', N'fedor1963@rambler.ru', N'4874 869737', NULL)
GO
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'02', N'Информационные кабельные сети', N'Information Network Cabling')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'09', N'Программные решения для бизнеса', N'IT Software Solutions for Business')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'11', N'Полиграфические технологии', N'Print Media Technology')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'17', N'Веб-технологии', N'Web Design and Development')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'39 WSI', N'Сетевое и системное администрирование', N'IT Network Systems Administration')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'F3', N'Разработка виртуальной и дополненной реальности', N'Virtual and augmented reality (VR/AR)')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'F4', N'Разработка решений с использованием блокчейн технологий', N'Blockchain Technology')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'F5', N'Машинное обучение и большие данные', N'Machine learning and big data')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'F6 RU', N'Разработка мобильных приложений', N'Mobile application development')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'F7', N'Корпоративная защита от внутренних угроз информационной безопасности', N'Enterprise Information Systems Security')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'F8', N'Кибербезопасность', N'Cyber Security')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'R53', N'Моушн Дизайн', N'Motion design')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'R71', N'ИТ-решения для бизнеса на платформе 1C: предприятие 8', N'IT Software Solutions for Business on the "1C: Enterprise 8" platform')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'R81', N'Магистральные линии связи. Строительство и эксплуатация ВОЛП', N'Backbone Communication Lines. Construction and Operation of Fiber-Optic Lines')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'R88', N'Эксплуатация кабельных линий электропередачи', N'Cable Power Line Maintenance')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'R89', N'Разработка компьютерных игр и мультимедийных приложений', N'Video Games and Multimedia Applications Development')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'T34', N'Проектирование нейроинтерфейсов', N'Neural Interface Design')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'T35', N'Квантовые технологии', N'Quantum technology')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'T71 WSI', N'Облачные технологии', N'Cloud Computing')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'T89', N'Архитектор интеллектуальных систем управления', N'Intelligent Control Systems Architect')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'V02U', N'Цифровая трансформация', N'Digital Transformation')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'V05', N'Радиотехника 5G и последующих поколений', N'Radio engineering 5G and subsequent generations')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'V14', N'Специалист по тестированию игрового программного обеспечения', N'Gaming Software Testing Specialist')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'V15', N'Специалист по стрим технологиям', N'Stream Technology Specialist')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'V16', N'Организатор онлайн мероприятий', N'Online Event Manager')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'V26', N'Фронтенд-Разработчик', N'Frontend Developer')
INSERT [dbo].[Skill] ([IdSkill], [SkillName_Russian], [SkillName_English]) VALUES (N'V50', N'Интегрированные системы безопасности', N'Integrated security systems')
GO
ALTER TABLE [dbo].[ChiefExpert]  WITH CHECK ADD  CONSTRAINT [FK_ChiefExpert_Skill] FOREIGN KEY([IdSkill])
REFERENCES [dbo].[Skill] ([IdSkill])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ChiefExpert] CHECK CONSTRAINT [FK_ChiefExpert_Skill]
GO
ALTER TABLE [dbo].[Exam]  WITH CHECK ADD  CONSTRAINT [FK_Exam_Skill] FOREIGN KEY([IdSkill])
REFERENCES [dbo].[Skill] ([IdSkill])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Exam] CHECK CONSTRAINT [FK_Exam_Skill]
GO
ALTER TABLE [dbo].[ExamParticipant]  WITH CHECK ADD  CONSTRAINT [FK_ExamParticipant_Exam] FOREIGN KEY([IdExam])
REFERENCES [dbo].[Exam] ([IdExam])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ExamParticipant] CHECK CONSTRAINT [FK_ExamParticipant_Exam]
GO
ALTER TABLE [dbo].[ExamParticipant]  WITH CHECK ADD  CONSTRAINT [FK_ExamParticipant_Participant] FOREIGN KEY([IdParticipant])
REFERENCES [dbo].[Participant] ([IdParticipant])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[ExamParticipant] CHECK CONSTRAINT [FK_ExamParticipant_Participant]
GO
ALTER TABLE [dbo].[Expert]  WITH CHECK ADD  CONSTRAINT [FK_Expert_Skill] FOREIGN KEY([IdSkill])
REFERENCES [dbo].[Skill] ([IdSkill])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[Expert] CHECK CONSTRAINT [FK_Expert_Skill]
GO
USE [master]
GO
ALTER DATABASE [ispp05ex13] SET  READ_WRITE 
GO
