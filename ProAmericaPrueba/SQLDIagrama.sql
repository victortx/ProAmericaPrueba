CREATE TABLE [dbo].[Sucursal](
	[SucursalId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Cantidad] int NOT NULL
PRIMARY KEY CLUSTERED 
(
	[SucursalId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[Articulo](
	[ArticuloId] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](50) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[Tipo] int NOT NULL,
	[Subtipo] int NOT NULL,
	[SucursalId] int NOT NULL,
	[Cantidad] int NOT NULL
PRIMARY KEY CLUSTERED 
(
	[ArticuloId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Articulo]  WITH CHECK ADD FOREIGN KEY([SucursalId])
REFERENCES [dbo].[Sucursal] ([SucursalId])
GO


CREATE TABLE [dbo].[Promocion](
	[PromocionId] [int] IDENTITY(1,1) NOT NULL,
	[FechaInicio] Datetime NOT NULL,
	[FechaFinal] Datetime NOT NULL,
	[Puntos] int NOT NULL
PRIMARY KEY CLUSTERED 
(
	[PromocionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[DetallePromocion](
	[DetallePromocionId] [int] IDENTITY(1,1) NOT NULL,
	[PromocionId] int NOT NULL,
	[ArticuloId] int NOT NULL,
	[Precio] decimal(18,2) NOT NULL,
	[Cantidad] int NOT NULL
PRIMARY KEY CLUSTERED 
(
	[DetallePromocionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[DetallePromocion]  WITH CHECK ADD FOREIGN KEY([PromocionId])
REFERENCES [dbo].[Promocion] ([PromocionId])
GO

ALTER TABLE [dbo].[DetallePromocion]  WITH CHECK ADD FOREIGN KEY([ArticuloId])
REFERENCES [dbo].[Articulo] ([ArticuloId])
GO


CREATE TABLE [dbo].[Canje](
	[CanjeId] [int] IDENTITY(1,1) NOT NULL,
	[PromocionId] int NOT NULL,
	[Observaciones] [varchar](50) NOT NULL
PRIMARY KEY CLUSTERED 
(
	[CanjeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


ALTER TABLE [dbo].[Canje]  WITH CHECK ADD FOREIGN KEY([PromocionId])
REFERENCES [dbo].[Promocion] ([PromocionId])
GO