USE [Sport]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 10.10.2024 13:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[Id] [int] NOT NULL,
	[GenderName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeVisit]    Script Date: 10.10.2024 13:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeVisit](
	[Id] [int] NOT NULL,
	[NameType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypeVisit] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10.10.2024 13:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](50) NOT NULL,
	[Series] [nvarchar](50) NOT NULL,
	[Number] [nvarchar](50) NOT NULL,
	[DateBorn] [date] NOT NULL,
	[LastVisit] [int] NOT NULL,
	[TypeVisitId] [int] NULL,
	[GenderId] [int] NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 10.10.2024 13:24:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] NOT NULL,
	[NameRole] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Gender] ([Id], [GenderName]) VALUES (1, N'ж')
INSERT [dbo].[Gender] ([Id], [GenderName]) VALUES (2, N'м')
GO
INSERT [dbo].[TypeVisit] ([Id], [NameType]) VALUES (1, N'Неуспешно')
INSERT [dbo].[TypeVisit] ([Id], [NameType]) VALUES (2, N'Успешно')
GO
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (1, 3, N'Акимов Ян Алексеевич', N'gohufreilagrau-3818@yopmail.com', N'akimovya', N'bn069Caj', N'7817855837', N'2367', N'558134', CAST(N'1993-07-03' AS Date), 1, 2, 2)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (2, 2, N'Гончарова Ульяна Львовна', N'xawugosune-1385@yopmail.com', N'goncharovaul', N'pW4qZhL!', N'2309068815', N'7101', N'669343', CAST(N'1975-06-22' AS Date), 1, 2, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (3, 1, N'Анохина Елизавета Матвеевна', N'leuttevitrafo1998@mail.ru', N'anochinaem', N'y6UNmaJg', N'5554448316', N'3455', N'719630', CAST(N'1991-08-16' AS Date), 1, 2, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (4, 3, N'Николаев Илья Владиславович', N'frapreubrulloba1141@yandex.ru', N'nickolaeviv', N'ebOt@4y$', N'3926824442', N'2377', N'871623', CAST(N'1970-12-22' AS Date), 1, 2, 2)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (5, 2, N'Уткин Дмитрий Платонович', N'zapramaxesu-7741@yopmail.com', N'utkindp', N'zQt8g@GH', N'8364290386', N'8755', N'921148', CAST(N'1999-05-04' AS Date), 1, 1, 2)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (6, 2, N'Куликова Стефания Никитична', N'rouzecroummegre-3899@yopmail.com', N'kulikovasn', N'TCmE7Jon', N'2839453092', N'4355', N'104594', CAST(N'1994-12-06' AS Date), 1, 2, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (7, 2, N'Волков Егор Матвеевич', N'ziyeuddocrabri-4748@@yopmail.com', N'volkovem', N'pbgO3Vv5', N'6213593669', N'2791', N'114390', CAST(N'1995-03-28' AS Date), 1, 2, 2)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (8, 1, N'Соколова Софья Георгиевна', N'ketameissoinnei-1951@yopmail.com', N'sokolovasg', N'lITaH?Bs', N'4405610314', N'5582', N'126286', CAST(N'1977-03-27' AS Date), 1, 1, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (9, 3, N'Голубева Полина Андреевна', N'yipraubaponou-5849@yopmail.com', N'golubevapa', N's|ke*p@~', N'3319182434', N'2978', N'133653', CAST(N'1975-04-12' AS Date), 1, 2, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (10, 3, N'Вишневская Мария Андреевна', N'crapedocouca-3572@yopmail.com', N'vishnevskayama', N'OCaywHJZ', N'4932193942', N'7512', N'141956', CAST(N'1975-12-23' AS Date), 1, 2, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (11, 3, N'Васильева Арина Данииловна', N'ceigoixakaunni-9227@yopmail.com', N'vasilevad', N'DAWuV%#u', N'4074855030', N'5046', N'158433', CAST(N'2000-01-22' AS Date), 1, 1, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (12, 3, N'Павлов Дмитрий Максимович', N'yeimmeiwauzomo-7054@yopmail.com', N'pavlovdm', N'ptoED%zE', N'9194782497', N'2460', N'169505', CAST(N'1983-10-03' AS Date), 1, 1, 2)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (13, 2, N'Горбунова Мирослава Артуровна', N'pixil59@gmail.com', N'gorbunovama', N'ZFR2~Zl*', N'4828029580', N'3412', N'174593', CAST(N'1998-03-03' AS Date), 1, 2, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (15, 2, N'Петрова Алина Робертовна', N'vilagajaunne-5170@yandex.ru', N'petrovaar', N'z7ZE?8N5', N'7103882563', N'5829', N'219464', CAST(N'1980-09-23' AS Date), 1, 2, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (16, 2, N'Плотников Григорий Александрович', N'frusubroppotou656@yandex.ru', N'plotnikovga', N'yh+S4@yc', N'7594523846', N'6443', N'208059', CAST(N'1991-03-13' AS Date), 1, 2, 2)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (17, 2, N'Прохорова Есения Тимофеевна', N'vhopkins@lewis-mullen.com', N'prochorovaet', N'wLF186dB', N'6878011332', N'7079', N'213265', CAST(N'1998-04-14' AS Date), 1, NULL, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (18, 2, N'Чернов Алексей Егорович', N'nlewis@yahoo.com', N'chernovae', N'Sjkr*1zV', N'4257832253', N'8207', N'522702', CAST(N'1980-04-16' AS Date), 1, 2, 2)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (19, 3, N'Горбунов Степан Артёмович', N'garciadavid@mckinney-mcbride.com', N'gorbunovsa', N'hFhK%$JI', N'8894494391', N'9307', N'232158', CAST(N'1993-07-23' AS Date), 1, 2, 2)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (20, 2, N'Рябинина Софья Артёмовна', N'loudittoimmolau1900@gmail.com', N'ryabininasa', N'&yw1da4K', N'8253018250', N'1357', N'242839', CAST(N'1990-06-01' AS Date), 1, NULL, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (21, 2, N'Козлова Яна Даниловна', N'hittuprofassa4984@mail.com', N'kozlovayd', N'wCH7dl3k', N'3973342086', N'1167', N'256636', CAST(N'1987-12-21' AS Date), 1, NULL, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (22, 3, N'Лукьянова Ульяна Олеговна', N'freineiciweijau888@yandex.ru', N'lyckyanovayo', N'JadQ24D5', N'2415703040', N'1768', N'266986', CAST(N'1981-10-22' AS Date), 1, NULL, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (23, 2, N'Кондрашова Арина Ивановна', N'jessica84@hotmail.com', N'kondrashovai', N'YlBz$8vJ', N'7134628265', N'1710', N'427875', CAST(N'1976-12-22' AS Date), 1, 1, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (24, 3, N'Быкова Виктория Тимуровна', N'nokupekidda2001@gmail.com', N'bykovavt', N'nx8Z$K98', N'8548222331', N'1806', N'289145', CAST(N'1973-06-14' AS Date), 1, NULL, 1)
INSERT [dbo].[User] ([Id], [RoleId], [Name], [Email], [Login], [Password], [Phone], [Series], [Number], [DateBorn], [LastVisit], [TypeVisitId], [GenderId]) VALUES (25, 2, N'Гуляев Тимофей Даниилович', N'ginaritter@schneider-buchanan.com', N'gylyaevtd', N'lz$kp1?f', N'4397136117', N'1587', N'291249', CAST(N'1987-02-05' AS Date), 1, 1, 2)
GO
INSERT [dbo].[UserRole] ([Id], [NameRole]) VALUES (1, N'Администратор')
INSERT [dbo].[UserRole] ([Id], [NameRole]) VALUES (2, N'Исполнитель')
INSERT [dbo].[UserRole] ([Id], [NameRole]) VALUES (3, N'Менеджер')
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Gender] FOREIGN KEY([GenderId])
REFERENCES [dbo].[Gender] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Gender]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_TypeVisit] FOREIGN KEY([TypeVisitId])
REFERENCES [dbo].[TypeVisit] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_TypeVisit]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserRole] FOREIGN KEY([RoleId])
REFERENCES [dbo].[UserRole] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserRole]
GO
