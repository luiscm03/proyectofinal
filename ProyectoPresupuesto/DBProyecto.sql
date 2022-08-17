USE [PRESUPUESTO]
GO
/****** Object:  Table [dbo].[Gasto]    Script Date: 15/8/2022 21:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gasto](
	[IDGasto] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[TipoGasto] [int] NULL,
	[Monto] [decimal](18, 2) NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [PK_Gasto] PRIMARY KEY CLUSTERED 
(
	[IDGasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingresos]    Script Date: 15/8/2022 21:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingresos](
	[IDIngreso] [int] NULL,
	[Fecha] [date] NULL,
	[TipoIngreso] [int] NULL,
	[Monto] [decimal](18, 2) NULL,
	[Descripcion] [varchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoGasto]    Script Date: 15/8/2022 21:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoGasto](
	[TipoGasto] [int] IDENTITY(1,1) NOT NULL,
	[Denominacion] [varchar](50) NULL,
 CONSTRAINT [PK_TipoGasto] PRIMARY KEY CLUSTERED 
(
	[TipoGasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoIngreso]    Script Date: 15/8/2022 21:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoIngreso](
	[TipoIngreso] [int] IDENTITY(1,1) NOT NULL,
	[Denominacion] [varchar](50) NULL,
 CONSTRAINT [PK_TipoIngreso] PRIMARY KEY CLUSTERED 
(
	[TipoIngreso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Gasto] ON 
GO
INSERT [dbo].[Gasto] ([IDGasto], [Fecha], [TipoGasto], [Monto], [Descripcion]) VALUES (1, CAST(N'2022-08-15' AS Date), 3, CAST(50000.00 AS Decimal(18, 2)), N'aniversario')
GO
INSERT [dbo].[Gasto] ([IDGasto], [Fecha], [TipoGasto], [Monto], [Descripcion]) VALUES (2, CAST(N'2022-08-15' AS Date), 4, CAST(6500.00 AS Decimal(18, 2)), N'corte')
GO
INSERT [dbo].[Gasto] ([IDGasto], [Fecha], [TipoGasto], [Monto], [Descripcion]) VALUES (3, CAST(N'2022-08-15' AS Date), 5, CAST(65000.00 AS Decimal(18, 2)), N'universidad')
GO
INSERT [dbo].[Gasto] ([IDGasto], [Fecha], [TipoGasto], [Monto], [Descripcion]) VALUES (4, CAST(N'2022-08-15' AS Date), 5, CAST(3000.00 AS Decimal(18, 2)), N'mensualidad')
GO
SET IDENTITY_INSERT [dbo].[Gasto] OFF
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-14' AS Date), 1, CAST(1500.00 AS Decimal(18, 2)), N'deuda adriel')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-14' AS Date), 1, CAST(60000.00 AS Decimal(18, 2)), N'skin de goku')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 1, CAST(1500.00 AS Decimal(18, 2)), N'prestamo')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 1, CAST(0.00 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 1, CAST(500000.00 AS Decimal(18, 2)), N'pago')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 4, CAST(0.00 AS Decimal(18, 2)), N'segundo pahgo')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 1, CAST(55.00 AS Decimal(18, 2)), N'a')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 1, CAST(5000.00 AS Decimal(18, 2)), N'skere')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 4, CAST(5.00 AS Decimal(18, 2)), N'')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 3, CAST(555.00 AS Decimal(18, 2)), N'GGG')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 1, CAST(5000.00 AS Decimal(18, 2)), N'colegio')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 5, CAST(700.00 AS Decimal(18, 2)), N'jj')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 3, CAST(5000.00 AS Decimal(18, 2)), N'tot')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 2, CAST(1500.00 AS Decimal(18, 2)), N'prestamo')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 3, CAST(2000.00 AS Decimal(18, 2)), N'ropa')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 4, CAST(3000.00 AS Decimal(18, 2)), N'primer pago')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 5, CAST(100000.00 AS Decimal(18, 2)), N'salario')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 1, CAST(666.00 AS Decimal(18, 2)), N'hola')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 3, CAST(5000.00 AS Decimal(18, 2)), N'yoy')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 4, CAST(3000.00 AS Decimal(18, 2)), N'pago')
GO
INSERT [dbo].[Ingresos] ([IDIngreso], [Fecha], [TipoIngreso], [Monto], [Descripcion]) VALUES (NULL, CAST(N'2022-08-15' AS Date), 6, CAST(5000.00 AS Decimal(18, 2)), N'mesada')
GO
SET IDENTITY_INSERT [dbo].[TipoGasto] ON 
GO
INSERT [dbo].[TipoGasto] ([TipoGasto], [Denominacion]) VALUES (1, N'ropa')
GO
INSERT [dbo].[TipoGasto] ([TipoGasto], [Denominacion]) VALUES (2, N'pasaje')
GO
INSERT [dbo].[TipoGasto] ([TipoGasto], [Denominacion]) VALUES (3, N'comida')
GO
INSERT [dbo].[TipoGasto] ([TipoGasto], [Denominacion]) VALUES (4, N'pelo')
GO
INSERT [dbo].[TipoGasto] ([TipoGasto], [Denominacion]) VALUES (5, N'mensualidad')
GO
SET IDENTITY_INSERT [dbo].[TipoGasto] OFF
GO
SET IDENTITY_INSERT [dbo].[TipoIngreso] ON 
GO
INSERT [dbo].[TipoIngreso] ([TipoIngreso], [Denominacion]) VALUES (1, N'deuda')
GO
INSERT [dbo].[TipoIngreso] ([TipoIngreso], [Denominacion]) VALUES (2, N'prestamo')
GO
INSERT [dbo].[TipoIngreso] ([TipoIngreso], [Denominacion]) VALUES (3, N'donacion')
GO
INSERT [dbo].[TipoIngreso] ([TipoIngreso], [Denominacion]) VALUES (4, N'quincena')
GO
INSERT [dbo].[TipoIngreso] ([TipoIngreso], [Denominacion]) VALUES (5, N'sueldo')
GO
INSERT [dbo].[TipoIngreso] ([TipoIngreso], [Denominacion]) VALUES (6, N'mesada')
GO
SET IDENTITY_INSERT [dbo].[TipoIngreso] OFF
GO
/****** Object:  StoredProcedure [dbo].[Gasto_Agregar]    Script Date: 15/8/2022 21:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Gasto_Agregar]
(     @IDGasto varchar (50)
           ,@Fecha varchar (50)
           ,@TipoGasto int
           ,@Monto decimal (18,2)
           ,@Descripcion varchar (50)
		   ,@Editar bit
		   
		   )
		   as
		   begin
		   if (@Editar = 0)
		   begin 
		   INSERT INTO [dbo].[Gasto]
([Fecha]
,[TipoGasto]
,[Monto]
,[Descripcion]



)


     VALUES

           (@Fecha
           ,@TipoGasto
           ,@Monto
           ,@Descripcion
 )
		   

end
else
begin
UPDATE [dbo].[Gasto]
   SET [Fecha] = @Fecha
   ,[TipoGasto] = @TipoGasto
   ,[Monto] =  @Monto
   ,[Descripcion] = @Descripcion
WHERE IDGasto = @IDGasto
 end
 end
GO
/****** Object:  StoredProcedure [dbo].[Ingreso_Agregar]    Script Date: 15/8/2022 21:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[Ingreso_Agregar]
(     @IDIngreso int
           ,@Fecha varchar (50)
           ,@TipoIngreso int
           ,@Monto decimal (18,2)
           ,@Descripcion varchar (150)
		   ,@Editar bit
		   
		   )
		   as
		   begin
		   if (@Editar = 0)
		   begin 
		   INSERT INTO [dbo].[Ingresos]
([Fecha]
,[TipoIngreso]
,[Monto]
,[Descripcion]



)


     VALUES

           (@Fecha
           ,@TipoIngreso
           ,@Monto
           ,@Descripcion
 )
		   

end
else
begin
UPDATE [dbo].[Ingresos]
   SET [Fecha] = @Fecha
   ,[TipoIngreso] = @TipoIngreso
   ,[Monto] =  @Monto
   ,[Descripcion] = @Descripcion
WHERE IDIngreso = @IDIngreso
 end
 end
GO
/****** Object:  StoredProcedure [dbo].[Movimiento_Listar]    Script Date: 15/8/2022 21:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Movimiento_Listar]
(
@Mes int
,@Año int
)
as 
begin
select i.IDIngreso as IDMovimiento
   ,i.Fecha
   ,ti.Denominacion as Tipo
   ,i.Monto
   ,i.Descripcion
   , 'I' as Movimiento
   from Ingresos i
   inner join TipoIngreso ti on i.IDIngreso = ti.TipoIngreso
   where month(i.Fecha) = @Mes and year(i.Fecha) = @Año

   UNION

   select g.IDGasto as IDMovimiento
   ,g.Fecha
   ,tg.Denominacion as Tipo
   ,g.Monto
   ,g.Descripcion
   , 'G' as Movimiento
   from Gasto g
   inner join TipoGasto tg on g.IDGasto = tg.TipoGasto
   where month(g.Fecha) = @Mes and year(g.Fecha) = @Año
   order by Fecha desc
   end

GO
/****** Object:  StoredProcedure [dbo].[TipoGasto_Agregar]    Script Date: 15/8/2022 21:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[TipoGasto_Agregar]
(
@Denominacion varchar (50)
,@TipoGasto int
,@Editar bit
)
as 
begin
if(@Editar = 0)
begin
INSERT INTO [dbo].[TipoGasto]
           ([Denominacion])
     VALUES
           (@Denominacion)
end
else
begin
UPDATE [dbo].[TipoGasto]
   SET [Denominacion] = @Denominacion
 WHERE TipoGasto = @TipoGasto
end

end


GO
/****** Object:  StoredProcedure [dbo].[TipoGasto_Listar]    Script Date: 15/8/2022 21:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TipoGasto_Listar]
as
begin
select
* from TipoGasto
end

GO
/****** Object:  StoredProcedure [dbo].[TipoIngreso_Agregar]    Script Date: 15/8/2022 21:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TipoIngreso_Agregar]
(
@Denominacion varchar (50)
,@TipoIngreso int
,@Editar bit
)
as 
begin
if(@Editar = 0)
begin
INSERT INTO [dbo].[TipoIngreso]
           ([Denominacion])
     VALUES
           (@Denominacion)
end
else
begin
UPDATE [dbo].[TipoIngreso]
   SET [Denominacion] = @Denominacion
 WHERE TipoIngreso = @TipoIngreso
end

end

GO
/****** Object:  StoredProcedure [dbo].[TipoIngreso_Listar]    Script Date: 15/8/2022 21:06:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[TipoIngreso_Listar]
as
begin
select
* from TipoIngreso
end
GO
