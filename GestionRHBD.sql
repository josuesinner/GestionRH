CREATE DATABASE GestionRH
USE [GestionRH]
GO
/****** Object:  Table [dbo].[Mantenimiento_Cargo]    Script Date: 01/04/2019 15:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimiento_Cargo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_Cargo] [int] NOT NULL,
	[Nombre_Cargo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Mantenimiento_Cargo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mantenimiento_Departamento]    Script Date: 01/04/2019 15:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimiento_Departamento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_Departamento] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Mantenimiento_Departamento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mantenimiento_Empleado]    Script Date: 01/04/2019 15:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mantenimiento_Empleado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_empleado] [int] NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Telefono] [nvarchar](50) NOT NULL,
	[Departamento] [nvarchar](50) NOT NULL,
	[Fecha_Ingreso] [datetime] NOT NULL,
	[Salario] [float] NOT NULL,
	[Estatus] [bit] NOT NULL,
	[Cargo] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Mantenimiento_Empleado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process_licencias]    Script Date: 01/04/2019 15:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process_licencias](
	[Empleado] [nvarchar](50) NOT NULL,
	[desde] [datetime] NOT NULL,
	[hasta] [datetime] NOT NULL,
	[comentario] [nvarchar](300) NOT NULL,
	[motivo] [nvarchar](300) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Process_licencias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process_nominas]    Script Date: 01/04/2019 15:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process_nominas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Age] [datetime] NOT NULL,
	[mes] [datetime] NOT NULL,
	[monto_total] [float] NOT NULL,
 CONSTRAINT [PK_Process_nominas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process_Permisos]    Script Date: 01/04/2019 15:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process_Permisos](
	[Empleado] [nvarchar](50) NOT NULL,
	[desde] [datetime] NOT NULL,
	[hasta] [datetime] NOT NULL,
	[comentario] [nvarchar](50) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Process_Permisos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process_salida_empleado]    Script Date: 01/04/2019 15:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process_salida_empleado](
	[Empleado] [nvarchar](50) NOT NULL,
	[Tipo_de_salida] [nvarchar](100) NOT NULL,
	[Motivo] [nvarchar](300) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Process_salida_empleado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Process_Vacaciones]    Script Date: 01/04/2019 15:08:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Process_Vacaciones](
	[Empleado] [nvarchar](50) NOT NULL,
	[desde] [datetime] NOT NULL,
	[hasta] [datetime] NOT NULL,
	[correspondiente] [datetime] NOT NULL,
	[comentario] [nvarchar](300) NOT NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_Process_Vacaciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Mantenimiento_Cargo] ON 
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (1, 1, N'Director')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (2, 2, N'Gerente')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (3, 3, N'Team Leader')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (4, 4, N'Programador')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (5, 5, N'Programadora')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (6, 6, N'Directora')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (7, 7, N'Limpieza')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (8, 8, N'Conductor')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (9, 9, N'Diseñador')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (10, 10, N'Visual Master')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (11, 11, N'Analista')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (12, 12, N'Contable')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (13, 13, N'Manager')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (14, 14, N'Mensajer@')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (15, 15, N'Recepcionista')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (16, 16, N'Psicolog@')
GO
INSERT [dbo].[Mantenimiento_Cargo] ([Id], [Codigo_Cargo], [Nombre_Cargo]) VALUES (17, 17, N'Tecnico')
GO
SET IDENTITY_INSERT [dbo].[Mantenimiento_Cargo] OFF
GO
SET IDENTITY_INSERT [dbo].[Mantenimiento_Departamento] ON 
GO
INSERT [dbo].[Mantenimiento_Departamento] ([Id], [Codigo_Departamento], [Nombre]) VALUES (1, 1, N'Administracion')
GO
INSERT [dbo].[Mantenimiento_Departamento] ([Id], [Codigo_Departamento], [Nombre]) VALUES (2, 2, N'Mantenimiento')
GO
INSERT [dbo].[Mantenimiento_Departamento] ([Id], [Codigo_Departamento], [Nombre]) VALUES (3, 3, N'Direccion')
GO
INSERT [dbo].[Mantenimiento_Departamento] ([Id], [Codigo_Departamento], [Nombre]) VALUES (4, 4, N'Transporte')
GO
INSERT [dbo].[Mantenimiento_Departamento] ([Id], [Codigo_Departamento], [Nombre]) VALUES (5, 5, N'Tecnologia')
GO
INSERT [dbo].[Mantenimiento_Departamento] ([Id], [Codigo_Departamento], [Nombre]) VALUES (6, 6, N'Recursos Audio Visuales')
GO
INSERT [dbo].[Mantenimiento_Departamento] ([Id], [Codigo_Departamento], [Nombre]) VALUES (7, 7, N'Recursos Humanos')
GO
INSERT [dbo].[Mantenimiento_Departamento] ([Id], [Codigo_Departamento], [Nombre]) VALUES (8, 8, N'Gerencia')
GO
INSERT [dbo].[Mantenimiento_Departamento] ([Id], [Codigo_Departamento], [Nombre]) VALUES (9, 9, N'Mensajeria')
GO
INSERT [dbo].[Mantenimiento_Departamento] ([Id], [Codigo_Departamento], [Nombre]) VALUES (10, 10, N'Recepcion')
GO
INSERT [dbo].[Mantenimiento_Departamento] ([Id], [Codigo_Departamento], [Nombre]) VALUES (1002, 11, N'Electronica')
GO
SET IDENTITY_INSERT [dbo].[Mantenimiento_Departamento] OFF
GO
SET IDENTITY_INSERT [dbo].[Mantenimiento_Empleado] ON 
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (13, 104, N'Enrique', N'Hansel', N'8097571010', N'Tecnologia', CAST(N'2019-03-06T00:00:00.000' AS DateTime), 30000, 0, N'Programador')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (14, 105, N'Faride', N'Rafull', N'8097571010', N'Tecnologia', CAST(N'2019-03-13T00:00:00.000' AS DateTime), 30000, 0, N'Programador')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (15, 111, N'Luis', N'Gomez', N'8295458484', N'Tecnologia', CAST(N'2017-06-07T00:00:00.000' AS DateTime), 40000, 0, N'Programador')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (16, 112, N'Diana', N'Rafull', N'8097571018', N'Tecnologia', CAST(N'2019-03-14T00:00:00.000' AS DateTime), 20000, 0, N'Programadora')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (18, 105, N'JUAN', N'ROSARIO', N'8095977716', N'INF', CAST(N'2019-03-26T00:00:00.000' AS DateTime), 8000, 0, N'Director')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (1002, 108, N'Demar', N'Derozan', N'8294756262', N'Tecnologia', CAST(N'2019-03-13T00:00:00.000' AS DateTime), 80000, 0, N'Programador')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2002, 109, N'Demar', N'Derozan', N'8294567441', N'Tecnologia', CAST(N'2019-03-03T00:00:00.000' AS DateTime), 50000, 1, N'Programador')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2003, 101, N'Enrique', N'Channer', N'8297574515', N'Tecnologia', CAST(N'2019-03-03T00:00:00.000' AS DateTime), 50000, 1, N'Tecnico')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2004, 1050, N'Enriques', N'Channerin', N'8297574516', N'Tecnologia', CAST(N'2019-03-03T00:00:00.000' AS DateTime), 50000, 1, N'Tecnico')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2005, 111, N'Enrique', N'Iman', N'8097571018', N'Recepcion', CAST(N'2019-03-02T00:00:00.000' AS DateTime), 40000, 1, N'Programador')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2006, 1214, N'Hector', N'Rozon', N'8496247531', N'Recepcion', CAST(N'2011-08-01T00:00:00.000' AS DateTime), 25000, 1, N'Recepcionista')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2007, 1111, N'Demari', N'Derozana', N'8496247531', N'Recepcion', CAST(N'2019-06-05T00:00:00.000' AS DateTime), 25000, 1, N'Programadora')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2008, 153, N'Frank', N'Reyes', N'8097571015', N'Administracion', CAST(N'2019-02-03T00:00:00.000' AS DateTime), 20000, 1, N'Administradora')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2009, 1550, N'Juana', N'Rosario', N'8097571018', N'Mantenimiento', CAST(N'2019-03-02T00:00:00.000' AS DateTime), 10000, 1, N'Limpieza')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2010, 147, N'Danny', N'Gomez', N'8097571416', N'Administracion', CAST(N'2019-02-03T00:00:00.000' AS DateTime), 15000, 1, N'Recepcion')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2011, 1474, N'Ashley', N'Ponse', N'8294578412', N'Recursos Humanos', CAST(N'2019-03-02T00:00:00.000' AS DateTime), 40000, 1, N'Psicologa')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2012, 2020, N'Leonel', N'Fernandez', N'8097571019', N'Tecnologia', CAST(N'2019-03-13T00:00:00.000' AS DateTime), 40000, 1, N'Programador')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2013, 1278, N'Geraldo', N'Galva', N'8294562318', N'Electronica', CAST(N'2019-03-02T00:00:00.000' AS DateTime), 30000, 1, N'Tecnico')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2014, 1745, N'Gregory', N'Myers', N'8495621225', N'Transporte', CAST(N'2019-02-01T00:00:00.000' AS DateTime), 25000, 1, N'Conductor')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (2015, 109, N'Manuel', N'Diaz', N'8097571017', N'Recursos Audio Visuales', CAST(N'2019-03-05T00:00:00.000' AS DateTime), 15000, 0, N'Visual Master')
GO
INSERT [dbo].[Mantenimiento_Empleado] ([Id], [Codigo_empleado], [Nombre], [Apellido], [Telefono], [Departamento], [Fecha_Ingreso], [Salario], [Estatus], [Cargo]) VALUES (3002, 5226, N'Kevin', N'Cosner', N'8295468784', N'Mensajeria', CAST(N'2019-02-01T00:00:00.000' AS DateTime), 15000, 1, N'Mensajer@')
GO
SET IDENTITY_INSERT [dbo].[Mantenimiento_Empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[Process_nominas] ON 
GO
INSERT [dbo].[Process_nominas] ([Id], [Age], [mes], [monto_total]) VALUES (1, CAST(N'2019-03-25T12:12:36.990' AS DateTime), CAST(N'2019-03-25T00:00:00.000' AS DateTime), 120000)
GO
INSERT [dbo].[Process_nominas] ([Id], [Age], [mes], [monto_total]) VALUES (2, CAST(N'2019-03-25T12:14:42.067' AS DateTime), CAST(N'2019-03-25T00:00:00.000' AS DateTime), 120000)
GO
INSERT [dbo].[Process_nominas] ([Id], [Age], [mes], [monto_total]) VALUES (3, CAST(N'2019-03-25T12:27:57.820' AS DateTime), CAST(N'2019-03-25T00:00:00.000' AS DateTime), 0)
GO
INSERT [dbo].[Process_nominas] ([Id], [Age], [mes], [monto_total]) VALUES (4, CAST(N'2019-03-25T12:33:17.007' AS DateTime), CAST(N'2019-03-25T00:00:00.000' AS DateTime), 120000)
GO
INSERT [dbo].[Process_nominas] ([Id], [Age], [mes], [monto_total]) VALUES (1002, CAST(N'2019-04-01T14:48:12.403' AS DateTime), CAST(N'2019-04-01T00:00:00.000' AS DateTime), 435000)
GO
SET IDENTITY_INSERT [dbo].[Process_nominas] OFF
GO
SET IDENTITY_INSERT [dbo].[Process_Permisos] ON 
GO
INSERT [dbo].[Process_Permisos] ([Empleado], [desde], [hasta], [comentario], [Id]) VALUES (N'Frank Reyes', CAST(N'2019-03-02T00:00:00.000' AS DateTime), CAST(N'2019-03-05T00:00:00.000' AS DateTime), N'Bien!', 1)
GO
SET IDENTITY_INSERT [dbo].[Process_Permisos] OFF
GO
SET IDENTITY_INSERT [dbo].[Process_salida_empleado] ON 
GO
INSERT [dbo].[Process_salida_empleado] ([Empleado], [Tipo_de_salida], [Motivo], [Fecha], [Id]) VALUES (N'108. Demar Derozan', N'Despido', N'Se porto Mal', CAST(N'2019-02-23T02:30:00.000' AS DateTime), 2)
GO
INSERT [dbo].[Process_salida_empleado] ([Empleado], [Tipo_de_salida], [Motivo], [Fecha], [Id]) VALUES (N'109. Manuel Diaz', N'Despido', N'Se porto Mal', CAST(N'2019-03-02T02:30:00.000' AS DateTime), 3)
GO
SET IDENTITY_INSERT [dbo].[Process_salida_empleado] OFF
GO
SET IDENTITY_INSERT [dbo].[Process_Vacaciones] ON 
GO
INSERT [dbo].[Process_Vacaciones] ([Empleado], [desde], [hasta], [correspondiente], [comentario], [Id]) VALUES (N'Faride', CAST(N'2019-03-02T00:00:00.000' AS DateTime), CAST(N'2019-03-11T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'Buenas Vacaciones', 1)
GO
INSERT [dbo].[Process_Vacaciones] ([Empleado], [desde], [hasta], [correspondiente], [comentario], [Id]) VALUES (N'Faride', CAST(N'2018-03-02T00:00:00.000' AS DateTime), CAST(N'2018-03-04T00:00:00.000' AS DateTime), CAST(N'2018-01-01T00:00:00.000' AS DateTime), N'Buenas Vacaciones', 2)
GO
INSERT [dbo].[Process_Vacaciones] ([Empleado], [desde], [hasta], [correspondiente], [comentario], [Id]) VALUES (N'Luis Gomez', CAST(N'2019-02-03T00:00:00.000' AS DateTime), CAST(N'2019-03-04T00:00:00.000' AS DateTime), CAST(N'2019-01-01T00:00:00.000' AS DateTime), N'Que bien la Pasaras Luis Suerte!', 1002)
GO
SET IDENTITY_INSERT [dbo].[Process_Vacaciones] OFF
GO
