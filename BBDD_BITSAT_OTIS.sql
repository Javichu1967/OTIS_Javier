USE [BITSAT_OTIS]
GO
/****** Object:  Table [dbo].[BITSAT_COMPAÑIA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_COMPAÑIA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
	[IDPAIS] [nvarchar](2) NULL,
	[DISP_JDE] [bit] NULL,
 CONSTRAINT [PK_BITSAT_DELEGACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_CENTRO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CENTRO](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_CENTRO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_CENTRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FISS_CC_PERFIL_ENCUESTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_CC_PERFIL_ENCUESTA](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](256) NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_FISS_CC_PERFIL_ENCUESTA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FISS_CC_SELECTOR_ENCUESTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_CC_SELECTOR_ENCUESTA](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](256) NOT NULL,
	[ALERTA] [bit] NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_FISS_CC_SELECTOR_ENCUESTA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FISS_CC_TIPO_ENCUESTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_CC_TIPO_ENCUESTA](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](256) NOT NULL,
	[ALERTA] [bit] NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_FISS_CC_TIPO_ENCUESTA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FISS_CC_ENCUESTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_CC_ENCUESTA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_TIPO_ENCUESTA] [int] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CONTRATO] [nvarchar](6) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[NOMBRE] [nvarchar](100) NULL,
	[TELEFONO] [nvarchar](100) NULL,
	[TIPO_AVISO] [nvarchar](50) NULL,
	[ID_PERFIL_ENCUESTA] [int] NULL,
	[OBSERVACIONES] [nvarchar](500) NULL,
	[ATENDIDO] [bit] NOT NULL,
	[FECHA_ENCUESTA] [datetime] NOT NULL,
	[AGENTE_CC] [nvarchar](25) NULL,
	[DIRECCION] [nvarchar](500) NULL,
	[PROCESADO] [bit] NULL,
	[FECHA_ENVIO_ALERTA] [datetime] NULL,
 CONSTRAINT [PK_FISS_CC_ENCUESTA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FISS_CC_ENCUESTA_RESPUESTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_CC_ENCUESTA_RESPUESTA](
	[ID_RESPUESTA] [int] IDENTITY(1,1) NOT NULL,
	[ID_ENCUESTA] [int] NOT NULL,
	[ID_TEXTO_ENCUESTA] [int] NOT NULL,
	[RESPUESTA_VALOR] [int] NULL,
	[ID_SELECTOR_ENCUESTA] [int] NULL,
 CONSTRAINT [PK_FISS_CC_ENCUESTA_RESPUESTA] PRIMARY KEY CLUSTERED 
(
	[ID_RESPUESTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_PBI_CC_Encuestas]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[vw_PBI_CC_Encuestas]
AS

	SELECT 
		ENC.ID AS ID_ENCUESTA,
		ENC.CODIGO_COMPAÑIA AS [IdCia], 
		CIA.DESCRIPCION AS [Compañía],
		ENC.CODIGO_CENTRO AS [CodCentro],
		CEN.DESCRIPCION AS [Centro],
		CASE
			WHEN TIP.ID IN(1,2) THEN TIP.DESCRIPCION
			WHEN TIP.ID=3 AND LEFT(ENC.CONTRATO,1)='N' THEN 'Venta Nueva(N)'
			WHEN TIP.ID=3 AND LEFT(ENC.CONTRATO,1)='K' THEN 'BEX (K)'
			WHEN TIP.ID=3 AND LEFT(ENC.CONTRATO,1)='S' THEN 'Modernización(S)'
			ELSE TIP.DESCRIPCION
		END AS [Actividad],
		ENC.TIPO_AVISO aS [Sub-Actividad],
		ENC.CONTRATO AS [Contrato],
		ENC.DIRECCION AS [Dirección],
		ENC.NOMBRE AS [Encuestado],
		ENC.TELEFONO AS [Telefono],
		PER.DESCRIPCION AS [Perfil Encuestado],
		CASE WHEN ENC.ATENDIDO = 1 THEN 'SI' ELSE 'NO' END AS [Atiende Encuesta],
		REP1.RESPUESTA_VALOR AS [Experiencia y relación con GRUPO OTIS],
		REP2.RESPUESTA_VALOR AS [Respuesta de GRUPO OTIS a requerimientos],
		REP3.RESPUESTA_VALOR AS [Producto GRUPO OTIS respecto a competencia (0 NS/NC)],
		REP4.RESPUESTA_VALOR AS [Calidad GRUPO OTIS respecto a competencia (0 NS/NC)],
		REP5.RESPUESTA_VALOR AS [Servicio GRUPO OTIS respecto a competencia (0 NS/NC)],
		REP6.RESPUESTA_VALOR AS [Recomendación a terceros],
		SEL7.DESCRIPCION AS [Mejoras Sugeridas],
		SEL8.DESCRIPCION AS [Quién realizó el Rescate],
		REP9.RESPUESTA_VALOR AS [Tiempo de llegada del técnico (0 NS/NC)],
		REP10.RESPUESTA_VALOR AS [Atención telefónica (0 NS/NC)],
		SEL11.DESCRIPCION AS [Alertas],
		ENC.OBSERVACIONES AS [Observaciones Adicionales],
		ENC.FECHA_ENCUESTA AS [FechaHora],
		CEN.CODIGO_CENTRO AS LOGE,
		ENC.FECHA_ENCUESTA AS "FechaV"
	FROM 
		FISS_CC_Encuesta ENC INNER JOIN BITSAT_COMPAÑIA CIA
			ON ENC.CODIGO_COMPAÑIA=CIA.CODIGO_COMPAÑIA
		INNER JOIN BITSAT_CENTRO CEN
			ON ENC.CODIGO_COMPAÑIA=CEN.CODIGO_COMPAÑIA AND ENC.CODIGO_CENTRO=CEN.CODIGO_CENTRO
		LEFT JOIN FISS_CC_TIPO_ENCUESTA TIP
			ON ENC.ID_TIPO_ENCUESTA=TIP.ID
		LEFT JOIN FISS_CC_PERFIL_ENCUESTA PER
			ON ENC.ID_PERFIL_ENCUESTA=PER.ID
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP1 ON ENC.ID=REP1.ID_ENCUESTA AND REP1.ID_TEXTO_ENCUESTA=1
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP2 ON ENC.ID=REP2.ID_ENCUESTA AND REP2.ID_TEXTO_ENCUESTA=2
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP3 ON ENC.ID=REP3.ID_ENCUESTA AND REP3.ID_TEXTO_ENCUESTA=3
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP4 ON ENC.ID=REP4.ID_ENCUESTA AND REP4.ID_TEXTO_ENCUESTA=4
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP5 ON ENC.ID=REP5.ID_ENCUESTA AND REP5.ID_TEXTO_ENCUESTA=5
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP6 ON ENC.ID=REP6.ID_ENCUESTA AND REP6.ID_TEXTO_ENCUESTA=6
		LEFT JOIN (SELECT ID_ENCUESTA,
							STUFF((SELECT '; ' + SELECTOR.DESCRIPCION
						FROM FISS_CC_ENCUESTA_RESPUESTA ENCUESTA INNER JOIN FISS_CC_SELECTOR_ENCUESTA SELECTOR 
							ON ENCUESTA.ID_SELECTOR_ENCUESTA = SELECTOR.ID
						WHERE (ENCUESTA.ID_TEXTO_ENCUESTA = 7 AND ENCUESTA.ID_ENCUESTA = Results.ID_ENCUESTA) 
						FOR XML PATH(''),TYPE).value('(./text())[1]','VARCHAR(MAX)')
					  ,1,2,'') AS DESCRIPCION
					FROM FISS_CC_ENCUESTA_RESPUESTA Results
					WHERE Results.ID_TEXTO_ENCUESTA = 7
					GROUP BY ID_ENCUESTA)SEL7 ON ENC.ID=SEL7.ID_ENCUESTA
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP8 ON ENC.ID=REP8.ID_ENCUESTA AND REP8.ID_TEXTO_ENCUESTA=8
		LEFT JOIN FISS_CC_SELECTOR_ENCUESTA SEL8 ON REP8.ID_SELECTOR_ENCUESTA=SEL8.ID
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP9 ON ENC.ID=REP9.ID_ENCUESTA AND REP9.ID_TEXTO_ENCUESTA=9
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP10 ON ENC.ID=REP10.ID_ENCUESTA AND REP10.ID_TEXTO_ENCUESTA=10
		LEFT JOIN (SELECT ID_ENCUESTA,
							STUFF((SELECT '; ' + SELECTOR.DESCRIPCION
						FROM FISS_CC_ENCUESTA_RESPUESTA ENCUESTA INNER JOIN FISS_CC_SELECTOR_ENCUESTA SELECTOR 
							ON ENCUESTA.ID_SELECTOR_ENCUESTA = SELECTOR.ID
						WHERE (ENCUESTA.ID_TEXTO_ENCUESTA = 11 AND ENCUESTA.ID_ENCUESTA = Results.ID_ENCUESTA) 
						FOR XML PATH(''),TYPE).value('(./text())[1]','VARCHAR(MAX)')
					  ,1,2,'') AS DESCRIPCION
					FROM FISS_CC_ENCUESTA_RESPUESTA Results
					WHERE Results.ID_TEXTO_ENCUESTA = 11
					GROUP BY ID_ENCUESTA)SEL11 ON ENC.ID=SEL11.ID_ENCUESTA





GO
/****** Object:  Table [dbo].[BITSAT_HISTORICO_TECNICO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_HISTORICO_TECNICO](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TIPO_MENSAJE] [int] NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[DRIVERNR] [nvarchar](15) NULL,
	[ORDERNR] [nvarchar](5) NULL,
	[NUM_SERVICIO] [nvarchar](16) NULL,
	[ST_SERVICIO] [nvarchar](10) NULL,
	[LONGITUD] [nvarchar](15) NULL,
	[LATITUD] [nvarchar](15) NULL,
	[VELOCIDAD] [nvarchar](15) NULL,
	[FECHA] [nvarchar](10) NULL,
	[HORA] [nvarchar](8) NULL,
	[COMENTARIOS] [nvarchar](255) NULL,
	[ESTADO] [nvarchar](10) NULL,
	[TIMESPAM] [datetime] NULL,
	[CODIGO_MOTIVO] [int] NULL,
	[MOBILEDEVICEID] [nvarchar](15) NULL,
	[AVERIAS_PENDIENTES] [int] NULL,
	[INSPECCIONES_REALIZADAS] [int] NULL,
	[AVERIAS_REALIZADAS] [int] NULL,
 CONSTRAINT [PK_HistoricoDeVehiculo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_USUARIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_USUARIO](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[APELLIDOS] [nvarchar](50) NULL,
	[GRUPO_USUARIO] [nvarchar](10) NULL,
	[LOGIN] [nvarchar](32) NULL,
	[CONTRASEÑA] [nvarchar](32) NULL,
	[EMAIL] [nvarchar](256) NULL,
	[COLOR] [nvarchar](30) NULL,
	[DISP] [bit] NULL,
	[SUPERIOR] [nvarchar](15) NULL,
	[LOGE_OTIS] [nvarchar](8) NULL,
	[AUTORIZACION] [int] NULL,
	[ActivoMTD] [bit] NULL,
	[IDTipoTransporte] [int] NULL,
 CONSTRAINT [PK_BITSAT_USUARIO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vnUBICACION_TECNICOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vnUBICACION_TECNICOS]
AS
SELECT	HT.*,USUARIO.color
FROM	(SELECT MOBILEDEVICEID,MAX(TIMESPAM) TIMESPAM
		 FROM	BITSAT_HISTORICO_TECNICO with (nolock)
		 WHERE	NOT LONGITUD IS NULL AND
				NOT LATITUD IS NULL
		 GROUP BY 
				MOBILEDEVICEID) BHT
	JOIN BITSAT_HISTORICO_TECNICO HT with (nolock)
				ON	HT.TIMESPAM = BHT.TIMESPAM AND
					HT.MOBILEDEVICEID = BHT.MOBILEDEVICEID
	JOIN BITSAT_USUARIO USUARIO with (nolock)
				ON	USUARIO.CODIGO = BHT.MOBILEDEVICEID
GO
/****** Object:  Table [dbo].[BITSAT_USUARIO_DATOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_USUARIO_DATOS](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[PDA_ASIGNADA] [nvarchar](15) NULL,
	[DESP_INI_FIN] [bit] NULL,
	[PORC_DEDICACION_PREVENTIVO] [int] NULL,
	[PORC_DEDICACION_CORRECTIVO] [int] NULL,
	[CODIGO_RUTA_INICIAL] [nvarchar](4) NULL,
	[NOMBRE_RUTA_INICIAL] [nvarchar](20) NULL,
	[MEDIO_TRANSPORTE] [nvarchar](15) NULL,
	[PRIORIDAD] [nvarchar](15) NULL,
	[INSPECCIONES] [bit] NULL,
	[AVISOS] [bit] NULL,
	[REPARACIONES] [bit] NULL,
	[MONTAJES] [bit] NULL,
	[ORDENES_X] [bit] NULL,
	[CODIGO_WEB] [int] NULL,
	[SUPERVISOR_EN_FUNCIONES] [bit] NULL,
	[RESET_CACHE] [bit] NOT NULL,
	[EXPERTO_REMOTO] [bit] NOT NULL,
	[ASIGNABLE_RUTA] [bit] NULL,
 CONSTRAINT [PK_BITSAT_USUARIO_TECNICO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_TECNICOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE View [dbo].[V_W_TECNICOS]
AS
SELECT   top 100 percent  d.codigo_web as rank, u.codigo_compañia AS CIA, 
u.CODIGO_CENTRO AS LOGE, u.CODIGO, u.NOMBRE AS Tecnico,
u.color
FROM         dbo.BITSAT_USUARIO u with (nolock)
left join bitsat_usuario_datos d with (nolock) on u.codigo_compañia=d.codigo_compañia and u.codigo=d.codigo
WHERE     (GRUPO_USUARIO = 'TECNICO')
order by rank


GO
/****** Object:  View [dbo].[vvGlobalObtenerTecnicos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vvGlobalObtenerTecnicos]
AS
	SELECT 
		isnull(row_number() over (order by (select 1)),0) as IdRowNumber, CODIGO, TECNICO, CIA, LOGE
	FROM 
		V_W_TECNICOS 

GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO_USUARIO] [nvarchar](15) NOT NULL,
	[CODIGO_ACTIVIDAD] [nvarchar](10) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NULL,
	[COMPAÑIA_ACTIVIDAD] [nvarchar](2) NULL,
	[CENTRO_ACTIVIDAD] [nvarchar](8) NULL,
	[CODIGO_SUPERVISOR] [nvarchar](15) NULL,
	[CODIGO_IDENTIFICADOR] [nchar](1) NULL,
	[ESTADO] [nvarchar](10) NULL,
	[AÑOMES] [nvarchar](6) NULL,
	[LONGITUD] [nvarchar](15) NULL,
	[LATITUD] [nvarchar](15) NULL,
	[CODIGO_BARRAS_INICIO] [bit] NULL,
	[FECHA_INICIO] [datetime] NULL,
	[HORA_INICIO] [datetime] NULL,
	[FECHA_FIN_CB] [datetime] NULL,
	[CODIGO_BARRAS_FIN] [bit] NULL,
	[FECHA_FIN] [datetime] NULL,
	[HORA_FIN] [datetime] NULL,
	[SERVICIO_FIJO] [bit] NULL,
	[COMPENSABLE] [bit] NULL,
	[FECHA_AVISO] [datetime] NULL,
	[ID_AVISO] [nvarchar](15) NULL,
	[MOTIVO_PAUSA] [nvarchar](7) NULL,
	[MOTIVO_IMPOSIBILIDAD_ACCESO] [int] NULL,
	[ID_ACTIVIDAD_FIRMA] [datetime] NULL,
	[FECHA_HORA_IMPOSIBILIDAD] [datetime] NULL,
	[CoordsVal] [bit] NULL,
	[CODIGO_ORDENX] [nvarchar](7) NULL,
	[TIPO_JORNADA] [nvarchar](1) NULL,
	[ID_ACTIVIDAD_VISITA] [datetime] NULL,
	[CODIGO_USUARIO_PAREJA] [nvarchar](15) NULL,
	[FECHA_ENVIO_SEXPERTO] [datetime] NULL,
	[FECHA_ENVIO_PDF] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_FIRMA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_FIRMA](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[IMPOSIBILIDAD_FIRMA] [bit] NULL,
	[NOMBRE_FIRMANTE] [nvarchar](50) NULL,
	[PISO_FIRMANTE] [nvarchar](50) NULL,
	[TELEFONO_FIRMANTE] [nvarchar](9) NULL,
	[CALIDAD_FIRMANTE] [nvarchar](10) NULL,
	[DIRECCION_CORREO_ELECTRONICO] [nvarchar](200) NULL,
	[FIRMA] [image] NULL,
	[ENVIAR_MAIL] [bit] NULL,
	[ENVIADO_MAIL] [bit] NULL,
	[FECHA_ENVIO] [datetime] NULL,
	[INTENTOS_ENVIO] [int] NULL,
	[AUTORIZADO] [bit] NULL,
	[NUEVO_FIRMANTE] [bit] NULL,
	[FECHA_EXPORTACION] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_FIRMA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_INFORMES_SERVICIO_PENDIENTES_DE_ENVIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- pendientes de envio.
CREATE VIEW [dbo].[V_W_INFORMES_SERVICIO_PENDIENTES_DE_ENVIO]
AS
select a.codigo_pda, a.id, a.codigo_actividad, a.estado, a.fecha_inicio, a.fecha_fin, f.enviar_mail, f.enviado_mail, f.INTENTOS_ENVIO, f.DIRECCION_CORREO_ELECTRONICO , f.NOMBRE_FIRMANTE 
from bitsat_actividad a 
inner join bitsat_actividad_firma f on a.codigo_pda=f.codigo_pda and f.id=a.id
where
 a.estado like '%fin%' and f.ENVIAR_MAIL ='1' and isnull(f.enviado_mail,0) =0 and codigo_actividad<>'ANO'  and isnull(f.intentos_Envio,0)<>'-1'
 and rtrim(ltrim(DIRECCION_CORREO_ELECTRONICO )) like  '[a-z,0-9,_,-]%@[a-z,0-9,_,-]%.[a-z][a-z]%'

GO
/****** Object:  Table [dbo].[BITSAT_ESTADO_ACTIVIDAD]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ESTADO_ACTIVIDAD](
	[ESTADO] [nvarchar](10) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[COLOR] [nvarchar](18) NULL,
 CONSTRAINT [PK_BITSAT_ESTADO_ACTIVIDAD] PRIMARY KEY CLUSTERED 
(
	[ESTADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_RUTAS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_RUTAS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO_RUTA] [nvarchar](4) NOT NULL,
	[DESCRIPCION] [nvarchar](20) NOT NULL,
	[CODIGO_SUPERVISOR] [nvarchar](15) NULL,
	[ActivoMTD] [bit] NULL,
	[FECHA_ALTA] [datetime] NOT NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
	[FECHA_BAJA] [datetime] NULL,
	[DISP] [bit] NOT NULL,
	[SUPERVISOR_EN_FUNCIONES] [bit] NULL,
 CONSTRAINT [PK_BITSAT_RUTAS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY],
 CONSTRAINT [UC_Ruta] UNIQUE NONCLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_CENTRO] ASC,
	[CODIGO_RUTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_PROVINCIA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_PROVINCIA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_PROVINCIA] [nvarchar](2) NOT NULL,
	[DESCRIPCION] [varchar](15) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_PROVINCIA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_PROVINCIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_RUTAS_TECNICO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_RUTAS_TECNICO](
	[IDRUTA] [int] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_TECNICO] [nvarchar](15) NOT NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_RUTAS_TECNICO] PRIMARY KEY CLUSTERED 
(
	[IDRUTA] ASC,
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_TECNICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_AVISOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_AVISOS](
	[CLAVE_AVISO] [nvarchar](15) NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO_TECNICO] [nvarchar](15) NOT NULL,
	[FECHA_RECEPCION] [datetime] NOT NULL,
	[ESTADO_AVISO] [nchar](1) NULL,
	[CONTRATO] [nvarchar](5) NULL,
	[TIPO_SERVICIO] [nvarchar](3) NULL,
	[ELITE] [nchar](1) NULL,
	[UNIDAD] [nvarchar](5) NULL,
	[APARATO] [nvarchar](5) NULL,
	[SITUACION] [nvarchar](20) NULL,
	[RUTA] [nvarchar](4) NULL,
	[TIPO_VIA] [nvarchar](2) NULL,
	[DIRECCION] [nvarchar](40) NULL,
	[NUMERO1] [nvarchar](5) NULL,
	[NUMERO2] [nvarchar](3) NULL,
	[EDIFICIO] [nvarchar](40) NULL,
	[DISTRITO_POSTAL] [nvarchar](3) NULL,
	[CODIGO_PROVINCIA] [nvarchar](2) NULL,
	[CODIGO_POBLACION] [nvarchar](4) NULL,
	[DIRECCION_AYUDA] [nvarchar](70) NULL,
	[DESCRIPCION_AVERIA] [nvarchar](40) NULL,
	[ESTADO_ASCENSOR] [nchar](1) NULL,
	[LLAMADOR] [nvarchar](40) NULL,
	[TELEFONO_LLAMADOR] [nvarchar](9) NULL,
	[OBSERVACIONES] [nvarchar](140) NULL,
	[REMSN] [char](1) NULL,
	[DESCRIPCION_REM_INOP] [nvarchar](40) NULL,
	[FECHA_ASIGNACION] [datetime] NULL,
	[CODIGO_EVENTO] [nchar](2) NULL,
	[ESTADO_AVISO_BITSAT] [int] NULL,
	[FECHA_HORA_LLEGADA] [datetime] NULL,
	[FECHA_HORA_SALIDA] [datetime] NULL,
	[UNIDAD_OTIS] [nchar](1) NULL,
	[CODIGO_COMPETIDOR] [nvarchar](4) NULL,
	[UNIDAD_CIERRE] [nvarchar](5) NULL,
	[TECNICO_CIERRE] [nvarchar](6) NULL,
	[CODIGO_AVERIA] [nvarchar](5) NULL,
	[TIPO_AVISO] [nchar](1) NULL,
	[INDICADOR_FACTURACION] [nchar](1) NULL,
	[ENVIADO_OP] [bit] NULL,
	[FECHA_ENVIO_OP] [datetime] NULL,
	[ENVIAR_24h] [bit] NULL,
	[FECHA_ENVIO_24h] [datetime] NULL,
	[FICHERO_ENVIO] [nvarchar](512) NULL,
	[CONFIRMADO_TECNICO] [bit] NULL,
	[ENVIAR_24h_CONF] [bit] NULL,
	[FECHA_ENVIO_24h_CONF] [datetime] NULL,
	[UNIDAD_PARADA] [nchar](1) NULL,
	[MOTIVO_PARADA] [nvarchar](2) NULL,
	[MOTIVO_DEVOLUCION] [nvarchar](2) NULL,
	[TECNICO_ORIGEN_TRANS] [nvarchar](6) NULL,
	[MOTIVO_TRANSFERENCIA] [nvarchar](2) NULL,
	[OBSERVACIONES_TRANSFERENCIA] [nvarchar](50) NULL,
	[TIEMPO_LLEGADA] [datetime] NULL,
	[MOTIVO_RETRASO] [nvarchar](2) NULL,
	[FECHA_ENVIO_SEXPERTO] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_AVISOS] PRIMARY KEY CLUSTERED 
(
	[CLAVE_AVISO] ASC,
	[CODIGO_TECNICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_FRECUENCIA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_FRECUENCIA](
	[CODIGO] [nvarchar](1) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_FRECUENCIA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_POBLACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_POBLACION](
	[CODIGO_PROVINCIA] [nvarchar](2) NOT NULL,
	[CODIGO_POBLACION] [nvarchar](4) NOT NULL,
	[DESCRIPCION] [nvarchar](40) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_POBLACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PROVINCIA] ASC,
	[CODIGO_POBLACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_PARAMETROS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_PARAMETROS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombreparam] [nvarchar](50) NULL,
	[valorparam] [nvarchar](250) NULL,
 CONSTRAINT [PK_BITSAT_PARAMETROS] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_UNIDAD]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_UNIDAD](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[NOMBRE_UNIDAD] [nvarchar](50) NULL,
	[VIA] [nvarchar](2) NULL,
	[DIRECCION] [nvarchar](50) NULL,
	[NUMERO] [nvarchar](15) NULL,
	[COMPLEMENTO_DIRECCION] [nvarchar](50) NULL,
	[CODIGO_POSTAL] [nvarchar](5) NULL,
	[PROVINCIA] [nvarchar](2) NULL,
	[POBLACION] [nvarchar](4) NULL,
	[PAIS] [nvarchar](10) NULL,
	[TIPO_CONTRATO] [nvarchar](50) NULL,
	[DURACION_PREVISTA] [int] NULL,
	[CODIGO_RUTA] [nvarchar](4) NULL,
	[HORARIO_INICIO1] [datetime] NULL,
	[HORARIO_FIN1] [datetime] NULL,
	[HORARIO_INICIO2] [datetime] NULL,
	[HORARIO_FIN2] [datetime] NULL,
	[PRIORIDAD] [nvarchar](10) NULL,
	[LONGITUD] [nvarchar](15) NULL,
	[LATITUD] [nvarchar](15) NULL,
	[TIPO_SERVICIO] [nvarchar](3) NULL,
	[TIPO_APARATO] [nvarchar](10) NULL,
	[PERIODO_VISITAS] [nvarchar](1) NULL,
	[CONTRATO] [nvarchar](5) NULL,
	[ALTAMANTENIMIENTO] [datetime] NULL,
	[DISP] [bit] NULL,
	[SERVICIO_24H] [nvarchar](1) NOT NULL,
	[FACTURACION_AUTOMATICA] [nvarchar](1) NOT NULL,
	[TIEMPO_RESP] [int] NOT NULL,
	[VIP] [bit] NOT NULL,
	[UNIDAD_TEMPORAL] [nvarchar](1) NULL,
	[ESTADO] [nvarchar](2) NULL,
	[TIPOCLIENTE_SKP] [nvarchar](50) NULL,
	[RAE] [nvarchar](20) NULL,
	[NIF] [nvarchar](50) NULL,
	[IDRUTA] [int] NULL,
	[CODTIPOINSTALACION] [nvarchar](2) NULL,
	[CODSUBTIPOINSTALACION] [nvarchar](2) NULL,
	[CODMARCA] [nvarchar](4) NULL,
 CONSTRAINT [PK_BITSAT_UNIDAD] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_UNIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_RUTA_PLANIFICADA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- Devuelve la ruta planificada para la consulta de Rutas en el Backoffice.
-- Mejora el calculo del número de avisos pendientes que era muy lento.
CREATE view [dbo].[V_W_RUTA_PLANIFICADA]
As
SELECT  r.CODIGO_RUTA as RUTA, 
 isnull(r.DESCRIPCION,r.CODIGO_RUTA) as ruta_descripcion,
 u.codigo as Codigo_Tecnico, 
ltrim(rtrim((isnull(u.nombre,'')+' '+ isnull(u.apellidos,'')))) as Tecnico, 
r.codigo_compañia, c.descripcion as compañia,
r.codigo_centro, ce.descripcion as centro, 
r.codigo_unidad, r.nombre_unidad,
r.direccion,
p.descripcion as provincia, 
pbl.descripcion as poblacion, 
r.codigo_postal,
isnull(r.longitud,'') as longitud,
isnull(r.latitud,'') as latitud,
ISNULL(act.estado,'INSSI') as estado,periodo.añomes,ISNULL(ea.descripcion,'COLOR_INSPECCION PENDIENTE') as DescripcionEstado,
ACT.FECHA_INICIO AS fecha_actividad,

--r.avisos_pendientes as AvisosPendientes,
isnull(pend.AvisosPendientes, 0) as AvisosPendientes,

--(select count(*) from bitsat_avisos a 
--          where a.codigo_compañia=r.codigo_compañia and 
--                a.unidad=r.codigo_unidad and 
--                a.estado_aviso_bitsat in ( 1,2,6,8) and 
--				year(a.fecha_recepcion)=year(getdate()) and  month(a.fecha_recepcion)=month(getdate())
--) as AvisosPendientes2,


--CASE WHEN isnull(r.avisos_pendientes,0)>0 then
CASE WHEN isnull(pend.AvisosPendientes,0)>0 then
	(SELECT valorparam From dbo.BITSAT_PARAMETROS WITH (NOLOCK) where  nombreparam = 'COLOR_AVISO_PENDIENTE')
ELSE
	CASE WHEN act.estado = 'ORDFIN' OR act.estado = 'INSFIN' OR act.estado = 'AVFIN' 
	THEN (SELECT valorparam From dbo.BITSAT_PARAMETROS  WITH (NOLOCK) where  nombreparam = 'COLOR_INSPECCION_REALIZADA')
	ELSE 
--(SELECT valorparam From dbo.BITSAT_PARAMETROS where  nombreparam = 'COLOR_INSPECCION_PENDIENTE')
      u.COLOR
	END
END as color


FROM 
(select convert(nvarchar(4),year(getdate()))+ RIGHT('00'+convert(nvarchar(2),month(getdate())),2) as añomes) periodo
cross join
		(
		 select r.codigo_compañia, us.codigo_centro, CODIGO_SUPERVISOR as supervisor, CODIGO_TECNICO as IDBitRutas, r.CODIGO_RUTA, u.CODIGO_UNIDAD, u.NOMBRE_UNIDAD, 
		 u.tipo_servicio, u.altamantenimiento, u.periodo_visitas, u.provincia, u.poblacion, '1' as numperiodo,
		 u.via+' '+u.direccion+ ' ' +u.numero as direccion, u.codigo_postal,
		 r.descripcion,
		 replace(u.longitud,',','.') as Longitud,
		 replace(u.latitud,',','.') as Latitud --,
		 --(select count(*) from bitsat_avisos a  WITH (NOLOCK) where a.codigo_compañia=r.codigo_compañia and a.unidad=u.codigo_unidad and a.estado_aviso_bitsat in ( 1,2,4,6,7,8)) as avisos_pendientes
		 from BITSAT_RUTAS r  WITH (NOLOCK)
		 left join BITSAT_RUTAS_TECNICO rt WITH (NOLOCK) on r.ID = rt.IDRUTA
		 inner join bitsat_unidad u  WITH (NOLOCK) on r.ID = u.IDRUTA
		 inner join bitsat_usuario us  WITH (NOLOCK) on rt.CODIGO_TECNICO=us.codigo and us.codigo_compañia=r.codigo_compañia
		 left join bitsat_tipo_frecuencia f   WITH (NOLOCK) on u.periodo_visitas=f.codigo
		 where r.disp=1 and u.disp=1 and u.ESTADO = '10'
		 union
		 select r.codigo_compañia, us.codigo_centro, CODIGO_SUPERVISOR as supervisor, CODIGO_TECNICO as IDBitRutas, r.CODIGO_RUTA, u.CODIGO_UNIDAD, u.NOMBRE_UNIDAD,  
		 u.tipo_servicio, u.altamantenimiento, u.periodo_visitas, u.provincia, u.poblacion, '2' as numperiodo,
		 u.via+' '+u.direccion+ ' ' +u.numero as direccion, u.codigo_postal,
		 r.descripcion,
		 replace(u.longitud,',','.') as Longitud,
		 replace(u.latitud,',','.') as Latitud --,
		 --(select count(*) from bitsat_avisos a  WITH (NOLOCK) where a.codigo_compañia=r.codigo_compañia and a.unidad=u.codigo_unidad and a.estado_aviso_bitsat in ( 1,2,4,6,7,8)) as avisos_pendientes
		 from BITSAT_RUTAS r  WITH (NOLOCK)
		 left join BITSAT_RUTAS_TECNICO rt WITH (NOLOCK) on r.ID = rt.IDRUTA
		 inner join bitsat_unidad u  WITH (NOLOCK) on r.ID = u.IDRUTA
		 inner join bitsat_usuario us  WITH (NOLOCK) on rt.CODIGO_TECNICO=us.codigo and us.codigo_compañia=r.codigo_compañia
		 left join bitsat_tipo_frecuencia f   WITH (NOLOCK) on u.periodo_visitas=f.codigo
		 where u.periodo_visitas='Q' and r.disp=1 and u.disp=1 and u.ESTADO = '10') r
inner join dbo.BITSAT_USUARIO AS u WITH (NOLOCK) ON r.codigo_compañia = u.codigo_compañia AND r.IDBitRutas = u.CODIGO 
inner JOIN bitsat_compañia c WITH (NOLOCK) on r.codigo_compañia=c.codigo_compañia
inner join bitsat_centro ce WITH (NOLOCK) on r.codigo_compañia=ce.codigo_compañia and r.codigo_centro=ce.codigo_centro
inner join bitsat_provincia p WITH (NOLOCK) on r.codigo_compañia=p.codigo_compañia and r.provincia=p.codigo_provincia 
inner join bitsat_poblacion pbl WITH (NOLOCK) on r.provincia=pbl.codigo_provincia and r.poblacion=pbl.codigo_poblacion
left join bitsat_actividad act WITH (NOLOCK) on r.codigo_compañia=act.codigo_compañia and r.codigo_unidad=act.codigo_unidad and act.añomes=periodo.añomes
left join BITSAT_ESTADO_ACTIVIDAD ea WITH (NOLOCK) on act.estado=ea.estado
left join 
(select a.codigo_compañia,a.unidad,count(*)  as AvisosPendientes
from bitsat_avisos a 
where	a.estado_aviso_bitsat in ( 1,2,6,8) and year(a.fecha_recepcion)=year(getdate()) and  month(a.fecha_recepcion)=month(getdate())
group by a.codigo_compañia, a.unidad
) pend on r.codigo_compañia=pend.codigo_compañia and r.codigo_unidad=pend.unidad 
where
C.DISP=1 and dbo.PermitidoPeriodo(r.codigo_unidad,r.codigo_compañia,periodo.añomes,r.altamantenimiento,r.periodo_visitas)=1
GO
/****** Object:  View [dbo].[vvGlobalObtenerSupervisores]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vvGlobalObtenerSupervisores]
AS
	SELECT 
			isnull(row_number() over (order by (select 1)),0) as IdRowNumber,  
			codigo_compañia AS CIA, CODIGO_CENTRO AS LOGE, CODIGO, NOMBRE, color
	FROM         dbo.BITSAT_USUARIO
	WHERE     (GRUPO_USUARIO = 'SUPERVISOR')

GO
/****** Object:  Table [dbo].[BITSAT_RUTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_RUTA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO_RUTA] [nvarchar](4) NOT NULL,
	[DESCRIPCION] [nvarchar](20) NULL,
	[SUPERVISOR] [nvarchar](15) NULL,
	[IDBitRutas] [nvarchar](15) NOT NULL,
	[DISP] [bit] NULL,
	[ActivoMTD] [bit] NULL,
 CONSTRAINT [PK_BITSAT_RUTA_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_CENTRO] ASC,
	[CODIGO_RUTA] ASC,
	[IDBitRutas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_INTERFACE_GASTOS_PEGASO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_INTERFACE_GASTOS_PEGASO](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[CODIGO_GASTO] [nvarchar](5) NULL,
	[IMPORTE] [real] NULL,
	[KM] [real] NULL,
	[FECHA_PROCESO] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_INTERFACE_GASTOS_PEGASO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_PEGASO_GASTOS_BACKUP]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[V_PEGASO_GASTOS_BACKUP]
AS
	SELECT
		COMPAÑIA_ACTIVIDAD AS IdCia,
		CONVERT(NVARCHAR(2),SUBSTRING(CONVERT(VARCHAR,DATEPART(YEAR,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)),3,2)) AS Year,
		REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
			CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Mes,
		REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
			CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Dia,
		CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_USUARIO))) AS IdEmpleado,
		'1' AS IdCentro,
		ISNULL(BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,BITSAT_ACTIVIDAD.CODIGO_CENTRO) AS Loge,
		CONVERT(NVARCHAR(6),RTRIM(LTRIM(ISNULL(ISNULL(ISNULL((CASE WHEN ISNULL(BITSAT_RUTA.SUPERVISOR,'') = '000001' THEN NULL ELSE BITSAT_RUTA.SUPERVISOR END),BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR),BITSAT_USUARIO.SUPERIOR),'')))) AS IdSupervisor,
		CONVERT(DECIMAL(9,2),ISNULL(BITSAT_INTERFACE_GASTOS_PEGASO.IMPORTE,0)) AS Gastos,
		CONVERT(NVARCHAR(2),BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_GASTO) AS CodGasto,
		CONVERT(VARCHAR(7),dbo.ObtenerCodigoActividad(BITSAT_ACTIVIDAD.CODIGO_PDA, BITSAT_ACTIVIDAD.ID)) AS CodActividad,
		ISNULL(BITSAT_ACTIVIDAD.CODIGO_UNIDAD,'') AS Concepto,
		BITSAT_INTERFACE_GASTOS_PEGASO.FECHA AS FechaAlta,
		CASE WHEN BITSAT_RUTA.SUPERVISOR IS NULL THEN '000001' ELSE NULL END AS IdSupFunciones,
		CASE WHEN BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_GASTO = '06' THEN CONVERT(nvarchar(7),BITSAT_INTERFACE_GASTOS_PEGASO.KM) ELSE NULL END AS Kilometraje
	FROM BITSAT_INTERFACE_GASTOS_PEGASO INNER JOIN
	BITSAT_ACTIVIDAD ON BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD.ID
	AND BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
	LEFT JOIN BITSAT_UNIDAD ON BITSAT_ACTIVIDAD.COMPAÑIA_ACTIVIDAD=BITSAT_UNIDAD.CODIGO_COMPAÑIA AND 
		BITSAT_ACTIVIDAD.CODIGO_UNIDAD=BITSAT_UNIDAD.CODIGO_UNIDAD
	LEFT JOIN (SELECT DISTINCT CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, SUPERVISOR FROM BITSAT_RUTA WHERE DISP=1)BITSAT_RUTA ON BITSAT_UNIDAD.CODIGO_COMPAÑIA=BITSAT_RUTA.CODIGO_COMPAÑIA AND 
		BITSAT_UNIDAD.CODIGO_RUTA=BITSAT_RUTA.CODIGO_RUTA AND
		SUBSTRING(BITSAT_UNIDAD.CODIGO_CENTRO,1,6)=BITSAT_RUTA.CODIGO_CENTRO
	LEFT JOIN BITSAT_USUARIO ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=BITSAT_USUARIO.CODIGO AND BITSAT_USUARIO.SUPERIOR IS NOT NULL AND BITSAT_USUARIO.DISP=1
	WHERE BITSAT_INTERFACE_GASTOS_PEGASO.FECHA_PROCESO IS NULL





GO
/****** Object:  Table [dbo].[PBI_ACTIVIDADES_EXPERTOS_REMOTOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PBI_ACTIVIDADES_EXPERTOS_REMOTOS](
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[COMPAÑIA] [nvarchar](50) NULL,
	[CENTRO] [nvarchar](50) NULL,
	[CODIGO_COMPAÑIA_ACTIVIDAD] [nvarchar](2) NULL,
	[CODIGO_CENTRO_ACTIVIDAD] [nvarchar](8) NULL,
	[COMPAÑIA_ACTIVIDAD] [nvarchar](50) NULL,
	[CENTRO_ACTIVIDAD] [nvarchar](50) NULL,
	[CODIGO_TECNICO] [nvarchar](15) NULL,
	[TECNICO] [nvarchar](50) NULL,
	[NOMBRE_CALENDARIO] [nvarchar](256) NULL,
	[TIPO_CALENDARIO] [nvarchar](256) NULL,
	[HORARIO_HABITUAL] [nvarchar](2) NULL,
	[NOMBRE_HORARIO] [nvarchar](50) NULL,
	[ESTADO] [nvarchar](10) NULL,
	[CODIGO_ACTIVIDAD] [nvarchar](10) NULL,
	[ACTIVIDAD] [nvarchar](100) NULL,
	[CODIGO_UNIDAD] [nvarchar](128) NULL,
	[IDACTIVIDAD] [datetime] NULL,
	[ESTADO_AVERIA] [nvarchar](30) NULL,
	[MOTIVO_DEVOLUCION] [nvarchar](128) NULL,
	[RUTA] [nvarchar](4) NULL,
	[DESCRIPCION_RUTA] [nvarchar](20) NULL,
	[TIPOJORNADA] [nvarchar](1) NULL,
	[IDENTIFICADOR_AVISO] [nvarchar](15) NULL,
	[CODIGO_AVISO] [nvarchar](15) NULL,
	[TIPOAVISO] [nvarchar](1) NULL,
	[AUTOFACTURABLE] [nvarchar](1) NULL,
	[ESTADO_AUTOFACTURACION] [nvarchar](15) NULL,
	[OBSERVACIONES] [nvarchar](max) NULL,
	[MOTIVO_BLOQUEO] [nvarchar](100) NULL,
	[DESCRIPCION_AVISO] [nvarchar](1024) NULL,
	[TIPOCONTRATO] [nvarchar](15) NULL,
	[FIRMADA] [nvarchar](15) NULL,
	[CODIGO_AVERIA] [nvarchar](5) NULL,
	[DESCRIPCION_AVERIA] [nvarchar](max) NULL,
	[CODIGO_SUPERVISOR] [nvarchar](15) NULL,
	[SUPERVISOR] [nvarchar](50) NULL,
	[GRADO_SATISFACCION] [nvarchar](50) NULL,
	[OBSERVACIONES_CLIENTE] [nvarchar](1024) NULL,
	[INSPECCION] [nvarchar](1) NULL,
	[MOTIVO_NO_INSPECCION] [nvarchar](1024) NULL,
	[TIEMPO_LLEGADA] [nvarchar](30) NULL,
	[MOTIVO_RETRASO] [nvarchar](128) NULL,
	[TIPO_REPARACION] [nvarchar](128) NULL,
	[FECHA_INICIO] [datetime] NULL,
	[FECHA_FIN] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_PBI_Actividades_Expertos_Remotos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vw_PBI_Actividades_Expertos_Remotos]
AS

	SELECT
		CODIGO_COMPAÑIA as IdCia,
		CODIGO_CENTRO as Loge,
		COMPAÑIA,
		CENTRO,
		CODIGO_COMPAÑIA_ACTIVIDAD,
		CODIGO_CENTRO_ACTIVIDAD,
		COMPAÑIA_ACTIVIDAD,
		CENTRO_ACTIVIDAD,
		CODIGO_TECNICO,
		TECNICO,
		NOMBRE_CALENDARIO,
		TIPO_CALENDARIO,
		HORARIO_HABITUAL,
		NOMBRE_HORARIO,
		ESTADO,
		CODIGO_ACTIVIDAD,
		ACTIVIDAD,
		CODIGO_UNIDAD,
		IDACTIVIDAD,
		ESTADO_AVERIA,
		MOTIVO_DEVOLUCION,
		RUTA,
		DESCRIPCION_RUTA,
		TIPOJORNADA,
		IDENTIFICADOR_AVISO,
		CODIGO_AVISO,
		TIPOAVISO,
		AUTOFACTURABLE,
		ESTADO_AUTOFACTURACION,
		OBSERVACIONES,
		MOTIVO_BLOQUEO,
		DESCRIPCION_AVISO,
		TIPOCONTRATO,
		FIRMADA,
		CODIGO_AVERIA,
		DESCRIPCION_AVERIA,
		CODIGO_SUPERVISOR,
		SUPERVISOR,
		GRADO_SATISFACCION,
		OBSERVACIONES_CLIENTE,
		INSPECCION,
		MOTIVO_NO_INSPECCION,
		TIEMPO_LLEGADA,
		MOTIVO_RETRASO,
		TIPO_REPARACION,
		FECHA_INICIO,
		FECHA_FIN,
		IDACTIVIDAD as FechaV 
	FROM
		PBI_ACTIVIDADES_EXPERTOS_REMOTOS



GO
/****** Object:  View [dbo].[V_W_RUTA_PLANIFICADA_SIN_PERIODICIDAD]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[V_W_RUTA_PLANIFICADA_SIN_PERIODICIDAD]
AS
SELECT  r.CODIGO_RUTA as RUTA, 
 isnull(r.DESCRIPCION,r.CODIGO_RUTA) as ruta_descripcion,
 u.codigo as Codigo_Tecnico, 
ltrim(rtrim((isnull(u.nombre,'')+' '+ isnull(u.apellidos,'')))) as Tecnico, 
r.codigo_compañia, c.descripcion as compañia,
r.codigo_centro, ce.descripcion as centro, 
r.codigo_unidad, r.nombre_unidad,
r.direccion,
p.descripcion as provincia, 
pbl.descripcion as poblacion, 
r.codigo_postal,
r.longitud,
r.latitud,
ISNULL(act.estado,'INSSI') as estado,
substring(convert(nvarchar(8),getdate(),112),1,6) as añomes,
ISNULL(ea.descripcion,'COLOR_INSPECCION PENDIENTE') as DescripcionEstado,
ACT.FECHA_INICIO AS fecha_actividad,


(select count(*) from bitsat_avisos a 
          where a.codigo_compañia=r.codigo_compañia and 
                a.unidad=r.codigo_unidad and 
                a.estado_aviso_bitsat in ( 1,2,6,8) and 
				year(a.fecha_recepcion)=year(getdate()) and  month(a.fecha_recepcion)=month(getdate())
) as AvisosPendientes,
-- r.avisos_pendientes as AvisosPendientes,
CASE WHEN isnull(r.avisos_pendientes,0)>0 then
	(SELECT valorparam From dbo.BITSAT_PARAMETROS where  nombreparam = 'COLOR_AVISO_PENDIENTE')
ELSE
	CASE WHEN act.estado = 'ORDFIN' OR act.estado = 'INSFIN' OR act.estado = 'AVFIN' 
	THEN (SELECT valorparam From dbo.BITSAT_PARAMETROS where  nombreparam = 'COLOR_INSPECCION_REALIZADA')
	ELSE 
--(SELECT valorparam From dbo.BITSAT_PARAMETROS where  nombreparam = 'COLOR_INSPECCION_PENDIENTE')
      u.COLOR
	END
END as color

FROM 
		(
		 select r.codigo_compañia, us.codigo_centro, CODIGO_SUPERVISOR as supervisor, CODIGO_TECNICO as IDBitRutas, r.CODIGO_RUTA, u.CODIGO_UNIDAD, u.NOMBRE_UNIDAD, 
		 u.tipo_servicio, u.altamantenimiento, u.periodo_visitas, u.provincia, u.poblacion, '1' as numperiodo,
		 u.via+' '+u.direccion+ ' ' +u.numero as direccion, u.codigo_postal,
		 r.descripcion,
		 replace(u.longitud,',','.') as Longitud,
		 replace(u.latitud,',','.') as Latitud,
		 (select count(*) from bitsat_avisos a where a.codigo_compañia=r.codigo_compañia and a.unidad=u.codigo_unidad and a.estado_aviso_bitsat in ( 1,2,6,8) and 
				year(a.fecha_recepcion)=year(getdate()) and  month(a.fecha_recepcion)=month(getdate())) as avisos_pendientes
		 from BITSAT_RUTAS r  WITH (NOLOCK)
		 left join BITSAT_RUTAS_TECNICO rt WITH (NOLOCK) on r.ID = rt.IDRUTA
		 inner join bitsat_unidad u  WITH (NOLOCK) on r.ID = u.IDRUTA
		 inner join bitsat_usuario us  WITH (NOLOCK) on rt.CODIGO_TECNICO=us.codigo and us.codigo_compañia=r.codigo_compañia
		 left join bitsat_tipo_frecuencia f   WITH (NOLOCK) on u.periodo_visitas=f.codigo
		 where r.disp=1 and u.disp=1 and u.ESTADO = '10') r
inner join dbo.BITSAT_USUARIO AS u WITH (NOLOCK) ON r.codigo_compañia = u.codigo_compañia AND r.IDBitRutas = u.CODIGO 
inner JOIN bitsat_compañia c WITH (NOLOCK) on r.codigo_compañia=c.codigo_compañia
inner join bitsat_centro ce WITH (NOLOCK) on r.codigo_compañia=ce.codigo_compañia and r.codigo_centro=ce.codigo_centro
inner join bitsat_provincia p WITH (NOLOCK) on r.codigo_compañia=p.codigo_compañia and r.provincia=p.codigo_provincia 
inner join bitsat_poblacion pbl WITH (NOLOCK) on r.provincia=pbl.codigo_provincia and r.poblacion=pbl.codigo_poblacion
left join bitsat_actividad act WITH (NOLOCK) on r.codigo_compañia=act.codigo_compañia and r.codigo_unidad=act.codigo_unidad and act.añomes=substring(convert(nvarchar(8),getdate(),112),1,6)
left join BITSAT_ESTADO_ACTIVIDAD ea WITH (NOLOCK) on act.estado=ea.estado
where
C.DISP=1
GO
/****** Object:  View [dbo].[vvStrLoginViewLogin]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vvStrLoginViewLogin]
AS
	SELECT	isnull(row_number() over (order by (select 1)),0) as IdRowNumber, *
	FROM 
		BITSAT_USUARIO  

GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_DATOS_GUARDIA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_DATOS_GUARDIA](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[TIPO_JORNADA] [nvarchar](1) NULL,
	[IMPORTE_CONVENIO] [float] NULL,
	[HORAS_PREVISTAS] [float] NULL,
	[CANTIDAD_PACTADA] [float] NULL,
	[NUMERO_LINEA] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[FECHA_PROCESO] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_DATOS_GUARDIA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[NUMERO_LINEA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_PEGASO_GASTOS_JORNADA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_PEGASO_GASTOS_JORNADA]
AS
    
	SELECT 
		COMPAÑIA_ACTIVIDAD AS IdCia,
        CONVERT(NVARCHAR(2),SUBSTRING(CONVERT(VARCHAR,DATEPART(YEAR,ID)),3,2)) AS Year,
             REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(MONTH,ID)))) + 
             CONVERT(VARCHAR,DATEPART(MONTH,ID)) AS Mes,
		REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(DAY,ID)))) + 
             CONVERT(VARCHAR,DATEPART(DAY,ID)) AS Dia,
		CONVERT(NVARCHAR(6),RTRIM(LTRIM(CODIGO_USUARIO))) AS IdEmpleado,
        '1' AS IdCentro,
		CENTRO_ACTIVIDAD AS Loge,
		CONVERT(NVARCHAR(6),RTRIM(LTRIM(SUPERIOR))) AS IdSupervisor,
        CONVERT(DECIMAL(9,2),ISNULL(Gastos,0)) AS Gastos,
        CodGasto,
        CodActividad,
       '' AS Concepto,
		NULL AS Contrato,
		NULL AS Nif,
		NULL AS TipoContrato,
		Descripcion,
        FechaAlta
	FROM
		(SELECT
            COMPAÑIA_ACTIVIDAD,
            BITSAT_ACTIVIDAD_DATOS_GUARDIA.ID,
            BITSAT_ACTIVIDAD.CODIGO_USUARIO,
			BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,
            SUP.SUPERIOR,
            BITSAT_ACTIVIDAD_DATOS_GUARDIA.CANTIDAD_PACTADA AS Gastos,
            '19' AS CodGasto,
            'DISPONI' AS CodActividad,
			BITSAT_ACTIVIDAD_DATOS_GUARDIA.DESCRIPCION AS Descripcion,
            BITSAT_ACTIVIDAD.ID AS FechaAlta
       FROM 
			BITSAT_ACTIVIDAD_DATOS_GUARDIA INNER JOIN
			BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_DATOS_GUARDIA.ID=BITSAT_ACTIVIDAD.ID
       AND BITSAT_ACTIVIDAD_DATOS_GUARDIA.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
       INNER JOIN BITSAT_USUARIO SUP ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=SUP.CODIGO AND SUP.SUPERIOR IS NOT NULL AND SUP.DISP=1
       WHERE BITSAT_ACTIVIDAD_DATOS_GUARDIA.TIPO_JORNADA='D' AND FECHA_PROCESO IS NULL 
	   UNION ALL
	   SELECT
            COMPAÑIA_ACTIVIDAD,
            BITSAT_ACTIVIDAD_DATOS_GUARDIA.ID,
            BITSAT_ACTIVIDAD.CODIGO_USUARIO,
            BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,
            SUP.SUPERIOR,
            BITSAT_ACTIVIDAD_DATOS_GUARDIA.IMPORTE_CONVENIO AS Gastos,
            '09' AS CodGasto,
            '027C' AS CodActividad,
			NULL AS Descripcion,
            BITSAT_ACTIVIDAD.ID AS FechaAlta
       FROM BITSAT_ACTIVIDAD_DATOS_GUARDIA INNER JOIN
       BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_DATOS_GUARDIA.ID=BITSAT_ACTIVIDAD.ID
       AND BITSAT_ACTIVIDAD_DATOS_GUARDIA.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
       INNER JOIN BITSAT_USUARIO SUP ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=SUP.CODIGO AND SUP.SUPERIOR IS NOT NULL AND SUP.DISP=1
       WHERE BITSAT_ACTIVIDAD_DATOS_GUARDIA.TIPO_JORNADA IN('A','B') AND FECHA_PROCESO IS NULL
	   UNION ALL
	   SELECT
            COMPAÑIA_ACTIVIDAD,
            BITSAT_ACTIVIDAD_DATOS_GUARDIA.ID,
			BITSAT_ACTIVIDAD.CODIGO_USUARIO,
            BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,
            SUP.SUPERIOR,
            ISNULL(BITSAT_ACTIVIDAD_DATOS_GUARDIA.CANTIDAD_PACTADA,0) - ISNULL(BITSAT_ACTIVIDAD_DATOS_GUARDIA.IMPORTE_CONVENIO,0) AS Gastos,
            '19' AS CodGasto,
            'DISPONI' AS CodActividad,
			NULL AS Descripcion,
            BITSAT_ACTIVIDAD.ID AS FechaAlta
       FROM BITSAT_ACTIVIDAD_DATOS_GUARDIA INNER JOIN
       BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_DATOS_GUARDIA.ID=BITSAT_ACTIVIDAD.ID
       AND BITSAT_ACTIVIDAD_DATOS_GUARDIA.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
       INNER JOIN BITSAT_USUARIO SUP ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=SUP.CODIGO AND SUP.SUPERIOR IS NOT NULL AND SUP.DISP=1
       WHERE BITSAT_ACTIVIDAD_DATOS_GUARDIA.TIPO_JORNADA IN('A','B') AND FECHA_PROCESO IS NULL AND
       ISNULL(BITSAT_ACTIVIDAD_DATOS_GUARDIA.IMPORTE_CONVENIO,0) < ISNULL(BITSAT_ACTIVIDAD_DATOS_GUARDIA.CANTIDAD_PACTADA,0))GASTOS
	   
GO
/****** Object:  Table [dbo].[BITSAT_INSPECCION_PREVISTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_INSPECCION_PREVISTA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[AÑOMES] [nvarchar](6) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[CODIGO_PLANIFICACION] [nvarchar](80) NOT NULL,
	[FECHA_PLANIFICACION] [datetime] NULL,
	[CODIGO_INSPECCION] [nvarchar](5) NULL,
	[CODIGO_USUARIO] [nvarchar](15) NULL,
	[FECHA_PREVISTA] [datetime] NULL,
	[HORA_PREVISTA] [datetime] NULL,
	[TIEMPO_PARADA] [nvarchar](10) NULL,
	[NUMERO_VIAJE] [nvarchar](10) NULL,
	[CODIGO_RUTA] [nvarchar](4) NULL,
	[LONGITUD] [nvarchar](15) NULL,
	[LATITUD] [nvarchar](15) NULL,
	[ESTADO] [nvarchar](10) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_INSPECCION_PREVISTA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[AÑOMES] ASC,
	[CODIGO_UNIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vvStrRutasViewInfoMapa]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vvStrRutasViewInfoMapa]
AS
SELECT 
	isnull(row_number() over (order by (select 1)),0) as IdRowNumber,
	BITSAT_UNIDAD.CODIGO_UNIDAD, BITSAT_UNIDAD.NOMBRE_UNIDAD,
	BITSAT_UNIDAD.LONGITUD AS LATITUD, BITSAT_UNIDAD.LATITUD AS LONGITUD, 
	BITSAT_INSPECCION_PREVISTA.FECHA_PREVISTA AS FECHA_PREVISTA_INSPECCION, 
	ACTIVIDADINSPECCIONES.FECHA_FIN AS FECHA_FIN_INSPECCION,
	ACTIVIDADINSPECCIONES.ESTADO AS ESTADO_INSPECCION, CUENTAAVISOS.NUM_AVISOS
FROM 
	BITSAT_UNIDAD with (nolock) LEFT JOIN 
	BITSAT_INSPECCION_PREVISTA with (nolock) ON BITSAT_INSPECCION_PREVISTA.CODIGO_COMPAÑIA = BITSAT_UNIDAD.CODIGO_COMPAÑIA 
					AND BITSAT_INSPECCION_PREVISTA.CODIGO_UNIDAD = BITSAT_UNIDAD.CODIGO_UNIDAD LEFT JOIN
	BITSAT_ACTIVIDAD ACTIVIDADINSPECCIONES with (nolock) ON ACTIVIDADINSPECCIONES.CODIGO_COMPAÑIA = BITSAT_UNIDAD.CODIGO_COMPAÑIA 
					AND ACTIVIDADINSPECCIONES.CODIGO_UNIDAD = BITSAT_UNIDAD.CODIGO_UNIDAD
					AND ACTIVIDADINSPECCIONES.CODIGO_ACTIVIDAD = 'INSPP' LEFT JOIN
	(
		SELECT
			CODIGO_COMPAÑIA, UNIDAD, 
			RIGHT('0000' + cast(YEAR(FECHA_RECEPCION) AS varchar), 4) + RIGHT('00' + cast(MONTH(FECHA_RECEPCION) AS varchar), 2) AS AÑOMES, 
			COUNT(CLAVE_AVISO) AS NUM_AVISOS
		FROM
			BITSAT_AVISOS with (nolock)
		GROUP BY
			CODIGO_COMPAÑIA, UNIDAD, RIGHT('0000' + cast(YEAR(FECHA_RECEPCION) AS varchar), 4) + RIGHT('00' + cast(MONTH(FECHA_RECEPCION) AS varchar), 2)
	) CUENTAAVISOS ON BITSAT_UNIDAD.CODIGO_COMPAÑIA = CUENTAAVISOS.CODIGO_COMPAÑIA 
					AND BITSAT_UNIDAD.CODIGO_UNIDAD = CUENTAAVISOS.UNIDAD

GO
/****** Object:  View [dbo].[vvHTJornadasDeTecnicos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vvHTJornadasDeTecnicos]
AS
	SELECT
		CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_USUARIO, 
		(
			SELECT TOP 1 FECHA_INICIO
			FROM 
				BITSAT_ACTIVIDAD AS BITSAT_ACTIVIDADINICIAL  with (nolock) 
			WHERE
				BITSAT_ACTIVIDADINICIAL.CODIGO_ACTIVIDAD = 'INI'
				AND BITSAT_ACTIVIDADINICIAL.CODIGO_COMPAÑIA = BITSAT_ACTIVIDADFINAL.CODIGO_COMPAÑIA
				AND BITSAT_ACTIVIDADINICIAL.CODIGO_CENTRO = BITSAT_ACTIVIDADFINAL.CODIGO_CENTRO
				AND BITSAT_ACTIVIDADINICIAL.CODIGO_USUARIO = BITSAT_ACTIVIDADFINAL.CODIGO_USUARIO
				AND BITSAT_ACTIVIDADINICIAL.FECHA_INICIO < BITSAT_ACTIVIDADFINAL.FECHA_FIN
			ORDER BY
				BITSAT_ACTIVIDADINICIAL.FECHA_INICIO DESC
		) AS FECHA_INICIO_JORNADA,
		FECHA_FIN AS FECHA_FIN_JORNADA
	FROM
		BITSAT_ACTIVIDAD AS BITSAT_ACTIVIDADFINAL with (nolock)
	WHERE
		BITSAT_ACTIVIDADFINAL.CODIGO_ACTIVIDAD = 'FIN'

GO
/****** Object:  Table [dbo].[BITSAT_GRUPO_MONTAJE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_GRUPO_MONTAJE](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_GRUPO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](128) NULL,
 CONSTRAINT [PK_BITSAT_GRUPO_MONTAJE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_GRUPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_RECORRIDO_TECNICOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[V_W_RECORRIDO_TECNICOS]
as
SELECT	top 100 percent  rank () over (order by t.codigo, v.hora ) as rank, 
		t.cia as codigo_compañia, t.loge as codigo_centro, t.codigo, 
		t.tecnico as Nombre, 
		fecha,
		isnull(left(v.hora,2)+':'+substring(v.hora,3,2)+':'+substring(v.hora,5,2),'') as hora, 
		isnull(replace(v.longitud,',','.'),'') as Longitud, 
		isnull(replace(v.latitud,',','.'),'') as Latitud,
		case when  isnull(v.hora,'')='' 
				then '#00CCFF'
			 when  datediff(mi,left(v.hora,2)+':'+substring(v.hora,3,2),ltrim(datepart(hh,getdate())) +':'+ltrim(datepart(mi,getdate())))>isnull(p.valorparam,60) 
				then '#00FF00'
			 else  '#FF0000'
		End as color,
		t.color as colorTecnico,
		v.st_servicio as st_Servicio,
		case when substring(v.st_servicio,1,5)='MONTA' and isnumeric(v.NUM_SERVICIO)=1 then 
				(select DESCRIPCION from BITSAT_GRUPO_MONTAJE 
				WHERE CODIGO_GRUPO = v.NUM_SERVICIO AND CODIGO_COMPAÑIA=t.cia)
			when substring(v.st_servicio,1,5)='MONTA' and isnumeric(v.NUM_SERVICIO)=0 then
				v.NUM_SERVICIO
			when substring(v.st_servicio,1,3)='INS' then ordernr 
			else ''
		end as unidad

FROM         
		(
SELECT   top 100 percent  d.codigo_web as rank, u.codigo_compañia AS CIA, 
u.CODIGO_CENTRO AS LOGE, u.CODIGO, u.NOMBRE AS Tecnico,
u.color
FROM         dbo.BITSAT_USUARIO u with (nolock)
left join bitsat_usuario_datos d with (nolock) on u.codigo_compañia=d.codigo_compañia and u.codigo=d.codigo
WHERE     (GRUPO_USUARIO = 'TECNICO') and u.disp=1
order by rank

) as t cross join
--v_w_tecnicos as t cross join
		(select valorparam 
		 from bitsat_parametros  with (nolock) 
		 where nombreparam='MinutosAlarmaPosicion') as p  
		left join (select * 
				   from dbo.bitsat_Historico_Tecnico   with (nolock) 
		           where tipo_mensaje in ('20','11','10')  
						and (ISNULL(longitud, '') <> '') 
						AND (ISNULL(latitud, '') <> '' 
						AND longitud<>'0' 
						and latitud<>'0' 
						and longitud<>'00.0000' 
						and latitud<>'00.0000')
					) v on v.codigo_compañia=t.cia and v.drivernr=t.codigo
order by t.rank






GO
/****** Object:  View [dbo].[vvGlobalRecorridoTecnicos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vvGlobalRecorridoTecnicos]
AS
SELECT	isnull(row_number() over (order by (select 1)),0) as IdRowNumber,	
		rank, codigo, Nombre AS Tecnico, fecha, hora, Longitud, Latitud, st_Servicio, unidad, 
		colorTecnico AS COLOR
FROM	dbo.V_W_RECORRIDO_TECNICOS

GO
/****** Object:  View [dbo].[V_W_HISTORICO_TECNICO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_W_HISTORICO_TECNICO]
AS
SELECT     ID AS Expr1, CODIGO_COMPAÑIA AS Expr2, CODIGO_CENTRO AS Expr3, TIPO_MENSAJE AS Expr4, LONGITUD AS Expr5, LATITUD AS Expr6, FECHA AS Expr7, 
                      HORA AS Expr8, ESTADO AS Expr9, CODIGO_MOTIVO AS Expr10, AVERIAS_PENDIENTES AS Expr11, INSPECCIONES_REALIZADAS AS Expr12, 
                      AVERIAS_REALIZADAS AS Expr13, dbo.BITSAT_HISTORICO_TECNICO.*
FROM         dbo.BITSAT_HISTORICO_TECNICO  with (nolock) 

GO
/****** Object:  View [dbo].[V_W_CENTROS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE view [dbo].[V_W_CENTROS]
AS
SELECT     CODIGO_compañia, substring(CODIGO_CENTRO,1,6) as CODIGO_CENTRO, DESCRIPCION, DISP
FROM         dbo.BITSAT_CENTRO  with (nolock) 
where substring(codigo_Centro,7,2)='00' and codigo_centro<>'00000000'

GO
/****** Object:  View [dbo].[vvGlobalBitsatCentros]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vvGlobalBitsatCentros]
AS
SELECT     isnull(row_number() over (order by (select 1)),0) as IdRowNumber,CODIGO_CENTRO, DESCRIPCION
FROM         dbo.V_W_CENTROS
GO
/****** Object:  View [dbo].[vvGlobalObtenerUnidades]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vvGlobalObtenerUnidades]
AS
SELECT DISTINCT 
		isnull(row_number() over (order by (select 1)),0) as IdRowNumber,
		BITSAT_UNIDAD.[CODIGO_COMPAÑIA],BITSAT_UNIDAD.[CODIGO_CENTRO],BITSAT_UNIDAD.[CODIGO_UNIDAD],BITSAT_UNIDAD.[NOMBRE_UNIDAD],BITSAT_UNIDAD.[VIA]
		,BITSAT_UNIDAD.[DIRECCION],BITSAT_UNIDAD.[NUMERO]
		,BITSAT_UNIDAD.[COMPLEMENTO_DIRECCION],BITSAT_UNIDAD.[CODIGO_POSTAL],BITSAT_UNIDAD.[PROVINCIA]
		,BITSAT_UNIDAD.[POBLACION],BITSAT_UNIDAD.[PAIS],BITSAT_UNIDAD.[TIPO_CONTRATO],BITSAT_UNIDAD.[DURACION_PREVISTA]
		,BITSAT_RUTA.[CODIGO_RUTA],BITSAT_UNIDAD.[HORARIO_INICIO1],BITSAT_UNIDAD.[HORARIO_FIN1]
		,BITSAT_UNIDAD.[HORARIO_INICIO2],BITSAT_UNIDAD.[HORARIO_FIN2],BITSAT_UNIDAD.[PRIORIDAD]
		,BITSAT_UNIDAD.[LONGITUD],BITSAT_UNIDAD.[LATITUD],BITSAT_UNIDAD.[TIPO_SERVICIO],BITSAT_UNIDAD.[TIPO_APARATO]
		,BITSAT_RUTA.CODIGO_SUPERVISOR AS SUPERVISOR, CODIGO_TECNICO 	
	FROM         
		BITSAT_UNIDAD with (nolock) LEFT JOIN
		BITSAT_RUTAS as BITSAT_RUTA with (nolock) ON BITSAT_UNIDAD.IDRUTA = BITSAT_RUTA.ID LEFT JOIN
		BITSAT_RUTAS_TECNICO AS BITSAT_RUTAS_TECNICO with (nolock) ON BITSAT_RUTA.ID = BITSAT_RUTAS_TECNICO.IDRUTA
	WHERE     
		BITSAT_UNIDAD.DISP=1
GO
/****** Object:  Table [dbo].[BITSAT_ESTADO_ASCENSOR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ESTADO_ASCENSOR](
	[CODIGO_ESTADO] [nchar](1) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[PRIORIDAD] [nvarchar](15) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_ESTADO_ASCENSOR] PRIMARY KEY CLUSTERED 
(
	[CODIGO_ESTADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_AVISOS_ESTADOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_AVISOS_ESTADOS](
	[CLAVE_AVISO] [nvarchar](15) NOT NULL,
	[TECNICO_AVISO] [nvarchar](15) NOT NULL,
	[ACCION] [nvarchar](30) NULL,
	[LANZAMIENTO_ACCION] [nvarchar](50) NULL,
	[FECHA_HORA_ACCION] [datetime] NOT NULL,
	[MOTIVO_ACCION] [nvarchar](50) NULL,
	[TECNICO_TRANSFER] [nvarchar](15) NULL,
	[ind24h] [bit] NULL,
	[FECHA_HORA] [datetime] NULL,
	[VALIDO] [bit] NULL,
	[FICHERO_ENTRADA] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BITSAT_AVISOS_ESTADOS] PRIMARY KEY CLUSTERED 
(
	[CLAVE_AVISO] ASC,
	[TECNICO_AVISO] ASC,
	[FICHERO_ENTRADA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_AVISO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_AVISO](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA_ACCION] [datetime] NULL,
	[TIPO_ACCION] [nchar](1) NULL,
	[ACCION] [nvarchar](30) NULL,
	[LANZAMIENTO_ACCION] [nvarchar](6) NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NULL,
	[MOTIVO_ACCION] [nvarchar](50) NULL,
	[TECNICO_TRANSFER] [nvarchar](15) NULL,
	[UNIDAD_OTIS] [nchar](1) NULL,
	[CODIGO_COMPETIDOR] [nvarchar](4) NULL,
	[CODIGO_AVERIA] [nvarchar](5) NULL,
	[CARGO_LABOR] [nvarchar](50) NULL,
	[TIPO_AVISO] [nchar](1) NULL,
	[FACTURABLE] [nchar](1) NULL,
	[DESCRIPCION_AVERIA] [nvarchar](1024) NULL,
	[SUGERENCIAS_INSPECTOR] [nvarchar](1024) NULL,
	[CODIGO_MOTIVO_ACCION] [nvarchar](15) NULL,
	[ESTADO_UNIDAD] [int] NULL,
	[CODIGO_INFORME_SERVICIO] [nvarchar](14) NULL,
	[CODIGO_ACTIVIDAD_IS] [nvarchar](8) NULL,
	[TIPO_MOTIVO_ACCION] [int] NULL,
	[INSPECCION] [char](1) NULL,
	[MOTIVO_NO_INSPECCION] [nvarchar](16) NULL,
	[OBSERVACIONES_NO_INSP] [nvarchar](1024) NULL,
	[TIEMPO_LLEGADA] [datetime] NULL,
	[MOTIVO_RETRASO] [nvarchar](2) NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_USUARIO_AVISO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_AVISOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[V_AVISOS]
AS
SELECT  a.CLAVE_AVISO, a.CODIGO_compañia, a.CODIGO_CENTRO, a.CODIGO_TECNICO, a.FECHA_RECEPCION, a.ESTADO_AVISO, a.CONTRATO, a.TIPO_SERVICIO, a.ELITE, 
	a.UNIDAD, a.APARATO, a.SITUACION, a.RUTA, a.TIPO_VIA, a.DIRECCION, a.NUMERO1, a.NUMERO2, a.EDIFICIO, a.DISTRITO_POSTAL, a.CODIGO_PROVINCIA, 
        a.CODIGO_POBLACION, a.DIRECCION_AYUDA, a.DESCRIPCION_AVERIA, a.ESTADO_ASCENSOR AS CODIGO_ESTADO_ASCENSOR, ISNULL(e.DESCRIPCION, N'') 
        AS ESTADO_ASCENSOR, ISNULL(e.PRIORIDAD, 99) AS PRIORIDAD, a.LLAMADOR, a.TELEFONO_LLAMADOR, a.OBSERVACIONES, a.REMSN, 
        a.DESCRIPCION_REM_INOP, a.FECHA_ASIGNACION, a.CODIGO_EVENTO, a.ESTADO_AVISO_BITSAT, a.UNIDAD_OTIS, a.CODIGO_COMPETIDOR, a.UNIDAD_CIERRE, 
        a.TECNICO_CIERRE, a.CODIGO_AVERIA, a.TIPO_AVISO, a.INDICADOR_FACTURACION, p.DESCRIPCION AS Provincia, pob.DESCRIPCION AS Poblacion, 
        a.FECHA_HORA_LLEGADA, a.FECHA_HORA_SALIDA, '0' AS ENVIADO, a.ENVIADO_OP, a.FECHA_ENVIO_OP, a.ENVIAR_24h, a.FECHA_ENVIO_24h, 
        a.ENVIAR_24h_CONF, a.FECHA_ENVIO_24h_CONF,
        ISNULL(act.CODIGO_USUARIO, N'') AS usuario_act, ISNULL(act.CODIGO_PDA, N'') AS pda_act, act.FECHA_INICIO AS fecha_act, 
        ISNULL((SELECT     TOP (1) ACCION
        	FROM       dbo.BITSAT_AVISOS_ESTADOS with (nolock)
                WHERE     (CLAVE_AVISO = a.CLAVE_AVISO and tecnico_aviso=a.codigo_tecnico) AND (VALIDO = 1)
                ORDER BY FECHA_HORA DESC), 'LANZADO') AS accion, 
	ISNULL((SELECT     TOP (1) FECHA_HORA_ACCION
        	FROM       dbo.BITSAT_AVISOS_ESTADOS AS BITSAT_AVISOS_ESTADOS_5 with (nolock)
                WHERE     (CLAVE_AVISO = a.CLAVE_AVISO and tecnico_aviso=a.codigo_tecnico) AND (VALIDO = 1)
                ORDER BY FECHA_HORA DESC), a.FECHA_RECEPCION) AS fecha_hora_accion, 
	ISNULL((SELECT     TOP (1) LANZAMIENTO_ACCION
        	FROM       dbo.BITSAT_AVISOS_ESTADOS AS BITSAT_AVISOS_ESTADOS_4	with (nolock)
                WHERE     (CLAVE_AVISO = a.CLAVE_AVISO and tecnico_aviso=a.codigo_tecnico) AND (VALIDO = 1)
		ORDER BY FECHA_HORA DESC), '') AS lanzamiento_accion, 
	ISNULL((SELECT     TOP (1) MOTIVO_ACCION
        	FROM       dbo.BITSAT_AVISOS_ESTADOS AS BITSAT_AVISOS_ESTADOS_3	with (nolock)
                WHERE     (CLAVE_AVISO = a.CLAVE_AVISO and tecnico_aviso=a.codigo_tecnico) AND (VALIDO = 1)
                ORDER BY FECHA_HORA DESC), '') AS motivo_accion, 
	ISNULL((SELECT     TOP (1) TECNICO_TRANSFER
        	FROM       dbo.BITSAT_AVISOS_ESTADOS AS BITSAT_AVISOS_ESTADOS_2	with (nolock)
                WHERE     (CLAVE_AVISO = a.CLAVE_AVISO and tecnico_aviso=a.codigo_tecnico) AND (VALIDO = 1)
                ORDER BY FECHA_HORA DESC), '') AS tecnico_transfer, 
	ISNULL((SELECT     TOP (1) ind24h
        	FROM       dbo.BITSAT_AVISOS_ESTADOS AS BITSAT_AVISOS_ESTADOS_1	with (nolock)
                WHERE     (CLAVE_AVISO = a.CLAVE_AVISO and tecnico_aviso=a.codigo_tecnico) AND (VALIDO = 1)
                ORDER BY FECHA_HORA DESC), 1) AS ind24h,
	ISNULL(a.CONFIRMADO_TECNICO ,0) as CONFIRMADO_TECNICO,
                      
        a.UNIDAD_PARADA ,
	a.MOTIVO_PARADA ,
	a.MOTIVO_DEVOLUCION ,
	a.TECNICO_ORIGEN_TRANS,
	a.MOTIVO_TRANSFERENCIA,
	a.OBSERVACIONES_TRANSFERENCIA,
	case when isnull(RU.SUPERVISOR,'')='' then '000001' else case when isnumeric(RU.SUPERVISOR)=1 then convert(nvarchar(15), convert(bigint,ru.supervisor)) else ru.SUPERVISOR end end as SUPERVISOR,
	UN.TIEMPO_RESP,		--Fase 2.2.: TELL en Avisos Tecnico
	UN.VIP,	 			--Fase 2.2.: TELL en Avisos Tecnico
	UN.TIPOCLIENTE_SKP,	--Fase 2.2.: TELL en Avisos Tecnico
	(SELECT TOP (1) TIEMPO_LLEGADA
		FROM	dbo.BITSAT_AVISOS AS BITSAT_AVISOS_1 with (nolock)
		WHERE	CLAVE_AVISO = a.CLAVE_AVISO AND ISNULL(TIEMPO_LLEGADA, '') <> ''
		ORDER BY FECHA_RECEPCION DESC) AS TIEMPO_LLEGADA,  --Fase 2.2.: TELL en Avisos Tecnico
	[dbo].[fncUnidadRebelde](UN.CODIGO_COMPAÑIA, UN.CODIGO_UNIDAD) AS REBELDE,
	[dbo].[fncUnidadCritica](UN.CODIGO_COMPAÑIA, UN.CODIGO_UNIDAD) AS CRITICA
FROM    dbo.BITSAT_AVISOS AS a with (nolock) LEFT OUTER JOIN
        dbo.BITSAT_ESTADO_ASCENSOR AS e with (nolock) ON a.ESTADO_ASCENSOR = e.CODIGO_ESTADO LEFT OUTER JOIN
        dbo.BITSAT_PROVINCIA AS p with (nolock) ON a.CODIGO_compañia = p.CODIGO_compañia AND a.CODIGO_PROVINCIA = p.CODIGO_PROVINCIA LEFT OUTER JOIN
        dbo.BITSAT_POBLACION AS pob  with (nolock) ON a.CODIGO_PROVINCIA = pob.CODIGO_PROVINCIA AND a.CODIGO_POBLACION = pob.CODIGO_POBLACION LEFT OUTER JOIN
	dbo.bitsat_unidad un with (nolock) on a.CODIGO_COMPAÑIA = un.CODIGO_COMPAÑIA and a.UNIDAD=un.CODIGO_UNIDAD left outer join
--	(select CODIGO_COMPAÑIA , codigo_ruta, max(supervisor) as supervisor from dbo.BITSAT_RUTA with (nolock) where disp=1 group by CODIGO_COMPAÑIA , codigo_ruta) as ru on ru.CODIGO_COMPAÑIA = un.CODIGO_COMPAÑIA and ru.codigo_ruta= un.codigo_ruta left outer join 
	(select ID, CODIGO_COMPAÑIA,codigo_Centro, codigo_ruta, max(CODIGO_SUPERVISOR)as supervisor from dbo.BITSAT_RUTAS with (nolock) where disp=1 group by ID, CODIGO_COMPAÑIA ,codigo_Centro, codigo_ruta) as ru on ru.ID = un.IDRUTA left outer join 
        (SELECT lactividad.CODIGO_PDA, lactividad.ID, lactividad.CODIGO_compañia, lactividad.CODIGO_CENTRO, lactividad.CODIGO_USUARIO, 
        	lactividad.CODIGO_ACTIVIDAD, lactividad.CODIGO_UNIDAD, lactividad.compañia_ACTIVIDAD, lactividad.CENTRO_ACTIVIDAD, 
                lactividad.CODIGO_SUPERVISOR, lactividad.CODIGO_IDENTIFICADOR, lactividad.ESTADO, lactividad.añomes, lactividad.LONGITUD, 
                lactividad.LATITUD, lactividad.CODIGO_BARRAS_INICIO, lactividad.FECHA_INICIO, lactividad.HORA_INICIO, lactividad.FECHA_FIN_CB, 
                lactividad.CODIGO_BARRAS_FIN, lactividad.FECHA_FIN, lactividad.HORA_FIN, lactividad.SERVICIO_FIJO, lactividad.COMPENSABLE, 
                lactividad.FECHA_AVISO, lactividad.ID_AVISO, lactividad.MOTIVO_PAUSA
	FROM          dbo.BITSAT_ACTIVIDAD AS lactividad  with (nolock) INNER JOIN
        	(SELECT     codigo_usuario,ID_AVISO, MAX(ID) AS id
                FROM          dbo.BITSAT_ACTIVIDAD as a with (nolock) 
                WHERE      (NOT (ID_AVISO IS NULL))
                GROUP BY codigo_usuario, ID_AVISO) AS act_aviso ON lactividad.ID = act_aviso.id AND lactividad.ID_AVISO = act_aviso.ID_AVISO and lactividad.codigo_usuario=act_aviso.codigo_usuario) AS act ON 
                      a.CLAVE_AVISO = act.ID_AVISO and a.codigo_tecnico= act.codigo_usuario LEFT OUTER JOIN
                      dbo.BITSAT_ACTIVIDAD_AVISO AS aa  with (nolock) ON act.CODIGO_PDA = aa.CODIGO_PDA AND act.ID = aa.ID					  
WHERE     (ISNULL(a.ENVIADO_OP, 0) = 0)
GO
/****** Object:  Table [dbo].[BITSAT_ESTADO_AVERIA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ESTADO_AVERIA](
	[CODIGO_ESTADO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](60) NULL,
	[DESCRIPCION_CORTA] [nvarchar](30) NULL,
	[COLOR] [nvarchar](30) NULL,
 CONSTRAINT [PK_BITSAT_ESTADO_AVERIA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_ESTADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_ESTADOS_AVISOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ESTADOS_AVISOS]
as
select a.clave_aviso, estado_aviso_bitsat, est.descripcion, e.tecnico_aviso, e.fecha_hora_accion
from 
bitsat_avisos a 
inner join bitsat_avisos_estados e on a.clave_aviso=e.clave_aviso and a.codigo_tecnico=e.tecnico_aviso
inner join bitsat_estado_averia est on a.estado_aviso_bitsat=est.codigo_estado


GO
/****** Object:  Table [dbo].[BITSAT_CENTROS_FACTURACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CENTROS_FACTURACION](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_COMPANIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[MINUTOS] [int] NOT NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_CENTROS_FACTURACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPANIA] ASC,
	[CODIGO_CENTRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_AUTOFACTURACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_AUTOFACTURACION](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA_HORA] [datetime] NOT NULL,
	[AUTOFACTURABLE] [nchar](1) NULL,
	[ESTADO_AUTOFACTURACION] [int] NOT NULL,
	[OBSERVACIONES_AUTOFACTURACION] [nvarchar](max) NULL,
	[USUARIO] [nvarchar](15) NOT NULL,
	[MOTIVO_NO_FACTURACION] [int] NULL,
	[FECHA_ENVIO] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_AUTOFACTURACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[FECHA_HORA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_ACTIVIDADES_A_FACTURAR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_W_ACTIVIDADES_A_FACTURAR]
AS
	SELECT
		ACT.CODIGO_PDA,
		ACT.ID,
		ACT.CODIGO_ACTIVIDAD,
		ACT.ESTADO,
		FAC.AUTOFACTURABLE
	FROM BITSAT_ACTIVIDAD ACT  with (nolock) INNER JOIN
	(SELECT FAC1.ID, FAC1.CODIGO_PDA, FAC1.FECHA_HORA, FAC1.AUTOFACTURABLE, FAC1.ESTADO_AUTOFACTURACION, FAC1.OBSERVACIONES_AUTOFACTURACION FROM BITSAT_ACTIVIDAD_AUTOFACTURACION FAC1 with (nolock) INNER JOIN
	(SELECT ID, CODIGO_PDA, MAX(FECHA_HORA) AS FECHA_HORA FROM BITSAT_ACTIVIDAD_AUTOFACTURACION with (nolock)
		WHERE FECHA_ENVIO IS NULL
		GROUP BY ID, CODIGO_PDA) FAC2 ON FAC2.ID = FAC1.ID AND FAC2.CODIGO_PDA = FAC1.CODIGO_PDA
			AND FAC2.FECHA_HORA = FAC1.FECHA_HORA AND
			(FAC1.ESTADO_AUTOFACTURACION = 4 OR
			(FAC1.ESTADO_AUTOFACTURACION = 1 AND LEFT(ISNULL(FAC1.OBSERVACIONES_AUTOFACTURACION,''),7) = '[auto]-'))) AS FAC ON FAC.ID = ACT.ID AND FAC.CODIGO_PDA = ACT.CODIGO_PDA
	WHERE
		(CASE
			WHEN FAC.ESTADO_AUTOFACTURACION = 1 THEN
				CASE
					WHEN EXISTS(SELECT TOP 1 MINUTOS FROM BITSAT_CENTROS_FACTURACION WHERE CODIGO_COMPANIA = ACT.COMPAÑIA_ACTIVIDAD AND CODIGO_CENTRO = ACT.CENTRO_ACTIVIDAD AND DISP = 1) THEN
						CASE
							WHEN DATEADD(MINUTE, (SELECT TOP 1 MINUTOS FROM BITSAT_CENTROS_FACTURACION WHERE CODIGO_COMPANIA = ACT.COMPAÑIA_ACTIVIDAD AND CODIGO_CENTRO = ACT.CENTRO_ACTIVIDAD AND DISP = 1), FAC.FECHA_HORA) < GETDATE() THEN 1
							ELSE 0
						END
					ELSE 
						CASE
							WHEN DATEADD(MINUTE, (SELECT CONVERT(INT, valorparam) FROM BITSAT_PARAMETROS WHERE nombreparam = 'Minutos_Facturable_A_Facturado'), FAC.FECHA_HORA) < GETDATE() THEN 1
							ELSE 0
						END
				END
			WHEN FAC.ESTADO_AUTOFACTURACION = 4 THEN
				CASE
					WHEN DATEADD(MINUTE, (SELECT CONVERT(INT, valorparam) FROM BITSAT_PARAMETROS WHERE nombreparam = 'Minutos_En_Revision_A_Facturado'), FAC.FECHA_HORA) < GETDATE() THEN 1
					ELSE 0
				END
		END) = 1
GO
/****** Object:  View [dbo].[V_REALIZACION_RUTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE View [dbo].[V_REALIZACION_RUTA]
AS
SELECT     
r.codigo_planificacion as Planname, 
CONVERT(nvarchar, r.fecha_planificacion, 103) AS PlanningDate, 
r.codigo_unidad as OrderNr, CONVERT(nvarchar, r.fecha_prevista, 103) AS Fecha_Prevista, 
SUBSTRING(CONVERT(nvarchar, r.hora_prevista, 108), 1, 5) AS Hora_Prevista, 
ISNULL(SUBSTRING(CONVERT(nvarchar, DATEADD(mi, isnull(convert(int,tiempo_parada),0) ,r.hora_prevista), 108), 1, 5), '') AS Hora_Salida_Prevista, 
ISNULL(r.tiempo_parada, '') AS Tiempo_Parada_Previsto, r.Estado, 
'' as Motivo, '' AS Comentarios, 
ISNULL(CONVERT(nvarchar, act.fecha_inicio, 103), '') AS Fecha_Real_Llegada, 
ISNULL(SUBSTRING(CONVERT(nvarchar, act.hora_inicio, 108), 1, 5), '') AS Hora_Real_Llegada, 
d.nombre+' ' +d.apellidos AS Driver, d1.pda_asignada AS PDA, 
d.codigo as DriverNr, o.nombre_unidad as Name, o.direccion as Address1, o.numero as  housenr1, o.codigo_postal as Zipcode, o.poblacion as Placename
FROM  
dbo.bitsat_inspeccion_prevista AS r INNER JOIN
dbo.bitsat_usuario AS d ON r.codigo_compañia=d.codigo_compañia and r.codigo_Centro=d.codigo_centro and r.codigo_usuario = d.codigo INNER JOIN
dbo.bitsat_usuario_datos AS d1 ON d.codigo_compañia=d1.codigo_compañia and d.codigo_centro = d1.codigo_Centro and d.codigo=d1.codigo INNER JOIN
dbo.bitsat_unidad AS o ON r.codigo_unidad = o.codigo_unidad left join
dbo.bitsat_actividad act on r.codigo_compañia=act.codigo_compañia and r.codigo_centro=act.codigo_centro and r.codigo_usuario=d.codigo and r.codigo_unidad=act.codigo_unidad

GO
/****** Object:  View [dbo].[vvGlobalObtenerRutas]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vvGlobalObtenerRutas]
AS
	SELECT
		isnull(row_number() over (order by (select 1)),0) as IdRowNumber,   
		r.CODIGO_COMPAÑIA, SUBSTRING(CODIGO_CENTRO, 1, 6) AS CODIGO_CENTRO, CODIGO_SUPERVISOR AS SUPERVISOR, CODIGO_RUTA, DESCRIPCION, CODIGO_TECNICO
	FROM         
		BITSAT_RUTAS r with (nolock)
		LEFT JOIN BITSAT_RUTAS_TECNICO rt with (nolock) ON r.ID = rt.IDRUTA
	WHERE     
		DISP=1

GO
/****** Object:  View [dbo].[V_W_ACTIVIDADES_A_NO_FACTURAR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_W_ACTIVIDADES_A_NO_FACTURAR]
AS
	SELECT
		ACT.CODIGO_PDA,
		ACT.ID
	FROM BITSAT_ACTIVIDAD ACT  with (nolock) INNER JOIN
	(SELECT FAC1.ID, FAC1.CODIGO_PDA, FAC1.FECHA_HORA, FAC1.ESTADO_AUTOFACTURACION FROM BITSAT_ACTIVIDAD_AUTOFACTURACION FAC1 with (nolock) INNER JOIN
	(SELECT ID, CODIGO_PDA, MAX(FECHA_HORA) AS FECHA_HORA FROM BITSAT_ACTIVIDAD_AUTOFACTURACION with (nolock)
		WHERE FECHA_ENVIO IS NULL
		GROUP BY ID, CODIGO_PDA) FAC2 ON FAC2.ID = FAC1.ID AND FAC2.CODIGO_PDA = FAC1.CODIGO_PDA
			AND FAC2.FECHA_HORA = FAC1.FECHA_HORA AND FAC1.ESTADO_AUTOFACTURACION = 2) AS FAC ON FAC.ID = ACT.ID AND FAC.CODIGO_PDA = ACT.CODIGO_PDA
	WHERE
		DATEADD(MINUTE, (SELECT CONVERT(INT, valorparam) FROM BITSAT_PARAMETROS WHERE nombreparam = 'Limite_Minutos_Estado_No_Facturado'), FAC.FECHA_HORA) < GETDATE() AND
		((ACT.CODIGO_ACTIVIDAD = 'ORDTC' AND ACT.ESTADO = 'ORDFIN') OR (ACT.CODIGO_ACTIVIDAD = 'AVI' AND ACT.ESTADO = 'AVFIN'))

GO
/****** Object:  Table [dbo].[BITSAT_EXP_DATA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_EXP_DATA](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NULL,
	[CODIGO_PDA] [nvarchar](15) NULL,
	[ID_ACTIVIDAD] [datetime] NULL,
	[CODIGO_USUARIO] [nvarchar](15) NULL,
	[ACTIVIDAD] [nvarchar](10) NULL,
	[COD_ACT] [nvarchar](2) NULL,
	[CODIGO_AVERIA] [nvarchar](5) NULL,
	[DESCRIPCION_AVERIA] [nvarchar](240) NULL,
	[FACTURABLE] [nvarchar](1) NULL,
	[IND_AVISOS] [nvarchar](1) NULL,
	[REPAR_SUST] [nvarchar](1) NULL,
	[MATERIAL_1] [nvarchar](35) NULL,
	[MATERIAL_2] [nvarchar](35) NULL,
	[MATERIAL_3] [nvarchar](35) NULL,
	[LONGITUD] [nvarchar](15) NULL,
	[LATITUD] [nvarchar](15) NULL,
	[TOTAL_HORAS] [float] NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[TIPO_HORARIO] [nvarchar](1) NULL,
	[INICIO_MAÑANA] [datetime] NULL,
	[FIN_MAÑANA] [datetime] NULL,
	[INICIO_TARDE] [datetime] NULL,
	[FIN_TARDE] [datetime] NULL,
	[INICIO_PAUSA] [datetime] NULL,
	[FIN_PAUSA] [datetime] NULL,
	[TOTAL_PAUSA] [float] NULL,
	[TIPO_RIESGO] [int] NULL,
	[DESCRIPCION_RIESGO] [nvarchar](64) NULL,
	[OBSERVACIONES_TECNICO] [nvarchar](1024) NULL,
	[CODIGO_MONTAJE] [nvarchar](9) NULL,
	[CODIGO_SUPERVISOR] [nvarchar](6) NULL,
	[IND_EXPORTAR] [bit] NULL,
	[FECHA_EXPORTACION] [datetime] NULL,
	[FICHERO_EXPORTACION] [nvarchar](64) NULL,
	[PROCEDE_DE_AVISOS] [nvarchar](1) NULL,
	[FECHA_HORARIO] [datetime] NULL,
	[NUM_BITSAT] [nvarchar](50) NULL,
	[FECHA_TRABAJOS] [datetime] NULL,
	[EXPORTAR_ESERVICE] [bit] NULL,
	[FECHA_EXPORTACION_ESERVICE] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_EXP_DATA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_FOTOGRAFIA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_FOTOGRAFIA](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[FOTOGRAFIA] [nvarchar](256) NULL,
	[TIPO_FOTOGRAFIA] [int] NULL,
	[ENVIADO_PDA] [bit] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_FOTOGRAFIA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_ACTIVIDAD]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_ACTIVIDAD](
	[CODIGO] [nvarchar](10) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_ACTIVIDAD] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_MONTAJE_PROBLEMA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE_PROBLEMA](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[DESCRIPCION] [nvarchar](1024) NULL,
	[TIEMPO_ESTIMADO] [bigint] NULL,
	[RESUELTO] [bit] NULL,
	[FECHA_RESOLUCION] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_MONTAJE_PROBLEMA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_TIEMPO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_TIEMPO](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[TIME_INI] [datetime] NOT NULL,
	[TIME_END] [datetime] NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NULL,
	[CODIGO_MONTAJE] [nvarchar](9) NULL,
	[TIPO_MONTAJE] [nvarchar](1) NULL,
	[TIPO_APARATO] [nvarchar](10) NULL,
	[NUMERO_HITO] [int] NULL,
	[TIPO_JORNADA] [nchar](1) NULL,
 CONSTRAINT [PK_BITSAT_TIEMPO_ACTIVIDAD_USUARIO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[TIME_INI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_MATERIAL]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_MATERIAL](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[MATERIAL] [nvarchar](50) NULL,
	[CANTIDAD] [real] NULL,
	[TIPO_MATERIAL] [int] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_MATERIAL] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_MONTAJE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_MONTAJE](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO] [nvarchar](9) NOT NULL,
	[UNIDAD] [nvarchar](5) NULL,
	[SUPERVISOR] [nvarchar](6) NULL,
	[TIPO_MONTAJE] [nvarchar](1) NULL,
	[TIPO_APARATO] [nvarchar](10) NULL,
	[CODIGO_ACTA] [int] NULL,
	[CARGO_HORAS] [bit] NULL,
	[HORAS_PREVISTAS_OBRAS] [float] NULL,
	[ESTADO_MONTAJE] [int] NOT NULL,
	[NUMERO_MAXIMO_TECNICOS] [int] NULL,
	[FECHA_PREVISTA_INICIO] [datetime] NULL,
	[FECHA_PREVISTA_FIN] [datetime] NULL,
	[DESCRIPCION] [nvarchar](1024) NULL,
	[PETICION_ACEPTACION] [bit] NULL,
	[FECHA_PETICION_ACEPTACION] [datetime] NULL,
	[ACEPTACION_MONTAJE] [bit] NULL,
	[USUARIO_ACEPTACION] [nvarchar](15) NULL,
	[FECHA_ACEPTACION_MONTAJE] [datetime] NULL,
	[DISP] [bit] NULL,
	[REQUISITOS_MINIMOS] [bit] NULL,
	[INCUMPLIMIENTO_REQUISITOS] [int] NULL,
	[PREPARACION_OBRA] [bit] NULL,
	[MOTIVO_PREPARACION_OBRA] [nvarchar](255) NULL,
	[FECHA_INICIO] [datetime] NULL,
	[FECHA_FIN] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_MONTAJES_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_MONTAJE_UNIDADES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE_UNIDADES](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_MONTAJE] [nvarchar](9) NOT NULL,
	[TIPO_MONTAJE] [nvarchar](1) NULL,
	[ESTADO_MONTAJE] [int] NULL,
	[CODIGO_ACTA] [int] NULL,
	[FECHA_FIN] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_MONTAJE_UNIDADES] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_MONTAJE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_GRUPO_MONTAJE_ASIGNACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_GRUPO_MONTAJE_ASIGNACION](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_GRUPO] [int] NOT NULL,
	[CODIGO_MONTAJE] [nvarchar](9) NOT NULL,
 CONSTRAINT [PK_BITSAT_GRUPO_MONTAJE_ASIGNACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_GRUPO] ASC,
	[CODIGO_MONTAJE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vvStrDetalleActividadViewRutasRealizadas_updated]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vvStrDetalleActividadViewRutasRealizadas_updated]
AS
SELECT isnull(row_number() over (order by (select 1)),0) as IdRowNumber, 
	usr.CODIGO_COMPAÑIA,
	usr.CODIGO_CENTRO,
	corp.DESCRIPCION AS COMPAÑIA, 
	cnt.DESCRIPCION AS CENTRO, 
	usr.CODIGO AS CODIGO_TECNICO,
	(CASE WHEN usr.APELLIDOS IS NULL THEN usr.NOMBRE ELSE usr.APELLIDOS + ', ' + usr.NOMBRE END) AS TECNICO,
	ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) AS FECHA_INICIO,
	ISNULL(t.time_end, ACTI.FECHA_FIN) as FECHA_FIN,
	ISNULL(t.time_end, ACTI.FECHA_FIN) - ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) as Tiempo_trabajo,
	ACTI.estado AS ESTADO,
	case when codigo_Actividad='INI' OR codigo_Actividad='FIN' then
	 null  -- convert(datetime,'01/01/1900',103)
	ELSE
		ISNULL(t.time_ini, ACTI.FECHA_INICIO) 
	END AS FECHA_INICIO_CB,

	case when codigo_Actividad='INI' OR codigo_Actividad='FIN' then
	 Null --convert(datetime,'01/01/1900',103)
	ELSE
		case when (ACTI.FECHA_FIN_CB > t.time_ini and Acti.FeCHA_FIN_CB<t.time_end) or t.time_ini>Acti.Fecha_Fin_CB then
   			ACTI.FECHA_FIN_CB
		else
			Null  --convert(datetime,'01/01/1900',103)
		end
	END AS FECHA_FIN_CB,

	ACTI.CODIGO_ACTIVIDAD,
	(t_actividad.DESCRIPCION + (case when isnull(t.tipo_jornada, acti.tipo_jornada)='A' then ' Guardia A' when isnull(t.tipo_jornada, acti.tipo_jornada)='B' then ' Guardia B' when isnull(t.tipo_jornada, acti.tipo_jornada)='D' then ' Disponiblidad' else '' end) ) AS ACTIVIDAD,    
--	NEW ETIC. NECESARIO NUEVO CAMPO PARA FILTRAR Y AGRUPAR BIEN EN LA WEB ACTIVIDAD/REALIZADO
	ISNULL(CONVERT(NVARCHAR(128),T.CODIGO_MONTAJE),isnull(CONVERT(NVARCHAR(128),t.codigo_unidad),		
    ISNULL(CONVERT(NVARCHAR(128),ACTI.CODIGO_UNIDAD),	  
    (SELECT TOP 1 MONT.UNIDAD
	FROM bitsat_actividad_montaje_unidades un with (nolock)
    LEFT JOIN BITSAT_GRUPO_MONTAJE_ASIGNACION ASIG with (nolock) ON 
    UN.CODIGO_COMPAÑIA=ASIG.CODIGO_COMPAÑIA AND UN.CODIGO_MONTAJE=ASIG.CODIGO_MONTAJE
	LEFT JOIN 
	(SELECT codigo_compañia, codigo_grupo FROM BITSAT_GRUPO_MONTAJE with (nolock) WHERE CODIGO_GRUPO<>1) G               
	ON ASIG.CODIGO_COMPAÑIA=G.CODIGO_COMPAÑIA  AND ASIG.CODIGO_GRUPO=G.CODIGO_GRUPO 
	LEFT JOIN BITSAT_MONTAJE MONT with (nolock) ON MONT.CODIGO = UN.CODIGO_MONTAJE
	WHERE ACTI.CODIGO_pda=UN.CODIGO_pda AND ACTI.ID=UN.ID)))) AS CODIGO_UNIDAD,
	(
	SELECT TOP 1 G.DESCRIPCION AS GRUPO_MONTAJE	
	fROM bitsat_actividad_montaje_unidades un  with (nolock) 
    LEFT JOIN BITSAT_GRUPO_MONTAJE_ASIGNACION ASIG  with (nolock) ON 
    UN.CODIGO_COMPAÑIA=ASIG.CODIGO_COMPAÑIA AND UN.CODIGO_MONTAJE=ASIG.CODIGO_MONTAJE
	LEFT JOIN 
	(SELECT codigo_compañia, codigo_grupo, descripcion FROM BITSAT_GRUPO_MONTAJE  with (nolock) WHERE CODIGO_GRUPO<>1) G               
	ON ASIG.CODIGO_COMPAÑIA=G.CODIGO_COMPAÑIA  AND ASIG.CODIGO_GRUPO=G.CODIGO_GRUPO 
	WHERE ACTI.CODIGO_pda=UN.CODIGO_pda AND ACTI.ID=UN.ID) AS GRUPO_MONTAJE,
-- FIN ETIC		
	
	ACTI.CODIGO_PDA, 
	ACTI.ID AS IDACTIVIDAD, 

ISNULL(
case when codigo_Actividad='INI' then
 convert(datetime,'01/01/1900',103)
else
  [dbo].[TiempoDesplazamientoActividad](acti.codigo_pda, acti.id, 	ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)))
end ,convert(datetime,'01/01/1900',103))as tiempo_desplazamiento,

case when (ACTI.CODIGO_ACTIVIDAD='INSPP' AND ACTI.estado = 'INSFIN') 
		or (ACTI.CODIGO_ACTIVIDAD='AVI' AND ACTI.estado = 'AVFIN')  
		or (ACTI.CODIGO_ACTIVIDAD='ORDTC' AND ACTI.estado = 'ORDFIN')
		or (ACTI.CODIGO_ACTIVIDAD='ORDTA' AND ACTI.estado = 'ORDFIN')  
				THEN
					CASE WHEN fir.firma is null THEN 1	else 0 end 
				ELSE
					0
				END	as inspeccion_no_firmada,

	
	(SELECT COUNT(*) FROM BITSAT_EXP_DATA WITH (NOLOCK) WHERE    (ACTIVIDAD LIKE 'COORD%') and codigo_pda=ACTI.codigo_pda and id_actividad=ACTI.id) as indicador_coordenadas,

	(select count(*) from bitsat_actividad_montaje_problema p WITH (NOLOCK) 
		where p.codigo_pda=ACTI.codigo_pda and p.id=ACTI.id and isnull(p.resuelto,0)=0 and
		p.fecha between  ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) and ISNULL(t.time_end, ACTI.FECHA_FIN)) as problemas_montaje,
	
	case 
		when exists (select * from bitsat_actividad_material m WITH (NOLOCK) 
					 where m.codigo_pda=ACTI.codigo_pda and m.id=ACTI.id and m.tipo_material='3' and 
					 m.fecha between  ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) and ISNULL(t.time_end, ACTI.FECHA_FIN) ) then 2 
		when exists (select * from bitsat_actividad_material m WITH (NOLOCK) where m.codigo_pda=ACTI.codigo_pda and m.id=ACTI.id and m.tipo_material<>'3' and 
					 m.fecha between  ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) and ISNULL(t.time_end, ACTI.FECHA_FIN)) then 1
		else 0
	end as indicador_material,

	(select count(*) from bitsat_actividad_fotografia f WITH (NOLOCK) where f.codigo_pda=ACTI.codigo_pda and f.id=ACTI.id and 
					 f.fecha between  ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) and ISNULL(t.time_end, ACTI.FECHA_FIN) ) as indicador_fotografia,

	ISNULL(EST_AVI.DESCRIPCION_CORTA,'') AS ESTADO_AVERIA,
	r.codigo_ruta as RUTA,
	isnull(r.descripcion, r.codigo_ruta) as RUTA_DESCRIPCION,
	isnull(t.tipo_jornada,isnull(acti.tipo_jornada,'N')) as TIPOJORNADA

FROM
	BITSAT_USUARIO AS usr WITH (NOLOCK)
	INNER JOIN BITSAT_COMPAÑIA AS corp WITH (NOLOCK) ON corp.CODIGO_COMPAÑIA = usr.CODIGO_COMPAÑIA
	INNER JOIN BITSAT_CENTRO AS cnt WITH (NOLOCK) ON cnt.CODIGO_COMPAÑIA = usr.CODIGO_COMPAÑIA AND cnt.CODIGO_CENTRO = usr.CODIGO_CENTRO 
	INNER JOIN BITSAT_ACTIVIDAD AS ACTI WITH (NOLOCK) ON usr.CODIGO = ACTI.CODIGO_USUARIO AND usr.CODIGO_COMPAÑIA = ACTI.CODIGO_COMPAÑIA
	INNER JOIN BITSAT_TIPO_ACTIVIDAD AS t_actividad	WITH (NOLOCK) ON ACTI.CODIGO_ACTIVIDAD=t_actividad.CODIGO 
	LEFT JOIN BITSAT_ACTIVIDAD_AVISO AS AVI WITH (NOLOCK) ON ACTI.CODIGO_PDA=AVI.CODIGO_PDA AND ACTI.ID=AVI.ID
	LEFT JOIN BITSAT_ESTADO_AVERIA EST_AVI WITH (NOLOCK) ON AVI.TIPO_ACCION=EST_AVI.CODIGO_ESTADO
	LEFT JOIN BITSAT_ACTIVIDAD_FIRMA AS fir	WITH (NOLOCK) ON fir.CODIGO_PDA = ACTI.CODIGO_PDA AND fir.ID = (CASE WHEN ACTI.[ID_ACTIVIDAD_FIRMA] IS NOT NULL THEN ACTI.[ID_ACTIVIDAD_FIRMA] ELSE ACTI.[ID] END)
	LEFT JOIN BITSAT_ACTIVIDAD_TIEMPO t WITH (NOLOCK) on ACTI.codigo_pda=t.codigo_pda and ACTI.id=t.id
	left join bitsat_unidad u with (nolock) on acti.codigo_compañia=u.codigo_compañia and acti.codigo_unidad=u.codigo_unidad
	left join BITSAT_RUTAS r WITH (NOLOCK) on r.disp=1 and r.codigo_compañia =  usr.CODIGO_COMPAÑIA and u.IDRUTA = r.ID
	left join BITSAT_RUTAS_TECNICO rt WITH (NOLOCK) on r.ID = rt.IDRUTA and usr.CODIGO = rt.CODIGO_TECNICO
	
	WHERE	ACTI.CODIGO_ACTIVIDAD <> 'ANO'


GO
/****** Object:  View [dbo].[vw_PBI_CC_Encuestas_Calidad]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[vw_PBI_CC_Encuestas_Calidad]
AS

	SELECT 
		ENC.ID AS ID_ENCUESTA,
		ENC.CODIGO_COMPAÑIA AS [IdCia], 
		CIA.DESCRIPCION AS [Compañía],
		ENC.CODIGO_CENTRO AS [CodCentro],
		CEN.DESCRIPCION AS [Centro],
		CASE
			WHEN TIP.ID IN(1,2) THEN TIP.DESCRIPCION
			WHEN TIP.ID=3 AND LEFT(ENC.CONTRATO,1)='N' THEN 'Venta Nueva(N)'
			WHEN TIP.ID=3 AND LEFT(ENC.CONTRATO,1)='K' THEN 'BEX (K)'
			WHEN TIP.ID=3 AND LEFT(ENC.CONTRATO,1)='S' THEN 'Modernización(S)'
			ELSE TIP.DESCRIPCION
		END AS [Actividad],
		ENC.TIPO_AVISO aS [Sub-Actividad],
		PER.DESCRIPCION AS [Perfil Encuestado],
		CASE WHEN ENC.ATENDIDO = 1 THEN 'SI' ELSE 'NO' END AS [Atiende Encuesta],
		REP1.RESPUESTA_VALOR AS [Experiencia y relación con GRUPO OTIS],
		REP2.RESPUESTA_VALOR AS [Respuesta de GRUPO OTIS a requerimientos],
		REP3.RESPUESTA_VALOR AS [Producto GRUPO OTIS respecto a competencia (0 NS/NC)],
		REP4.RESPUESTA_VALOR AS [Calidad GRUPO OTIS respecto a competencia (0 NS/NC)],
		REP5.RESPUESTA_VALOR AS [Servicio GRUPO OTIS respecto a competencia (0 NS/NC)],
		REP6.RESPUESTA_VALOR AS [Recomendación a terceros],
		SEL7.DESCRIPCION AS [Mejoras Sugeridas],
		SEL8.DESCRIPCION AS [Quién realizó el Rescate],
		REP9.RESPUESTA_VALOR AS [Tiempo de llegada del técnico (0 NS/NC)],
		REP10.RESPUESTA_VALOR AS [Atención telefónica (0 NS/NC)],
		SEL11.DESCRIPCION AS [Alertas],
		ENC.OBSERVACIONES AS [Observaciones Adicionales],
		ENC.FECHA_ENCUESTA AS [FechaHora],
		CEN.CODIGO_CENTRO AS LOGE,
		ENC.FECHA_ENCUESTA AS "FechaV"
	FROM 
		FISS_CC_Encuesta ENC INNER JOIN BITSAT_COMPAÑIA CIA
			ON ENC.CODIGO_COMPAÑIA=CIA.CODIGO_COMPAÑIA
		INNER JOIN BITSAT_CENTRO CEN
			ON ENC.CODIGO_COMPAÑIA=CEN.CODIGO_COMPAÑIA AND ENC.CODIGO_CENTRO=CEN.CODIGO_CENTRO
		LEFT JOIN FISS_CC_TIPO_ENCUESTA TIP
			ON ENC.ID_TIPO_ENCUESTA=TIP.ID
		LEFT JOIN FISS_CC_PERFIL_ENCUESTA PER
			ON ENC.ID_PERFIL_ENCUESTA=PER.ID
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP1 ON ENC.ID=REP1.ID_ENCUESTA AND REP1.ID_TEXTO_ENCUESTA=1
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP2 ON ENC.ID=REP2.ID_ENCUESTA AND REP2.ID_TEXTO_ENCUESTA=2
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP3 ON ENC.ID=REP3.ID_ENCUESTA AND REP3.ID_TEXTO_ENCUESTA=3
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP4 ON ENC.ID=REP4.ID_ENCUESTA AND REP4.ID_TEXTO_ENCUESTA=4
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP5 ON ENC.ID=REP5.ID_ENCUESTA AND REP5.ID_TEXTO_ENCUESTA=5
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP6 ON ENC.ID=REP6.ID_ENCUESTA AND REP6.ID_TEXTO_ENCUESTA=6
		LEFT JOIN (SELECT ID_ENCUESTA,
							STUFF((SELECT '; ' + SELECTOR.DESCRIPCION
						FROM FISS_CC_ENCUESTA_RESPUESTA ENCUESTA INNER JOIN FISS_CC_SELECTOR_ENCUESTA SELECTOR 
							ON ENCUESTA.ID_SELECTOR_ENCUESTA = SELECTOR.ID
						WHERE (ENCUESTA.ID_TEXTO_ENCUESTA = 7 AND ENCUESTA.ID_ENCUESTA = Results.ID_ENCUESTA) 
						FOR XML PATH(''),TYPE).value('(./text())[1]','VARCHAR(MAX)')
					  ,1,2,'') AS DESCRIPCION
					FROM FISS_CC_ENCUESTA_RESPUESTA Results
					WHERE Results.ID_TEXTO_ENCUESTA = 7
					GROUP BY ID_ENCUESTA)SEL7 ON ENC.ID=SEL7.ID_ENCUESTA
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP8 ON ENC.ID=REP8.ID_ENCUESTA AND REP8.ID_TEXTO_ENCUESTA=8
		LEFT JOIN FISS_CC_SELECTOR_ENCUESTA SEL8 ON REP8.ID_SELECTOR_ENCUESTA=SEL8.ID
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP9 ON ENC.ID=REP9.ID_ENCUESTA AND REP9.ID_TEXTO_ENCUESTA=9
		LEFT JOIN FISS_CC_ENCUESTA_RESPUESTA REP10 ON ENC.ID=REP10.ID_ENCUESTA AND REP10.ID_TEXTO_ENCUESTA=10
		LEFT JOIN (SELECT ID_ENCUESTA,
							STUFF((SELECT '; ' + SELECTOR.DESCRIPCION
						FROM FISS_CC_ENCUESTA_RESPUESTA ENCUESTA INNER JOIN FISS_CC_SELECTOR_ENCUESTA SELECTOR 
							ON ENCUESTA.ID_SELECTOR_ENCUESTA = SELECTOR.ID
						WHERE (ENCUESTA.ID_TEXTO_ENCUESTA = 11 AND ENCUESTA.ID_ENCUESTA = Results.ID_ENCUESTA) 
						FOR XML PATH(''),TYPE).value('(./text())[1]','VARCHAR(MAX)')
					  ,1,2,'') AS DESCRIPCION
					FROM FISS_CC_ENCUESTA_RESPUESTA Results
					WHERE Results.ID_TEXTO_ENCUESTA = 11
					GROUP BY ID_ENCUESTA)SEL11 ON ENC.ID=SEL11.ID_ENCUESTA






GO
/****** Object:  Table [dbo].[BITSAT_CODIGO_AVISO_ELEMENTO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CODIGO_AVISO_ELEMENTO](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_GENERICO] [nchar](2) NOT NULL,
	[DESCRIPCION_GENERICO] [nvarchar](50) NULL,
	[CODIGO_ELEMENTO] [nchar](2) NOT NULL,
	[DESCRIPCION_ELEMENTO] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_CODIGO_AVISO_ELEMENTO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_GENERICO] ASC,
	[CODIGO_ELEMENTO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_CODIGO_AVISO_TIPO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CODIGO_AVISO_TIPO](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_GENERICO] [nchar](2) NOT NULL,
	[CODIGO_TIPO] [nchar](1) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_CODIGO_AVISO_TIPO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_GENERICO] ASC,
	[CODIGO_TIPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_CODIGOS_AVERIA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[V_W_CODIGOS_AVERIA]
as
select elem.codigo_compañia, (elem.codigo_Generico+elem.codigo_elemento+ isnull(tip.codigo_tipo,'')) as codigo, 
(rtrim(descripcion_generico) + rtrim(descripcion_elemento) + rtrim(isnull(tip.descripcion,''))) as descripcion
from bitsat_codigo_aviso_elemento elem
left join bitsat_codigo_aviso_tipo tip 
on elem.codigo_compañia=tip.codigo_compañia and elem.codigo_generico=tip.codigo_generico
GO
/****** Object:  Table [dbo].[BITSAT_GRADO_SATISFACCION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_GRADO_SATISFACCION](
	[GRADO_SATISFACCION] [nvarchar](10) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[COLOR] [nvarchar](18) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_GRADO_SATISFACCION] PRIMARY KEY CLUSTERED 
(
	[GRADO_SATISFACCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_REPARACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_REPARACION](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA_PREVISTA] [datetime] NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NULL,
	[OBSERVACIONES_TECNICO] [nvarchar](1024) NULL,
	[OBSERVACIONES_OTROS] [nvarchar](1024) NULL,
	[GRADO_SATISFACCION] [nvarchar](10) NULL,
	[OBSERVACIONES_CLIENTE] [nvarchar](1024) NULL,
	[FACTURABLE] [nchar](1) NULL,
	[NUMERO_OFERTA] [nvarchar](9) NULL,
	[CODIGO_AVERIA] [nvarchar](5) NULL,
	[CODIGO_INFORME_SERVICIO] [nvarchar](14) NULL,
	[CODIGO_ACTIVIDAD_IS] [nvarchar](8) NULL,
	[CODIGO_ACTIVIDAD_GEN] [datetime] NULL,
	[NUMERO_T] [nvarchar](6) NULL,
	[TIPO_REPARACION] [nvarchar](15) NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_REPARACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_CALIDAD_FIRMANTE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CALIDAD_FIRMANTE](
	[CODIGO] [nvarchar](10) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_CALIDAD_FIRMANTE] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_INFORME_SERVICIO_REPARACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_W_INFORME_SERVICIO_REPARACION]
AS
SELECT     a.CODIGO_PDA, a.ID, a.codigo_compañia, co.DESCRIPCION AS compañia, a.CODIGO_CENTRO, ce.DESCRIPCION AS centro, a.CODIGO_USUARIO, 
                      u.NOMBRE, a.CODIGO_UNIDAD, a.LONGITUD, a.LATITUD, ISNULL(a.ID_AVISO, N'') AS id_aviso, CONVERT(nvarchar, a.FECHA_INICIO, 103) AS fecha, 
                      av.FACTURABLE, av.OBSERVACIONES_CLIENTE, av.CODIGO_AVERIA, codav.descripcion AS descripcion_averia_normalizada, 
                      av.OBSERVACIONES_TECNICO, av.OBSERVACIONES_OTROS, f.NOMBRE_FIRMANTE, f.PISO_FIRMANTE, f.TELEFONO_FIRMANTE, 
                      cal.DESCRIPCION AS calidad_firmante, f.FIRMA, un.NOMBRE_UNIDAD, LTRIM(RTRIM(un.VIA)) + ' ' + LTRIM(RTRIM(un.DIRECCION)) 
                      + ' ' + ISNULL(un.NUMERO, N'') AS direccion, un.COMPLEMENTO_DIRECCION, un.CODIGO_POSTAL, pr.DESCRIPCION AS provincia, 
                      pbl.DESCRIPCION AS poblacion, un.TIPO_APARATO, un.TIPO_SERVICIO, g.DESCRIPCION AS grado_satisfaccion,
                          (SELECT     COUNT(*) AS Expr1
                            FROM          dbo.BITSAT_ACTIVIDAD_MATERIAL
                            WHERE      (CODIGO_PDA = a.CODIGO_PDA) AND (ID = a.ID)) AS materiales, av.CODIGO_ACTIVIDAD_IS
FROM         dbo.BITSAT_ACTIVIDAD AS a  with (nolock) LEFT OUTER JOIN
                      dbo.BITSAT_COMPAÑIA AS co  with (nolock) ON a.codigo_compañia = co.codigo_compañia LEFT OUTER JOIN
                      dbo.BITSAT_CENTRO AS ce  with (nolock) ON a.codigo_compañia = ce.codigo_compañia AND a.CODIGO_CENTRO = ce.CODIGO_CENTRO LEFT OUTER JOIN
                      dbo.BITSAT_USUARIO AS u  with (nolock) ON a.codigo_compañia = u.codigo_compañia AND a.CODIGO_USUARIO = u.CODIGO INNER JOIN
                      dbo.BITSAT_ACTIVIDAD_REPARACION AS av  with (nolock) ON a.CODIGO_PDA = av.CODIGO_PDA AND a.ID = av.ID LEFT OUTER JOIN
                      dbo.BITSAT_UNIDAD AS un  with (nolock) ON a.codigo_compañia = un.codigo_compañia AND a.CODIGO_UNIDAD = un.CODIGO_UNIDAD LEFT OUTER JOIN
                      dbo.BITSAT_ACTIVIDAD_FIRMA AS f  with (nolock) ON a.CODIGO_PDA = f.CODIGO_PDA AND a.ID = f.ID LEFT OUTER JOIN
                      dbo.BITSAT_CALIDAD_FIRMANTE AS cal  with (nolock) ON f.CALIDAD_FIRMANTE = cal.CODIGO LEFT OUTER JOIN
                      dbo.BITSAT_PROVINCIA AS pr  with (nolock) ON un.codigo_compañia = pr.codigo_compañia AND un.PROVINCIA = pr.CODIGO_PROVINCIA LEFT OUTER JOIN
                      dbo.BITSAT_POBLACION AS pbl  with (nolock) ON un.PROVINCIA = pbl.CODIGO_PROVINCIA AND un.POBLACION = pbl.CODIGO_POBLACION LEFT OUTER JOIN
                      dbo.V_W_CODIGOS_AVERIA AS codav  with (nolock) ON a.codigo_compañia = codav.codigo_compañia AND av.CODIGO_AVERIA = codav.codigo LEFT OUTER JOIN
                      dbo.BITSAT_GRADO_SATISFACCION AS g  with (nolock) ON av.GRADO_SATISFACCION = g.GRADO_SATISFACCION

GO
/****** Object:  View [dbo].[V_W_INFORME_SERVICIO_AVISOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_W_INFORME_SERVICIO_AVISOS]
AS
SELECT     a.CODIGO_PDA, a.ID, a.codigo_compañia, co.DESCRIPCION AS compañia, a.CODIGO_CENTRO, ce.DESCRIPCION AS centro, a.CODIGO_USUARIO, 
                      u.NOMBRE, a.CODIGO_UNIDAD, a.LONGITUD, a.LATITUD, CONVERT(nvarchar, a.FECHA_INICIO, 103) AS fecha, a.ID_AVISO AS clave_aviso, 
                      av.TIPO_ACCION, av.ACCION, av.CODIGO_AVERIA, codav.descripcion AS descripcion_averia_normalizada, av.DESCRIPCION_AVERIA, 
                      av.SUGERENCIAS_INSPECTOR, av.FACTURABLE, f.NOMBRE_FIRMANTE, f.PISO_FIRMANTE, f.TELEFONO_FIRMANTE, 
                      cal.DESCRIPCION AS calidad_firmante, f.FIRMA, un.LLAMADOR, LTRIM(RTRIM(un.TIPO_VIA)) + ' ' + LTRIM(RTRIM(un.DIRECCION)) 
                      + ' ' + LTRIM(RTRIM(ISNULL(un.NUMERO1, N'') + ' ' + ISNULL(un.NUMERO2, N''))) AS direccion, un.EDIFICIO, 
                      un.CODIGO_PROVINCIA + un.DISTRITO_POSTAL AS codigo_postal, un.CONTRATO, pr.DESCRIPCION AS provincia, pbl.DESCRIPCION AS poblacion, 
                      un.APARATO, un.TIPO_SERVICIO,
                          (SELECT     COUNT(*) AS Expr1
                            FROM          dbo.BITSAT_ACTIVIDAD_MATERIAL
                            WHERE      (CODIGO_PDA = a.CODIGO_PDA) AND (ID = a.ID)) AS materiales, av.CODIGO_ACTIVIDAD_IS
FROM         dbo.BITSAT_ACTIVIDAD AS a  with (nolock) LEFT OUTER JOIN
                      dbo.BITSAT_COMPAÑIA AS co  with (nolock) ON a.codigo_compañia = co.codigo_compañia LEFT OUTER JOIN
                      dbo.BITSAT_CENTRO AS ce  with (nolock) ON a.codigo_compañia = ce.codigo_compañia AND a.CODIGO_CENTRO = ce.CODIGO_CENTRO LEFT OUTER JOIN
                      dbo.BITSAT_USUARIO AS u  with (nolock) ON a.codigo_compañia = u.codigo_compañia AND a.CODIGO_USUARIO = u.CODIGO LEFT OUTER JOIN
                      dbo.BITSAT_ACTIVIDAD_AVISO AS av  with (nolock) ON a.CODIGO_PDA = av.CODIGO_PDA AND a.ID = av.ID LEFT OUTER JOIN
                      dbo.BITSAT_AVISOS AS un  with (nolock) ON a.ID_AVISO = un.CLAVE_AVISO LEFT OUTER JOIN
                      dbo.BITSAT_ACTIVIDAD_FIRMA AS f  with (nolock) ON a.CODIGO_PDA = f.CODIGO_PDA AND a.ID = f.ID LEFT OUTER JOIN
                      dbo.BITSAT_CALIDAD_FIRMANTE AS cal  with (nolock) ON f.CALIDAD_FIRMANTE = cal.CODIGO LEFT OUTER JOIN
                      dbo.BITSAT_PROVINCIA AS pr  with (nolock) ON un.codigo_compañia = pr.codigo_compañia AND un.CODIGO_PROVINCIA = pr.CODIGO_PROVINCIA LEFT OUTER JOIN
                      dbo.BITSAT_POBLACION AS pbl  with (nolock) ON un.CODIGO_PROVINCIA = pbl.CODIGO_PROVINCIA AND 
                      un.CODIGO_POBLACION = pbl.CODIGO_POBLACION LEFT OUTER JOIN
                      dbo.V_W_CODIGOS_AVERIA AS codav ON a.codigo_compañia = codav.codigo_compañia AND av.CODIGO_AVERIA = codav.codigo
WHERE     (ISNULL(a.ID_AVISO, N'') <> '') AND (av.TIPO_ACCION = 5)

GO
/****** Object:  View [dbo].[V_EXPORTACION_FIRMANTES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[V_EXPORTACION_FIRMANTES]
AS

	SELECT
		A.COMPAÑIA_ACTIVIDAD AS CODCIA,
		U.CONTRATO, U.CODIGO_UNIDAD AS UNIDAD,
		U.NIF,
		AF.NOMBRE_FIRMANTE,
		CF.CODIGO AS CALIDAD_FIRMANTE,
		AF.DIRECCION_CORREO_ELECTRONICO,
		'ES' AS PAIS,
		AF.PISO_FIRMANTE,
		AF.TELEFONO_FIRMANTE,
		FORMAT(A.ID, 'yyyyMMdd HH:mm:ss') AS ID,
		A.CODIGO_PDA
	FROM
		BITSAT_ACTIVIDAD_FIRMA AF
		INNER JOIN BITSAT_CALIDAD_FIRMANTE CF ON CF.CODIGO = AF.CALIDAD_FIRMANTE
		INNER JOIN BITSAT_ACTIVIDAD A ON A.ID = AF.ID AND A.CODIGO_PDA = AF.CODIGO_PDA
		INNER JOIN BITSAT_UNIDAD U ON U.CODIGO_COMPAÑIA = A.COMPAÑIA_ACTIVIDAD AND
			U.CODIGO_CENTRO = A.CENTRO_ACTIVIDAD AND U.CODIGO_UNIDAD = A.CODIGO_UNIDAD
	WHERE
		AF.AUTORIZADO = 1 AND
		AF.NUEVO_FIRMANTE = 1 AND
		AF.FECHA_EXPORTACION IS NULL AND
		ISNULL(AF.DIRECCION_CORREO_ELECTRONICO, '') <> '' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%otis.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%otiselevator.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%enor.es%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensores-enor.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%acresa.cat%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensorsacresa.cat%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensoresaspe.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensores-aspe.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%portis.es%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%puertasportis.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensores-hemen.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensoreshemen.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%limarlift.es%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensores-express.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%expresselevadores.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensorespertor.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%pertor.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%lv3.es%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%cruxentedelma.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensorscruxentedelma.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%montestallon.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensoresmontestallon.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensoresintegra.es%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensoresingar.com%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%ascensores-ingar.com%' AND
		DIRECCION_CORREO_ELECTRONICO LIKE '[a-z,0-9,_,-]%@[a-z,0-9,_,-]%.[a-z][a-z]%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '%@%@%' AND
		DIRECCION_CORREO_ELECTRONICO NOT LIKE '% %'

GO
/****** Object:  Table [dbo].[BITSAT_TIPO_MATERIAL]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_MATERIAL](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_MATERIAL] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_INFORME_SERVICIO_AVISOS_MATERIALES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_W_INFORME_SERVICIO_AVISOS_MATERIALES]
AS
SELECT     a.CODIGO_PDA, a.ID, m.FECHA, TM.DESCRIPCION AS TIPO_MATERIAL, m.MATERIAL, m.CANTIDAD
FROM         dbo.BITSAT_ACTIVIDAD AS a  with (nolock) INNER JOIN
                      dbo.BITSAT_ACTIVIDAD_MATERIAL AS m  with (nolock) ON a.CODIGO_PDA = m.CODIGO_PDA AND a.ID = m.ID LEFT OUTER JOIN
                      dbo.BITSAT_TIPO_MATERIAL AS TM  with (nolock) ON m.TIPO_MATERIAL = TM.CODIGO

GO
/****** Object:  Table [dbo].[BITSAT_MOBILE_DIAGNOSTIC]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_MOBILE_DIAGNOSTIC](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[FECHA] [datetime] NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[CODIGO_USUARIO] [nvarchar](15) NULL,
	[SUPERVISOR_REAL] [nvarchar](15) NULL,
	[SUPERVISOR_TRABAJO] [nvarchar](15) NULL,
	[VALIDACION] [datetime] NULL,
	[GPS_DISP] [int] NULL,
	[GPS_SAT] [int] NULL,
	[X] [nvarchar](10) NULL,
	[Y] [nvarchar](10) NULL,
	[MEMORIA] [bigint] NULL,
	[MEMORIA_LIBRE] [bigint] NULL,
	[DISCO] [bigint] NULL,
	[DISCO_LIBRE] [bigint] NULL,
	[BLOQUEOS] [bigint] NULL,
	[CAMBIO_HORA] [bit] NULL,
	[ERRORES_CONEXION] [bigint] NULL,
	[ULT_ACT] [nvarchar](15) NULL,
	[ULT_UNIDAD] [nvarchar](15) NULL,
	[ERROR] [nvarchar](50) NULL,
	[ERROR_DESC] [nvarchar](1025) NULL,
	[ERROR_DATE] [datetime] NULL,
	[VERSION_PROGRAMA] [nvarchar](12) NULL,
	[BATERIA_ESTADO] [int] NULL,
	[BATERIA_NIVEL] [int] NULL,
	[FECHA_GRABACION] [datetime] NULL,
	[FECHA_CONEXION] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_MOBILE_DIAGNOSTIC] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_ULTIMA_POSICION_TECNICO_FECHA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[V_W_ULTIMA_POSICION_TECNICO_FECHA]
AS
select v.*
from 
( select * from dbo.bitsat_Historico_Tecnico with (nolock)	
  where tipo_mensaje='20' and  (ISNULL(longitud, '') <> '') AND (ISNULL(latitud, '') <> '') ) as v 
inner join
(
SELECT    codigo_compañia,  DriverNr,fecha,  MAX(timespam) AS rest1
FROM      dbo.bitsat_Historico_Tecnico with (nolock)
WHERE     tipo_mensaje='20' and (ISNULL(longitud, '') <> '') AND (ISNULL(latitud, '') <> '') and latitud<>'40,439998'
GROUP BY  codigo_compañia,DriverNr, fecha
) t on v.codigo_compañia=t.codigo_compañia  and v.drivernr=t.drivernr and v.fecha=t.fecha AND v.timespam=t.rest1


GO
/****** Object:  View [dbo].[V_W_UBICACION_TECNICOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[V_W_UBICACION_TECNICOS]
AS
SELECT TOP (100) 	PERCENT 
	tec.rank, 
	tec.CIA AS codigo_compañia, 
	tec.LOGE AS codigo_centro, 
	tec.CODIGO, 
	tec.Tecnico AS Nombre, 
	d.FECHA, 
	ISNULL(LEFT(v.HORA, 2) + ':' + SUBSTRING(v.HORA, 3, 2), N'') AS hora, 
	ISNULL(REPLACE(v.LONGITUD, ',', '.'), N'') AS Longitud, 
	ISNULL(REPLACE(v.LATITUD, ',', '.'), N'') AS Latitud, 
    CASE 
		WHEN d .fecha <> CONVERT(nvarchar, getdate(), 112) THEN tec.color 
		ELSE CASE 
				WHEN isnull(v.hora, '') = '' THEN '#00CCFF' 
				WHEN datediff(mi, LEFT(v.hora, 2) + ':' + substring(v.hora, 3, 2), ltrim(datepart(hh, getdate())) + ':' + ltrim(datepart(mi, getdate()))) > isnull(p.valorparam, 60) 
                      THEN '#FF0000' 
				ELSE '#00FF00' 
			END 
		END AS color, 

	isnull((	select count(*) as averias_pendientes
		from bitsat_avisos a 
		where a.codigo_compañia=tec.cia 
		and a.codigo_Tecnico=tec.codigo
		and a.estado_aviso_bitsat in ( 1,2,6,8)
		and a.fecha_recepcion>= isnull((select valorparam from bitsat_parametros where nombreparam='FechaDesdeAvisos'),'20140215')
	),0) as AVERIAS_PENDIENTES,
	--v.AVERIAS_PENDIENTES, 
	v.AVERIAS_REALIZADAS, 
	v.INSPECCIONES_REALIZADAS, 
    v.ORDERNR AS Ultima_Unidad, 
    isnull(r.nrep,0) AS reparaciones_realizadas, 
    'N' AS Indicador_Montaje, 
    '' AS Fase_Montaje, 
isnull((
select top 1 isnull(st_servicio,'') as st_servicio
			from bitsat_historico_tecnico with (nolock)
			where tipo_mensaje<>20  				
				and isnull(st_servicio,'')<>''
				and drivernr=tec.codigo
				and fecha=d.fecha
				and ISNULL(LEFT(HORA, 2) + ':' + SUBSTRING(HORA, 3, 2), N'')<=ISNULL(LEFT(v.HORA, 2) + ':' + SUBSTRING(v.HORA, 3, 2), N'')
			order by fecha, hora desc)
,'') as ultima_actividad,
--	isnull(ua.st_servicio,'') as ultima_actividad,
	CASE WHEN d.fecha <> CONVERT(nvarchar, getdate(), 112) THEN 
		100
	ELSE 
		ISNULL(GpsInfo.GPS_DISP, 100) 
	END AS GpsActivo
	 
FROM (
	SELECT 
		valorparam
    FROM dbo.BITSAT_PARAMETROS with (nolock)
	WHERE (nombreparam = 'MinutosAlarmaPosicion')) AS p CROSS JOIN
		(
			SELECT DISTINCT 
				FECHA
			FROM dbo.BITSAT_HISTORICO_TECNICO AS BITSAT_HISTORICO_TECNICO_2 with (nolock)
			WHERE (TIPO_MENSAJE = '20') 
				--AND (ISNULL(LONGITUD, N'') <> '') 
				--AND (ISNULL(LATITUD, N'') <> '')
			UNION
			SELECT 
				CONVERT(nvarchar, GETDATE(), 112) AS fecha
		) AS d 
	CROSS JOIN 
(
SELECT   top 100 percent  d.codigo_web as rank, u.codigo_compañia AS CIA, 
u.CODIGO_CENTRO AS LOGE, u.CODIGO, u.NOMBRE AS Tecnico,
u.color
FROM         dbo.BITSAT_USUARIO u with (nolock)
left join bitsat_usuario_datos d with (nolock) on u.codigo_compañia=d.codigo_compañia and u.codigo=d.codigo
WHERE     (GRUPO_USUARIO = 'TECNICO') and u.disp=1
order by rank
) as tec
--dbo.V_W_TECNICOS AS tec 
	left join 
		(select convert(nvarchar,id,112) as fecha, codigo_pda, count(*) as nrep 
				from 
		bitsat_actividad_reparacion with (nolock)
		group by convert(nvarchar,id,112),codigo_pda
		) r on tec.codigo=r.codigo_pda and d.fecha=r.fecha
	LEFT OUTER JOIN	dbo.V_W_ULTIMA_POSICION_TECNICO_FECHA AS v 
		ON v.codigo_compañia = tec.CIA 
		AND v.DRIVERNR = tec.CODIGO 
		AND v.FECHA = d.FECHA
	LEFT JOIN 	
		(SELECT diags.CODIGO_PDA, diags.GPS_DISP
			FROM (
				SELECT CODIGO_PDA, MAX(FECHA) AS fechaMax
				FROM BITSAT_MOBILE_DIAGNOSTIC  with (nolock)
				GROUP BY CODIGO_PDA
			) AS filtred INNER JOIN BITSAT_MOBILE_DIAGNOSTIC diags  with (nolock)
				ON filtred.CODIGO_PDA = diags.CODIGO_PDA AND filtred.fechaMax = diags.FECHA
		) AS GpsInfo
		ON GpsInfo.CODIGO_PDA = tec.CODIGO
--left join 
--    (
--			select drivernr,fecha,max(ISNULL(LEFT(HORA, 2) + ':' + SUBSTRING(HORA, 3, 2), N'') ) as hora , max(isnull(st_servicio,'') ) as st_servicio
--			from bitsat_historico_tecnico with (nolock)
--			where tipo_mensaje<>20 
--				and isnull(st_servicio,'')<>''
--
--			group by drivernr,fecha
--	) ua on ua.drivernr=tec.codigo 
--				and d.fecha=ua.fecha
--				and not isnull(v.hora,'')=''
--				and ISNULL(LEFT(v.HORA, 2) + ':' + SUBSTRING(v.HORA, 3, 2), N'')<=ua.hora
GROUP BY 
	tec.rank, 
	tec.CIA, 
	tec.LOGE,
	tec.CODIGO, 
	tec.Tecnico, 
	d.FECHA, 
	ISNULL(LEFT(v.HORA, 2) + ':' + SUBSTRING(v.HORA, 3, 2), N''), 
	ISNULL(REPLACE(v.LONGITUD, ',', '.'), N''), 
	ISNULL(REPLACE(v.LATITUD, ',', '.'), N''), 
	CASE WHEN 
		d .fecha <> CONVERT(nvarchar, getdate(), 112) THEN tec.color 
	ELSE CASE 
		WHEN isnull(v.hora, '') = '' THEN '#00CCFF' 
		WHEN datediff(mi, LEFT(v.hora, 2) + ':' + substring(v.hora, 3, 2), ltrim(datepart(hh, getdate())) + ':' + ltrim(datepart(mi, getdate())))> isnull(p.valorparam, 60) 
			THEN '#FF0000' 
		ELSE '#00FF00' 
		END 
	END, 
	v.AVERIAS_PENDIENTES, 
	v.AVERIAS_REALIZADAS, 
	v.INSPECCIONES_REALIZADAS, 
    v.ORDERNR,
	isnull(r.nrep,0),
	--isnull(ua.st_servicio,''),
CASE WHEN d.fecha <> CONVERT(nvarchar, getdate(), 112) THEN 
		100
	ELSE 
		ISNULL(GpsInfo.GPS_DISP, 100) 
	END 
ORDER BY 	tec.rank


GO
/****** Object:  View [dbo].[vvStrMapsViewUbicacionTecnicos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vvStrMapsViewUbicacionTecnicos]
AS
SELECT
	isnull(row_number() OVER (ORDER BY (SELECT     1)), 0) AS IdRowNumber, 
	[rank] AS codigo_tecnico, 
	[codigo_compañia], 
	[codigo_centro], 
	[CODIGO], [Nombre], 
	CONVERT(DATETIME, Fecha, 102) AS Fecha, 
	[hora], 
	[Longitud], 
	[Latitud], 
	[color], 
	[averias_pendientes], 
	[averias_realizadas],
	[inspecciones_realizadas], 
	[Ultima_Unidad], 
	[reparaciones_realizadas], 
	[Indicador_Montaje], 
	[Fase_Montaje], 
	[Ultima_actividad],
	GpsActivo
FROM [V_W_UBICACION_TECNICOS]

GO
/****** Object:  Table [dbo].[BITSAT_IMP_DEF_DATE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_IMP_DEF_DATE](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[ULTIMA_SINCRONIZACION] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_IMP_DEF_DATE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_CENTRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vvGlobalBitsatCompanyia]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vvGlobalBitsatCompanyia]
AS
	SELECT isnull(row_number() over (order by (select 1)),0) as IdRowNumber,*
	FROM (
	SELECT	DISTINCT 
			cia.CODIGO_COMPAÑIA,cia.DESCRIPCION 
	FROM	BITSAT_COMPAÑIA cia with (nolock)
		INNER JOIN BITSAT_CENTRO c with (nolock) on cia.codigo_compañia=c.codigo_compañia 
	WHERE	cia.codigo_compañia IN 
							(SELECT codigo_compañia 
							 FROM BITSAT_IMP_DEF_DATE with (nolock)) 
		AND cia.disp=1 
		AND c.disp=1) f
GO
/****** Object:  Table [dbo].[BITSAT_MOTIVOS_NO_FACTURACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_MOTIVOS_NO_FACTURACION](
	[CODIGO_MOTIVO] [int] NOT NULL,
	[DESCRIPCION_MOTIVO] [nvarchar](100) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_MOTIVOS_NO_FACTURACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_MOTIVO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_SERVICIO_MANTENIMIENTO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_SERVICIO_MANTENIMIENTO](
	[CODIGO_TIPO_SERVICIO] [nvarchar](3) NOT NULL,
	[CODIGO_OPERACION_MANTENIMIENTO] [nvarchar](3) NULL,
 CONSTRAINT [PK_BITSAT_TIPO_SERVICIO_MANTENIMIENTO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_TIPO_SERVICIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_MOTIVOS_NO_INSPECCION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_MOTIVOS_NO_INSPECCION](
	[CODIGO] [nvarchar](16) NOT NULL,
	[DESCRIPCION] [nvarchar](1024) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_MOTIVOS_NO_INSPECCION] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_MOTIVO_AVISO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_MOTIVO_AVISO](
	[CODIGO] [nvarchar](15) NOT NULL,
	[DESCRIPCION] [nvarchar](128) NULL,
	[TIPO] [int] NOT NULL,
	[DISP] [bit] NULL,
	[IND_MOTIVO_RETRASO] [char](1) NULL,
	[REMOTO] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_MOTIVO_AVISO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[TIPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_AVISO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_AVISO](
	[CODIGO] [nchar](1) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[PRIORIDAD] [nvarchar](15) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_AVISO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_PBI_Facturacion_Avisos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vw_PBI_Facturacion_Avisos]
AS

	SELECT
		ISNULL(act.COMPAÑIA_ACTIVIDAD, act.CODIGO_COMPAÑIA) AS IDCIA,
		com.DESCRIPCION AS "Compañía",
		ISNULL(act.CENTRO_ACTIVIDAD, act.CODIGO_CENTRO) AS LOGE,
		cen.DESCRIPCION AS "Centro",
		usu.CODIGO AS "Código Técnico",
		(CASE WHEN usu.APELLIDOS IS NULL THEN usu.NOMBRE ELSE usu.APELLIDOS + ', ' + usu.NOMBRE END) AS "Técnico",
		act.ESTADO AS "Estado",
		act.CODIGO_ACTIVIDAD AS "Código Actividad",
		(t_actividad.DESCRIPCION + (case when isnull(act.tipo_jornada,'N') = 'A' then ' Guardia A' when isnull(act.tipo_jornada,'N') = 'B' then ' Guardia B'
		when isnull(act.tipo_jornada,'N') = 'D' 
		then ' Disponiblidad' else '' end) ) AS "Actividad",
		act.CODIGO_UNIDAD AS "Código Unidad",
		act.CODIGO_PDA AS "Código PDA",
		act.ID AS "ID Actividad",
		ISNULL(EST_AVI.DESCRIPCION_CORTA,'') AS "Estado Avería",
		ISNULL(MAVI.DESCRIPCION, '') AS "Motivo Devolución",
		r.codigo_ruta as Ruta,
		ISNULL(r.descripcion, r.codigo_ruta) as "Descripción Ruta",
		ISNULL(act.tipo_jornada, 'N') AS "Tipo Jornada",
		CASE WHEN act.CODIGO_UNIDAD = '99999' AND ISNULL(act.COMPAÑIA_ACTIVIDAD,act.CODIGO_COMPAÑIA) = '57' THEN 'T9999' ELSE (
			CASE WHEN ISNULL(act.COMPAÑIA_ACTIVIDAD,act.CODIGO_COMPAÑIA) = '57' THEN 'P' ELSE 'O' END +
			SUBSTRING(CASE WHEN ISNULL(cm.CODIGO_OPERACION_MANTENIMIENTO, '') in ('','PO','OP') THEN 'OC' ELSE ISNULL(cm.CODIGO_OPERACION_MANTENIMIENTO, '') END, 2, 10)
			+ 'A'
			+	CASE   
					WHEN ISNULL(cm.CODIGO_OPERACION_MANTENIMIENTO, '') = 'OC' AND (mat.MATERIAL IS NOT NULL OR ISNULL(avi.FACTURABLE, '') = 'T') THEN 'T'
					WHEN ISNULL(cm.CODIGO_OPERACION_MANTENIMIENTO, '') = 'OC' AND ((ISNULL(avi.TIPO_MOTIVO_ACCION, 0) = 1 AND UPPER(TMA.DESCRIPCION) LIKE '%EXPERTO REMOTO%') OR UPPER(TA.DESCRIPCION) LIKE 'VREMOTO%')  THEN 'V'   
					WHEN ISNULL(cm.CODIGO_OPERACION_MANTENIMIENTO, '') <> 'OC' AND ISNULL(avi.FACTURABLE, '') = 'T' THEN 'T'
					WHEN ISNULL(cm.CODIGO_OPERACION_MANTENIMIENTO, '') <> 'OC' AND ISNULL(avi.FACTURABLE, '') <> 'T' AND mat.MATERIAL IS NOT NULL THEN 'R'
					WHEN ISNULL(cm.CODIGO_OPERACION_MANTENIMIENTO, '') <> 'OC' AND ((ISNULL(avi.TIPO_MOTIVO_ACCION, 0) = 1 AND UPPER(TMA.DESCRIPCION) LIKE '%EXPERTO REMOTO%') OR UPPER(TA.DESCRIPCION) LIKE 'VREMOTO%')  THEN 'V'   
					ELSE ''
				END  
			+ CASE WHEN ISNULL(act.COMPENSABLE, 0) = 1 THEN 'C' ELSE '' END
			+ CASE WHEN ISNULL(act.SERVICIO_FIJO, 0) = 1 THEN 'P' ELSE '' END
		)END AS "Código Aviso",
		ISNULL(AVI.TIPO_AVISO, '') AS "Tipo Aviso",
		CASE WHEN ISNULL(fac.AUTOFACTURABLE, '') = 'S' THEN 'S' ELSE '' END AS Autofacturable,
		CASE
				WHEN fac.ESTADO_AUTOFACTURACION = 1 THEN 'Facturable'
				WHEN fac.ESTADO_AUTOFACTURACION = 2 THEN 'No Facturado'
				WHEN fac.ESTADO_AUTOFACTURACION = 3 THEN 'Facturado'
				WHEN fac.ESTADO_AUTOFACTURACION = 4 THEN 'En Revisión'
				ELSE ''
		END AS "Estado AutoFacturación",
		ISNULL(fac.OBSERVACIONES_AUTOFACTURACION,'') AS "Observaciones",
		ISNULL(MOTNOFACT.DESCRIPCION_MOTIVO,'') AS "Motivo de Bloqueo",
		ISNULL(AVI.DESCRIPCION_AVERIA, '') AS "Descripción Aviso",
		ISNULL(U.TIPO_SERVICIO,'') + ' - ' + ISNULL(cm.CODIGO_OPERACION_MANTENIMIENTO,'')  AS "Tipo Contrato",
		CASE WHEN fir.firma is null THEN 'NO FIRMADA' else 'FIRMADA' END as "Firma",
		ISNULL(AVI.CODIGO_AVERIA, '') AS "Código Avería",
		AVERIA.DESAVERIA AS "Descripción Avería",
		ISNULL(act.CODIGO_SUPERVISOR,'') AS "Código Supervisor",
		ISNULL((CASE WHEN SUP.APELLIDOS IS NULL THEN SUP.NOMBRE ELSE SUP.APELLIDOS + ', ' + SUP.NOMBRE END),'') AS "Supervisor",
		ISNULL(AVI.INSPECCION, '') AS "Inspección",
		ISNULL(MOTIVOS_NO_INSPECCION.DESCRIPCION, '') AS "Motivo No Inspección",
		CASE
			WHEN AVI.TIEMPO_LLEGADA IS NULL OR CONVERT(DATE, AVI.TIEMPO_LLEGADA) = '19000101' THEN ''
			ELSE CONVERT(VARCHAR, AVI.TIEMPO_LLEGADA, 120)
		END AS "Tiempo Llegada",
		UPPER(ISNULL(MOTIVO_RETRASO.DESCRIPCION,'')) AS "Motivo Retraso",
		ISNULL(avi.CODIGO_ACTIVIDAD_IS, '') AS "Número Informe Servicio",
		act.ID AS "FechaV"
	FROM BITSAT_ACTIVIDAD act WITH (NOLOCK)
		   INNER JOIN BITSAT_TIPO_ACTIVIDAD AS t_actividad	WITH (NOLOCK) ON act.CODIGO_ACTIVIDAD = t_actividad.CODIGO
		   INNER JOIN BITSAT_COMPAÑIA com WITH (NOLOCK) ON ISNULL(act.COMPAÑIA_ACTIVIDAD, act.CODIGO_COMPAÑIA) = com.CODIGO_COMPAÑIA
		   INNER JOIN BITSAT_CENTRO cen WITH (NOLOCK) ON ISNULL(act.COMPAÑIA_ACTIVIDAD, act.CODIGO_COMPAÑIA) = cen.CODIGO_COMPAÑIA AND ISNULL(act.CENTRO_ACTIVIDAD, act.CODIGO_CENTRO) = cen.CODIGO_CENTRO
		   INNER JOIN BITSAT_ACTIVIDAD_AVISO avi WITH (NOLOCK) ON act.CODIGO_PDA = avi.CODIGO_PDA AND act.ID = avi.ID
		   INNER JOIN BITSAT_USUARIO usu WITH (NOLOCK) ON usu.CODIGO = act.CODIGO_USUARIO AND usu.CODIGO_COMPAÑIA = act.CODIGO_COMPAÑIA
		   LEFT JOIN BITSAT_ESTADO_AVERIA EST_AVI WITH (NOLOCK) ON avi.TIPO_ACCION = EST_AVI.CODIGO_ESTADO
		   LEFT JOIN bitsat_unidad u WITH (NOLOCK) ON act.compañia_actividad = u.codigo_compañia AND act.codigo_unidad = u.codigo_unidad
		   LEFT JOIN BITSAT_RUTAS r WITH (NOLOCK) ON r.disp=1 and r.codigo_compañia =  usu.CODIGO_COMPAÑIA and u.IDRUTA = r.ID
		   LEFT JOIN BITSAT_RUTAS_TECNICO rt WITH (NOLOCK) ON r.ID = rt.IDRUTA and  rt.CODIGO_TECNICO = usu.codigo
		   OUTER APPLY (SELECT TOP 1 * FROM BITSAT_ACTIVIDAD_AUTOFACTURACION fac WITH (NOLOCK) WHERE act.CODIGO_PDA = fac.CODIGO_PDA AND act.ID = fac.ID ORDER BY fac.FECHA_HORA DESC) AS fac
		   LEFT JOIN BITSAT_TIPO_SERVICIO_MANTENIMIENTO cm  WITH (NOLOCK) ON u.TIPO_SERVICIO = cm.CODIGO_TIPO_SERVICIO
		   LEFT JOIN BITSAT_TIPO_MOTIVO_AVISO AS TMA WITH (NOLOCK) ON avi.TIPO_MOTIVO_ACCION = TMA.TIPO AND avi.CODIGO_MOTIVO_ACCION = TMA.CODIGO 
		   LEFT JOIN BITSAT_TIPO_AVISO AS TA WITH (NOLOCK) ON avi.TIPO_AVISO = TA.CODIGO
		   OUTER APPLY (SELECT TOP 1 * FROM BITSAT_ACTIVIDAD_MATERIAL mate WITH (NOLOCK) WHERE act.CODIGO_PDA = mate.CODIGO_PDA AND act.ID = mate.ID ORDER BY mate.FECHA DESC) AS mat
		   LEFT JOIN BITSAT_AVISOS AS AVISOS WITH (NOLOCK) ON act.ID_AVISO = AVISOS.CLAVE_AVISO AND act.CODIGO_USUARIO = AVISOS.CODIGO_TECNICO
		   LEFT JOIN BITSAT_TIPO_MOTIVO_AVISO AS MAVI WITH (NOLOCK) ON AVISOS.MOTIVO_DEVOLUCION = MAVI.CODIGO AND MAVI.TIPO = 1
		   LEFT JOIN BITSAT_MOTIVOS_NO_FACTURACION AS MOTNOFACT WITH (NOLOCK) ON MOTNOFACT.CODIGO_MOTIVO = fac.MOTIVO_NO_FACTURACION
		   LEFT JOIN BITSAT_ACTIVIDAD_FIRMA AS fir	WITH (NOLOCK) ON fir.CODIGO_PDA = act.CODIGO_PDA AND fir.ID = (CASE WHEN act.[ID_ACTIVIDAD_FIRMA] IS NOT NULL THEN act.[ID_ACTIVIDAD_FIRMA] ELSE act.[ID] END)
		   OUTER APPLY (SELECT top 1
					ISNULL(RTRIM(Elemento.DESCRIPCION_GENERICO), '') + ' '
					+ ISNULL(RTRIM(Elemento.DESCRIPCION_ELEMENTO), '') + ' '
					+ ISNULL(RTRIM(Tipo.DESCRIPCION), '') as DESAVERIA
				FROM [dbo].[BITSAT_CODIGO_AVISO_ELEMENTO] AS Elemento
				LEFT JOIN [dbo].[BITSAT_CODIGO_AVISO_TIPO] AS Tipo
					ON Elemento.CODIGO_COMPAÑIA = Tipo.CODIGO_COMPAÑIA
					AND Elemento.CODIGO_GENERICO = Tipo.CODIGO_GENERICO
				WHERE 
					Elemento.CODIGO_COMPAÑIA = act.COMPAÑIA_ACTIVIDAD
				AND 
					(
						LEN(avi.CODIGO_AVERIA) < 1 OR Elemento.CODIGO_GENERICO = SUBSTRING(avi.CODIGO_AVERIA, 1, 2)
					)
				AND
					(
						LEN(avi.CODIGO_AVERIA) < 3 OR  Elemento.CODIGO_ELEMENTO = SUBSTRING(avi.CODIGO_AVERIA, 3, 2)
					)
				AND
					(
						LEN(avi.CODIGO_AVERIA) < 5 OR Tipo.CODIGO_TIPO = SUBSTRING(avi.CODIGO_AVERIA, 5, 2))) AS AVERIA
			LEFT JOIN BITSAT_USUARIO SUP WITH (NOLOCK) ON SUP.CODIGO = act.CODIGO_SUPERVISOR AND SUP.CODIGO_COMPAÑIA = act.CODIGO_COMPAÑIA
			LEFT JOIN BITSAT_MOTIVOS_NO_INSPECCION AS MOTIVOS_NO_INSPECCION WITH (NOLOCK) ON MOTIVOS_NO_INSPECCION.CODIGO = AVI.MOTIVO_NO_INSPECCION
			LEFT JOIN BITSAT_TIPO_MOTIVO_AVISO AS MOTIVO_RETRASO WITH (NOLOCK) ON MOTIVO_RETRASO.CODIGO = AVI.MOTIVO_RETRASO AND ISNULL(MOTIVO_RETRASO.IND_MOTIVO_RETRASO,'') = 'X'  
	WHERE act.CODIGO_ACTIVIDAD = 'AVI' and act.ESTADO = 'AVFIN' 
	--AND YEAR(ISNULL(act.FECHA_FIN_CB, act.FECHA_FIN)) >= 2022
	AND ISNULL(act.FECHA_FIN_CB, act.FECHA_FIN) >= GETDATE()-365




GO
/****** Object:  Table [dbo].[BITSAT_MOBILE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_MOBILE](
	[CODIGO] [nvarchar](15) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[TIPO] [nvarchar](10) NULL,
	[NUM_TELEFONO] [nvarchar](9) NULL,
	[NUM_SERIE] [nvarchar](26) NULL,
	[DISP] [bit] NULL,
	[BLOQUEADA] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_MOBILE] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_ESTADISTICA_USUARIOS_POR_TIPO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[V_W_ESTADISTICA_USUARIOS_POR_TIPO]
AS
Select top 100 percent year(isnull(a.Fecha_inicio,a.fecha_fin)) año, 
month(isnull(a.Fecha_inicio,a.fecha_fin)) mes, 
case when year(isnull(a.Fecha_inicio,a.fecha_fin)) >=2017 then m.tipo else 'ES400' end tipo ,
count(distinct a.codigo_usuario) as usuarios, 
sum(case when a.estado='INSFIN' then 1 else 0 end) as inspecciones_finalizadas,
sum(case when a.estado='AVFIN' or a.estado='AVDEV' or a.estado='ATRANS' then 1 else 0 end ) as averias_cerradas , 
sum(case when a.estado='ORDFIN'  then 1 else 0 end ) as reparaciones_cerradas ,
sum(case when a.estado='INSFIN' and not ID_ACTIVIDAD_FIRMA is null  then 1 else 0 end) as inspecciones_multiples_finalizadas,
sum(case when not f.firma is null then 1 else 0 end ) as total_firmas,
sum(case when not fotos.total   is null then 1 else 0 end ) as total_fotos
from bitsat_Actividad a with (nolock)
inner join BITSAT_MOBILE m with (nolock) on a.codigo_pda = m.CODIGO 
left join bitsat_actividad_firma f with (nolock) on a.codigo_pda=f.codigo_pda and a.id=f.id
left join (Select codigo_pda, id, count(*) as total from BITSAT_ACTIVIDAD_FOTOGRAFIA with (nolock) group by codigo_pda, id ) as fotos on m.codigo= fotos.codigo_pda and a.codigo_pda=fotos.codigo_pda and a.id=fotos.id 
where year(isnull(a.Fecha_inicio,fecha_fin))>='2012'
and (year(isnull(a.Fecha_inicio,fecha_fin)) <year(getdate()) or  
     (year(isnull(a.Fecha_inicio,fecha_fin)) =year(getdate()) and  month(isnull(a.Fecha_inicio,fecha_fin))<=month(Getdate())))
group by year(isnull(a.Fecha_inicio,fecha_fin)),month(isnull(a.Fecha_inicio,fecha_fin)),
case when year(isnull(a.Fecha_inicio,a.fecha_fin)) >=2017 then m.tipo else 'ES400' end 
order by year(isnull(a.Fecha_inicio,fecha_fin)),month(isnull(a.Fecha_inicio,fecha_fin)),
case when year(isnull(a.Fecha_inicio,a.fecha_fin)) >=2017 then m.tipo else 'ES400' end 


GO
/****** Object:  View [dbo].[vvStrDetalleActividadViewRutasRealizadas_BAK]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vvStrDetalleActividadViewRutasRealizadas_BAK]
AS
SELECT top 100 percent isnull(row_number() over (order by (select 1)),0) as IdRowNumber, 
	usr.CODIGO_COMPAÑIA,
	usr.CODIGO_CENTRO,
	corp.DESCRIPCION AS COMPAÑIA, 
	cnt.DESCRIPCION AS CENTRO, 
	usr.CODIGO AS CODIGO_TECNICO,
	(CASE WHEN usr.APELLIDOS IS NULL THEN usr.NOMBRE ELSE usr.APELLIDOS + ', ' + usr.NOMBRE END) AS TECNICO,
	ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) AS FECHA_INICIO,
	ISNULL(t.time_end, ACTI.FECHA_FIN) as FECHA_FIN,
	ISNULL(t.time_end, ACTI.FECHA_FIN) - ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) as Tiempo_trabajo,
	ACTI.estado AS ESTADO,
	case when codigo_Actividad='INI' OR codigo_Actividad='FIN' then
	 null  -- convert(datetime,'01/01/1900',103)
	ELSE
		ISNULL(t.time_ini, ACTI.FECHA_INICIO) 
	END AS FECHA_INICIO_CB,

	case when codigo_Actividad='INI' OR codigo_Actividad='FIN' then
	 Null --convert(datetime,'01/01/1900',103)
	ELSE
		case when (ACTI.FECHA_FIN_CB > t.time_ini and Acti.FeCHA_FIN_CB<t.time_end) or t.time_ini>Acti.Fecha_Fin_CB then
   			ACTI.FECHA_FIN_CB
		else
			Null  --convert(datetime,'01/01/1900',103)
		end
	END AS FECHA_FIN_CB,

	ACTI.CODIGO_ACTIVIDAD,
	(t_actividad.DESCRIPCION + (case when isnull(T.tipo_jornada,acti.tipo_jornada)='A' then ' Guardia A' when isnull(t.tipo_jornada, acti.tipo_jornada)='B' then ' Guardia B' when isnull(T.tipo_jornada, acti.tipo_jornada)='D' 
then ' Disponiblidad' else '' end) ) AS ACTIVIDAD,    
    
	ISNULL(CONVERT(NVARCHAR(128),T.CODIGO_MONTAJE),isnull(CONVERT(NVARCHAR(128),t.codigo_unidad),		
    ISNULL(CONVERT(NVARCHAR(128),ACTI.CODIGO_UNIDAD),	  
    (SELECT TOP 1 MONT.UNIDAD
	FROM bitsat_actividad_montaje_unidades un with (nolock)
    LEFT JOIN BITSAT_GRUPO_MONTAJE_ASIGNACION ASIG with (nolock) ON 
    UN.CODIGO_COMPAÑIA=ASIG.CODIGO_COMPAÑIA AND UN.CODIGO_MONTAJE=ASIG.CODIGO_MONTAJE
	LEFT JOIN 
	(SELECT codigo_compañia, codigo_grupo FROM BITSAT_GRUPO_MONTAJE with (nolock) WHERE CODIGO_GRUPO<>1) G               
	ON ASIG.CODIGO_COMPAÑIA=G.CODIGO_COMPAÑIA  AND ASIG.CODIGO_GRUPO=G.CODIGO_GRUPO 
	LEFT JOIN BITSAT_MONTAJE MONT with (nolock) ON MONT.CODIGO = UN.CODIGO_MONTAJE
	WHERE ACTI.CODIGO_pda=UN.CODIGO_pda AND ACTI.ID=UN.ID)))) AS CODIGO_UNIDAD,
	(
	SELECT TOP 1 G.DESCRIPCION AS GRUPO_MONTAJE	
	fROM bitsat_actividad_montaje_unidades un  with (nolock) 
    LEFT JOIN BITSAT_GRUPO_MONTAJE_ASIGNACION ASIG  with (nolock) ON 
    UN.CODIGO_COMPAÑIA=ASIG.CODIGO_COMPAÑIA AND UN.CODIGO_MONTAJE=ASIG.CODIGO_MONTAJE
	LEFT JOIN 
	(SELECT codigo_compañia, codigo_grupo, descripcion FROM BITSAT_GRUPO_MONTAJE  with (nolock) WHERE CODIGO_GRUPO<>1) G               
	ON ASIG.CODIGO_COMPAÑIA=G.CODIGO_COMPAÑIA  AND ASIG.CODIGO_GRUPO=G.CODIGO_GRUPO 
	WHERE ACTI.CODIGO_pda=UN.CODIGO_pda AND ACTI.ID=UN.ID) AS GRUPO_MONTAJE,
-- FIN ETIC		
	
	ACTI.CODIGO_PDA, 
	ACTI.ID AS IDACTIVIDAD, 
		
	ISNULL(
	case when codigo_Actividad='INI' then
	 convert(datetime,'01/01/1900',103)
	else
	  [dbo].[TiempoDesplazamientoActividad](acti.codigo_pda, acti.id, 	ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)))
	end ,convert(datetime,'01/01/1900',103))as tiempo_desplazamiento,

	case when (ACTI.CODIGO_ACTIVIDAD='INSPP' AND ACTI.estado = 'INSFIN') 
		or (ACTI.CODIGO_ACTIVIDAD='AVI' AND ACTI.estado = 'AVFIN')  
		or (ACTI.CODIGO_ACTIVIDAD='ORDTC' AND ACTI.estado = 'ORDFIN')
		or (ACTI.CODIGO_ACTIVIDAD='ORDTA' AND ACTI.estado = 'ORDFIN')  
				THEN
					CASE WHEN fir.firma is null THEN 1	else 0 end 
				ELSE
					0
				END	as inspeccion_no_firmada,

	
	(SELECT COUNT(*) FROM BITSAT_EXP_DATA WITH (NOLOCK) WHERE    (ACTIVIDAD LIKE 'COORD%') and codigo_pda=ACTI.codigo_pda and id_actividad=ACTI.id) as indicador_coordenadas,

	(select count(*) from bitsat_actividad_montaje_problema p WITH (NOLOCK) 
		where p.codigo_pda=ACTI.codigo_pda and p.id=ACTI.id and isnull(p.resuelto,0)=0 and
		p.fecha between  ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) and ISNULL(t.time_end, ACTI.FECHA_FIN)) as problemas_montaje,
	
	case 
		when exists (select * from bitsat_actividad_material m WITH (NOLOCK) 
					 where m.codigo_pda=ACTI.codigo_pda and m.id=ACTI.id and m.tipo_material='3' and 
					 m.fecha between  ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) and ISNULL(t.time_end, ACTI.FECHA_FIN) ) then 2 
		when exists (select * from bitsat_actividad_material m WITH (NOLOCK) where m.codigo_pda=ACTI.codigo_pda and m.id=ACTI.id and m.tipo_material<>'3' and 
					 m.fecha between  ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) and ISNULL(t.time_end, ACTI.FECHA_FIN)) then 1
		else 0
	end as indicador_material,

	(select count(*) from bitsat_actividad_fotografia f WITH (NOLOCK) where f.codigo_pda=ACTI.codigo_pda and f.id=ACTI.id and 
					 f.fecha between  ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) and ISNULL(t.time_end, ACTI.FECHA_FIN) ) as indicador_fotografia,

	ISNULL(EST_AVI.DESCRIPCION_CORTA,'') AS ESTADO_AVERIA,
	r.codigo_ruta as RUTA,
	isnull(r.descripcion, r.codigo_ruta) as RUTA_DESCRIPCION,
	isnull(t.tipo_jornada,isnull(acti.tipo_jornada,'N')) as TIPOJORNADA
	-- *** E-TIC 20180814 ESM: Añadimos columnas para autofacturacion ***
	, isnull((select case when (ACTI.CODIGO_ACTIVIDAD='AVI' AND ACTI.estado = 'AVFIN')  
		or (ACTI.CODIGO_ACTIVIDAD='ORDTC' AND ACTI.estado = 'ORDFIN')		
				THEN
					ISNULL((select dbo.ObtenerCodigoActividad(ACTI.CODIGO_PDA, ACTI.ID)),'')
				ELSE
					''
				END),'') as CODIGO_AVISO	
	,ISNULL( AVI.TIPO_AVISO ,'') as TIPOAVISO	
	,isnull((SELECT TOP 1 AUTOFACTURABLE FROM BITSAT_ACTIVIDAD_AUTOFACTURACION where acti.ID = ID and acti.CODIGO_PDA = CODIGO_PDA order by fecha_hora desc),'') as AUTOFACTURABLE
	,(SELECT TOP 1 ESTADO_AUTOFACTURACION  FROM BITSAT_ACTIVIDAD_AUTOFACTURACION where acti.ID = ID and acti.CODIGO_PDA = CODIGO_PDA order by fecha_hora desc) as ESTADO_AUTOFACTURACION,
	-- *** E-TIC 20180814 ESM: Fin cambios ***
	ISNULL(AVI.INSPECCION, '') as INSPECCION
FROM
	BITSAT_USUARIO AS usr WITH (NOLOCK)
	INNER JOIN BITSAT_COMPAÑIA AS corp WITH (NOLOCK) ON corp.CODIGO_COMPAÑIA = usr.CODIGO_COMPAÑIA
	INNER JOIN BITSAT_CENTRO AS cnt WITH (NOLOCK) ON cnt.CODIGO_COMPAÑIA = usr.CODIGO_COMPAÑIA AND cnt.CODIGO_CENTRO = usr.CODIGO_CENTRO 
	INNER JOIN BITSAT_ACTIVIDAD AS ACTI WITH (NOLOCK) ON usr.CODIGO = ACTI.CODIGO_USUARIO AND usr.CODIGO_COMPAÑIA = ACTI.CODIGO_COMPAÑIA
	INNER JOIN BITSAT_TIPO_ACTIVIDAD AS t_actividad	WITH (NOLOCK) ON ACTI.CODIGO_ACTIVIDAD=t_actividad.CODIGO 
	LEFT JOIN BITSAT_ACTIVIDAD_AVISO AS AVI WITH (NOLOCK) ON ACTI.CODIGO_PDA=AVI.CODIGO_PDA AND ACTI.ID=AVI.ID
	LEFT JOIN BITSAT_ESTADO_AVERIA EST_AVI WITH (NOLOCK) ON AVI.TIPO_ACCION=EST_AVI.CODIGO_ESTADO
	LEFT JOIN BITSAT_ACTIVIDAD_FIRMA AS fir	WITH (NOLOCK) ON fir.CODIGO_PDA = ACTI.CODIGO_PDA AND fir.ID = (CASE WHEN ACTI.[ID_ACTIVIDAD_FIRMA] IS NOT NULL THEN ACTI.[ID_ACTIVIDAD_FIRMA] ELSE ACTI.[ID] END)
	LEFT JOIN BITSAT_ACTIVIDAD_TIEMPO t WITH (NOLOCK) on ACTI.codigo_pda=t.codigo_pda and ACTI.id=t.id
	left join bitsat_unidad u with (nolock) on acti.codigo_compañia=u.codigo_compañia and acti.codigo_unidad=u.codigo_unidad
	left join bitsat_ruta r WITH (NOLOCK) on r.disp=1 and r.codigo_compañia =  usr.CODIGO_COMPAÑIA and r.idbitrutas = usr.codigo and u.codigo_ruta=r.codigo_ruta
	-- *** E-TIC 20180814 ESM: Cambios para autofacturacion ***
	--left join BITSAT_ACTIVIDAD_AUTOFACTURACION autofac with (nolock) on acti.ID = autofac.ID and acti.CODIGO_PDA = autofac.CODIGO_PDA 
	--	AND autofac.FECHA_HORA = (
	--	(SELECT TOP (1) FECHA_HORA FROM BITSAT_ACTIVIDAD_AUTOFACTURACION where acti.ID = autofac.ID AND acti.CODIGO_PDA = autofac.CODIGO_PDA 
	--	ORDER BY FECHA_HORA 	)
	--	)
	--left join (SELECT DISTINCT CODIGO_PDA, ID, AUTOFACTURABLE FROM BITSAT_ACTIVIDAD_AUTOFACTURACION with (nolock)  ) autofac on acti.ID = autofac.ID and acti.CODIGO_PDA = autofac.CODIGO_PDA 
	-- *** E-TIC 20180814 ESM: Fin cambios *** 
	
	WHERE	ACTI.CODIGO_ACTIVIDAD <> 'ANO'
GO
/****** Object:  View [dbo].[V_W_RUTAS_ACTIVAS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[V_W_RUTAS_ACTIVAS]
as
select r.codigo_compañia
, substring(codigo_Centro, 1, 6) as codigo_Centro
, codigo_ruta
, descripcion
, case when CODIGO_SUPERVISOR is null then null 
	 when CODIGO_SUPERVISOR = '000001' then '000001'
	 when left(CODIGO_SUPERVISOR,1)='0' then substring(CODIGO_SUPERVISOR,2,len(CODIGO_SUPERVISOR)-1) 
	 else CODIGO_SUPERVISOR end 
as supervisor
, CODIGO_TECNICO as IDBitRutas 
from BITSAT_RUTAS r
	left join BITSAT_RUTAS_TECNICO rt on r.ID = rt.IDRUTA
where disp=1

GO
/****** Object:  View [dbo].[V_W_USUARIOS_NO_REP]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_W_USUARIOS_NO_REP]
as
select * from BITSAT_USUARIO with (nolock) where DISP=1 
union 
select * from BITSAT_USUARIO k with (nolock) where disp=0 and not exists (Select t.codigo from BITSAT_USUARIO t where t.DISP=1 AND t.CODIGO=K.CODIGO)

	
GO
/****** Object:  Table [dbo].[BITSAT_HOJA_TIEMPOS_LINEA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_HOJA_TIEMPOS_LINEA](
	[codigo_hoja] [bigint] NOT NULL,
	[codigo_linea] [int] NOT NULL,
	[dia] [int] NULL,
	[hora_inicio] [datetime] NULL,
	[hora_fin] [datetime] NULL,
	[tiempo_pausa] [datetime] NULL,
	[horas_dentro_jornada] [float] NULL,
	[horas_fuera_jornada] [float] NULL,
	[horas_normales] [float] NULL,
	[horas_no_contabilizar] [float] NULL,
	[horas_extras] [float] NULL,
	[horas_viaje_dentro] [float] NULL,
	[horas_viaje_fuera] [float] NULL,
	[horas_con_plus] [float] NULL,
	[gastos] [float] NULL,
	[kilometros] [float] NULL,
	[codigo_gasto] [nvarchar](64) NULL,
	[cargo_codigo_actividad] [nvarchar](7) NULL,
	[cargo_numero_unidad] [nvarchar](5) NULL,
	[numero] [int] NULL,
	[component] [nvarchar](5) NULL,
	[descripcion] [nvarchar](256) NULL,
	[horas_xr] [datetime] NULL,
	[numero_xr] [nvarchar](7) NULL,
	[tipo_linea] [int] NULL,
	[estado_linea] [int] NULL,
	[confirmado_supervisor] [bit] NULL,
	[fecha_confirmado_supervisor] [datetime] NULL,
	[confirmado_delegado] [bit] NULL,
	[fecha_confirmado_delegado] [datetime] NULL,
	[CODIGO_PDA] [nvarchar](15) NULL,
	[ID] [datetime] NULL,
	[CODIGO_ACTIVIDAD] [nvarchar](7) NULL,
	[CODIGO_IDENTIFICADOR] [nchar](1) NULL,
	[registro_manual] [bit] NOT NULL,
	[codigo_supervisor_actividad] [nvarchar](15) NULL,
	[fecha_fin_jornada] [datetime] NULL,
	[fecha_inicio_jornada] [datetime] NULL,
	[fecha_modificacion] [datetime] NULL,
	[codigo_usuario_modificacion] [nvarchar](15) NULL,
	[motivo_modificacion] [nvarchar](max) NULL,
	[ind_exportar] [bit] NULL,
	[fecha_exportacion] [datetime] NULL,
	[fichero_exportacion] [nvarchar](64) NULL,
	[apunte_financiero] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_HORA_TIEMPOS_LINEA] PRIMARY KEY CLUSTERED 
(
	[codigo_hoja] ASC,
	[codigo_linea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_HOJA_TIEMPOS_CABECERA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_HOJA_TIEMPOS_CABECERA](
	[codigo_hoja] [bigint] NOT NULL,
	[codigo_compañia] [nvarchar](2) NULL,
	[año] [nvarchar](4) NULL,
	[mes] [nvarchar](2) NULL,
	[codigo_tecnico] [nvarchar](15) NULL,
	[codigo_centro] [nvarchar](8) NULL,
	[codigo_supervisor] [nvarchar](15) NULL,
	[fecha_desde] [datetime] NULL,
	[fecha_hasta] [datetime] NULL,
	[total_horas] [float] NULL,
	[estado_hoja] [int] NULL,
	[ind_exportar] [bit] NULL,
	[fecha_exportacion] [datetime] NULL,
	[fichero_exportacion] [nvarchar](64) NULL,
	[registro_manual] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_CABECERA_HOJA_TIEMPOS] PRIMARY KEY CLUSTERED 
(
	[codigo_hoja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[TMP_DIFERENCIAS_HORAS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create view [dbo].[TMP_DIFERENCIAS_HORAS]
as
select teorico.*, hdt.calculado, teorico.horas-hdt.calculado as diff -- , 'exec dbo.prccalchojadetiempos '''+CODIGO_COMPAÑIA+''','''+CODIGO_CENTRO +''','''+SUPERIOR +''','''+teorico.codigo_tecnico +''','''+convert(nvarchar,fecha,112)+''','''+tipo_jornada +'''' as query
from
(
select DATEPART(year,fecha) as año, DATEPART(month,fecha) as mes, DATEPART(day,fecha) as dia, codigo_compañia, codigo_centro, superior, codigo as codigo_tecnico, fecha ,'N' as tipo_jornada, compañia, centro , NOMBRE , horas 
from
(
select u.codigo_compañia, u.CODIGO_CENTRO , u.SUPERIOR ,u.CODIGO , f.fecha  , co.DESCRIPCION as compañia,cen.DESCRIPCION as centro, u.nombre, dbo.tblObtenerHorasTecnicoDia(u.codigo_compañia, u.codigo_centro, u.codigo, f.fecha) as horas
from 
LastDates(8) f cross join BITSAT_USUARIO u 
inner join BITSAT_COMPAÑIA co on u.CODIGO_COMPAÑIA = co.CODIGO_COMPAÑIA 
inner join BITSAT_CENTRO cen on u.CODIGO_COMPAÑIA =cen.CODIGO_COMPAÑIA and u.CODIGO_CENTRO =cen.CODIGO_CENTRO 
where u.GRUPO_USUARIO = 'TECNICO' 
and exists 
(
select * from BITSAT_ACTIVIDAD a left join BITSAT_ACTIVIDAD_TIEMPO t on a.CODIGO_PDA =t.CODIGO_PDA and a.ID=t.id and a.ID>='20181001' and a.codigo_pda= u.codigo and f.fecha between CONVERT(datetime, convert(nvarchar, isnull(t.time_ini, isnull(a.fecha_inicio, a.fecha_fin)),103),103) and CONVERT(datetime, convert(nvarchar, isnull(t.time_end, isnull(a.fecha_fin, a.fecha_inicio)),103),103)
)
) t
where horas>0
) teorico
inner join 
(
select c.año, c.mes, c.codigo_tecnico , l.dia, SUM(l.horas_normales ) as calculado
from BITSAT_HOJA_TIEMPOS_CABECERA c
inner join BITSAT_HOJA_TIEMPOS_LINEA  l on c.codigo_hoja =l.codigo_hoja 
where c.año='2018' and c.mes in (11)
group by  c.año, c.mes, c.codigo_tecnico , l.dia
) hdt
on teorico.codigo_tecnico = hdt.codigo_tecnico and teorico.año=hdt.año and teorico.mes=hdt.mes and teorico.dia=hdt.dia 
where abs(teorico.horas-hdt.calculado ) >= 0.01
--and not exists (select * from BITSAT_HOJA_TIEMPOS_LINEA l inner join BITSAT_HOJA_TIEMPOS_CABECERA c on l.codigo_hoja = c.codigo_hoja 
--and l.confirmado_supervisor =1 and l.dia=teorico.dia and c.codigo_tecnico =teorico.codigo_tecnico and c.año=teorico.año and c.mes=teorico.mes )
--order by CODIGO_COMPAÑIA , CODIGO_CENTRO, teorico.codigo_tecnico , teorico.dia



------ Actividades DIA	
	--select *, dateadd(MI, (60.0 * a1.horas_previstas), a1.inicio) as fin_previsto
	--from
	--(
	--select a.codigo_pda, a.id, a.codigo_actividad, a.MOTIVO_PAUSA , a.codigo_unidad, 
	--convert(Datetime,convert(nvarchar,isnull(t.time_ini, isnull(a.hora_inicio, a.hora_fin)) ,103),103) as ffecha_inicio,
	--isnull(t.time_ini, isnull(a.hora_inicio, a.hora_fin)) as inicio,
	--convert(Datetime,convert(nvarchar,isnull(t.time_end, isnull(a.hora_fin, a.hora_inicio)) ,103),103) as ffecha_fin,
	--isnull(t.time_end, isnull(a.hora_fin, a.hora_inicio)) as fin,
	--t.tipo_jornada as t_tipo_jornada,
	--isnull(t.TIPO_JORNADA , a.tipo_jornada) as tipo_jornada,
	--g.CANTIDAD_PACTADA , g.HORAS_PREVISTAS , g.IMPORTE_CONVENIO, A.AÑOMES , r.CODIGO_AVERIA 
	--from bitsat_actividad a left join bitsat_actividad_tiempo t on a.codigo_pda=t.codigo_pda and a.id=t.id
	--left join BITSAT_ACTIVIDAD_DATOS_GUARDIA g on a.codigo_pda = g.codigo_pda and a.id=g.id 
	--left join BITSAT_ACTIVIDAD_REPARACION r on a.codigo_pda=r.codigo_pda and a.id= r.id 
	--) a1
	--where a1.codigo_pda='177143' and '20181102' between ffecha_inicio and ffecha_fin 
	--ORDER BY INICIO, FIN

	
	--exec dbo.prccalchojadetiempos '32','13000000','177271','177143','20181102','N'
	--select l.* from BITSAT_HOJA_TIEMPOS_CABECERA c
	--inner join BITSAT_HOJA_TIEMPOS_LINEA l on c.codigo_hoja =l.codigo_hoja and c.codigo_tecnico ='177143' and c.año='2018' and c.mes='11' and l.dia='2'
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_GASTO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_GASTO](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[CODIGO_GASTO] [nvarchar](5) NULL,
	[IMPORTE] [real] NULL,
	[KM] [real] NULL,
 CONSTRAINT [PK_BITSAT_GASTO_ACTIVIDAD_USUARIO_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_PEGASO_GASTOS_FOTOGRAFIA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[V_PEGASO_GASTOS_FOTOGRAFIA]
AS

SELECT
	BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA,
	BITSAT_INTERFACE_GASTOS_PEGASO.ID,
	BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA,
	--BITSAT_ACTIVIDAD_FOTOGRAFIA.FOTOGRAFIA,
	CASE WHEN BITSAT_ACTIVIDAD.CODIGO_CENTRO LIKE '20%' THEN SUBSTRING(FOTOGRAFIA,1, CHARINDEX('_', FOTOGRAFIA)) + CONVERT(VARCHAR(4),YEAR(BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA)) 
	+ REPLICATE('0', 2 - LEN(CONVERT(VARCHAR(2),MONTH(BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA)))) + CONVERT(VARCHAR(2),MONTH(BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA))
	+ REPLICATE('0', 2 - LEN(CONVERT(VARCHAR(2),DAY(BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA)))) + CONVERT(VARCHAR(2),DAY(BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA))
	+ REPLICATE('0', 2 - LEN(CONVERT(VARCHAR(2),DATEPART(HOUR, DATEADD(HOUR,-1,BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA))))) + CONVERT(VARCHAR(2),DATEPART(HOUR, DATEADD(HOUR,-1,BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA)))
	+ REPLICATE('0', 2 - LEN(CONVERT(VARCHAR(2),DATEPART(MINUTE, BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA)))) + CONVERT(VARCHAR(2),DATEPART(MINUTE, BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA))
	+ REPLICATE('0', 2 - LEN(CONVERT(VARCHAR(2),DATEPART(SECOND, BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA)))) + CONVERT(VARCHAR(2),DATEPART(SECOND, BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA)) + '.jpg'

	ELSE BITSAT_ACTIVIDAD_FOTOGRAFIA.FOTOGRAFIA END AS FOTOGRAFIA
FROM 
	BITSAT_INTERFACE_GASTOS_PEGASO INNER JOIN
	BITSAT_ACTIVIDAD_GASTO ON BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA AND BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD_GASTO.ID AND
		BITSAT_INTERFACE_GASTOS_PEGASO.FECHA=BITSAT_ACTIVIDAD_GASTO.FECHA INNER JOIN
	BITSAT_ACTIVIDAD_FOTOGRAFIA ON BITSAT_ACTIVIDAD_GASTO.ID=BITSAT_ACTIVIDAD_FOTOGRAFIA.ID AND BITSAT_ACTIVIDAD_FOTOGRAFIA.TIPO_FOTOGRAFIA IN(1,3)
		AND BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA=BITSAT_ACTIVIDAD_FOTOGRAFIA.CODIGO_PDA INNER JOIN
	BITSAT_ACTIVIDAD ON BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA AND BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD.ID
	
WHERE 
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA_PROCESO IS NULL AND
	BITSAT_ACTIVIDAD_FOTOGRAFIA.FOTOGRAFIA IS NOT NULL

GO
/****** Object:  View [dbo].[V_W_ESTADISTICA_USUARIOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[V_W_ESTADISTICA_USUARIOS]
AS
Select top 100 percent year(isnull(a.Fecha_inicio,a.fecha_fin)) año, 
month(isnull(a.Fecha_inicio,a.fecha_fin)) mes, 
count(distinct a.codigo_usuario) as usuarios, 
sum(case when a.estado='INSFIN' then 1 else 0 end) as inspecciones_finalizadas,
sum(case when a.estado='AVFIN' or a.estado='AVDEV' or a.estado='ATRANS' then 1 else 0 end ) as averias_cerradas , 
sum(case when a.estado='ORDFIN'  then 1 else 0 end ) as reparaciones_cerradas ,
sum(case when a.estado='INSFIN' and not ID_ACTIVIDAD_FIRMA is null  then 1 else 0 end) as inspecciones_multiples_finalizadas,
sum(case when not f.firma is null then 1 else 0 end ) as total_firmas,
sum(case when not fotos.total   is null then 1 else 0 end ) as total_fotos
from bitsat_Actividad a with (nolock)
left join bitsat_actividad_firma f with (nolock) on a.codigo_pda=f.codigo_pda and a.id=f.id
left join (Select codigo_pda, id, count(*) as total from BITSAT_ACTIVIDAD_FOTOGRAFIA with (nolock) group by codigo_pda, id ) as fotos on a.codigo_pda=fotos.codigo_pda and a.id=fotos.id 
where year(isnull(a.Fecha_inicio,fecha_fin))>='2012'
and (year(isnull(a.Fecha_inicio,fecha_fin)) <year(getdate()) or  
     (year(isnull(a.Fecha_inicio,fecha_fin)) =year(getdate()) and  month(isnull(a.Fecha_inicio,fecha_fin))<=month(Getdate())))
group by year(isnull(a.Fecha_inicio,fecha_fin)),month(isnull(a.Fecha_inicio,fecha_fin))
order by year(isnull(a.Fecha_inicio,fecha_fin)),month(isnull(a.Fecha_inicio,fecha_fin))


GO
/****** Object:  Table [dbo].[FISS_RUTAS_DGR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_RUTAS_DGR](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[MES] [int] NOT NULL,
	[AÑO] [int] NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[IDRUTA] [int] NULL,
	[CODIGO_RUTA] [nvarchar](4) NULL,
	[CODIGO_TECNICO] [nvarchar](15) NOT NULL,
	[NOMBRE_TECNICO] [nvarchar](50) NULL,
	[CODIGO_SUPERVISOR] [nvarchar](15) NULL,
	[NOMBRE_SUPERVISOR] [nvarchar](50) NULL,
	[LOGE] [nvarchar](8) NULL,
	[NOMBRE_LOGE] [nvarchar](50) NULL,
	[TIPO_SERVICIO] [nvarchar](3) NULL,
	[ESTADO_UNIDAD] [nvarchar](15) NULL,
	[PESO_UNIDAD] [float] NULL,
 CONSTRAINT [PK_PBI_Rolling_Ruta] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_UNIDAD] ASC,
	[MES] ASC,
	[AÑO] ASC,
	[CODIGO_TECNICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_PBI_FISS_RUTAS_DGR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_PBI_FISS_RUTAS_DGR]
AS
SELECT [CODIGO_COMPAÑIA] IDCIA
      ,[MES]
      ,[AÑO]
      ,[CODIGO_UNIDAD] UNIDAD
      ,[CODIGO_RUTA] RUTA
      ,[CODIGO_TECNICO] TECNICO
      ,[NOMBRE_TECNICO]
      ,[CODIGO_SUPERVISOR] SUPERVISOR
      ,[NOMBRE_SUPERVISOR]
      ,[LOGE]
      ,[NOMBRE_LOGE]
      ,CASE
		WHEN TIPO_SERVICIO IN ('OM','OMP') THEN 'OM'
		WHEN TIPO_SERVICIO IN ('OC','L','POG') THEN 'OC'
		WHEN TIPO_SERVICIO IN ('OS') THEN 'OS' 
		ELSE TIPO_SERVICIO END
	  [TIPO_SERVICIO]
      ,[ESTADO_UNIDAD]
  FROM [dbo].[FISS_RUTAS_DGR]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_GASTO_DEF]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_GASTO_DEF](
	[COMPAÑIA] [nvarchar](2) NOT NULL,
	[AÑO] [nvarchar](4) NOT NULL,
	[MES] [nvarchar](2) NOT NULL,
	[CODIGO] [nvarchar](5) NOT NULL,
	[IMP_CT] [float] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_GASTO_DEF] PRIMARY KEY CLUSTERED 
(
	[COMPAÑIA] ASC,
	[AÑO] ASC,
	[MES] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_USUARIO_EXCEPCION_SALIDA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_USUARIO_EXCEPCION_SALIDA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_USUARIO] [nvarchar](15) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[IMPORTE] [float] NOT NULL,
	[FECHA_ALTA] [datetime] NOT NULL,
 CONSTRAINT [PK_BITSAT_USUARIO_EXCEPCION_SALIDA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_PEGASO_GASTOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[V_PEGASO_GASTOS]
AS

SELECT
	COMPAÑIA_ACTIVIDAD AS IdCia,
	CONVERT(NVARCHAR(2),SUBSTRING(CONVERT(VARCHAR,DATEPART(YEAR,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)),3,2)) AS Year,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Mes,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Dia,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_USUARIO))) AS IdEmpleado,
	'1' AS IdCentro,
	ISNULL(BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,BITSAT_ACTIVIDAD.CODIGO_CENTRO) AS Loge,
	
	--CONVERT(NVARCHAR(6),RTRIM(LTRIM(ISNULL(ISNULL(ISNULL(
	--	(CASE WHEN BITSAT_ACTIVIDAD.CODIGO_ACTIVIDAD='IMP' AND BITSAT_ACTIVIDAD.MOTIVO_PAUSA IN ('N','K','S') THEN ISNULL(MONT.SUPERVISOR_MONTAJE,BITSAT_USUARIO.SUPERIOR) ELSE
	--		(CASE WHEN ISNULL(BITSAT_RUTA.SUPERVISOR,'') = '000001' THEN NULL ELSE BITSAT_RUTA.SUPERVISOR END) END)
	--,(CASE WHEN BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR = '' THEN NULL ELSE BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR END)),BITSAT_USUARIO.SUPERIOR),'')))) AS IdSupervisor,

	CONVERT(NVARCHAR(6),RTRIM(LTRIM(ISNULL(ISNULL(ISNULL(
		(CASE WHEN BITSAT_ACTIVIDAD.CODIGO_ACTIVIDAD='IMP' AND BITSAT_ACTIVIDAD.MOTIVO_PAUSA IN ('N','K','S') THEN BITSAT_USUARIO.SUPERIOR ELSE
			(CASE WHEN ISNULL(BITSAT_RUTA.SUPERVISOR,'') = '000001' THEN NULL ELSE BITSAT_RUTA.SUPERVISOR END) END)
	,(CASE WHEN BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR = '' THEN NULL ELSE BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR END)),BITSAT_USUARIO.SUPERIOR),'')))) AS IdSupervisor,


	CONVERT(DECIMAL(9,2),ISNULL(BITSAT_ACTIVIDAD_GASTO.IMPORTE,0)) AS Gastos,
	CONVERT(NVARCHAR(2),BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO) AS CodGasto,
	CONVERT(VARCHAR(7),dbo.ObtenerCodigoActividad(BITSAT_ACTIVIDAD.CODIGO_PDA, BITSAT_ACTIVIDAD.ID)) AS CodActividad,
	ISNULL(BITSAT_ACTIVIDAD.CODIGO_UNIDAD,'') AS Concepto,
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA AS FechaAlta,
	CASE WHEN BITSAT_RUTA.SUPERVISOR IS NULL THEN '000001' ELSE NULL END AS IdSupFunciones,
	CASE WHEN BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO = '06' THEN CONVERT(nvarchar(7),BITSAT_ACTIVIDAD_GASTO.KM) ELSE NULL END AS Kilometraje,
	BITSAT_INTERFACE_GASTOS_PEGASO.ID,
	BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA,
	BITSAT_UNIDAD.CONTRATO,
	BITSAT_UNIDAD.NIF,
	CONVERT(VARCHAR(10),CASE WHEN ISNULL(BITSAT_UNIDAD.TIPO_CONTRATO,'99') = '99' THEN NULL ELSE BITSAT_UNIDAD.TIPO_CONTRATO END) AS TIPOCONTRATO
FROM 
	BITSAT_INTERFACE_GASTOS_PEGASO INNER JOIN
	BITSAT_ACTIVIDAD_GASTO ON BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA AND BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD_GASTO.ID AND
		BITSAT_INTERFACE_GASTOS_PEGASO.FECHA=BITSAT_ACTIVIDAD_GASTO.FECHA INNER JOIN
	BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_GASTO.ID=BITSAT_ACTIVIDAD.ID
	AND BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
	LEFT JOIN BITSAT_UNIDAD ON BITSAT_ACTIVIDAD.COMPAÑIA_ACTIVIDAD=BITSAT_UNIDAD.CODIGO_COMPAÑIA AND 
		BITSAT_ACTIVIDAD.CODIGO_UNIDAD=BITSAT_UNIDAD.CODIGO_UNIDAD
	LEFT JOIN (SELECT DISTINCT ID, CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, CODIGO_SUPERVISOR AS SUPERVISOR FROM BITSAT_RUTAS WHERE DISP=1)BITSAT_RUTA ON BITSAT_UNIDAD.IDRUTA = BITSAT_RUTA.ID
	LEFT JOIN BITSAT_USUARIO ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=BITSAT_USUARIO.CODIGO AND BITSAT_USUARIO.SUPERIOR IS NOT NULL AND BITSAT_USUARIO.DISP=1
	--LEFT JOIN (SELECT DISTINCT BITSAT_UNIDAD_SUPERVISOR_MONTAJE.CODIGO_COMPAÑIA, CODIGO_UNIDAD, 
	--			CASE WHEN ISNUMERIC(SUPERVISOR_MONTAJE) = 1 THEN CONVERT(NVARCHAR(6),CONVERT(INT,SUPERVISOR_MONTAJE)) ELSE  SUPERVISOR_MONTAJE END AS SUPERVISOR_MONTAJE
	--			FROM BITSAT_UNIDAD_SUPERVISOR_MONTAJE LEFT JOIN BITSAT_SUPERVISOR_MONTAJE 
	--				ON BITSAT_UNIDAD_SUPERVISOR_MONTAJE.SUPERVISOR_MONTAJE=BITSAT_SUPERVISOR_MONTAJE.CODIGO AND BITSAT_SUPERVISOR_MONTAJE.DISP=1  
	--			WHERE ISNULL(SUPERVISOR_MONTAJE,'') <> '' AND BITSAT_UNIDAD_SUPERVISOR_MONTAJE.DISP=1 
	--			--> SI EL SUPERVISOR ES DE INTEGRA, NO LO SACO (SE ASIGNA AL RESPONSABLE DEL TECNICO)
	--			AND ISNULL(BITSAT_SUPERVISOR_MONTAJE.CODIGO_COMPAÑIA,'') <> '56')MONT ON BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA=MONT.CODIGO_COMPAÑIA AND BITSAT_ACTIVIDAD.CODIGO_UNIDAD=MONT.CODIGO_UNIDAD AND 
	--	 BITSAT_ACTIVIDAD.CODIGO_ACTIVIDAD='IMP' AND BITSAT_ACTIVIDAD.MOTIVO_PAUSA IN ('N','K','S')
WHERE 
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA_PROCESO IS NULL AND BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO <> '15'
UNION ALL
SELECT
	COMPAÑIA_ACTIVIDAD AS IdCia,
	CONVERT(NVARCHAR(2),SUBSTRING(CONVERT(VARCHAR,DATEPART(YEAR,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)),3,2)) AS Year,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Mes,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Dia,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_USUARIO))) AS IdEmpleado,
	'1' AS IdCentro,
	ISNULL(BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,BITSAT_ACTIVIDAD.CODIGO_CENTRO) AS Loge,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(ISNULL(ISNULL(ISNULL((CASE WHEN ISNULL(BITSAT_RUTA.SUPERVISOR,'') = '000001' THEN NULL ELSE BITSAT_RUTA.SUPERVISOR END),(CASE WHEN BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR = '' THEN NULL ELSE BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR END)),BITSAT_USUARIO.SUPERIOR),'')))) AS IdSupervisor,

	CONVERT(DECIMAL(9,2),(CASE WHEN BITSAT_ACTIVIDAD_GASTO.IMPORTE > CONVERT(DECIMAL(9,2),(ISNULL(ISNULL(ISNULL(EXCEP.IMPORTE, IMP_SALIDAS.IMPORTE), CONVERT(FLOAT,BITSAT_ACTIVIDAD_GASTO.IMPORTE)),0)))
		THEN CONVERT(DECIMAL(9,2),((ISNULL(ISNULL(ISNULL(EXCEP.IMPORTE, IMP_SALIDAS.IMPORTE), CONVERT(FLOAT,BITSAT_ACTIVIDAD_GASTO.IMPORTE)),0))))
		ELSE BITSAT_ACTIVIDAD_GASTO.IMPORTE END)) AS Gastos,
	CONVERT(NVARCHAR(2),BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO) AS CodGasto,

	CONVERT(VARCHAR(7),dbo.ObtenerCodigoActividad(BITSAT_ACTIVIDAD.CODIGO_PDA, BITSAT_ACTIVIDAD.ID)) AS CodActividad,
	ISNULL(BITSAT_ACTIVIDAD.CODIGO_UNIDAD,'') AS Concepto,
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA AS FechaAlta,
	CASE WHEN BITSAT_RUTA.SUPERVISOR IS NULL THEN '000001' ELSE NULL END AS IdSupFunciones,
	NULL AS Kilometraje,
	BITSAT_INTERFACE_GASTOS_PEGASO.ID,
	BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA,
	BITSAT_UNIDAD.CONTRATO,
	BITSAT_UNIDAD.NIF,
	CONVERT(VARCHAR(10),CASE WHEN ISNULL(BITSAT_UNIDAD.TIPO_CONTRATO,'99') = '99' THEN NULL ELSE BITSAT_UNIDAD.TIPO_CONTRATO END) AS TIPOCONTRATO
FROM 
	BITSAT_INTERFACE_GASTOS_PEGASO INNER JOIN
	BITSAT_ACTIVIDAD_GASTO ON BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA AND BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD_GASTO.ID AND
		BITSAT_INTERFACE_GASTOS_PEGASO.FECHA=BITSAT_ACTIVIDAD_GASTO.FECHA INNER JOIN
	BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_GASTO.ID=BITSAT_ACTIVIDAD.ID
	AND BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
	LEFT JOIN BITSAT_UNIDAD ON BITSAT_ACTIVIDAD.COMPAÑIA_ACTIVIDAD=BITSAT_UNIDAD.CODIGO_COMPAÑIA AND 
		BITSAT_ACTIVIDAD.CODIGO_UNIDAD=BITSAT_UNIDAD.CODIGO_UNIDAD
	LEFT JOIN (SELECT DISTINCT ID, CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, CODIGO_SUPERVISOR AS SUPERVISOR FROM BITSAT_RUTAS WHERE DISP=1)BITSAT_RUTA ON BITSAT_UNIDAD.IDRUTA = BITSAT_RUTA.ID
	LEFT JOIN BITSAT_USUARIO ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=BITSAT_USUARIO.CODIGO AND BITSAT_USUARIO.SUPERIOR IS NOT NULL AND BITSAT_USUARIO.DISP=1
	LEFT JOIN BITSAT_USUARIO_EXCEPCION_SALIDA EXCEP ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=EXCEP.CODIGO_USUARIO AND BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA=EXCEP.CODIGO_COMPAÑIA AND BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD=EXCEP.CODIGO_CENTRO
	LEFT JOIN (SELECT MAX_YEAR.COMPAÑIA, MAX_YEAR.AÑO, MAX_MES.MES, DEF.IMP_CT AS IMPORTE  FROM
				(SELECT COMPAÑIA, MAX(AÑO) AS AÑO FROM BITSAT_TIPO_GASTO_DEF WHERE CODIGO='15' 
				GROUP BY COMPAÑIA)MAX_YEAR INNER JOIN 
				(SELECT COMPAÑIA, AÑO, MAX(MES) AS MES FROM BITSAT_TIPO_GASTO_DEF WHERE CODIGO='15' 
				GROUP BY COMPAÑIA, AÑO)MAX_MES ON MAX_YEAR.COMPAÑIA=MAX_MES.COMPAÑIA AND MAX_YEAR.AÑO=MAX_MES.AÑO
				INNER JOIN BITSAT_TIPO_GASTO_DEF DEF ON MAX_YEAR.COMPAÑIA=DEF.COMPAÑIA AND MAX_YEAR.AÑO=DEF.AÑO AND 
				MAX_MES.MES=DEF.MES AND DEF.CODIGO=15)IMP_SALIDAS
		ON BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA=IMP_SALIDAS.COMPAÑIA
WHERE 
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA_PROCESO IS NULL AND BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO = '15'
	AND BITSAT_ACTIVIDAD.CODIGO_ACTIVIDAD = 'AVI'

GO
/****** Object:  View [dbo].[vw_PBI_FISS_RUTAS_ROLLING_DGR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_PBI_FISS_RUTAS_ROLLING_DGR]
AS
SELECT 
	DT.AÑO ANNIO,
	DT.MES,
	DT.CODIGO_COMPAÑIA IDCIA,
	DT.CODIGO_RUTA RUTA,
	DT.LOGE + '00' LOGE,
	DT.CODIGO_SUPERVISOR SUPERVISOR,
	SUM(DT.OM) RollingOM,
	SUM(DT.OC) RollingOC,
	SUM(DT.OS) RollingOS,
	SUM(DT.TOTAL) Rolling
FROM
(
SELECT
	DATOS.AÑO
	,DATOS.MES
	,DATOS.CODIGO_COMPAÑIA
	,DATOS.CODIGO_RUTA
	,LEFT(DATOS.LOGE, 6) LOGE
	,DATOS.CODIGO_SUPERVISOR
	,DATOS.CODIGO_UNIDAD
	,CASE WHEN DATOS.TIPO_SERVICIO IN ('OM','OMP') THEN DATOS.PESO_UNIDAD ELSE 0 END OM
	,CASE WHEN DATOS.TIPO_SERVICIO IN ('OC','L','POG') THEN DATOS.PESO_UNIDAD ELSE 0 END OC
	,CASE WHEN DATOS.TIPO_SERVICIO = 'OS' THEN DATOS.PESO_UNIDAD ELSE 0 END OS
	,DATOS.PESO_UNIDAD TOTAL
	--,DATEDIFF(month, UNI.ALTAMANTENIMIENTO, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1)) MESES
FROM FISS_RUTAS_DGR DATOS
INNER JOIN BITSAT_UNIDAD UNI ON DATOS.CODIGO_COMPAÑIA = UNI.CODIGO_COMPAÑIA AND DATOS.CODIGO_UNIDAD = UNI.CODIGO_UNIDAD
WHERE DATOS.ESTADO_UNIDAD = 'Alta'
GROUP BY DATOS.AÑO
	,DATOS.MES
	,DATOS.CODIGO_COMPAÑIA
	,DATOS.CODIGO_RUTA
	,DATOS.CODIGO_UNIDAD
	,LEFT(DATOS.LOGE, 6)
	,DATOS.CODIGO_SUPERVISOR
	,DATOS.TIPO_SERVICIO
	,DATOS.PESO_UNIDAD
	--,DATEDIFF(month, UNI.ALTAMANTENIMIENTO, DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1))
) DT
GROUP BY 
	DT.AÑO,
	DT.MES,
	DT.CODIGO_COMPAÑIA,
	DT.CODIGO_RUTA,
	DT.LOGE,
	DT.CODIGO_SUPERVISOR

GO
/****** Object:  View [dbo].[vw_PBI_EficienciaMantenimiento_OLD]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_PBI_EficienciaMantenimiento_OLD]
AS

select 
codigo_compañia,compañia, codigo_Centro, centro, codigo_supervisor, supervisor, codigo_tecnico, tecnico, ruta, unidad, SUM([inspeccion prevista]) as previstas, sum([inspeccion realizada]) as realizadas, sum([inspeccion pendientes]) as pendientes
from
(
SELECT 
    cia.CODIGO_COMPAÑIA ,
	cia.descripcion AS Compañia, 
	centro.CODIGO_CENTRO ,
	centro.descripcion AS Centro, 
	sup.CODIGO as codigo_supervisor,
	RTRIM(sup.nombre+' ' + ISNULL(sup.apellidos ,'')) AS Supervisor, 
	tec.CODIGO as codigo_Tecnico,
	RTRIM(tec.nombre+' '+ ISNULL(tec.apellidos,'')) AS Tecnico, 
	r.CODIGO_RUTA AS Ruta, 
	u.codigo_unidad AS Unidad, 

	(case when (periodos.añomes+'01') < u.ALTAMANTENIMIENTO then
			0
		 else
			(case U.Periodo_visitas
                when 'M' then 1
                when 'Q' then 1
		When 'N' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,4,5,6,7,9,10,12) THEN 1
                        ELSE 0
                        END
		When 'B' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,5,7,9,11) THEN 1
                        ELSE 0
                        END
                when 'T' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,4 ,7,10) THEN 1
                        ELSE 0
                        END
                when 'C' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,5,9) THEN 1
                        ELSE 0
                        END
                when 'S' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,7 ) THEN 1
                        ELSE 0
                        END
                when 'A' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1 ) THEN 1
                        ELSE 0
                        END
                else 1        
			end  )
		END ) AS [Inspeccion Prevista],
        
        CASE WHEN a.id IS NULL THEN 0 ELSE 1 END AS [Inspeccion Realizada],
       (
	   case when (periodos.añomes+'01') < u.ALTAMANTENIMIENTO then
			0
		 else
	   case U.Periodo_visitas
                when 'M' then 1
                when 'Q' then 1
		When 'N' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,4,5,6,7,9,10,12) THEN 1
                        ELSE 0
                        END
		When 'B' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,5,7,9,11) THEN 1
                        ELSE 0
                        END
                when 'T' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,4 ,7,10) THEN 1
                        ELSE 0
                        END
                when 'C' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,5,9) THEN 1
                        ELSE 0
                        END
                when 'S' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,7 ) THEN 1
                        ELSE 0
                        END
                when 'A' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1 ) THEN 1
                        ELSE 0
                        END
                else 1        
        end END  ) - (CASE WHEN a.id IS NULL THEN 0 ELSE 1 END) AS [Inspeccion Pendientes],
		
	--convert(datetime,a.añomes+'01',102) as Añomes,
	isnull(a.fecha_fin, a.FECHA_FIN_CB) AS Fecha ,
	a.estado
FROM [fncTablaAñoMes](DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0),DATEADD(mm, DATEDIFF(mm, 0, DATEADD(MONTH,-1,GETDATE())) + 1, -1)) AS periodos  
	CROSS JOIN bitsat_ruta AS r  with (nolock) 
	INNER JOIN bitsat_compañia AS cia  with (nolock) ON r.codigo_compañia = cia.codigo_compañia 
	INNER JOIN bitsat_centro AS centro  with (nolock) ON r.codigo_compañia = centro.codigo_compañia AND SUBSTRING(centro.codigo_centro, 1, 6) = r.codigo_centro 
	INNER JOIN bitsat_usuario AS tec  with (nolock) ON r.codigo_compañia = tec.codigo_compañia AND r.idbitrutas = tec.codigo 
	INNER JOIN bitsat_usuario AS sup  with (nolock) ON tec.codigo_compañia = sup.codigo_compañia AND tec.superior = sup.codigo 
	INNER JOIN bitsat_unidad AS u  with (nolock) ON r.codigo_compañia = u.codigo_compañia AND CENTRO.CODIGO_CENTRO=U.CODIGO_CENTRO AND r.codigo_ruta = u.codigo_ruta and u.disp=1 and not u.altamantenimiento is null
	LEFT JOIN bitsat_tipo_servicio_mantenimiento AS srv  with (nolock) ON u.tipo_servicio = srv.codigo_tipo_servicio 
	LEFT JOIN bitsat_actividad AS a  with (nolock) ON a.codigo_actividad = 'INSPP' AND (a.estado = 'INSFIN' or a.estado='INSFNF')  AND a.codigo_compañia = u.codigo_compañia AND a.codigo_unidad = u.codigo_unidad AND a.añomes = periodos.añomes 
WHERE r.disp = 1 
	) k
	group by codigo_compañia, compañia, codigo_centro, centro, codigo_supervisor, supervisor, codigo_tecnico, tecnico, ruta, unidad


GO
/****** Object:  Table [dbo].[BITSAT_OFICINAS_PILOTO_RUTAS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_OFICINAS_PILOTO_RUTAS](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_OFICINA] [nvarchar](6) NOT NULL,
 CONSTRAINT [PK_BITSAT_OFICINAS_PILOTO_RUTAS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_OFICINA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_BITSAT_RUTAS_PILOTO_BCK]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[V_BITSAT_RUTAS_PILOTO_BCK]
AS
SELECT RUT.CODIGO_COMPAÑIA, SUBSTRING(RUT.CODIGO_CENTRO, 1, 6) AS CODIGO_CENTRO, RUT.CODIGO_RUTA, RUT.DESCRIPCION, RUT.CODIGO_SUPERVISOR AS SUPERVISOR, TEC.CODIGO_TECNICO AS IDBitRutas, RUT.DISP
	FROM BITSAT_RUTAS RUT INNER JOIN BITSAT_OFICINAS_PILOTO_RUTAS PIL ON RUT.CODIGO_COMPAÑIA = PIL.CODIGO_COMPAÑIA AND SUBSTRING(RUT.CODIGO_CENTRO, 1, 6) = PIL.CODIGO_OFICINA
	LEFT JOIN BITSAT_RUTAS_TECNICO TEC ON RUT.ID = TEC.IDRUTA
UNION ALL
SELECT RUT.CODIGO_COMPAÑIA, RUT.CODIGO_CENTRO, RUT.CODIGO_RUTA, rut.DESCRIPCION, RUT.SUPERVISOR, RUT.IDBitRutas, RUT.DISP
	FROM BITSAT_RUTA RUT LEFT JOIN BITSAT_OFICINAS_PILOTO_RUTAS PIL ON RUT.CODIGO_COMPAÑIA = PIL.CODIGO_COMPAÑIA AND RUT.CODIGO_CENTRO = PIL.CODIGO_OFICINA WHERE PIL.CODIGO_OFICINA IS NULL
GO
/****** Object:  View [dbo].[V_BS_Supervisores]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_BS_Supervisores]
AS
SELECT CODIGO_COMPAÑIA, CODIGO, NOMBRE, GRUPO_USUARIO FROM BITSAT_USUARIO WHERE GRUPO_USUARIO='SUPERVISOR' and DISP=1 AND ISNUMERIC(codigo) = 1
GO
/****** Object:  View [dbo].[vvStrDetalleActividadViewRutasRealizadas]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vvStrDetalleActividadViewRutasRealizadas]
AS
SELECT top 100 percent isnull(row_number() over (order by (select 1)),0) as IdRowNumber, 
	usr.CODIGO_COMPAÑIA,
	usr.CODIGO_CENTRO,
	corp.DESCRIPCION AS COMPAÑIA, 
	cnt.DESCRIPCION AS CENTRO, 
	usr.CODIGO AS CODIGO_TECNICO,
	(CASE WHEN usr.APELLIDOS IS NULL THEN usr.NOMBRE ELSE usr.APELLIDOS + ', ' + usr.NOMBRE END) AS TECNICO,
	ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) AS FECHA_INICIO,
	ISNULL(t.time_end, ACTI.FECHA_FIN) as FECHA_FIN,
	ISNULL(t.time_end, ACTI.FECHA_FIN) - ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) as Tiempo_trabajo,
	ACTI.estado AS ESTADO,
	case when codigo_Actividad='INI' OR codigo_Actividad='FIN' then
	 null  -- convert(datetime,'01/01/1900',103)
	ELSE
		ISNULL(t.time_ini, ACTI.FECHA_INICIO) 
	END AS FECHA_INICIO_CB,

	case when codigo_Actividad='INI' OR codigo_Actividad='FIN' then
	 Null --convert(datetime,'01/01/1900',103)
	ELSE
		case when (ACTI.FECHA_FIN_CB > t.time_ini and Acti.FeCHA_FIN_CB<t.time_end) or t.time_ini>Acti.Fecha_Fin_CB then
   			ACTI.FECHA_FIN_CB
		else
			Null  --convert(datetime,'01/01/1900',103)
		end
	END AS FECHA_FIN_CB,

	ACTI.CODIGO_ACTIVIDAD,
	(t_actividad.DESCRIPCION + (case when isnull(T.tipo_jornada,acti.tipo_jornada)='A' then ' Guardia A' when isnull(t.tipo_jornada, acti.tipo_jornada)='B' then ' Guardia B' when isnull(T.tipo_jornada, acti.tipo_jornada)='D' 
then ' Disponiblidad' else '' end) ) AS ACTIVIDAD,    
    
	ISNULL(CONVERT(NVARCHAR(128),T.CODIGO_MONTAJE),isnull(CONVERT(NVARCHAR(128),t.codigo_unidad),		
    ISNULL(CONVERT(NVARCHAR(128),ACTI.CODIGO_UNIDAD),	  
    (SELECT TOP 1 MONT.UNIDAD
	FROM bitsat_actividad_montaje_unidades un with (nolock)
    LEFT JOIN BITSAT_GRUPO_MONTAJE_ASIGNACION ASIG with (nolock) ON 
    UN.CODIGO_COMPAÑIA=ASIG.CODIGO_COMPAÑIA AND UN.CODIGO_MONTAJE=ASIG.CODIGO_MONTAJE
	LEFT JOIN 
	(SELECT codigo_compañia, codigo_grupo FROM BITSAT_GRUPO_MONTAJE with (nolock) WHERE CODIGO_GRUPO<>1) G               
	ON ASIG.CODIGO_COMPAÑIA=G.CODIGO_COMPAÑIA  AND ASIG.CODIGO_GRUPO=G.CODIGO_GRUPO 
	LEFT JOIN BITSAT_MONTAJE MONT with (nolock) ON MONT.CODIGO = UN.CODIGO_MONTAJE
	WHERE ACTI.CODIGO_pda=UN.CODIGO_pda AND ACTI.ID=UN.ID)))) AS CODIGO_UNIDAD,
	(
	SELECT TOP 1 G.DESCRIPCION AS GRUPO_MONTAJE	
	fROM bitsat_actividad_montaje_unidades un  with (nolock) 
    LEFT JOIN BITSAT_GRUPO_MONTAJE_ASIGNACION ASIG  with (nolock) ON 
    UN.CODIGO_COMPAÑIA=ASIG.CODIGO_COMPAÑIA AND UN.CODIGO_MONTAJE=ASIG.CODIGO_MONTAJE
	LEFT JOIN 
	(SELECT codigo_compañia, codigo_grupo, descripcion FROM BITSAT_GRUPO_MONTAJE  with (nolock) WHERE CODIGO_GRUPO<>1) G               
	ON ASIG.CODIGO_COMPAÑIA=G.CODIGO_COMPAÑIA  AND ASIG.CODIGO_GRUPO=G.CODIGO_GRUPO 
	WHERE ACTI.CODIGO_pda=UN.CODIGO_pda AND ACTI.ID=UN.ID) AS GRUPO_MONTAJE,
-- FIN ETIC		
	
	ACTI.CODIGO_PDA, 
	ACTI.ID AS IDACTIVIDAD, 
		
	ISNULL(
	case when codigo_Actividad='INI' then
	 convert(datetime,'01/01/1900',103)
	else
	  [dbo].[TiempoDesplazamientoActividad](acti.codigo_pda, acti.id, 	ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)))
	end ,convert(datetime,'01/01/1900',103))as tiempo_desplazamiento,

	case when (ACTI.CODIGO_ACTIVIDAD='INSPP' AND ACTI.estado = 'INSFIN') 
		or (ACTI.CODIGO_ACTIVIDAD='AVI' AND ACTI.estado = 'AVFIN')  
		or (ACTI.CODIGO_ACTIVIDAD='ORDTC' AND ACTI.estado = 'ORDFIN')
		or (ACTI.CODIGO_ACTIVIDAD='ORDTA' AND ACTI.estado = 'ORDFIN')  
				THEN
					CASE WHEN fir.firma is null THEN 1	else 0 end 
				ELSE
					0
				END	as inspeccion_no_firmada,

	
	(SELECT COUNT(*) FROM BITSAT_EXP_DATA WITH (NOLOCK) WHERE    (ACTIVIDAD LIKE 'COORD%') and codigo_pda=ACTI.codigo_pda and id_actividad=ACTI.id) as indicador_coordenadas,

	(select count(*) from bitsat_actividad_montaje_problema p WITH (NOLOCK) 
		where p.codigo_pda=ACTI.codigo_pda and p.id=ACTI.id and isnull(p.resuelto,0)=0 and
		p.fecha between  ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) and ISNULL(t.time_end, ACTI.FECHA_FIN)) as problemas_montaje,
	
	case 
		when exists (select * from bitsat_actividad_material m WITH (NOLOCK) 
					 where m.codigo_pda=ACTI.codigo_pda and m.id=ACTI.id and m.tipo_material='3' and 
					 m.fecha between  ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) and ISNULL(t.time_end, ACTI.FECHA_FIN) ) then 2 
		when exists (select * from bitsat_actividad_material m WITH (NOLOCK) where m.codigo_pda=ACTI.codigo_pda and m.id=ACTI.id and m.tipo_material<>'3' and 
					 m.fecha between  ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) and ISNULL(t.time_end, ACTI.FECHA_FIN)) then 1
		else 0
	end as indicador_material,

	(select count(*) from bitsat_actividad_fotografia f WITH (NOLOCK) where f.codigo_pda=ACTI.codigo_pda and f.id=ACTI.id and 
					 f.fecha between  ISNULL(t.time_ini, ISNULL(ACTI.FECHA_INICIO, ACTI.FECHA_FIN)) and ISNULL(t.time_end, ACTI.FECHA_FIN) ) as indicador_fotografia,

	ISNULL(EST_AVI.DESCRIPCION_CORTA,'') AS ESTADO_AVERIA,
	r.codigo_ruta as RUTA,
	isnull(r.descripcion, r.codigo_ruta) as RUTA_DESCRIPCION,
	isnull(t.tipo_jornada,isnull(acti.tipo_jornada,'N')) as TIPOJORNADA
	-- *** E-TIC 20180814 ESM: Añadimos columnas para autofacturacion ***
	, isnull((select case when (ACTI.CODIGO_ACTIVIDAD='AVI' AND ACTI.estado = 'AVFIN')  
		or (ACTI.CODIGO_ACTIVIDAD='ORDTC' AND ACTI.estado = 'ORDFIN')		
				THEN
					ISNULL((select dbo.ObtenerCodigoActividad(ACTI.CODIGO_PDA, ACTI.ID)),'')
				ELSE
					''
				END),'') as CODIGO_AVISO	
	,ISNULL( AVI.TIPO_AVISO ,'') as TIPOAVISO
	-- ETIC. FASE 2.2 TELL DE AVISOS
	,CASE
		WHEN CONVERT(DATE, AVI.TIEMPO_LLEGADA) = '19000101' THEN NULL
		ELSE AVI.TIEMPO_LLEGADA
	END AS TIEMPO_LLEGADA
	-- FIN FASE 2.2 TELL DE AVISOS
	,isnull((SELECT TOP 1 AUTOFACTURABLE FROM BITSAT_ACTIVIDAD_AUTOFACTURACION where acti.ID = ID and acti.CODIGO_PDA = CODIGO_PDA order by fecha_hora desc),'') as AUTOFACTURABLE
	,CASE
		WHEN (ACTI.CODIGO_ACTIVIDAD='AVI' AND ACTI.estado = 'AVFIN') THEN
			CASE
				WHEN t.time_end = (SELECT TOP 1 TIE.time_end FROM BITSAT_ACTIVIDAD_TIEMPO TIE WHERE TIE.ID = T.ID AND TIE.CODIGO_PDA = T.CODIGO_PDA ORDER BY TIE.time_end DESC) THEN
					(SELECT TOP 1 ESTADO_AUTOFACTURACION  FROM BITSAT_ACTIVIDAD_AUTOFACTURACION where acti.ID = ID and acti.CODIGO_PDA = CODIGO_PDA order by fecha_hora desc)
				ELSE
					-1
			END
		ELSE
			(SELECT TOP 1 ESTADO_AUTOFACTURACION  FROM BITSAT_ACTIVIDAD_AUTOFACTURACION where acti.ID = ID and acti.CODIGO_PDA = CODIGO_PDA order by fecha_hora desc)
	END as ESTADO_AUTOFACTURACION,
	-- *** E-TIC 20180814 ESM: Fin cambios ***
	ISNULL(AVI.INSPECCION, '') as INSPECCION
FROM
	BITSAT_USUARIO AS usr WITH (NOLOCK)
	INNER JOIN BITSAT_COMPAÑIA AS corp WITH (NOLOCK) ON corp.CODIGO_COMPAÑIA = usr.CODIGO_COMPAÑIA
	INNER JOIN BITSAT_CENTRO AS cnt WITH (NOLOCK) ON cnt.CODIGO_COMPAÑIA = usr.CODIGO_COMPAÑIA AND cnt.CODIGO_CENTRO = usr.CODIGO_CENTRO 
	INNER JOIN BITSAT_ACTIVIDAD AS ACTI WITH (NOLOCK) ON usr.CODIGO = ACTI.CODIGO_USUARIO AND usr.CODIGO_COMPAÑIA = ACTI.CODIGO_COMPAÑIA
	INNER JOIN BITSAT_TIPO_ACTIVIDAD AS t_actividad	WITH (NOLOCK) ON ACTI.CODIGO_ACTIVIDAD=t_actividad.CODIGO 
	LEFT JOIN BITSAT_ACTIVIDAD_AVISO AS AVI WITH (NOLOCK) ON ACTI.CODIGO_PDA=AVI.CODIGO_PDA AND ACTI.ID=AVI.ID
	LEFT JOIN BITSAT_ESTADO_AVERIA EST_AVI WITH (NOLOCK) ON AVI.TIPO_ACCION=EST_AVI.CODIGO_ESTADO
	LEFT JOIN BITSAT_ACTIVIDAD_FIRMA AS fir	WITH (NOLOCK) ON fir.CODIGO_PDA = ACTI.CODIGO_PDA AND fir.ID = (CASE WHEN ACTI.[ID_ACTIVIDAD_FIRMA] IS NOT NULL THEN ACTI.[ID_ACTIVIDAD_FIRMA] ELSE ACTI.[ID] END)
	LEFT JOIN BITSAT_ACTIVIDAD_TIEMPO t WITH (NOLOCK) on ACTI.codigo_pda=t.codigo_pda and ACTI.id=t.id
	left join bitsat_unidad u with (nolock) on acti.codigo_compañia=u.codigo_compañia and acti.codigo_unidad=u.codigo_unidad
	left join BITSAT_RUTAS r WITH (NOLOCK) on r.disp=1 and r.codigo_compañia =  usr.CODIGO_COMPAÑIA and u.IDRUTA = r.ID
	left join BITSAT_RUTAS_TECNICO rt WITH (NOLOCK) on r.ID = rt.IDRUTA and usr.CODIGO = rt.CODIGO_TECNICO
	-- *** E-TIC 20180814 ESM: Cambios para autofacturacion ***
	--left join BITSAT_ACTIVIDAD_AUTOFACTURACION autofac with (nolock) on acti.ID = autofac.ID and acti.CODIGO_PDA = autofac.CODIGO_PDA 
	--	AND autofac.FECHA_HORA = (
	--	(SELECT TOP (1) FECHA_HORA FROM BITSAT_ACTIVIDAD_AUTOFACTURACION where acti.ID = autofac.ID AND acti.CODIGO_PDA = autofac.CODIGO_PDA 
	--	ORDER BY FECHA_HORA 	)
	--	)
	--left join (SELECT DISTINCT CODIGO_PDA, ID, AUTOFACTURABLE FROM BITSAT_ACTIVIDAD_AUTOFACTURACION with (nolock)  ) autofac on acti.ID = autofac.ID and acti.CODIGO_PDA = autofac.CODIGO_PDA 
	-- *** E-TIC 20180814 ESM: Fin cambios *** 
	
	WHERE	ACTI.CODIGO_ACTIVIDAD <> 'ANO'
GO
/****** Object:  Table [dbo].[BITSAT_SEMAFORO_VISITA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_SEMAFORO_VISITA](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](40) NOT NULL,
	[LIMITE_INFERIOR] [decimal](7, 2) NOT NULL,
	[LIMITE_SUPERIOR] [decimal](7, 2) NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_SEMAFORO_VISITA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_RESPUESTA_OPERACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_RESPUESTA_OPERACION](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](40) NOT NULL,
	[REQUIERE_OBSERVACIONES] [bit] NOT NULL,
	[APLICA_PONDERACION] [bit] NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_TIPO_RESPUESTA_OPERACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ESTADO_UNIDAD_AVISO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ESTADO_UNIDAD_AVISO](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_ESTADO_UNIDAD_AVISO1] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_EXP_VISITAS_PROA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_EXP_VISITAS_PROA](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA_ALTA] [datetime] NOT NULL,
	[FECHA_PROCESADO] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_EXP_VISITAS_PROA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_OPERACIONES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_OPERACIONES](
	[CODIGO_OPERACION] [int] NOT NULL,
	[DESCRIPCION_OPERACION] [nvarchar](200) NULL,
	[TIPO_OPERACION] [nvarchar](1) NOT NULL,
	[PONDERACION_RESPUESTA] [decimal](7, 2) NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_OPERACIONES] PRIMARY KEY CLUSTERED 
(
	[CODIGO_OPERACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_OPERACIONES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_OPERACIONES](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[CODIGO_OPERACION] [int] NOT NULL,
	[ORDEN] [int] NULL,
	[CODIGO_RESPUESTA] [int] NULL,
	[PONDERACION_RESPUESTA] [decimal](7, 2) NULL,
	[OBSERVACIONES] [nvarchar](1024) NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_OPERACIONES] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[CODIGO_OPERACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_APARATO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_APARATO](
	[CODIGO] [nvarchar](10) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[disp] [bit] NULL,
	[TAREAS_COMUNES_AVISO] [bit] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CLASE_APARATO] [char](1) NULL,
 CONSTRAINT [PK_BITSAT_TIPO_APARATO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_INSPECCION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_INSPECCION](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA_PREVISTA] [datetime] NULL,
	[TIPO_APARATO] [nvarchar](10) NULL,
	[TIPO_INSPECCION] [nvarchar](10) NULL,
	[OBSERVACIONES_TECNICO] [nvarchar](1024) NULL,
	[OBSERVACIONES_OTROS] [nvarchar](1024) NULL,
	[GRADO_SATISFACCION] [nvarchar](10) NULL,
	[OBSERVACIONES_CLIENTE] [nvarchar](1024) NULL,
	[CODIGO_INFORME_SERVICIO] [nvarchar](14) NULL,
	[CODIGO_ACTIVIDAD_IS] [nvarchar](8) NULL,
	[CODIGO_SEMAFORO] [int] NULL,
	[OBSERVACIONES_SEMAFORO] [nvarchar](500) NULL,
	[ESTADO_UNIDAD] [int] NULL,
	[ALERTA_TIEMPO] [bit] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_USUARIO_INSPECCION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_BITSAT_EXP_VISITAS_PROA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[V_BITSAT_EXP_VISITAS_PROA]
AS
SELECT
	CONVERT(NVARCHAR(10), BITSAT_ACTIVIDAD.CODIGO_USUARIO) AS OPERARIO,
	BITSAT_ACTIVIDAD.CODIGO_UNIDAD AS UNIDAD,
	BITSAT_ACTIVIDAD.FECHA_FIN_CB AS FECHA_REALIZACION,
	BITSAT_TIPO_APARATO.CLASE_APARATO AS CLASE,
	CONVERT(NVARCHAR(20), UPPER(BITSAT_SEMAFORO_VISITA.DESCRIPCION)) AS ESTADO,
	UPPER(BITSAT_ACTIVIDAD_INSPECCION.OBSERVACIONES_SEMAFORO) AS MOTIVO_CAMBIO_SEMAFORO,
	UPPER(BITSAT_GRADO_SATISFACCION.DESCRIPCION) AS GRADO_SATISFACCION,
	CONVERT(NVARCHAR(100), BITSAT_ACTIVIDAD_FIRMA.NOMBRE_FIRMANTE) AS NOMBRE_FIRMANTE,
	CAST(BITSAT_ACTIVIDAD_FIRMA.FIRMA AS VARBINARY(8000)) AS FIRMA,
	CONVERT(NVARCHAR(20), UPPER(BITSAT_ESTADO_UNIDAD_AVISO.DESCRIPCION)) AS ESTADO_UNIDAD,
	BITSAT_ACTIVIDAD_OPERACIONES.ORDEN AS LINEA,
	CASE WHEN BITSAT_ACTIVIDAD_OPERACIONES.PONDERACION_RESPUESTA = 0 AND BITSAT_ACTIVIDAD_OPERACIONES.CODIGO_RESPUESTA=0 THEN 0 ELSE
		(BITSAT_ACTIVIDAD_OPERACIONES.ORDEN - (SELECT COUNT(*) FROM BITSAT_ACTIVIDAD_OPERACIONES OPER WHERE ID=BITSAT_ACTIVIDAD.ID AND CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA AND 
			PONDERACION_RESPUESTA = 0 AND CODIGO_RESPUESTA=0 AND ORDEN < BITSAT_ACTIVIDAD_OPERACIONES.ORDEN))END AS PUNTO,
	CONVERT(NVARCHAR(100), UPPER(BITSAT_OPERACIONES.DESCRIPCION_OPERACION)) AS DESCRIPCION_LINEA,
	CONVERT(NTEXT, UPPER(BITSAT_ACTIVIDAD_OPERACIONES.OBSERVACIONES)) AS OBSERVACIONES,
	0 AS FRECUENCIA,
	UPPER(BITSAT_TIPO_RESPUESTA_OPERACION.DESCRIPCION) AS RESPUESTA,
	BITSAT_EXP_VISITAS_PROA.FECHA_ALTA,
	BITSAT_EXP_VISITAS_PROA.FECHA_PROCESADO
FROM
	BITSAT_ACTIVIDAD
	INNER JOIN BITSAT_EXP_VISITAS_PROA
		ON BITSAT_ACTIVIDAD.CODIGO_PDA=BITSAT_EXP_VISITAS_PROA.CODIGO_PDA AND BITSAT_ACTIVIDAD.ID=BITSAT_EXP_VISITAS_PROA.ID
	INNER JOIN BITSAT_ACTIVIDAD_INSPECCION
		ON BITSAT_ACTIVIDAD.CODIGO_PDA=BITSAT_ACTIVIDAD_INSPECCION.CODIGO_PDA AND BITSAT_ACTIVIDAD.ID=BITSAT_ACTIVIDAD_INSPECCION.ID
	INNER JOIN BITSAT_TIPO_APARATO
		ON BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA=BITSAT_TIPO_APARATO.CODIGO_COMPAÑIA AND BITSAT_ACTIVIDAD_INSPECCION.TIPO_APARATO=BITSAT_TIPO_APARATO.CODIGO
	LEFT JOIN BITSAT_GRADO_SATISFACCION
		ON BITSAT_ACTIVIDAD_INSPECCION.GRADO_SATISFACCION=BITSAT_GRADO_SATISFACCION.GRADO_SATISFACCION
	LEFT JOIN BITSAT_ESTADO_UNIDAD_AVISO
		ON BITSAT_ACTIVIDAD_INSPECCION.ESTADO_UNIDAD=BITSAT_ESTADO_UNIDAD_AVISO.CODIGO
	INNER JOIN BITSAT_SEMAFORO_VISITA
		ON BITSAT_ACTIVIDAD_INSPECCION.CODIGO_SEMAFORO=BITSAT_SEMAFORO_VISITA.CODIGO
	LEFT JOIN BITSAT_ACTIVIDAD_FIRMA
		ON BITSAT_ACTIVIDAD.CODIGO_PDA=BITSAT_ACTIVIDAD_FIRMA.CODIGO_PDA AND BITSAT_ACTIVIDAD.ID=BITSAT_ACTIVIDAD_FIRMA.ID
	INNER JOIN BITSAT_ACTIVIDAD_OPERACIONES
		ON BITSAT_ACTIVIDAD.CODIGO_PDA=BITSAT_ACTIVIDAD_OPERACIONES.CODIGO_PDA AND BITSAT_ACTIVIDAD.ID=BITSAT_ACTIVIDAD_OPERACIONES.ID
	INNER JOIN BITSAT_OPERACIONES
		ON BITSAT_ACTIVIDAD_OPERACIONES.CODIGO_OPERACION=BITSAT_OPERACIONES.CODIGO_OPERACION
	LEFT JOIN BITSAT_TIPO_RESPUESTA_OPERACION
		ON BITSAT_ACTIVIDAD_OPERACIONES.CODIGO_RESPUESTA=BITSAT_TIPO_RESPUESTA_OPERACION.CODIGO
WHERE
	BITSAT_EXP_VISITAS_PROA.FECHA_PROCESADO IS NULL
GO
/****** Object:  Table [dbo].[BITSAT_CIERRE_FINANCIERO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CIERRE_FINANCIERO](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[AÑO] [int] NOT NULL,
	[MES] [int] NOT NULL,
	[ESTADO] [nvarchar](1) NULL,
	[FECHA_INICIO_MES] [datetime] NULL,
	[FECHA_FIN_MES] [datetime] NULL,
	[FECHA_USUARIO_CIERRE] [datetime] NULL,
	[USUARIO_CIERRE] [nvarchar](15) NULL,
 CONSTRAINT [PK_BITSAT_CIERRE_FINANCIERO] PRIMARY KEY CLUSTERED 
(
	[AÑO] ASC,
	[MES] ASC,
	[CODIGO_COMPAÑIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_HojasPendientesProcesar_Eleva]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [dbo].[V_W_HojasPendientesProcesar_Eleva]
as
with fechas as(
 select fecha 
 from lastdates(isnull((select datediff(Day,MAX(FECHA_FIN_MES), GETDATE())-1 from (SELECT CODIGO_COMPAÑIA, AÑO, MES, 
CASE WHEN MES = 5 THEN 'I' ELSE ESTADO END AS ESTADO, FECHA_INICIO_MES,
CASE WHEN MES = 5 THEN NULL ELSE FECHA_FIN_MES END AS FECHA_FIN_MES,
CASE WHEN MES = 5 THEN NULL ELSE FECHA_USUARIO_CIERRE END AS FECHA_USUARIO_CIERRE,
CASE WHEN MES = 5 THEN NULL ELSE USUARIO_CIERRE END AS USUARIO_CIERRE
FROM BITSAT_CIERRE_FINANCIERO WHERE AÑO=2021 AND codigo_cOMPAÑIA='46' AND FECHA_FIN_MES IS NOT NULL)tb  where estado='F'),45))
 where fecha<=DATEADD(day, DATEDIFF(day, 0, GETDATE())-1,0)  
)

select distinct top 1000 compañia, centro, tecnico,supervisor,supervisor_real, fecha, tipo_jornada 
from
(
Select act.codigo_Compañia as compañia, act.codigo_centro as centro, act.codigo_usuario as tecnico,  act.superior as supervisor, act.superior as supervisor_real,act.fecha , act.tipo_jornada ,act.codigo_unidad, act.id, act.codigo_pda, act.codigo_actividad,
act.MOTIVO_PAUSA , dbo.esLaborable2(act.codigo_compañia, act.codigo_centro, act.codigo_usuario, fecha, act.MOTIVO_PAUSA) as laborable
from 
(
select f.fecha, act.codigo_compañia, act.codigo_centro, act.codigo_usuario, act.superior, act.codigo_pda, min(id) as id,act.codigo_actividad, act.MOTIVO_PAUSA ,act.tipo_jornada,act.codigo_unidad
from 
fechas  f
inner  join 
(
select 
u.CODIGO_COMPAÑIA , u.codigo_centro, a2.codigo_usuario, u.superior,
convert(datetime, convert(nvarchar,isnull(t.time_ini, isnull(a2.hora_inicio, a2.hora_fin)),103),103) as inicio,
convert(datetime, convert(nvarchar,isnull(t.time_end, isnull(a2.hora_fin, a2.hora_inicio)),103),103) as fin,
isnull(t.tipo_jornada ,A2.TIPO_JORNADA) as tipo_jornada,
a2.codigo_actividad ,
a2.MOTIVO_PAUSA ,
isnull(t.time_ini, isnull(a2.hora_inicio, a2.hora_inicio)) as hora_inicio,
isnull(t.time_end, isnull(a2.hora_fin, a2.fecha_inicio)) as hora_fin,
a2.codigo_pda ,
a2.id,
a2.codigo_unidad,
a2.añomes 
from
(
 Select ID, CODIGO_PDA, CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_USUARIO, FECHA_INICIO, HORA_INICIO, FECHA_FIN, hora_fin, codigo_actividad, MOTIVO_PAUSA , TIPO_JORNADA, CODIGO_UNIDAD, AÑOMES
 from  bitsat_actividad with (nolock) 
 where not codigo_actividad in  ('ANO','FIN','PC') and codigo_compañia='46' and id>=DATEADD(MONTH,-2,GETDATE()) 
) a2 
inner join (Select CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO, superior from bitsat_usuario with (nolock) where superior is not null ) u on a2.CODIGO_USUARIO = u.codigo and a2.CODIGO_COMPAÑIA = u.CODIGO_COMPAÑIA 
left join bitsat_actividad_tiempo t with (nolock) on a2.codigo_pda=t.codigo_pda and a2.id=t.id 
where 
not (a2.codigo_actividad in ('ABS','IMP') and isnull(t.time_ini, isnull(a2.hora_inicio,a2.hora_fin)) = isnull(t.time_end, isnull(a2.hora_fin, a2.hora_inicio)) ) and 
not (isnull(t.tipo_jornada,a2.tipo_jornada) <>'N' and a2.CODIGO_ACTIVIDAD in ('ABS','IMP')) 
and 
((isnull(t.tipo_jornada, a2.tipo_jornada)  ='N' and not a2.codigo_actividad in ('FIN', 'GAS','ANO','PC' ) ) or 
 (isnull(t.tipo_jornada, a2.tipo_jornada) <>'N' and a2.CODIGO_ACTIVIDAD in ('INI', 'AVI' )))

) act on f.fecha between act.inicio and act.fin 
group by f.fecha, act.codigo_compañia, act.codigo_centro, act.codigo_usuario, act.superior, act.codigo_pda, act.codigo_actividad,act.MOTIVO_PAUSA, act.tipo_jornada,act.codigo_unidad, act.añomes 
) act
left join 
(
select c.codigo_compañia , c.codigo_tecnico, c.año, c.mes, l.dia , l.descripcion as tipo_jornada_linea, 
sum(case when (l.confirmado_supervisor=1 or l.confirmado_delegado=1) then 1 else 0 end  ) as confirmado
from 
fechas f
inner join BITSAT_HOJA_TIEMPOS_CABECERA c with (nolock)  on f.fecha between c.fecha_desde and c.fecha_hasta 
left join bitsat_hoja_tiempos_linea l with (nolock) on c.codigo_hoja=l.codigo_hoja and DATEPART(day,f.fecha)=l.dia 
group by c.codigo_compañia , c.codigo_tecnico, c.año, c.mes, l.dia , l.descripcion 
 ) hojas
on  hojas.año =year(act.fecha) and hojas.mes=month(act.fecha) 
and act.codigo_compañia = hojas.codigo_compañia and act.CODIGO_USUARIO = hojas.codigo_tecnico   
and hojas.dia=day(act.fecha) and hojas.tipo_jornada_linea=act.tipo_jornada
where   
( 
 (hojas.dia is null )   -- no hay nada para ese dia y tipo de jornada
or
 (
  hojas.confirmado=0 and 
  not act.codigo_actividad in ('INI','FIN','IMP','ABS') and 
  not exists (Select codigo_linea 
             from 
	bitsat_hoja_tiempos_cabecera c1 with (nolock) inner join 
	bitsat_hoja_tiempos_linea l1 with (nolock) on c1.codigo_hoja=l1.codigo_hoja
	where c1.codigo_tecnico=act.codigo_usuario and c1.año=year(act.fecha) and c1.mes=month(act.fecha) and l1.dia=day(act.fecha) and l1.codigo_pda = act.codigo_pda and l1.id= act.ID )
 )
)
) k 
where k.tipo_jornada <>'N' or k.laborable='1' or not (k.CODIGO_ACTIVIDAD in ('ABS','IMP'))
order by k.compañia , k.fecha desc 









GO
/****** Object:  View [dbo].[V_CONSULTA_ESTADO_AVISOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*

select t.*
from bitsat_actividad t
inner join 
(
select id_aviso, max(id) as id
from bitsat_actividad  a
where not a.id_aviso is null
group by  id_aviso)  act_aviso on 
t.id=act_aviso.id and t.id_aviso=act_aviso.id_aviso


*/
CREATE view [dbo].[V_CONSULTA_ESTADO_AVISOS]
AS
select top 100 percent 
a.clave_aviso,
estado.descripcion,
a.fecha_hora_llegada, 
a.fecha_hora_salida,
a.unidad_otis,
a.codigo_competidor,
a.unidad_cierre,
a.tecnico_cierre,
a.codigo_averia,
a.tipo_aviso as cTipo_Aviso,
a.indicador_facturacion,
a.enviado_op,
a.fecha_envio_op,
case when fecha_envio_24h is null  then 'NO' else 'Sí' end as enviado_24h,
a.fecha_envio_24h,
a.fichero_envio as fichero_envio_24h,
e.accion,
e.lanzamiento_accion,
e.fecha_hora_accion,
e.motivo_accion,
e.tecnico_transfer
from bitsat_avisos a
inner join bitsat_compañia c on a.codigo_compañia=c.codigo_compañia
left join bitsat_centro ce on a.codigo_compañia=ce.codigo_compañia and a.codigo_centro=ce.codigo_centro
left join bitsat_poblacion p on a.codigo_provincia=p.codigo_provincia and a.codigo_poblacion=p.codigo_poblacion
left join bitsat_estado_ascensor est on a.estado_ascensor=est.codigo_estado
left join bitsat_tipo_aviso tav on a.tipo_aviso=tav.codigo
left join bitsat_estado_averia estado on a.estado_aviso_bitsat=estado.codigo_estado
left join bitsat_avisos_estados e on a.clave_aviso=e.clave_aviso
order by a.clave_aviso, e.fecha_hora_accion
GO
/****** Object:  View [dbo].[v_consulta_avisos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[v_consulta_avisos]
as
SELECT [CLAVE_AVISO]
		,est.descripcion_corta as [IEstado_Aviso]
      ,[CODIGO_COMPAÑIA]
      ,[CODIGO_CENTRO]
      ,[CODIGO_TECNICO]
      ,[FECHA_RECEPCION]
      ,[ESTADO_AVISO]
      ,[CONTRATO]
      ,[TIPO_SERVICIO]
      ,[ELITE]
      ,[UNIDAD]
      ,[APARATO]
      ,[SITUACION]
      ,[RUTA]
      ,[TIPO_VIA]
      ,[DIRECCION]
      ,[NUMERO1]
      ,[NUMERO2]
      ,[EDIFICIO]
      ,[DISTRITO_POSTAL]
      ,[CODIGO_PROVINCIA]
      ,[CODIGO_POBLACION]
      ,[DIRECCION_AYUDA]
      ,[DESCRIPCION_AVERIA]
      ,[ESTADO_ASCENSOR]
      ,[LLAMADOR]
      ,[TELEFONO_LLAMADOR]
      ,[OBSERVACIONES]
      ,[REMSN]
      ,[DESCRIPCION_REM_INOP]
      ,[FECHA_ASIGNACION]
      ,[CODIGO_EVENTO]
      ,[FECHA_HORA_LLEGADA]
      ,[FECHA_HORA_SALIDA]
      ,[UNIDAD_OTIS]
      ,[CODIGO_COMPETIDOR]
      ,[UNIDAD_CIERRE]
      ,[TECNICO_CIERRE]
      ,[CODIGO_AVERIA]
      ,[TIPO_AVISO]
      ,[INDICADOR_FACTURACION]
      ,[ENVIADO_OP]
      ,[FECHA_ENVIO_OP]
      ,[ENVIAR_24h]
      ,[FECHA_ENVIO_24h]
      ,[FICHERO_ENVIO]
  FROM [BITSAT_OTIS].[dbo].[BITSAT_AVISOS] a
left join bitsat_estado_averia est on a.estado_aviso_bitsat=est.codigo_estado
GO
/****** Object:  View [dbo].[V_PEGASO_GASTOS_BACKUP_4]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO












CREATE VIEW [dbo].[V_PEGASO_GASTOS_BACKUP_4]
AS

SELECT
	COMPAÑIA_ACTIVIDAD AS IdCia,
	CONVERT(NVARCHAR(2),SUBSTRING(CONVERT(VARCHAR,DATEPART(YEAR,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)),3,2)) AS Year,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Mes,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Dia,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_USUARIO))) AS IdEmpleado,
	'1' AS IdCentro,
	ISNULL(BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,BITSAT_ACTIVIDAD.CODIGO_CENTRO) AS Loge,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(ISNULL(ISNULL(ISNULL((CASE WHEN ISNULL(BITSAT_RUTA.SUPERVISOR,'') = '000001' THEN NULL ELSE BITSAT_RUTA.SUPERVISOR END),BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR),BITSAT_USUARIO.SUPERIOR),'')))) AS IdSupervisor,
	CONVERT(DECIMAL(9,2),ISNULL(BITSAT_ACTIVIDAD_GASTO.IMPORTE,0)) AS Gastos,
	CONVERT(NVARCHAR(2),BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO) AS CodGasto,
	CONVERT(VARCHAR(7),dbo.ObtenerCodigoActividad(BITSAT_ACTIVIDAD.CODIGO_PDA, BITSAT_ACTIVIDAD.ID)) AS CodActividad,
	ISNULL(BITSAT_ACTIVIDAD.CODIGO_UNIDAD,'') AS Concepto,
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA AS FechaAlta,
	CASE WHEN BITSAT_RUTA.SUPERVISOR IS NULL THEN '000001' ELSE NULL END AS IdSupFunciones,
	CASE WHEN BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO = '06' THEN CONVERT(nvarchar(7),BITSAT_ACTIVIDAD_GASTO.KM) ELSE NULL END AS Kilometraje
FROM 
	BITSAT_INTERFACE_GASTOS_PEGASO INNER JOIN
	BITSAT_ACTIVIDAD_GASTO ON BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA AND BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD_GASTO.ID AND
		BITSAT_INTERFACE_GASTOS_PEGASO.FECHA=BITSAT_ACTIVIDAD_GASTO.FECHA INNER JOIN
	BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_GASTO.ID=BITSAT_ACTIVIDAD.ID
	AND BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
	LEFT JOIN BITSAT_UNIDAD ON BITSAT_ACTIVIDAD.COMPAÑIA_ACTIVIDAD=BITSAT_UNIDAD.CODIGO_COMPAÑIA AND 
		BITSAT_ACTIVIDAD.CODIGO_UNIDAD=BITSAT_UNIDAD.CODIGO_UNIDAD
	LEFT JOIN (SELECT DISTINCT CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, SUPERVISOR FROM BITSAT_RUTA WHERE DISP=1)BITSAT_RUTA ON BITSAT_UNIDAD.CODIGO_COMPAÑIA=BITSAT_RUTA.CODIGO_COMPAÑIA AND 
		BITSAT_UNIDAD.CODIGO_RUTA=BITSAT_RUTA.CODIGO_RUTA AND
		SUBSTRING(BITSAT_UNIDAD.CODIGO_CENTRO,1,6)=BITSAT_RUTA.CODIGO_CENTRO
	LEFT JOIN BITSAT_USUARIO ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=BITSAT_USUARIO.CODIGO AND BITSAT_USUARIO.SUPERIOR IS NOT NULL AND BITSAT_USUARIO.DISP=1
WHERE 
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA_PROCESO IS NULL AND BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO <> '15'
UNION ALL
SELECT
	COMPAÑIA_ACTIVIDAD AS IdCia,
	CONVERT(NVARCHAR(2),SUBSTRING(CONVERT(VARCHAR,DATEPART(YEAR,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)),3,2)) AS Year,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Mes,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Dia,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_USUARIO))) AS IdEmpleado,
	'1' AS IdCentro,
	ISNULL(BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,BITSAT_ACTIVIDAD.CODIGO_CENTRO) AS Loge,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(ISNULL(ISNULL(ISNULL((CASE WHEN ISNULL(BITSAT_RUTA.SUPERVISOR,'') = '000001' THEN NULL ELSE BITSAT_RUTA.SUPERVISOR END),BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR),BITSAT_USUARIO.SUPERIOR),'')))) AS IdSupervisor,

	CONVERT(DECIMAL(9,2),(CASE WHEN BITSAT_ACTIVIDAD_GASTO.IMPORTE > CONVERT(DECIMAL(9,2),(ISNULL(ISNULL(ISNULL(EXCEP.IMPORTE, IMP_SALIDAS.IMPORTE), CONVERT(FLOAT,BITSAT_ACTIVIDAD_GASTO.IMPORTE)),0)))
		THEN CONVERT(DECIMAL(9,2),((ISNULL(ISNULL(ISNULL(EXCEP.IMPORTE, IMP_SALIDAS.IMPORTE), CONVERT(FLOAT,BITSAT_ACTIVIDAD_GASTO.IMPORTE)),0))))
		ELSE BITSAT_ACTIVIDAD_GASTO.IMPORTE END)) AS Gastos,
	CONVERT(NVARCHAR(2),BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO) AS CodGasto,

	CONVERT(VARCHAR(7),dbo.ObtenerCodigoActividad(BITSAT_ACTIVIDAD.CODIGO_PDA, BITSAT_ACTIVIDAD.ID)) AS CodActividad,
	ISNULL(BITSAT_ACTIVIDAD.CODIGO_UNIDAD,'') AS Concepto,
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA AS FechaAlta,
	CASE WHEN BITSAT_RUTA.SUPERVISOR IS NULL THEN '000001' ELSE NULL END AS IdSupFunciones,
	NULL AS Kilometraje
FROM 
	BITSAT_INTERFACE_GASTOS_PEGASO INNER JOIN
	BITSAT_ACTIVIDAD_GASTO ON BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA AND BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD_GASTO.ID AND
		BITSAT_INTERFACE_GASTOS_PEGASO.FECHA=BITSAT_ACTIVIDAD_GASTO.FECHA INNER JOIN
	BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_GASTO.ID=BITSAT_ACTIVIDAD.ID
	AND BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
	LEFT JOIN BITSAT_UNIDAD ON BITSAT_ACTIVIDAD.COMPAÑIA_ACTIVIDAD=BITSAT_UNIDAD.CODIGO_COMPAÑIA AND 
		BITSAT_ACTIVIDAD.CODIGO_UNIDAD=BITSAT_UNIDAD.CODIGO_UNIDAD
	LEFT JOIN (SELECT DISTINCT CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, SUPERVISOR FROM BITSAT_RUTA WHERE DISP=1)BITSAT_RUTA ON BITSAT_UNIDAD.CODIGO_COMPAÑIA=BITSAT_RUTA.CODIGO_COMPAÑIA AND 
		BITSAT_UNIDAD.CODIGO_RUTA=BITSAT_RUTA.CODIGO_RUTA AND
		SUBSTRING(BITSAT_UNIDAD.CODIGO_CENTRO,1,6)=BITSAT_RUTA.CODIGO_CENTRO
	LEFT JOIN BITSAT_USUARIO ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=BITSAT_USUARIO.CODIGO AND BITSAT_USUARIO.SUPERIOR IS NOT NULL AND BITSAT_USUARIO.DISP=1
	LEFT JOIN BITSAT_USUARIO_EXCEPCION_SALIDA EXCEP ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=EXCEP.CODIGO_USUARIO AND BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA=EXCEP.CODIGO_COMPAÑIA AND BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD=EXCEP.CODIGO_CENTRO
	LEFT JOIN (SELECT MAX_YEAR.COMPAÑIA, MAX_YEAR.AÑO, MAX_MES.MES, DEF.IMP_CT AS IMPORTE  FROM
				(SELECT COMPAÑIA, MAX(AÑO) AS AÑO FROM BITSAT_TIPO_GASTO_DEF WHERE CODIGO='15' 
				GROUP BY COMPAÑIA)MAX_YEAR INNER JOIN 
				(SELECT COMPAÑIA, AÑO, MAX(MES) AS MES FROM BITSAT_TIPO_GASTO_DEF WHERE CODIGO='15' 
				GROUP BY COMPAÑIA, AÑO)MAX_MES ON MAX_YEAR.COMPAÑIA=MAX_MES.COMPAÑIA AND MAX_YEAR.AÑO=MAX_MES.AÑO
				INNER JOIN BITSAT_TIPO_GASTO_DEF DEF ON MAX_YEAR.COMPAÑIA=DEF.COMPAÑIA AND MAX_YEAR.AÑO=DEF.AÑO AND 
				MAX_MES.MES=DEF.MES AND DEF.CODIGO=15)IMP_SALIDAS
		ON BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA=IMP_SALIDAS.COMPAÑIA
WHERE 
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA_PROCESO IS NULL AND BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO = '15'
	AND BITSAT_ACTIVIDAD.CODIGO_ACTIVIDAD = 'AVI'

	




GO
/****** Object:  View [dbo].[vw_PBI_ResumenHDT]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_PBI_ResumenHDT]
AS

	SELECT 
		Hoja.Codigo_compañia AS [Codigo Cia],
		centro.CODIGO_CENTRO AS Loge,
		hoja.año,
		hoja.mes,
		CONVERT(DATETIME,CONVERT(NVARCHAR,hoja.año*10000+hoja.mes*100+linea.dia),112) as Fecha,
		linea.cargo_codigo_Actividad as [Codigo Actividad], 
		SUM(Linea.horas_normales) AS [Horas Normales], 
		SUM(Linea.horas_extras) AS [Horas Extras],
		CONVERT(DATETIME,CONVERT(NVARCHAR,hoja.año*10000+hoja.mes*100+linea.dia),112) as FechaV
	FROM BITSAT_HOJA_TIEMPOS_CABECERA AS Hoja 
		INNER JOIN BITSAT_HOJA_TIEMPOS_LINEA AS Linea ON Linea.codigo_hoja = Hoja.codigo_hoja 
		INNER JOIN BITSAT_COMPAÑIA AS cia ON cia.CODIGO_COMPAÑIA = Hoja.codigo_compañia 
		INNER JOIN BITSAT_CENTRO AS centro ON centro.CODIGO_COMPAÑIA = Hoja.codigo_compañia AND centro.CODIGO_CENTRO = Hoja.codigo_centro 
	WHERE 
		Hoja.año = YEAR(GETDATE())  OR
		(Hoja.año= YEAR(GETDATE()) - 1 AND Hoja.Mes >= (DATEPART(MONTH,GETDATE()) + 1))
	GROUP BY 
		Hoja.Codigo_compañia,
		centro.CODIGO_CENTRO,
		hoja.año,
		hoja.mes,
		CONVERT(DATETIME,CONVERT(NVARCHAR,hoja.año*10000+hoja.mes*100+linea.dia),112),
		linea.cargo_codigo_Actividad


GO
/****** Object:  View [dbo].[vw_PBI_EficienciaMantenimiento_OLD_2]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[vw_PBI_EficienciaMantenimiento_OLD_2]
AS

select 
codigo_compañia,compañia, codigo_Centro, centro, codigo_supervisor, supervisor, 
	--codigo_tecnico, tecnico, 
ruta, unidad, SUM([inspeccion prevista]) as previstas, sum([inspeccion realizada]) as realizadas, sum([inspeccion pendientes]) as pendientes
from
(
SELECT 
    cia.CODIGO_COMPAÑIA ,
	cia.descripcion AS Compañia, 
	centro.CODIGO_CENTRO ,
	centro.descripcion AS Centro, 
	ISNULL(sup.CODIGO,'') as codigo_supervisor,
	ISNULL(RTRIM(sup.nombre+' ' + ISNULL(sup.apellidos ,'')),'Desc.') AS Supervisor, 
	--tec.CODIGO as codigo_Tecnico,
	--RTRIM(tec.nombre+' '+ ISNULL(tec.apellidos,'')) AS Tecnico, 
	r.CODIGO_RUTA AS Ruta, 
	u.codigo_unidad AS Unidad, 

	(case when (periodos.añomes+'01') < u.ALTAMANTENIMIENTO then
			0
		 else
			(case U.Periodo_visitas
                when 'M' then 1
                when 'Q' then 1
		When 'N' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,4,5,6,7,9,10,12) THEN 1
                        ELSE 0
                        END
		When 'B' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,5,7,9,11) THEN 1
                        ELSE 0
                        END
                when 'T' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,4 ,7,10) THEN 1
                        ELSE 0
                        END
                when 'C' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,5,9) THEN 1
                        ELSE 0
                        END
                when 'S' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,7 ) THEN 1
                        ELSE 0
                        END
                when 'A' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1 ) THEN 1
                        ELSE 0
                        END
                else 1        
			end  )
		END ) AS [Inspeccion Prevista],
        
        CASE WHEN a.id IS NULL THEN 0 ELSE 1 END AS [Inspeccion Realizada],
       (
	   case when (periodos.añomes+'01') < u.ALTAMANTENIMIENTO then
			0
		 else
	   case U.Periodo_visitas
                when 'M' then 1
                when 'Q' then 1
		When 'N' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,4,5,6,7,9,10,12) THEN 1
                        ELSE 0
                        END
		When 'B' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,5,7,9,11) THEN 1
                        ELSE 0
                        END
                when 'T' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,4 ,7,10) THEN 1
                        ELSE 0
                        END
                when 'C' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,5,9) THEN 1
                        ELSE 0
                        END
                when 'S' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,7 ) THEN 1
                        ELSE 0
                        END
                when 'A' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1 ) THEN 1
                        ELSE 0
                        END
                else 1        
        end END  ) - (CASE WHEN a.id IS NULL THEN 0 ELSE 1 END) AS [Inspeccion Pendientes],
		
	--convert(datetime,a.añomes+'01',102) as Añomes,
	isnull(a.fecha_fin, a.FECHA_FIN_CB) AS Fecha ,
	a.estado
FROM [fncTablaAñoMes](DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0),DATEADD(mm, DATEDIFF(mm, 0, DATEADD(MONTH,-1,GETDATE())) + 1, -1)) AS periodos  
	CROSS JOIN (SELECT DISTINCT CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, SUPERVISOR, DISP FROM BITSAT_RUTA  with (nolock) WHERE DISP=1) AS r 
	INNER JOIN bitsat_compañia AS cia  with (nolock) ON r.codigo_compañia = cia.codigo_compañia 
	INNER JOIN bitsat_centro AS centro  with (nolock) ON r.codigo_compañia = centro.codigo_compañia AND SUBSTRING(centro.codigo_centro, 1, 6) = r.codigo_centro 
	--INNER JOIN bitsat_usuario AS tec  with (nolock) ON r.codigo_compañia = tec.codigo_compañia AND r.idbitrutas = tec.codigo 
	LEFT JOIN bitsat_usuario AS sup  with (nolock) ON r.CODIGO_COMPAÑIA = sup.codigo_compañia AND RTRIM(LTRIM(REPLACE(LTRIM(REPLACE(r.SUPERVISOR,'0',' ')),' ','0'))) = RTRIM(LTRIM(sup.codigo))
	INNER JOIN bitsat_unidad AS u  with (nolock) ON r.codigo_compañia = u.codigo_compañia AND CENTRO.CODIGO_CENTRO=U.CODIGO_CENTRO AND r.codigo_ruta = u.codigo_ruta and u.disp=1 and not u.altamantenimiento is null
	LEFT JOIN bitsat_tipo_servicio_mantenimiento AS srv  with (nolock) ON u.tipo_servicio = srv.codigo_tipo_servicio 
	LEFT JOIN bitsat_actividad AS a  with (nolock) ON a.codigo_actividad = 'INSPP' AND (a.estado = 'INSFIN' or a.estado='INSFNF')  AND a.codigo_compañia = u.codigo_compañia AND a.codigo_unidad = u.codigo_unidad AND a.añomes = periodos.añomes 
WHERE r.disp = 1 
	) k
	group by codigo_compañia, compañia, codigo_centro, centro, codigo_supervisor, supervisor, --codigo_tecnico, tecnico, 
	ruta, unidad


GO
/****** Object:  View [dbo].[vw_PBI_EficienciaMantenimiento_OLD_3]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vw_PBI_EficienciaMantenimiento_OLD_3]
AS

select 
codigo_compañia,compañia, codigo_Centro, centro, codigo_supervisor, supervisor, 
	--codigo_tecnico, tecnico, 
ruta, unidad, SUM([inspeccion prevista]) as previstas, sum([inspeccion realizada]) as realizadas, sum([inspeccion pendientes]) as pendientes
from
(
SELECT 
    cia.CODIGO_COMPAÑIA ,
	cia.descripcion AS Compañia, 
	centro.CODIGO_CENTRO ,
	centro.descripcion AS Centro, 
	ISNULL(sup.CODIGO,'') as codigo_supervisor,
	ISNULL(RTRIM(sup.nombre+' ' + ISNULL(sup.apellidos ,'')),'Desc.') AS Supervisor, 
	--tec.CODIGO as codigo_Tecnico,
	--RTRIM(tec.nombre+' '+ ISNULL(tec.apellidos,'')) AS Tecnico, 
	r.CODIGO_RUTA AS Ruta, 
	u.codigo_unidad AS Unidad, 

	(case when (periodos.añomes+'01') < u.ALTAMANTENIMIENTO then
			0
		 else
			(case U.Periodo_visitas
                when 'M' then 1
                when 'Q' then 1
		When 'N' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,4,5,6,7,9,10,12) THEN 1
                        ELSE 0
                        END
		When 'B' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,5,7,9,11) THEN 1
                        ELSE 0
                        END
                when 'T' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,4 ,7,10) THEN 1
                        ELSE 0
                        END
                when 'C' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,5,9) THEN 1
                        ELSE 0
                        END
                when 'S' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,7 ) THEN 1
                        ELSE 0
                        END
                when 'A' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1 ) THEN 1
                        ELSE 0
                        END
                else 1        
			end  )
		END ) AS [Inspeccion Prevista],
        
        CASE WHEN a.id IS NULL THEN 0 ELSE 1 END AS [Inspeccion Realizada],
       (
	   case when (periodos.añomes+'01') < u.ALTAMANTENIMIENTO then
			0
		 else
	   case U.Periodo_visitas
                when 'M' then 1
                when 'Q' then 1
		When 'N' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,4,5,6,7,9,10,12) THEN 1
                        ELSE 0
                        END
		When 'B' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,5,7,9,11) THEN 1
                        ELSE 0
                        END
                when 'T' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,4 ,7,10) THEN 1
                        ELSE 0
                        END
                when 'C' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,5,9) THEN 1
                        ELSE 0
                        END
                when 'S' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,7 ) THEN 1
                        ELSE 0
                        END
                when 'A' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1 ) THEN 1
                        ELSE 0
                        END
                else 1        
        end END  ) - (CASE WHEN a.id IS NULL THEN 0 ELSE 1 END) AS [Inspeccion Pendientes]--,
		
	--convert(datetime,a.añomes+'01',102) as Añomes,
--	isnull(a.fecha_fin, a.FECHA_FIN_CB) AS Fecha ,
	--a.estado
FROM [fncTablaAñoMes](DATEADD(yy, DATEDIFF(yy, 0, GETDATE()), 0),DATEADD(mm, DATEDIFF(mm, 0, DATEADD(MONTH,-1,GETDATE())) + 1, -1)) AS periodos  
	CROSS JOIN (SELECT DISTINCT CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, SUPERVISOR, DISP FROM BITSAT_RUTA  with (nolock) WHERE DISP=1) AS r 
	INNER JOIN bitsat_compañia AS cia  with (nolock) ON r.codigo_compañia = cia.codigo_compañia 
	INNER JOIN bitsat_centro AS centro  with (nolock) ON r.codigo_compañia = centro.codigo_compañia AND SUBSTRING(centro.codigo_centro, 1, 6) = r.codigo_centro 
	--INNER JOIN bitsat_usuario AS tec  with (nolock) ON r.codigo_compañia = tec.codigo_compañia AND r.idbitrutas = tec.codigo 
	LEFT JOIN bitsat_usuario AS sup  with (nolock) ON r.CODIGO_COMPAÑIA = sup.codigo_compañia AND RTRIM(LTRIM(REPLACE(LTRIM(REPLACE(r.SUPERVISOR,'0',' ')),' ','0'))) = RTRIM(LTRIM(sup.codigo))
	INNER JOIN bitsat_unidad AS u  with (nolock) ON r.codigo_compañia = u.codigo_compañia AND CENTRO.CODIGO_CENTRO=U.CODIGO_CENTRO AND r.codigo_ruta = u.codigo_ruta and u.disp=1 and not u.altamantenimiento is null
	LEFT JOIN bitsat_tipo_servicio_mantenimiento AS srv  with (nolock) ON u.tipo_servicio = srv.codigo_tipo_servicio 
	LEFT JOIN (SELECT MIN(ID) AS ID, CODIGO_COMPAÑIA, CODIGO_UNIDAD, AÑOMES FROM  BITSAT_ACtividad with (nolock) 
		where codigo_actividad='INSPP' and (estado = 'INSFIN' or estado='INSFNF')
		GROUP BY CODIGO_COMPAÑIA, CODIGO_UNIDAD, AÑOMES) AS a   ON a.codigo_compañia = u.codigo_compañia AND a.codigo_unidad = u.codigo_unidad AND a.añomes = periodos.añomes 
WHERE r.disp = 1
	) k
	group by codigo_compañia, compañia, codigo_centro, centro, codigo_supervisor, supervisor, --codigo_tecnico, tecnico, 
	ruta, unidad


GO
/****** Object:  Table [dbo].[BITSAT_EQ_ELEVA_PERTOR_UNIDAD]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_EQ_ELEVA_PERTOR_UNIDAD](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[CODIGO_COMPAÑIA_DESTINO] [nvarchar](2) NOT NULL,
	[CODIGO_UNIDAD_DESTINO] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_BITSAT_EQ_ELEVA_PERTOR_UNIDAD] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_UNIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_PBI_EficienciaMantenimiento]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[vw_PBI_EficienciaMantenimiento]
AS

select 
codigo_compañia as IdCia,compañia, codigo_Centro, centro, Loge, codigo_supervisor, supervisor, ruta, unidad, Año,
SUM([inspeccion prevista]) as previstas, sum([inspeccion realizada]) as realizadas, sum([inspeccion pendientes]) as pendientes,
CONVERT(datetime, Año) as FechaV
from
(
SELECT 
    cia.CODIGO_COMPAÑIA ,
	cia.descripcion AS Compañia, 
	centro.CODIGO_CENTRO ,
	centro.descripcion AS Centro, 
	ISNULL(sup.CODIGO,'') as codigo_supervisor,
	ISNULL(RTRIM(sup.nombre+' ' + ISNULL(sup.apellidos ,'')),'Desc.') AS Supervisor, 
	r.CODIGO_RUTA AS Ruta, 
	u.codigo_unidad AS Unidad, 

	(case when (periodos.añomes+'01') < u.ALTAMANTENIMIENTO then
			0
		 else
			(case U.Periodo_visitas
                when 'M' then 1
                when 'Q' then 1
		When 'N' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,4,5,6,7,9,10,12) THEN 1
                        ELSE 0
                        END
		When 'B' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,5,7,9,11) THEN 1
                        ELSE 0
                        END
                when 'T' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,4 ,7,10) THEN 1
                        ELSE 0
                        END
                when 'C' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,5,9) THEN 1
                        ELSE 0
                        END
                when 'S' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,7 ) THEN 1
                        ELSE 0
                        END
                when 'A' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1 ) THEN 1
                        ELSE 0
                        END
                else 1        
			end  )
		END ) AS [Inspeccion Prevista],
        
        CASE WHEN a.id IS NULL THEN 0 ELSE 1 END AS [Inspeccion Realizada],
       (
	   case when (periodos.añomes+'01') < u.ALTAMANTENIMIENTO then
			0
		 else
	   case U.Periodo_visitas
                when 'M' then 1
                when 'Q' then 1
		When 'N' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,4,5,6,7,9,10,12) THEN 1
                        ELSE 0
                        END
		When 'B' then 
			CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,3,5,7,9,11) THEN 1
                        ELSE 0
                        END
                when 'T' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,4 ,7,10) THEN 1
                        ELSE 0
                        END
                when 'C' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,5,9) THEN 1
                        ELSE 0
                        END
                when 'S' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1,7 ) THEN 1
                        ELSE 0
                        END
                when 'A' then
                        CASE WHEN substring(PERIODOS.añomes,5,2) IN (1 ) THEN 1
                        ELSE 0
                        END
                else 1        
        end END  ) - (CASE WHEN a.id IS NULL THEN 0 ELSE 1 END) AS [Inspeccion Pendientes],
		sup.LOGE_OTIS as Loge,
		SUBSTRING(periodos.añomes, 1, 4) AS "Año"
FROM [fncTablaAñoMes](DATEADD(yy, DATEDIFF(yy, 0, DATEADD(YEAR, -1, GETDATE())), 0), DATEADD(mm, DATEDIFF(mm, 0, DATEADD(MONTH, 0, GETDATE())) + 1, -1)) AS periodos  
	CROSS JOIN BITSAT_RUTAS r with (nolock) 
	INNER JOIN bitsat_compañia AS cia  with (nolock) ON r.codigo_compañia = cia.codigo_compañia 
	LEFT JOIN bitsat_usuario AS sup  with (nolock) ON r.CODIGO_COMPAÑIA = sup.codigo_compañia AND r.CODIGO_SUPERVISOR = sup.CODIGO
	INNER JOIN bitsat_unidad AS u  with (nolock) ON r.ID = u.IDRUTA and u.disp=1 and u.ESTADO = '10' and not u.altamantenimiento is null
	INNER JOIN bitsat_centro AS centro  with (nolock) ON u.codigo_compañia = centro.codigo_compañia AND centro.codigo_centro = u.codigo_centro
	LEFT JOIN bitsat_tipo_servicio_mantenimiento AS srv  with (nolock) ON u.tipo_servicio = srv.codigo_tipo_servicio 
	
	LEFT JOIN (SELECT MIN(ID) AS ID, ISNULL(eq.CODIGO_COMPAÑIA_DESTINO, activ.CODIGO_COMPAÑIA) AS CODIGO_COMPAÑIA, 
			ISNULL(eq.CODIGO_UNIDAD_DESTINO, activ.CODIGO_UNIDAD) AS CODIGO_UNIDAD, AÑOMES 
		FROM  BITSAT_ACtividad activ with (nolock) LEFT JOIN BITSAT_EQ_ELEVA_PERTOR_UNIDAD AS eq with (nolock)
			ON activ.CODIGO_COMPAÑIA=eq.CODIGO_COMPAÑIA AND activ.CODIGO_UNIDAD=eq.CODIGO_UNIDAD
		where codigo_actividad='INSPP' and (estado = 'INSFIN' or estado='INSFNF')
		GROUP BY ISNULL(eq.CODIGO_COMPAÑIA_DESTINO, activ.CODIGO_COMPAÑIA), ISNULL(eq.CODIGO_UNIDAD_DESTINO, activ.CODIGO_UNIDAD), AÑOMES) AS a   
	ON a.codigo_compañia = u.codigo_compañia AND a.codigo_unidad = u.codigo_unidad AND a.añomes = periodos.añomes 
WHERE r.disp = 1
	) k
	group by codigo_compañia, compañia, codigo_centro, centro, Loge, codigo_supervisor, supervisor,	ruta, unidad, Año



GO
/****** Object:  View [dbo].[vw_PBI_FISS_Rutas_Tecnico]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vw_PBI_FISS_Rutas_Tecnico]
AS

	SELECT
		GRP.CODIGO_COMPAÑIA as IDCIA,
		GRP.Compañia,
		GRP.CODIGO_CENTRO as LOGE,
		CEN.DESCRIPCION AS Centro,
		'' AS CODIGO_RUTA,
		'SIN RUTA' AS DESCRIPCION,
		'' AS CODIGO_SUPERVISOR,
		'' AS NombreSupervisor, 
		0 AS ActivoMTD,
		NULL AS FECHA_ALTA,
		NULL AS FECHA_MODIFICACION,
		NULL AS FECHA_BAJA,
		COUNT(*) AS UnidadesAlta,
		0 AS UnidadesBaja,
		0 AS UnidadesSuspendidas,
		0 AS UnidadesSinMantenimiento,
		'' AS CODIGO_TECNICO,
		'' AS NOMBRE_TECNICO,
		'' AS ROL
	FROM
		(SELECT
			DISTINCT
			CIA.CODIGO_COMPAÑIA,
			CIA.DESCRIPCION AS Compañia,
			SUBSTRING(CEN.CODIGO_CENTRO, 1, 6) + '00' AS CODIGO_CENTRO,
			UNI.CODIGO_UNIDAD
		FROM
			BITSAT_COMPAÑIA CIA
			INNER JOIN BITSAT_UNIDAD UNI ON CIA.CODIGO_COMPAÑIA = UNI.CODIGO_COMPAÑIA AND ISNULL(UNI.IDRUTA, '') = '' AND UNI.DISP = 1 AND UNI.ESTADO = '10'
			INNER JOIN BITSAT_CENTRO CEN ON UNI.CODIGO_COMPAÑIA = CEN.CODIGO_COMPAÑIA AND SUBSTRING(UNI.CODIGO_CENTRO, 1, 6) + '00' = SUBSTRING(CEN.CODIGO_CENTRO, 1, 6) + '00') AS GRP
		INNER JOIN BITSAT_CENTRO CEN ON GRP.CODIGO_COMPAÑIA = CEN.CODIGO_COMPAÑIA AND GRP.CODIGO_CENTRO = CEN.CODIGO_CENTRO
	GROUP BY GRP.CODIGO_COMPAÑIA, GRP.Compañia, GRP.CODIGO_CENTRO, CEN.DESCRIPCION
	UNION
	SELECT
		RUT.CODIGO_COMPAÑIA,
		COM.DESCRIPCION AS Compañia,
		RUT.CODIGO_CENTRO,
		CEN.DESCRIPCION AS Centro,
		RUT.CODIGO_RUTA,
		RUT.DESCRIPCION,
		CASE
			WHEN RUT.SUPERVISOR_EN_FUNCIONES = 1 THEN '999999'
			ELSE ISNULL(RUT.CODIGO_SUPERVISOR, '') 
		END AS CODIGO_SUPERVISOR,
		CASE
			WHEN RUT.SUPERVISOR_EN_FUNCIONES = 1 THEN 'SUPERVISOR EN FUNCIONES'
			ELSE ISNULL(USU.NOMBRE, 'SIN SUPERVISOR') 
		END AS NombreSupervisor,
		RUT.ActivoMTD,
		RUT.FECHA_ALTA,
		RUT.FECHA_MODIFICACION,
		RUT.FECHA_BAJA,
		ALTA.UNIDADES AS UNIDADES_ALTA,
		BAJA.UNIDADES AS UNIDADES_BAJA,
		SUSPENDIDAS.UNIDADES AS UNIDADES_SUSPENDIDAS,
		SIN_MANTENIMIENTO.UNIDADES AS UNIDADES_SIN_MANTENIMIENTO,
		ISNULL(RTEC.CODIGO_TECNICO, '') AS CODIGO_TECNICO,
		ISNULL(USU2.NOMBRE, '') AS NOMBRE_TECNICO,
		--ISNULL(ES.Descripcion, '') AS ROL
		'' AS ROL
	FROM
		BITSAT_RUTAS RUT
		INNER JOIN BITSAT_COMPAÑIA COM ON RUT.CODIGO_COMPAÑIA = COM.CODIGO_COMPAÑIA
		INNER JOIN BITSAT_CENTRO CEN ON RUT.CODIGO_COMPAÑIA = CEN.CODIGO_COMPAÑIA AND RUT.CODIGO_CENTRO = CEN.CODIGO_CENTRO
		LEFT JOIN BITSAT_USUARIO USU ON RUT.CODIGO_COMPAÑIA = USU.CODIGO_COMPAÑIA AND RUT.CODIGO_SUPERVISOR = USU.CODIGO
		LEFT JOIN BITSAT_RUTAS_TECNICO RTEC ON RUT.ID = RTEC.IDRUTA
		LEFT JOIN BITSAT_USUARIO USU2 ON RTEC.CODIGO_COMPAÑIA = USU2.CODIGO_COMPAÑIA AND RTEC.CODIGO_TECNICO = USU2.CODIGO
		--LEFT JOIN MTD_EspecializacionTecnico EST ON RUT.CODIGO_COMPAÑIA	= EST.CodigoCompañia AND RTEC.CODIGO_TECNICO = EST.CodigoTecnico
		--LEFT JOIN MTD_Especializacion ES ON EST.IDEspecializacion = ES.IDEspecializacion
		CROSS APPLY (SELECT COUNT(*) AS UNIDADES FROM BITSAT_UNIDAD UNI WHERE RUT.ID = UNI.IDRUTA AND UNI.DISP = 1 AND UNI.ESTADO = '10') ALTA
		CROSS APPLY (SELECT COUNT(*) AS UNIDADES FROM BITSAT_UNIDAD UNI WHERE RUT.ID = UNI.IDRUTA AND UNI.DISP = 0 AND UNI.ESTADO IN ('10', '90', '99')) BAJA
		CROSS APPLY (SELECT COUNT(*) AS UNIDADES FROM BITSAT_UNIDAD UNI WHERE RUT.ID = UNI.IDRUTA AND UNI.DISP = 1 AND UNI.ESTADO = '90') SUSPENDIDAS
		CROSS APPLY (SELECT COUNT(*) AS UNIDADES FROM BITSAT_UNIDAD UNI WHERE RUT.ID = UNI.IDRUTA AND UNI.ESTADO = '00') SIN_MANTENIMIENTO
	WHERE RUT.DISP = 1

GO
/****** Object:  Table [dbo].[BITSAT_IDENTIFICADOR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_IDENTIFICADOR](
	[CODIGO] [nchar](1) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_IDENTIFICADOR] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_DETALLE_AVISO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE View [dbo].[V_W_DETALLE_AVISO]
as
select
act.codigo_pda,
convert(nvarchar,act.id,112)+replace(convert(nvarchar,act.id,108),':','') as idact,
act.id_aviso as clave_aviso,
act.codigo_compañia,
act.codigo_centro,
act.codigo_usuario,
tec.nombre+' '+isnull(tec.apellidos,'') as tecnico,
act.codigo_actividad,
tact.descripcion as actividad,
act.añomes,
act.longitud,
act.latitud,
act.codigo_barras_inicio,
act.codigo_barras_fin,
act.fecha_inicio,
act.fecha_fin,
act.hora_inicio,
act.hora_fin,
isnull(act.servicio_fijo,'') as servicio_fijo,
isnull(act.compensable,'') as compensable,
act.codigo_unidad,
uni.nombre_unidad,
isnull(uni.via,'') as via,
uni.direccion,
uni.numero,
uni.complemento_direccion,
uni.codigo_postal,
pro.descripcion as provincia,
pbl.descripcion as poblacion,
act.estado as codigo_estado,
test.descripcion as estado,
com.descripcion as compañia,
cen.descripcion as centro,
sup.nombre+' '+isnull(sup.apellidos,'') as supervisor,
ident.descripcion as identificador,
isnull(ltrim(fir.imposibilidad_firma),'') as imposibilidad_firma,
isnull(fir.nombre_firmante,'') as nombre_firmante,
isnull(fir.piso_firmante,'') as piso_firmante,
isnull(fir.telefono_firmante,'') as telefono_firmante,
isnull(cal.descripcion,'') as calidad_firmante,
isnull(fir.direccion_correo_electronico,'') as direccion_correo_electronico,
fir.firma,
isnull(ltrim(fir.enviar_mail),'') as enviar_firma,
isnull(convert(nvarchar,avi.fecha_accion,103),'') as fecha_accion,
isnull(avi.tipo_accion,'') as tipo_accion,
isnull(avi.accion,'') as accion,
isnull(avi.lanzamiento_accion,'') as lanzamiento_accion,
isnull(avi.motivo_accion,'') as motivo_accion,
isnull(avi.tecnico_transfer,'') as tecnico_transfer,
isnull(avi.unidad_otis,'') as unidad_otis,
isnull(avi.codigo_competidor,'') as codigo_competidor,
isnull(avi.codigo_averia,'') as codigo_averia,
(select top 1 descripcion_generico from bitsat_codigo_aviso_elemento where codigo_generico=substring(avi.codigo_averia,1,2)) as generico,
(select top 1 descripcion_elemento from bitsat_codigo_aviso_elemento where codigo_generico=substring(avi.codigo_averia,1,2) and codigo_elemento=substring(avi.codigo_averia,3,2)) as elemento,
(select top 1 descripcion from bitsat_codigo_aviso_tipo where codigo_generico=substring(avi.codigo_averia,1,2) and codigo_tipo=substring(avi.codigo_averia,5,1)) as tipo,
isnull(avi.cargo_labor,'') as cargo_labor,
isnull(tavi.descripcion,isnull(avi.tipo_aviso,'')) as tipo_aviso,
isnull(ltrim(avi.facturable),'') as facturable,
isnull(avi.descripcion_averia,'') as resolucion_averia,
isnull(avi.sugerencias_inspector,'') as sugerencias_inspector,
mav.fecha_recepcion as fecha_recepcion_aviso,
mav.descripcion_averia ,
isnull(estasc.descripcion, isnull(mav.estado_ascensor,'')) as estado_ascensor,
mav.llamador,
mav.telefono_llamador,
aest.descripcion as estado_aviso,
case when isnull(enviado_op,0)=0 then 'N' else 'S' end as enviado_op,
fecha_envio_op,
case when fecha_envio_24h is null then 'N' else 'S' end as enviado_24h,
fecha_envio_24h
from
(select * from BITSAT_ACTIVIDAD  with (nolock) where codigo_actividad='AVI') act
left join bitsat_usuario tec  with (nolock) on act.codigo_compañia=tec.codigo_compañia and act.codigo_centro=tec.codigo_centro and act.codigo_usuario=tec.codigo
left join bitsat_tipo_actividad tact  with (nolock) on act.codigo_actividad=tact.codigo
left join bitsat_unidad uni  with (nolock) on act.compañia_actividad=uni.codigo_compañia and act.centro_actividad=uni.codigo_centro and act.codigo_unidad=uni.codigo_unidad
left join bitsat_provincia pro  with (nolock) on act.compañia_actividad=PRO.codigo_compañia and uni.provincia=pro.codigo_provincia
left join bitsat_poblacion pbl  with (nolock) on uni.provincia=pbl.codigo_provincia and uni.poblacion=pbl.codigo_poblacion
left join bitsat_estado_actividad test  with (nolock) on act.estado=test.estado
left join bitsat_compañia com  with (nolock) on act.compañia_actividad=com.codigo_compañia
left join bitsat_centro cen  with (nolock) on act.compañia_actividad=cen.codigo_compañia and act.centro_actividad=cen.codigo_centro
left join bitsat_usuario sup  with (nolock) on act.codigo_compañia=sup.codigo_compañia and act.codigo_centro=sup.codigo_centro and act.codigo_supervisor=sup.codigo
left join bitsat_identificador ident  with (nolock) on act.codigo_identificador=ident.codigo
left join bitsat_actividad_firma fir  with (nolock) on act.codigo_pda=fir.codigo_pda and act.id=fir.id
left join bitsat_calidad_firmante cal  with (nolock) on fir.calidad_firmante=cal.codigo
left join bitsat_actividad_aviso avi  with (nolock) on act.codigo_pda=avi.codigo_pda and act.id=avi.id
left join bitsat_avisos mav  with (nolock) on act.id_aviso=mav.clave_aviso
left join bitsat_estado_averia aest  with (nolock) on mav.estado_aviso_bitsat=aest.codigo_estado
left join bitsat_tipo_aviso tavi  with (nolock) on avi.tipo_aviso=tavi.codigo
left join bitsat_estado_ascensor estasc  with (nolock) on mav.estado_ascensor=estasc.codigo_estado

GO
/****** Object:  Table [dbo].[BITSAT_TIPO_INSPECCION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_INSPECCION](
	[CODIGO_INSPECCION] [nvarchar](10) NOT NULL,
	[TIPO_SERVICIO] [nvarchar](5) NOT NULL,
	[TIPO_APARATO] [nvarchar](10) NOT NULL,
	[DESCRIPCION_INSPECCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
	[TEXTO_INSPECCION] [nvarchar](50) NULL,
 CONSTRAINT [PK_BITSAT_TIPO_INSPECCION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_INSPECCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_W_DETALLE_INSPECCION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_W_DETALLE_INSPECCION]
AS
SELECT     act.CODIGO_PDA, CONVERT(nvarchar, act.ID, 112) + REPLACE(CONVERT(nvarchar, act.ID, 108), ':', '') AS idact, act.codigo_compañia, 
                      act.CODIGO_CENTRO, act.CODIGO_USUARIO, tec.NOMBRE + ' ' + ISNULL(tec.APELLIDOS, N'') AS tecnico, act.CODIGO_ACTIVIDAD, 
                      tact.DESCRIPCION AS actividad, act.añomes, act.LONGITUD, act.LATITUD, act.CODIGO_BARRAS_INICIO, act.CODIGO_BARRAS_FIN, act.FECHA_INICIO, 
                      act.FECHA_FIN, act.HORA_INICIO, act.HORA_FIN, ISNULL(act.SERVICIO_FIJO, N'') AS servicio_fijo, ISNULL(act.COMPENSABLE, N'') AS compensable, 
                      act.CODIGO_UNIDAD, uni.NOMBRE_UNIDAD, ISNULL(uni.VIA, N'') AS via, uni.DIRECCION, uni.NUMERO, uni.COMPLEMENTO_DIRECCION, 
                      uni.CODIGO_POSTAL, pro.DESCRIPCION AS provincia, pbl.DESCRIPCION AS poblacion, act.ESTADO AS codigo_estado, test.DESCRIPCION AS estado, 
                      com.DESCRIPCION AS compañia, cen.DESCRIPCION AS centro, sup.NOMBRE + ' ' + ISNULL(sup.APELLIDOS, N'') AS supervisor, 
                      ident.DESCRIPCION AS identificador, ISNULL(LTRIM(fir.IMPOSIBILIDAD_FIRMA), N'') AS imposibilidad_firma, ISNULL(fir.NOMBRE_FIRMANTE, N'') 
                      AS nombre_firmante, ISNULL(fir.PISO_FIRMANTE, N'') AS piso_firmante, ISNULL(fir.TELEFONO_FIRMANTE, N'') AS telefono_firmante, 
                      ISNULL(cal.DESCRIPCION, N'') AS calidad_firmante, ISNULL(fir.DIRECCION_CORREO_ELECTRONICO, N'') AS direccion_correo_electronico, fir.FIRMA, 
                      ISNULL(LTRIM(fir.ENVIAR_MAIL), N'') AS enviar_firma, ISNULL(CONVERT(nvarchar, ins.FECHA_PREVISTA, 103), N'') AS fecha_prevista, 
                      ISNULL(apa.DESCRIPCION, N'') AS tipo_aparato, ISNULL(tins.DESCRIPCION_INSPECCION, N'') AS tipo_inspeccion, 
                      ISNULL(ins.OBSERVACIONES_TECNICO, N'') AS observaciones_tecnico, ISNULL(ins.OBSERVACIONES_OTROS, N'') AS observaciones_otros, 
                      ISNULL(gra.DESCRIPCION, N'') AS grado_satisfaccion, ISNULL(ins.OBSERVACIONES_CLIENTE, N'') AS observaciones_cliente, uni.TIPO_SERVICIO, 
                      act.ID_ACTIVIDAD_FIRMA AS id_firma, act.ID AS id
FROM         (SELECT     CODIGO_PDA, ID, CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_USUARIO, CODIGO_ACTIVIDAD, CODIGO_UNIDAD, 
                                              COMPAÑIA_ACTIVIDAD, CENTRO_ACTIVIDAD, CODIGO_SUPERVISOR, CODIGO_IDENTIFICADOR, ESTADO, AÑOMES, LONGITUD, LATITUD, 
                                              CODIGO_BARRAS_INICIO, FECHA_INICIO, HORA_INICIO, FECHA_FIN_CB, CODIGO_BARRAS_FIN, FECHA_FIN, HORA_FIN, SERVICIO_FIJO, 
                                              COMPENSABLE, FECHA_AVISO, ID_AVISO, MOTIVO_PAUSA, MOTIVO_IMPOSIBILIDAD_ACCESO, ID_ACTIVIDAD_FIRMA, 
                                              FECHA_HORA_IMPOSIBILIDAD
                       FROM          dbo.BITSAT_ACTIVIDAD  with (nolock) 
                       WHERE      (CODIGO_ACTIVIDAD = 'INSPP')) AS act LEFT OUTER JOIN
                      dbo.BITSAT_USUARIO AS tec  with (nolock) ON act.codigo_compañia = tec.codigo_compañia AND act.CODIGO_CENTRO = tec.CODIGO_CENTRO AND 
                      act.CODIGO_USUARIO = tec.CODIGO LEFT OUTER JOIN
                      dbo.BITSAT_TIPO_ACTIVIDAD AS tact  with (nolock) ON act.CODIGO_ACTIVIDAD = tact.CODIGO LEFT OUTER JOIN
                      dbo.BITSAT_UNIDAD AS uni  with (nolock) ON act.compañia_actividad = uni.codigo_compañia AND act.CENTRO_ACTIVIDAD = uni.CODIGO_CENTRO AND 
                      act.CODIGO_UNIDAD = uni.CODIGO_UNIDAD LEFT OUTER JOIN
                      dbo.BITSAT_PROVINCIA AS pro  with (nolock) ON act.compañia_actividad = PRO.codigo_compañia AND uni.PROVINCIA = pro.CODIGO_PROVINCIA LEFT OUTER JOIN
                      dbo.BITSAT_POBLACION AS pbl  with (nolock) ON uni.PROVINCIA = pbl.CODIGO_PROVINCIA AND uni.POBLACION = pbl.CODIGO_POBLACION LEFT OUTER JOIN
                      dbo.BITSAT_ESTADO_ACTIVIDAD AS test  with (nolock) ON act.ESTADO = test.ESTADO LEFT OUTER JOIN
                      dbo.BITSAT_COMPAÑIA AS com  with (nolock) ON act.compañia_actividad = com.codigo_compañia LEFT OUTER JOIN
                      dbo.BITSAT_CENTRO AS cen  with (nolock) ON act.compañia_actividad = cen.codigo_compañia AND 
                      act.CENTRO_ACTIVIDAD = cen.CODIGO_CENTRO LEFT OUTER JOIN
                      dbo.BITSAT_USUARIO AS sup  with (nolock) ON act.codigo_compañia = sup.codigo_compañia AND act.CODIGO_CENTRO = sup.CODIGO_CENTRO AND 
                      act.CODIGO_SUPERVISOR = sup.CODIGO LEFT OUTER JOIN
                      dbo.BITSAT_IDENTIFICADOR AS ident  with (nolock) ON act.CODIGO_IDENTIFICADOR = ident.CODIGO LEFT OUTER JOIN
                      dbo.BITSAT_ACTIVIDAD_FIRMA AS fir  with (nolock) ON act.CODIGO_PDA = fir.CODIGO_PDA AND act.ID = fir.ID LEFT OUTER JOIN
                      dbo.BITSAT_CALIDAD_FIRMANTE AS cal  with (nolock) ON fir.CALIDAD_FIRMANTE = cal.CODIGO LEFT OUTER JOIN
                      dbo.BITSAT_ACTIVIDAD_INSPECCION AS ins  with (nolock) ON act.CODIGO_PDA = ins.CODIGO_PDA AND act.ID = ins.ID LEFT OUTER JOIN
                      dbo.BITSAT_TIPO_APARATO AS apa  with (nolock) ON ins.TIPO_APARATO = apa.CODIGO AND act.CODIGO_COMPAÑIA = apa.CODIGO_COMPAÑIA LEFT OUTER JOIN
                      dbo.BITSAT_TIPO_INSPECCION AS tins  with (nolock) ON ins.TIPO_INSPECCION = tins.CODIGO_INSPECCION LEFT OUTER JOIN
                      dbo.BITSAT_GRADO_SATISFACCION AS gra  with (nolock) ON ins.GRADO_SATISFACCION = gra.GRADO_SATISFACCION

GO
/****** Object:  Table [dbo].[BITSAT_UNIDAD_SUPERVISOR_MONTAJE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_UNIDAD_SUPERVISOR_MONTAJE](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[ACTIVIDAD] [nvarchar](1) NULL,
	[SUPERVISOR_MONTAJE] [nvarchar](15) NULL,
	[DISP] [bit] NOT NULL,
	[ESTADO] [nvarchar](3) NULL,
 CONSTRAINT [PK_BITSAT_UNIDAD_SUPERVISOR_MONTAJE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_UNIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_PEGASO_GASTOS_BACKUP_5]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO













CREATE VIEW [dbo].[V_PEGASO_GASTOS_BACKUP_5]
AS

SELECT
	COMPAÑIA_ACTIVIDAD AS IdCia,
	CONVERT(NVARCHAR(2),SUBSTRING(CONVERT(VARCHAR,DATEPART(YEAR,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)),3,2)) AS Year,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Mes,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Dia,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_USUARIO))) AS IdEmpleado,
	'1' AS IdCentro,
	ISNULL(BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,BITSAT_ACTIVIDAD.CODIGO_CENTRO) AS Loge,
	
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(ISNULL(ISNULL(ISNULL(
		(CASE WHEN BITSAT_ACTIVIDAD.CODIGO_ACTIVIDAD='IMP' AND BITSAT_ACTIVIDAD.MOTIVO_PAUSA IN ('N','K','S') THEN ISNULL(MONT.SUPERVISOR_MONTAJE,BITSAT_USUARIO.SUPERIOR) ELSE
			(CASE WHEN ISNULL(BITSAT_RUTA.SUPERVISOR,'') = '000001' THEN NULL ELSE BITSAT_RUTA.SUPERVISOR END) END)
	,BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR),BITSAT_USUARIO.SUPERIOR),'')))) AS IdSupervisor,


	CONVERT(DECIMAL(9,2),ISNULL(BITSAT_ACTIVIDAD_GASTO.IMPORTE,0)) AS Gastos,
	CONVERT(NVARCHAR(2),BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO) AS CodGasto,
	CONVERT(VARCHAR(7),dbo.ObtenerCodigoActividad(BITSAT_ACTIVIDAD.CODIGO_PDA, BITSAT_ACTIVIDAD.ID)) AS CodActividad,
	ISNULL(BITSAT_ACTIVIDAD.CODIGO_UNIDAD,'') AS Concepto,
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA AS FechaAlta,
	CASE WHEN BITSAT_RUTA.SUPERVISOR IS NULL THEN '000001' ELSE NULL END AS IdSupFunciones,
	CASE WHEN BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO = '06' THEN CONVERT(nvarchar(7),BITSAT_ACTIVIDAD_GASTO.KM) ELSE NULL END AS Kilometraje
FROM 
	BITSAT_INTERFACE_GASTOS_PEGASO INNER JOIN
	BITSAT_ACTIVIDAD_GASTO ON BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA AND BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD_GASTO.ID AND
		BITSAT_INTERFACE_GASTOS_PEGASO.FECHA=BITSAT_ACTIVIDAD_GASTO.FECHA INNER JOIN
	BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_GASTO.ID=BITSAT_ACTIVIDAD.ID
	AND BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
	LEFT JOIN BITSAT_UNIDAD ON BITSAT_ACTIVIDAD.COMPAÑIA_ACTIVIDAD=BITSAT_UNIDAD.CODIGO_COMPAÑIA AND 
		BITSAT_ACTIVIDAD.CODIGO_UNIDAD=BITSAT_UNIDAD.CODIGO_UNIDAD
	LEFT JOIN (SELECT DISTINCT CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, SUPERVISOR FROM BITSAT_RUTA WHERE DISP=1)BITSAT_RUTA ON BITSAT_UNIDAD.CODIGO_COMPAÑIA=BITSAT_RUTA.CODIGO_COMPAÑIA AND 
		BITSAT_UNIDAD.CODIGO_RUTA=BITSAT_RUTA.CODIGO_RUTA AND
		SUBSTRING(BITSAT_UNIDAD.CODIGO_CENTRO,1,6)=BITSAT_RUTA.CODIGO_CENTRO
	LEFT JOIN BITSAT_USUARIO ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=BITSAT_USUARIO.CODIGO AND BITSAT_USUARIO.SUPERIOR IS NOT NULL AND BITSAT_USUARIO.DISP=1
	LEFT JOIN (SELECT CODIGO_COMPAÑIA, CODIGO_UNIDAD, 
					CASE WHEN ISNUMERIC(SUPERVISOR_MONTAJE) = 1 THEN CONVERT(NVARCHAR(6),CONVERT(INT,SUPERVISOR_MONTAJE)) ELSE  SUPERVISOR_MONTAJE END AS SUPERVISOR_MONTAJE
					FROM BITSAT_UNIDAD_SUPERVISOR_MONTAJE WHERE ISNULL(SUPERVISOR_MONTAJE,'') <> '' AND DISP=1)MONT ON BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA=MONT.CODIGO_COMPAÑIA AND BITSAT_ACTIVIDAD.CODIGO_UNIDAD=MONT.CODIGO_UNIDAD AND 
		 BITSAT_ACTIVIDAD.CODIGO_ACTIVIDAD='IMP' AND BITSAT_ACTIVIDAD.MOTIVO_PAUSA IN ('N','K','S')
WHERE 
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA_PROCESO IS NULL AND BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO <> '15'
UNION ALL
SELECT
	COMPAÑIA_ACTIVIDAD AS IdCia,
	CONVERT(NVARCHAR(2),SUBSTRING(CONVERT(VARCHAR,DATEPART(YEAR,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)),3,2)) AS Year,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Mes,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Dia,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_USUARIO))) AS IdEmpleado,
	'1' AS IdCentro,
	ISNULL(BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,BITSAT_ACTIVIDAD.CODIGO_CENTRO) AS Loge,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(ISNULL(ISNULL(ISNULL((CASE WHEN ISNULL(BITSAT_RUTA.SUPERVISOR,'') = '000001' THEN NULL ELSE BITSAT_RUTA.SUPERVISOR END),BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR),BITSAT_USUARIO.SUPERIOR),'')))) AS IdSupervisor,

	CONVERT(DECIMAL(9,2),(CASE WHEN BITSAT_ACTIVIDAD_GASTO.IMPORTE > CONVERT(DECIMAL(9,2),(ISNULL(ISNULL(ISNULL(EXCEP.IMPORTE, IMP_SALIDAS.IMPORTE), CONVERT(FLOAT,BITSAT_ACTIVIDAD_GASTO.IMPORTE)),0)))
		THEN CONVERT(DECIMAL(9,2),((ISNULL(ISNULL(ISNULL(EXCEP.IMPORTE, IMP_SALIDAS.IMPORTE), CONVERT(FLOAT,BITSAT_ACTIVIDAD_GASTO.IMPORTE)),0))))
		ELSE BITSAT_ACTIVIDAD_GASTO.IMPORTE END)) AS Gastos,
	CONVERT(NVARCHAR(2),BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO) AS CodGasto,

	CONVERT(VARCHAR(7),dbo.ObtenerCodigoActividad(BITSAT_ACTIVIDAD.CODIGO_PDA, BITSAT_ACTIVIDAD.ID)) AS CodActividad,
	ISNULL(BITSAT_ACTIVIDAD.CODIGO_UNIDAD,'') AS Concepto,
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA AS FechaAlta,
	CASE WHEN BITSAT_RUTA.SUPERVISOR IS NULL THEN '000001' ELSE NULL END AS IdSupFunciones,
	NULL AS Kilometraje
FROM 
	BITSAT_INTERFACE_GASTOS_PEGASO INNER JOIN
	BITSAT_ACTIVIDAD_GASTO ON BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA AND BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD_GASTO.ID AND
		BITSAT_INTERFACE_GASTOS_PEGASO.FECHA=BITSAT_ACTIVIDAD_GASTO.FECHA INNER JOIN
	BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_GASTO.ID=BITSAT_ACTIVIDAD.ID
	AND BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
	LEFT JOIN BITSAT_UNIDAD ON BITSAT_ACTIVIDAD.COMPAÑIA_ACTIVIDAD=BITSAT_UNIDAD.CODIGO_COMPAÑIA AND 
		BITSAT_ACTIVIDAD.CODIGO_UNIDAD=BITSAT_UNIDAD.CODIGO_UNIDAD
	LEFT JOIN (SELECT DISTINCT CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, SUPERVISOR FROM BITSAT_RUTA WHERE DISP=1)BITSAT_RUTA ON BITSAT_UNIDAD.CODIGO_COMPAÑIA=BITSAT_RUTA.CODIGO_COMPAÑIA AND 
		BITSAT_UNIDAD.CODIGO_RUTA=BITSAT_RUTA.CODIGO_RUTA AND
		SUBSTRING(BITSAT_UNIDAD.CODIGO_CENTRO,1,6)=BITSAT_RUTA.CODIGO_CENTRO
	LEFT JOIN BITSAT_USUARIO ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=BITSAT_USUARIO.CODIGO AND BITSAT_USUARIO.SUPERIOR IS NOT NULL AND BITSAT_USUARIO.DISP=1
	LEFT JOIN BITSAT_USUARIO_EXCEPCION_SALIDA EXCEP ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=EXCEP.CODIGO_USUARIO AND BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA=EXCEP.CODIGO_COMPAÑIA AND BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD=EXCEP.CODIGO_CENTRO
	LEFT JOIN (SELECT MAX_YEAR.COMPAÑIA, MAX_YEAR.AÑO, MAX_MES.MES, DEF.IMP_CT AS IMPORTE  FROM
				(SELECT COMPAÑIA, MAX(AÑO) AS AÑO FROM BITSAT_TIPO_GASTO_DEF WHERE CODIGO='15' 
				GROUP BY COMPAÑIA)MAX_YEAR INNER JOIN 
				(SELECT COMPAÑIA, AÑO, MAX(MES) AS MES FROM BITSAT_TIPO_GASTO_DEF WHERE CODIGO='15' 
				GROUP BY COMPAÑIA, AÑO)MAX_MES ON MAX_YEAR.COMPAÑIA=MAX_MES.COMPAÑIA AND MAX_YEAR.AÑO=MAX_MES.AÑO
				INNER JOIN BITSAT_TIPO_GASTO_DEF DEF ON MAX_YEAR.COMPAÑIA=DEF.COMPAÑIA AND MAX_YEAR.AÑO=DEF.AÑO AND 
				MAX_MES.MES=DEF.MES AND DEF.CODIGO=15)IMP_SALIDAS
		ON BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA=IMP_SALIDAS.COMPAÑIA
WHERE 
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA_PROCESO IS NULL AND BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO = '15'
	AND BITSAT_ACTIVIDAD.CODIGO_ACTIVIDAD = 'AVI'

	





GO
/****** Object:  View [dbo].[V_W_RUTA_REALIZADA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE view [dbo].[V_W_RUTA_REALIZADA]
as
SELECT --distinct
	act.codigo_pda, act.id,
	act.codigo_actividad as codigo_actividad,
	u.codigo as codigo_tecnico, ltrim(rtrim(isnull(u.nombre,'')+' '+ isnull(u.apellidos,'') )) as Tecnico,
	act.codigo_compañia, c.descripcion as compañia,
	act.codigo_centro, ce.descripcion as centro, 
	act.codigo_unidad,  isnull(un.nombre_unidad, '') as nombre_unidad,
	isnull(ltrim(isnull(un.via,'')+' ')+un.direccion+ ' ' +un.numero,rtrim(av.tipo_via+' '+rtrim(av.direccion)+' '+av.numero1+' ' +av.numero2)) as direccion, 
	isnull(pblUnidad.descripcion,isnull(pblAviso.descripcion,'??')) as poblacion, 
	isnull(proUnidad.descripcion,isnull(proAviso.descripcion,'??')) as provincia, 
	isnull(un.codigo_postal,av.codigo_provincia+av.distrito_postal) as codigo_postal,
	tact.descripcion as actividad, 
	est.descripcion as DescripcionEstado,
	convert(nvarchar,isnull(act.fecha_inicio, act.fecha_fin),103) as fecha,
	convert(nvarchar, isnull(act.hora_inicio, act.hora_fin),108) as hora,
	convert(nvarchar,act.fecha_inicio,103) as fecha_inicio, 
	convert(nvarchar,act.hora_inicio,108) as hora_inicio, 
	case when codigo_barras_inicio=0 then '' else convert(nvarchar,act.hora_inicio,108) end as inicio_cb,
	convert(nvarchar, act.fecha_fin,103) as fecha_fin, 
	convert(nvarchar, act.hora_fin,108) as hora_fin,
	case when codigo_barras_fin=0 then '' else convert(nvarchar, act.fecha_fin_cb,108) end as fin_cb,
	convert(nvarchar, act.hora_fin - act.hora_inicio,108) as Tiempo_Total,
	convert(nvarchar,act.fecha_inicio-(select top 1 fecha_inicio from dbo.bitsat_actividad where codigo_pda=act.codigo_pda and codigo_usuario=act.codigo_usuario and convert(nvarchar,fecha_inicio,112)=convert(nvarchar,act.fecha_inicio,112) and fecha_inicio<act.fecha_inicio order by fecha_inicio desc),108) as Tiempo_Desplazamiento,
	replace(isnull(act.longitud,''),',','.') as longitud,
	replace(isnull(act.latitud,''),',','.') as latitud,
	case est.color 
	when 'ROJO' then '#FF0000'
	when 'AMARILLO' then '#FFFF00'
	when 'VERDE' then '#00FF00'
	when 'MARRON' then '#800000'
	when 'NARANJA' then '#FFA500'
	else '#00FFFF'
	end as color,
	u.color as ColorTecnico,
	isnull((
		select count(*) 
		from bitsat_avisos a 
		where a.codigo_compañia=act.codigo_compañia 
		and a.unidad=act.codigo_unidad 
		and a.codigo_Tecnico=act.codigo_usuario
		and a.estado_aviso_bitsat in ( 1,2,6,8)
		and year(a.fecha_recepcion)=year(getdate()) and  month(a.fecha_recepcion)=month(getdate())
	) ,0) as AvisosPendientes
	, convert(nvarchar,act.fecha_inicio,103) as fecha_actividad
	, r.codigo_ruta as RUTA
	, isnull(r.descripcion,r.codigo_ruta) as ruta_descripcion
FROM 
	dbo.BITSAT_ACTIVIDAD act  WITH (NOLOCK) --- 34.000		       	
	left JOIN dbo.BITSAT_UNIDAD AS un  WITH (NOLOCK)  ON --- 22.000
		act.codigo_compañia = un.codigo_compañia and 
		act.codigo_unidad = un.CODIGO_unidad
	inner join Bitsat_Tipo_Actividad as tact  WITH (NOLOCK)  on 
		act.codigo_actividad=tact.codigo
	inner join BitSat_Estado_Actividad as est  WITH (NOLOCK) on 
		act.estado=est.estado
	inner JOIN bitsat_compañia c  WITH (NOLOCK)  on 
		act.codigo_compañia=c.codigo_compañia
	inner join bitsat_centro ce   WITH (NOLOCK) on 
		act.codigo_compañia=ce.codigo_compañia and 
		act.codigo_centro=ce.codigo_centro
	inner join dbo.BITSAT_USUARIO AS u  WITH (NOLOCK)  ON 
		act.codigo_compañia = u.codigo_compañia and 
		act.codigo_usuario = u.CODIGO 	
	left join dbo.BITSAT_AVISOS AS av  WITH (NOLOCK)  on --- 
		act.id_aviso=av.clave_aviso and act.codigo_usuario=av.codigo_tecnico
	left join bitsat_provincia proUnidad  WITH (NOLOCK) on -- 2080
		un.codigo_compañia=proUnidad.codigo_compañia and un.provincia=proUnidad.codigo_provincia 
	left join bitsat_provincia proAviso  WITH (NOLOCK)  on -- 2080		
		av.codigo_compañia=proAviso.codigo_compañia and av.codigo_provincia=proAviso.codigo_provincia	
	left join bitsat_poblacion pblUnidad  WITH (NOLOCK)  on --- 10.000		
		un.provincia=pblUnidad.codigo_provincia and un.poblacion=pblUnidad.codigo_poblacion 		
	left join bitsat_poblacion pblAviso  WITH (NOLOCK)  on --- 10.000		
		av.codigo_provincia=pblAviso.codigo_provincia and av.codigo_poblacion=pblAviso.codigo_poblacion	
	left join (select ID, r.codigo_compañia, CODIGO_TECNICO as idbitrutas, codigo_ruta, descripcion 
				from BITSAT_RUTAS r
					left join BITSAT_RUTAS_TECNICO rt on r.ID = rt.IDRUTA) r    on
		r.codigo_compañia = act.codigo_compañia 
		and r.idbitrutas = act.codigo_usuario
		and r.ID = un.IDRUTA				
where
		act.codigo_actividad in ('INI','AVI','INSPP','MONTA','ORDTA','ORDTC','PC','FIN')

GO
/****** Object:  Table [dbo].[PBI_EficienciaMantenimientoHistorico]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PBI_EficienciaMantenimientoHistorico](
	[AÑO] [int] NULL,
	[MES] [int] NULL,
	[IDCIA] [nvarchar](2) NULL,
	[COMPAÑIA] [nvarchar](50) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[CENTRO] [nvarchar](50) NULL,
	[LOGE] [nvarchar](8) NULL,
	[CODIGO_SUPERVISOR] [nvarchar](15) NULL,
	[SUPERVISOR] [nvarchar](50) NULL,
	[RUTA] [nvarchar](4) NULL,
	[UNIDAD] [nvarchar](5) NULL,
	[PREVISTAS] [int] NULL,
	[REALIZADAS] [int] NULL,
	[PENDIENTES] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_PBI_EficienciaMantenimiento_Cierre]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vw_PBI_EficienciaMantenimiento_Cierre]
AS

	SELECT AÑO,	MES, IDCIA, COMPAÑIA, CODIGO_CENTRO, CENTRO, LOGE, CODIGO_SUPERVISOR, SUPERVISOR, RUTA, UNIDAD, PREVISTAS, REALIZADAS, PENDIENTES, CONVERT(datetime, (CONVERT(varchar, AÑO) + '-' + FORMAT(MES, '00') + '-01')) as FechaV
	FROM PBI_EficienciaMantenimientoHistorico
	WHERE AÑO = YEAR(GETDATE()) AND MES IN (MONTH(DATEADD(MONTH, -1, GETDATE())), MONTH(DATEADD(MONTH, -2, GETDATE())))


GO
/****** Object:  View [dbo].[V_W_UBICACION_TECNICOS_BAK]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE View [dbo].[V_W_UBICACION_TECNICOS_BAK]
AS
SELECT top 100 percent  t.rank, t.cia as codigo_compañia, t.loge as codigo_centro, t.codigo, 
t.tecnico as Nombre, 
isnull(right(v.fecha,2)+'/'+substring(v.fecha,5,2),'') as fecha,
isnull(left(v.hora,2)+':'+substring(v.hora,3,2),'') as hora, 
isnull(replace(v.longitud,',','.'),'') as Longitud, 
isnull(replace(v.latitud,',','.'),'') as Latitud,
case when  isnull(v.hora,'')='' then '#00CCFF'
when  datediff(mi,left(v.hora,2)+':'+substring(v.hora,3,2),ltrim(datepart(hh,getdate())) +':'+ltrim(datepart(mi,getdate())))>isnull(p.valorparam,60) then '#00FF00'
else  '#FF0000'
End as color
FROM         
	v_w_tecnicos as t cross join
	(select valorparam from bitsat_parametros where nombreparam='MinutosAlarmaPosicion') as p  
	left join 
	((
	select * from dbo.bitsat_Historico_Tecnico 
	where tipo_mensaje='20' and  (ISNULL(longitud, '') <> '') AND (ISNULL(latitud, '') <> '')
	)
	AS v 
	INNER JOIN
	(SELECT     codigo_compañia, codigo_centro, DriverNr, MAX(fecha + hora) AS rest
	 FROM          dbo.bitsat_Historico_Tecnico
	 WHERE      tipo_mensaje='20' and (ISNULL(longitud, '') <> '') AND (ISNULL(latitud, '') <> '')
     GROUP BY codigo_compañia, codigo_centro,DriverNr) AS ht ON v.codigo_compañia=ht.codigo_compañia and  v.codigo_centro=ht.codigo_centro and v.DriverNr = ht.DriverNr AND (v.fecha +  v.hora) = ht.rest     
     ) on v.codigo_compañia=t.cia and v.drivernr=t.codigo
group by 
t.rank,
t.cia, t.loge, t.codigo, 
t.tecnico , 
isnull(right(v.fecha,2)+'/'+substring(v.fecha,5,2),'') ,
isnull(left(v.hora,2)+':'+substring(v.hora,3,2),'') , 
isnull(replace(v.longitud,',','.'),'') , 
isnull(replace(v.latitud,',','.'),'') ,
case when  isnull(v.hora,'')='' then '#00CCFF'
when  datediff(mi,left(v.hora,2)+':'+substring(v.hora,3,2),ltrim(datepart(hh,getdate())) +':'+ltrim(datepart(mi,getdate())))>isnull(p.valorparam,60) then '#00FF00'
else  '#FF0000'
End 
order by t.rank




GO
/****** Object:  View [dbo].[V_AVISOS_EXTENDED]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



--/****** DEVUELVE LOS AVISOS PENDIENTES DE ENVIAR O BIEN ENVIADOS y RECIBIDOS EN LOS ******/
--/****** ULTIMOS DIAS, PARA HACER UN REFRESCO EN LA PDA (PAC12)                      ******/
CREATE VIEW [dbo].[V_AVISOS_EXTENDED]
AS
SELECT  a.CLAVE_AVISO, a.CODIGO_compañia, a.CODIGO_CENTRO, a.CODIGO_TECNICO, a.FECHA_RECEPCION, a.ESTADO_AVISO, a.CONTRATO, a.TIPO_SERVICIO, a.ELITE, 
	a.UNIDAD, a.APARATO, a.SITUACION, a.RUTA, a.TIPO_VIA, a.DIRECCION, a.NUMERO1, a.NUMERO2, a.EDIFICIO, a.DISTRITO_POSTAL, a.CODIGO_PROVINCIA, 
        a.CODIGO_POBLACION, a.DIRECCION_AYUDA, a.DESCRIPCION_AVERIA, a.ESTADO_ASCENSOR AS CODIGO_ESTADO_ASCENSOR, ISNULL(e.DESCRIPCION, N'') AS ESTADO_ASCENSOR, 
	ISNULL(e.PRIORIDAD, 99) AS PRIORIDAD, a.LLAMADOR, a.TELEFONO_LLAMADOR, a.OBSERVACIONES, a.REMSN, 
        a.DESCRIPCION_REM_INOP, a.FECHA_ASIGNACION, a.CODIGO_EVENTO, a.ESTADO_AVISO_BITSAT, a.UNIDAD_OTIS, a.CODIGO_COMPETIDOR, a.UNIDAD_CIERRE, 
        a.TECNICO_CIERRE, a.CODIGO_AVERIA, a.TIPO_AVISO, a.INDICADOR_FACTURACION, p.DESCRIPCION AS Provincia, pob.DESCRIPCION AS Poblacion, 
        a.FECHA_HORA_LLEGADA, a.FECHA_HORA_SALIDA, '0' AS ENVIADO, a.ENVIADO_OP, a.FECHA_ENVIO_OP, a.ENVIAR_24h, a.FECHA_ENVIO_24h, 
        a.ENVIAR_24h_CONF, a.FECHA_ENVIO_24h_CONF,
        ISNULL(act.CODIGO_USUARIO, N'') AS usuario_act,
					  ISNULL(act.CODIGO_PDA, N'') AS pda_act,
					  act.FECHA_INICIO AS fecha_act, 	
	ISNULL((SELECT     TOP (1) ACCION
                              FROM         dbo.BITSAT_AVISOS_ESTADOS with (nolock)
                              WHERE     (CLAVE_AVISO = a.CLAVE_AVISO and tecnico_aviso=a.codigo_tecnico) AND (VALIDO = 1)
                              ORDER BY FECHA_HORA DESC), 'LANZADO') AS accion, 
        ISNULL((SELECT     TOP (1) FECHA_HORA_ACCION
                              FROM         dbo.BITSAT_AVISOS_ESTADOS AS BITSAT_AVISOS_ESTADOS_5 with (nolock)
                              WHERE     (CLAVE_AVISO = a.CLAVE_AVISO and tecnico_aviso=a.codigo_tecnico) AND (VALIDO = 1)
                              ORDER BY FECHA_HORA DESC), a.FECHA_RECEPCION) AS fecha_hora_accion, 
        ISNULL((SELECT     TOP (1) LANZAMIENTO_ACCION
                              FROM         dbo.BITSAT_AVISOS_ESTADOS AS BITSAT_AVISOS_ESTADOS_4	with (nolock)
                              WHERE     (CLAVE_AVISO = a.CLAVE_AVISO and tecnico_aviso=a.codigo_tecnico) AND (VALIDO = 1)
                              ORDER BY FECHA_HORA DESC), '') AS lanzamiento_accion, 
        ISNULL((SELECT     TOP (1) MOTIVO_ACCION
                              FROM         dbo.BITSAT_AVISOS_ESTADOS AS BITSAT_AVISOS_ESTADOS_3	with (nolock)
                              WHERE     (CLAVE_AVISO = a.CLAVE_AVISO  and tecnico_aviso=a.codigo_tecnico) AND (VALIDO = 1)
                              ORDER BY FECHA_HORA DESC), '') AS motivo_accion, 
        ISNULL((SELECT     TOP (1) TECNICO_TRANSFER
                              FROM         dbo.BITSAT_AVISOS_ESTADOS AS BITSAT_AVISOS_ESTADOS_2	with (nolock)
                              WHERE     (CLAVE_AVISO = a.CLAVE_AVISO  and tecnico_aviso=a.codigo_tecnico) AND (VALIDO = 1)
                              ORDER BY FECHA_HORA DESC), '') AS tecnico_transfer, 
        ISNULL((SELECT     TOP (1) ind24h
                              FROM         dbo.BITSAT_AVISOS_ESTADOS AS BITSAT_AVISOS_ESTADOS_1	with (nolock)
                              WHERE     (CLAVE_AVISO = a.CLAVE_AVISO  and tecnico_aviso=a.codigo_tecnico) AND (VALIDO = 1)
                              ORDER BY FECHA_HORA DESC), 1) AS ind24h,
        ISNULL(a.CONFIRMADO_TECNICO ,0) as CONFIRMADO_TECNICO,
                      
        a.UNIDAD_PARADA ,
	a.MOTIVO_PARADA ,
	a.MOTIVO_DEVOLUCION ,
	a.TECNICO_ORIGEN_TRANS,
	a.MOTIVO_TRANSFERENCIA,
	a.OBSERVACIONES_TRANSFERENCIA,
	case when isnull(RU.SUPERVISOR,'')='' then '000001' else case when isnumeric(RU.SUPERVISOR)=1 then convert(nvarchar(15), convert(bigint,ru.supervisor)) else ru.SUPERVISOR end end as SUPERVISOR,
	UN.TIEMPO_RESP, 	--Fase 2.2.: TELL en Avisos Tecnico
	UN.VIP,	 			--Fase 2.2.: TELL en Avisos Tecnico
	UN.TIPOCLIENTE_SKP,	--Fase 2.2.: TELL en Avisos Tecnico
	(SELECT TOP (1) TIEMPO_LLEGADA
		FROM	dbo.BITSAT_AVISOS AS BITSAT_AVISOS_1 with (nolock)
		WHERE	CLAVE_AVISO = a.CLAVE_AVISO AND ISNULL(TIEMPO_LLEGADA, '') <> ''
		ORDER BY FECHA_RECEPCION DESC) AS TIEMPO_LLEGADA,  --Fase 2.2.: TELL en Avisos Tecnico
	[dbo].[fncUnidadRebelde](UN.CODIGO_COMPAÑIA, UN.CODIGO_UNIDAD) AS REBELDE,
	[dbo].[fncUnidadCritica](UN.CODIGO_COMPAÑIA, UN.CODIGO_UNIDAD) AS CRITICA
FROM    dbo.BITSAT_AVISOS AS a with (nolock) LEFT OUTER JOIN
	dbo.BITSAT_ESTADO_ASCENSOR AS e with (nolock) ON a.ESTADO_ASCENSOR = e.CODIGO_ESTADO LEFT OUTER JOIN
        dbo.BITSAT_PROVINCIA AS p with (nolock) ON a.CODIGO_compañia = p.CODIGO_compañia AND a.CODIGO_PROVINCIA = p.CODIGO_PROVINCIA LEFT OUTER JOIN
        dbo.BITSAT_POBLACION AS pob  with (nolock) ON a.CODIGO_PROVINCIA = pob.CODIGO_PROVINCIA AND a.CODIGO_POBLACION = pob.CODIGO_POBLACION LEFT OUTER JOIN
	dbo.bitsat_unidad un with (nolock) on a.CODIGO_COMPAÑIA = un.CODIGO_COMPAÑIA and a.UNIDAD=un.CODIGO_UNIDAD left outer join
        (select ID, CODIGO_COMPAÑIA,codigo_Centro, codigo_ruta, max(CODIGO_SUPERVISOR)as supervisor from dbo.BITSAT_RUTAS with (nolock) where disp=1 group by ID, CODIGO_COMPAÑIA ,codigo_Centro, codigo_ruta) as ru on ru.ID = un.IDRUTA left outer join 
        (SELECT     lactividad.CODIGO_PDA, lactividad.ID, lactividad.CODIGO_compañia, lactividad.CODIGO_CENTRO, lactividad.CODIGO_USUARIO, 
                                lactividad.CODIGO_ACTIVIDAD, lactividad.CODIGO_UNIDAD, lactividad.compañia_ACTIVIDAD, lactividad.CENTRO_ACTIVIDAD, 
                                lactividad.CODIGO_SUPERVISOR, lactividad.CODIGO_IDENTIFICADOR, lactividad.ESTADO, lactividad.añomes, lactividad.LONGITUD, 
                                lactividad.LATITUD, lactividad.CODIGO_BARRAS_INICIO, lactividad.FECHA_INICIO, lactividad.HORA_INICIO, lactividad.FECHA_FIN_CB, 
                                lactividad.CODIGO_BARRAS_FIN, lactividad.FECHA_FIN, lactividad.HORA_FIN, lactividad.SERVICIO_FIJO, lactividad.COMPENSABLE, 
                                lactividad.FECHA_AVISO, lactividad.ID_AVISO, lactividad.MOTIVO_PAUSA
        FROM          dbo.BITSAT_ACTIVIDAD AS lactividad  with (nolock) INNER JOIN
                                    (SELECT     ID_AVISO, codigo_usuario, MAX(ID) AS id
                                        FROM          dbo.BITSAT_ACTIVIDAD as a with (nolock) 
									WHERE      (NOT (ID_AVISO IS NULL))
									GROUP BY codigo_usuario,ID_AVISO) AS act_aviso ON lactividad.codigo_usuario=act_aviso.codigo_usuario and  lactividad.ID = act_aviso.id AND lactividad.ID_AVISO = act_aviso.ID_AVISO) AS act ON 
        a.CLAVE_AVISO = act.ID_AVISO and a.CODIGO_TECNICO = act.codigo_usuario LEFT OUTER JOIN
		dbo.BITSAT_ACTIVIDAD_AVISO AS aa  with (nolock) ON act.CODIGO_PDA = aa.CODIGO_PDA AND act.ID = aa.ID
		where (isnull(a.ENVIADO_OP ,'0')='0' or FECHA_RECEPCION> dateadd(d,-5, Getdate()) )


GO
/****** Object:  View [dbo].[vvStrRutasViewRutasRealizadas]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/****** Objeto:  View [dbo].[vvStrRutasViewRutasRealizadas]    Fecha de la secuencia de comandos: 03/14/2014 12:24:05 ******/

CREATE  VIEW [dbo].[vvStrRutasViewRutasRealizadas]
AS
SELECT    isnull(row_number() OVER (ORDER BY  (SELECT     1)), 0) AS IdRowNumber, 
d.CODIGO_WEB as rankTecnico, 
r.[codigo_pda]      ,r.[id] ,r.[codigo_actividad]
      ,r.[codigo_tecnico]      ,r.[Tecnico]
      ,r.[codigo_compañia]      ,r.[compañia]
      ,r.[codigo_centro]      ,r.[centro]
      ,r.[codigo_unidad]      ,r.[nombre_unidad]
      ,r.[direccion]      ,r.[poblacion]      ,r.[provincia]      ,r.[codigo_postal]
      ,r.[actividad]      ,r.[DescripcionEstado]
      ,r.[fecha]      ,r.[hora]
      ,r.[fecha_inicio]      ,r.[hora_inicio]
      ,r.[inicio_cb]      ,r.[fecha_fin]      ,r.[hora_fin]      ,r.[fin_cb]
      ,r.[Tiempo_Total]      ,r.[Tiempo_Desplazamiento]
      ,r.[longitud]      ,r.[latitud]
      ,r.[color]      ,r.[ColorTecnico]
      ,r.[AvisosPendientes]      ,r.[fecha_actividad]
      ,r.[RUTA]      ,r.[ruta_descripcion]
FROM V_W_RUTA_REALIZADA  r LEFT OUTER JOIN
dbo.BITSAT_USUARIO_DATOS AS d with (nolock) ON r.codigo_compañia = d.codigo_compañia AND r.CODIGO_tecnico = d.CODIGO

GO
/****** Object:  View [dbo].[V_BITSAT_IS_EXPORTAR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[V_BITSAT_IS_EXPORTAR]
AS
	select
		convert(nchar(2), isnull(CODIGO_COMPAÑIA, '')) as CIA,
		convert(nchar(5), isnull(CODIGO_UNIDAD, '')) as UNIDAD,
		convert(nchar(1), isnull(FACTURABLE, '')) as FACTURABLE,
		convert(nchar(1), isnull(PROCEDE_DE_AVISOS, 'N')) as PROCEDE_DE_AVISOS,
		convert(nchar(6), RIGHT('000000' + isnull(CODIGO_USUARIO, ''), 6)) as TECNICO,
		convert(nchar(5), isnull(CODIGO_AVERIA, '')) as CODIGO_AVERIA,
		convert(nchar(1), isnull(REPAR_SUST, '')) as REPAR_SUST,
		convert(nchar(50), isnull(NUM_BITSAT, '')) as NUM_BITSAT,
		convert(nchar(8), FORMAT(FECHA_TRABAJOS, 'yyyyMMdd')) AS FECHA_TRABAJOS,
		ID
	from BITSAT_EXP_DATA
	where IND_EXPORTAR = 1 AND ACTIVIDAD = 'INF_SER' AND ISNULL(CODIGO_UNIDAD, '') <> '' AND ISNULL(CODIGO_AVERIA, '') <> ''

GO
/****** Object:  View [dbo].[V_AVISOS_PENDIENTES_TECNICO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_AVISOS_PENDIENTES_TECNICO]
AS
SELECT     u.CODIGO_compañia, a.CODIGO_TECNICO, count(*) as NUM_AVISOS                      
FROM         dbo.BITSAT_AVISOS AS a with (nolock)
			INNER JOIN BITSAT_USUARIO AS u with (nolock) ON a.CODIGO_TECNICO = u.CODIGO	AND DISP = 1
WHERE     (ISNULL(a.ENVIADO_OP, 0) = 0)
group by u.codigo_compañia, a.codigo_tecnico 

GO
/****** Object:  View [dbo].[V_W_HojasPendientesProcesar_Bck]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [dbo].[V_W_HojasPendientesProcesar_Bck]
as
with fechas as(
 select fecha 
 from lastdates(isnull((select datediff(Day,MAX(FECHA_FIN_MES), GETDATE())-1 from BITSAT_CIERRE_FINANCIERO  where estado='F'),45))
 where fecha<=DATEADD(day, DATEDIFF(day, 0, GETDATE())-1,0)  
)
select distinct top 1000 compañia, centro, tecnico,supervisor,supervisor_real, fecha, tipo_jornada 
from
(
Select act.codigo_Compañia as compañia, act.codigo_centro as centro, act.codigo_usuario as tecnico,  act.superior as supervisor, act.superior as supervisor_real,act.fecha , act.tipo_jornada ,act.codigo_unidad, act.id, act.codigo_pda, act.codigo_actividad,
act.MOTIVO_PAUSA , dbo.esLaborable2(act.codigo_compañia, act.codigo_centro, act.codigo_usuario, fecha, act.MOTIVO_PAUSA) as laborable
from 
(
select f.fecha, act.codigo_compañia, act.codigo_centro, act.codigo_usuario, act.superior, act.codigo_pda, min(id) as id,act.codigo_actividad, act.MOTIVO_PAUSA ,act.tipo_jornada,act.codigo_unidad
from 
fechas  f
inner  join 
(
select 
u.CODIGO_COMPAÑIA , u.codigo_centro, a2.codigo_usuario, u.superior,
convert(datetime, convert(nvarchar,isnull(t.time_ini, isnull(a2.hora_inicio, a2.hora_fin)),103),103) as inicio,
convert(datetime, convert(nvarchar,isnull(t.time_end, isnull(a2.hora_fin, a2.hora_inicio)),103),103) as fin,
isnull(t.tipo_jornada ,A2.TIPO_JORNADA) as tipo_jornada,
a2.codigo_actividad ,
a2.MOTIVO_PAUSA ,
isnull(t.time_ini, isnull(a2.hora_inicio, a2.hora_inicio)) as hora_inicio,
isnull(t.time_end, isnull(a2.hora_fin, a2.fecha_inicio)) as hora_fin,
a2.codigo_pda ,
a2.id,
a2.codigo_unidad,
a2.añomes 
from
(
 Select ID, CODIGO_PDA, CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_USUARIO, FECHA_INICIO, HORA_INICIO, FECHA_FIN, hora_fin, codigo_actividad, MOTIVO_PAUSA , TIPO_JORNADA, CODIGO_UNIDAD, AÑOMES
 from  bitsat_actividad with (nolock) 
 where not codigo_actividad in  ('ANO','FIN','PC') and id>=DATEADD(MONTH,-2,GETDATE()) 
) a2 
inner join (Select CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO, superior from bitsat_usuario with (nolock) where superior is not null ) u on a2.CODIGO_USUARIO = u.codigo and a2.CODIGO_COMPAÑIA = u.CODIGO_COMPAÑIA 
left join bitsat_actividad_tiempo t with (nolock) on a2.codigo_pda=t.codigo_pda and a2.id=t.id 
where 
not (a2.codigo_actividad in ('ABS','IMP') and isnull(t.time_ini, isnull(a2.hora_inicio,a2.hora_fin)) = isnull(t.time_end, isnull(a2.hora_fin, a2.hora_inicio)) ) and 
not (isnull(t.tipo_jornada,a2.tipo_jornada) <>'N' and a2.CODIGO_ACTIVIDAD in ('ABS','IMP')) 
and 
((isnull(t.tipo_jornada, a2.tipo_jornada)  ='N' and not a2.codigo_actividad in ('FIN', 'GAS','ANO','PC' ) ) or 
 (isnull(t.tipo_jornada, a2.tipo_jornada) <>'N' and a2.CODIGO_ACTIVIDAD in ('INI', 'AVI' )))

) act on f.fecha between act.inicio and act.fin 
group by f.fecha, act.codigo_compañia, act.codigo_centro, act.codigo_usuario, act.superior, act.codigo_pda, act.codigo_actividad,act.MOTIVO_PAUSA, act.tipo_jornada,act.codigo_unidad, act.añomes 
) act
left join 
(
select c.codigo_compañia , c.codigo_tecnico, c.año, c.mes, l.dia , l.descripcion as tipo_jornada_linea, 
sum(case when (l.confirmado_supervisor=1 or l.confirmado_delegado=1) then 1 else 0 end  ) as confirmado
from 
fechas f
inner join BITSAT_HOJA_TIEMPOS_CABECERA c with (nolock)  on f.fecha between c.fecha_desde and c.fecha_hasta 
left join bitsat_hoja_tiempos_linea l with (nolock) on c.codigo_hoja=l.codigo_hoja and DATEPART(day,f.fecha)=l.dia 
group by c.codigo_compañia , c.codigo_tecnico, c.año, c.mes, l.dia , l.descripcion 
 ) hojas
on  hojas.año =year(act.fecha) and hojas.mes=month(act.fecha) 
and act.codigo_compañia = hojas.codigo_compañia and act.CODIGO_USUARIO = hojas.codigo_tecnico   
and hojas.dia=day(act.fecha) and hojas.tipo_jornada_linea=act.tipo_jornada
where   
( 
 (hojas.dia is null )   -- no hay nada para ese dia y tipo de jornada
or
 (
  hojas.confirmado=0 and 
  not act.codigo_actividad in ('INI','FIN','IMP','ABS') and 
  not exists (Select codigo_linea 
             from 
	bitsat_hoja_tiempos_cabecera c1 with (nolock) inner join 
	bitsat_hoja_tiempos_linea l1 with (nolock) on c1.codigo_hoja=l1.codigo_hoja
	where c1.codigo_tecnico=act.codigo_usuario and c1.año=year(act.fecha) and c1.mes=month(act.fecha) and l1.dia=day(act.fecha) and l1.codigo_pda = act.codigo_pda and l1.id= act.ID )
 )
)
) k 
where k.tipo_jornada <>'N' or k.laborable='1' or not (k.CODIGO_ACTIVIDAD in ('ABS','IMP'))
order by k.compañia , k.fecha desc 









GO
/****** Object:  Table [dbo].[TT_BIR_ICD_JOB_Actividad]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_BIR_ICD_JOB_Actividad](
	[JOB_NUMBER_ID] [int] IDENTITY(1,1) NOT NULL,
	[JOB_NUMBER] [nvarchar](14) NOT NULL,
	[JOB_DESCRIPTION] [nvarchar](50) NULL,
	[UNIT_NUMBER] [nvarchar](7) NOT NULL,
	[RELATED_JOB_NUMBER] [nvarchar](15) NULL,
	[JOB_STATUS] [nvarchar](20) NOT NULL,
	[JOB_TYPE] [nvarchar](20) NOT NULL,
	[JOB_SUB_TYPE] [nvarchar](50) NULL,
	[JOB_INITIATION_DATE] [datetime] NOT NULL,
	[JOB_DISPATCH_TIME] [datetime] NULL,
	[JOB_START_TIME] [datetime] NULL,
	[JOB_END_TIME] [datetime] NULL,
	[JOB_LEAVE_ON_SITE] [datetime] NULL,
	[JOB_FAULT_CODE] [nvarchar](1024) NULL,
	[JOB_ACTION_CODE] [nvarchar](1) NULL,
	[JOB_COMPONENT] [nvarchar](100) NULL,
	[JOB_SUBCOMPONENT] [nvarchar](100) NULL,
	[EXTERNAL_REASON] [nvarchar](100) NULL,
	[JOB_CONTENT_CUSTOMER] [nvarchar](100) NULL,
	[JOB_CONTENT_MECHANIC] [nvarchar](1024) NULL,
	[JOB_FEEDBACK_CODE] [nvarchar](50) NULL,
	[JOB_REQUEST_TYPE] [nvarchar](50) NULL,
	[JOB_SOURCE] [nvarchar](50) NULL,
	[JOB_CUSTOMER_COMPLAINT_TEXT] [nvarchar](1024) NULL,
	[JOB_CUSTOMER_PERCEPT_TEXT] [nvarchar](1024) NULL,
	[JOB_MECHANIC_ID] [nvarchar](15) NOT NULL,
	[JOB_MECHANIC_NAME] [nvarchar](100) NULL,
	[JOB_CALL_DEFFERED_DATE_TIME] [datetime] NULL,
	[JOB_CLOSED_BY] [nvarchar](100) NULL,
	[JOB_BILLABLE] [int] NOT NULL,
	[JOB_OTIS_ONE_REFERENCE_EVENT_ID] [nvarchar](100) NULL,
	[JOB_CALLBACK_CODE] [nvarchar](1024) NULL,
	[JOB_PHASE] [nvarchar](100) NULL,
	[JOB_RESTART_DATETIME] [datetime] NULL,
	[JOB_REPAIR_DESCRIPCION1] [nvarchar](1024) NULL,
	[JOB_REPAIR_DESCRIPCION2] [nvarchar](1024) NULL,
	[JOB_REPAIR_DESCRIPCION3] [nvarchar](1024) NULL,
	[JOB_REPAIR_DESCRIPCION4] [nvarchar](1024) NULL,
	[JOB_REPAIR_DESCRIPCION5] [nvarchar](1024) NULL,
	[JOB_ROA_FLAG] [nvarchar](100) NULL,
	[JOB_ROA_TYPES] [nvarchar](100) NULL,
	[JOB_ROA_CREATEDDATETIME] [datetime] NULL,
	[JOM_CUSTOMER_FLAG] [int] NOT NULL,
	[JOB_ROA_CATEGORY] [nvarchar](100) NULL,
	[JOB_CALLBACK_TYPE] [nvarchar](100) NULL,
	[JOB_ADDITIONAL_FIELD3] [nvarchar](100) NULL,
	[JOB_ADDITIONAL_FIELD4] [nvarchar](100) NULL,
	[JOB_ADDITIONAL_FIELD5] [nvarchar](100) NULL,
	[JOB_ADDITIONAL_FIELD6] [nvarchar](100) NULL,
	[JOB_ADDITIONAL_FIELD7] [nvarchar](100) NULL,
	[JOB_ADDITIONAL_FIELD8] [nvarchar](100) NULL,
	[JOB_INSERTDATE] [datetime] NOT NULL,
	[JOB_UPDATEDATE] [datetime] NOT NULL,
	[ID] [datetime] NULL,
	[CLAVE_AVISO] [nvarchar](15) NULL,
	[PROCESSDATE] [datetime] NULL,
 CONSTRAINT [PK_TT_BIR_ICD_JOB_Actividad] PRIMARY KEY CLUSTERED 
(
	[JOB_NUMBER_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_BIR_ICD_JOB_Actividad]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_BIR_ICD_JOB_Actividad]
AS
SELECT JOB_NUMBER, JOB_DESCRIPTION, UNIT_NUMBER, RELATED_JOB_NUMBER, JOB_STATUS, JOB_TYPE, JOB_SUB_TYPE, JOB_INITIATION_DATE, JOB_DISPATCH_TIME, JOB_START_TIME, JOB_END_TIME, 
							 JOB_LEAVE_ON_SITE, JOB_FAULT_CODE, JOB_ACTION_CODE, JOB_COMPONENT, JOB_SUBCOMPONENT, EXTERNAL_REASON, JOB_CONTENT_CUSTOMER, JOB_CONTENT_MECHANIC, JOB_FEEDBACK_CODE, 
							 JOB_REQUEST_TYPE, JOB_SOURCE, JOB_CUSTOMER_COMPLAINT_TEXT, JOB_CUSTOMER_PERCEPT_TEXT, JOB_MECHANIC_ID, JOB_MECHANIC_NAME, JOB_CALL_DEFFERED_DATE_TIME, JOB_CLOSED_BY, 
							 JOB_BILLABLE, JOB_OTIS_ONE_REFERENCE_EVENT_ID, JOB_CALLBACK_CODE, JOB_PHASE, JOB_RESTART_DATETIME, JOB_REPAIR_DESCRIPCION1, JOB_REPAIR_DESCRIPCION2, JOB_REPAIR_DESCRIPCION3, 
							 JOB_REPAIR_DESCRIPCION4, JOB_REPAIR_DESCRIPCION5, JOB_ROA_FLAG, JOB_ROA_TYPES, JOB_ROA_CREATEDDATETIME, JOM_CUSTOMER_FLAG, JOB_ROA_CATEGORY, JOB_CALLBACK_TYPE, 
							 JOB_ADDITIONAL_FIELD3, JOB_ADDITIONAL_FIELD4, JOB_ADDITIONAL_FIELD5, JOB_ADDITIONAL_FIELD6, JOB_ADDITIONAL_FIELD7, JOB_ADDITIONAL_FIELD8, JOB_INSERTDATE, JOB_UPDATEDATE,
							 CLAVE_AVISO, ID
FROM TT_BIR_ICD_JOB_Actividad WITH (NOLOCK)
GO
/****** Object:  View [dbo].[V_W_CIERRE_FINANCIERO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_W_CIERRE_FINANCIERO]
AS
SELECT
	c.año, 
	c.mes,
	c.codigo_hoja, 
	c.codigo_compañia, cia.DESCRIPCION as compañia,
	c.codigo_centro, cen.DESCRIPCION as centro,
	c.codigo_tecnico, u.nombre as tecnico,
	c.codigo_supervisor, sup.nombre as supervisor,
	l.tipo_linea,
	l.dia,
	sum(l.horas_dentro_jornada) as horas_dentro_jornada,
	sum(l.horas_fuera_jornada) as horas_fuera_jornada,
	sum(l.horas_normales) as horas_normales,
	sum(l.horas_no_contabilizar) as horas_no_contabilizar,
	sum(l.horas_extras) as horas_extras,
	sum(l.horas_viaje_dentro) as horas_viaje_dentro, 
	sum(l.horas_viaje_fuera) as horas_viaje_fuera,
	sum(l.horas_con_plus) as horas_con_plus,
	sum(l.gastos) as gastos,
	sum(isnull(l.kilometros,0)) as kilometros,
	l.confirmado_delegado as confirmado_supervisor ,
	[dbo].[tblObtenerHorasTecnicoDia] (	c.codigo_compañia, c.codigo_centro, c.codigo_tecnico, DATEFROMPARTS ( c.año, c.mes, l.dia) ) as horas_jornada
from BITSAT_HOJA_TIEMPOS_CABECERA c
	inner join BITSAT_COMPAÑIA cia on c.codigo_compañia =cia.CODIGO_COMPAÑIA 
	inner join BITSAT_HOJA_TIEMPOS_LINEA l on c.codigo_hoja =l.codigo_hoja 
	inner join bitsat_usuario u on c.codigo_tecnico =u.codigo 
	inner join bitsat_usuario sup on c.codigo_supervisor=sup.codigo 
	inner join bitsat_centro cen on c.codigo_compañia =cen.CODIGO_COMPAÑIA and c.codigo_centro =cen.CODIGO_CENTRO 
	inner join (select top 1 f.año, f.mes from BITSAT_CIERRE_FINANCIERO f where f.ESTADO = 'I' order by año desc, mes desc) f on c.año=f.año and c.mes=f.mes
group by 
	c.año, c.mes, c.codigo_hoja, 
	c.codigo_compañia, cia.DESCRIPCION ,
	c.codigo_centro, cen.DESCRIPCION ,
	c.codigo_tecnico, u.nombre ,
	c.codigo_supervisor, sup.nombre ,
	l.tipo_linea,
	l.dia,
	l.confirmado_delegado

GO
/****** Object:  View [dbo].[V_W_HojasPendientesProcesar]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE view [dbo].[V_W_HojasPendientesProcesar]
as
with fechas as(
 select fecha 
 from lastdates(isnull((select datediff(Day,MAX(FECHA_FIN_MES), GETDATE())-1 from BITSAT_CIERRE_FINANCIERO  where estado='F'),45))
 where fecha<=DATEADD(day, DATEDIFF(day, 0, GETDATE())-1,0)  
)
select distinct top 1000 compañia, centro, tecnico,supervisor,supervisor_real, fecha, tipo_jornada 
from
(
Select act.codigo_Compañia as compañia, act.codigo_centro as centro, act.codigo_usuario as tecnico,  act.superior as supervisor, act.superior as supervisor_real,act.fecha , act.tipo_jornada ,act.codigo_unidad, act.id, act.codigo_pda, act.codigo_actividad,
act.MOTIVO_PAUSA , dbo.esLaborable2(act.codigo_compañia, act.codigo_centro, act.codigo_usuario, fecha, act.MOTIVO_PAUSA) as laborable
from 
(
select f.fecha, act.codigo_compañia, act.codigo_centro, act.codigo_usuario, act.superior, act.codigo_pda, min(id) as id,act.codigo_actividad, act.MOTIVO_PAUSA ,act.tipo_jornada,act.codigo_unidad
from 
fechas  f
inner  join 
(
select 
u.CODIGO_COMPAÑIA , u.codigo_centro, a2.codigo_usuario, u.superior,
convert(datetime, convert(nvarchar,isnull(t.time_ini, isnull(a2.hora_inicio, a2.hora_fin)),103),103) as inicio,
convert(datetime, convert(nvarchar,isnull(t.time_end, isnull(a2.hora_fin, a2.hora_inicio)),103),103) as fin,
isnull(t.tipo_jornada ,A2.TIPO_JORNADA) as tipo_jornada,
a2.codigo_actividad ,
a2.MOTIVO_PAUSA ,
isnull(t.time_ini, isnull(a2.hora_inicio, a2.hora_inicio)) as hora_inicio,
isnull(t.time_end, isnull(a2.hora_fin, a2.fecha_inicio)) as hora_fin,
a2.codigo_pda ,
a2.id,
a2.codigo_unidad,
a2.añomes 
from
(
 Select ID, CODIGO_PDA, CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_USUARIO, FECHA_INICIO, HORA_INICIO, FECHA_FIN, hora_fin, codigo_actividad, MOTIVO_PAUSA , TIPO_JORNADA, CODIGO_UNIDAD, AÑOMES
 from  bitsat_actividad with (nolock) 
 where not codigo_actividad in  ('ANO','FIN','PC') and id>=DATEADD(MONTH,-2,GETDATE()) 
) a2 
inner join (Select CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO, superior from bitsat_usuario with (nolock) where superior is not null ) u on a2.CODIGO_USUARIO = u.codigo and a2.CODIGO_COMPAÑIA = u.CODIGO_COMPAÑIA 
left join bitsat_actividad_tiempo t with (nolock) on a2.codigo_pda=t.codigo_pda and a2.id=t.id 
where 
not (a2.codigo_actividad in ('ABS','IMP') and isnull(t.time_ini, isnull(a2.hora_inicio,a2.hora_fin)) = isnull(t.time_end, isnull(a2.hora_fin, a2.hora_inicio)) ) and 
not (isnull(t.tipo_jornada,a2.tipo_jornada) <>'N' and a2.CODIGO_ACTIVIDAD in ('ABS','IMP')) 
and 
((isnull(t.tipo_jornada, a2.tipo_jornada)  ='N' and not a2.codigo_actividad in ('FIN', 'GAS','ANO','PC' ) ) or 
 (isnull(t.tipo_jornada, a2.tipo_jornada) <>'N' and a2.CODIGO_ACTIVIDAD in ('INI', 'AVI' )))

) act on f.fecha between act.inicio and act.fin 
group by f.fecha, act.codigo_compañia, act.codigo_centro, act.codigo_usuario, act.superior, act.codigo_pda, act.codigo_actividad,act.MOTIVO_PAUSA, act.tipo_jornada,act.codigo_unidad, act.añomes 
) act
left join 
(
select /*c.codigo_compañia , */c.codigo_tecnico, c.año, c.mes, l.dia , l.descripcion as tipo_jornada_linea, 
sum(case when (l.confirmado_supervisor=1 or l.confirmado_delegado=1) then 1 else 0 end  ) as confirmado
from 
fechas f
inner join BITSAT_HOJA_TIEMPOS_CABECERA c with (nolock)  on f.fecha between c.fecha_desde and c.fecha_hasta 
left join bitsat_hoja_tiempos_linea l with (nolock) on c.codigo_hoja=l.codigo_hoja and DATEPART(day,f.fecha)=l.dia 
group by /*c.codigo_compañia , */c.codigo_tecnico, c.año, c.mes, l.dia , l.descripcion 
 ) hojas
on  hojas.año =year(act.fecha) and hojas.mes=month(act.fecha) 
/*and act.codigo_compañia = hojas.codigo_compañia*/ and act.CODIGO_USUARIO = hojas.codigo_tecnico   
and hojas.dia=day(act.fecha) and hojas.tipo_jornada_linea=act.tipo_jornada
where   
( 
 (hojas.dia is null )   -- no hay nada para ese dia y tipo de jornada
or
 (
  hojas.confirmado=0 and 
  not act.codigo_actividad in ('INI','FIN','IMP','ABS') and 
  not exists (Select codigo_linea 
             from 
	bitsat_hoja_tiempos_cabecera c1 with (nolock) inner join 
	bitsat_hoja_tiempos_linea l1 with (nolock) on c1.codigo_hoja=l1.codigo_hoja
	where c1.codigo_tecnico=act.codigo_usuario and c1.año=year(act.fecha) and c1.mes=month(act.fecha) and l1.dia=day(act.fecha) and l1.codigo_pda = act.codigo_pda and l1.id= act.ID )
 )
)
) k 
where k.tipo_jornada <>'N' or k.laborable='1' or not (k.CODIGO_ACTIVIDAD in ('ABS','IMP'))
order by k.compañia , k.fecha desc 









GO
/****** Object:  View [dbo].[V_W_RUTA_REALIZADA_MEJORADO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






CREATE VIEW [dbo].[V_W_RUTA_REALIZADA_MEJORADO]
AS
SELECT 
act.codigo_pda, act.id,
act.codigo_actividad as codigo_actividad,
u.codigo as codigo_tecnico, ltrim(rtrim(isnull(u.nombre,'')+' '+ isnull(u.apellidos,'') )) as Tecnico,
act.codigo_compañia, c.descripcion as compañia,
act.codigo_centro, ce.descripcion as centro, 
act.codigo_unidad,  isnull(un.nombre_unidad, '') as nombre_unidad,
isnull(ltrim(isnull(un.via,'')+' ')+un.direccion+ ' ' +un.numero,rtrim(av.tipo_via+' '+rtrim(av.direccion)+' '+av.numero1+' ' +av.numero2)) as direccion, p.descripcion as provincia, pbl.descripcion as poblacion, 
isnull(un.codigo_postal,av.codigo_provincia+av.distrito_postal) as codigo_postal,
tact.descripcion as actividad, 
est.descripcion as estado,
convert(nvarchar,isnull(act.fecha_inicio, act.fecha_fin),103) as fecha,
convert(nvarchar,act.fecha_inicio,103) as fecha_inicio, 
convert(nvarchar,act.hora_inicio,108) as hora_inicio, 
case when codigo_barras_inicio=0 then '' else convert(nvarchar,act.hora_inicio,108) end as inicio_cb,
convert(nvarchar, act.fecha_fin,103) as fecha_fin, 
convert(nvarchar, act.hora_fin,108) as hora_fin,
case when codigo_barras_fin=0 then '' else convert(nvarchar, act.fecha_fin_cb,108) end as fin_cb,
convert(nvarchar, act.hora_fin - act.hora_inicio,108) as Tiempo_Total,
convert(nvarchar,act.fecha_inicio-(select top 1 fecha_inicio from dbo.bitsat_actividad where codigo_pda=act.codigo_pda and codigo_usuario=act.codigo_usuario and convert(nvarchar,fecha_inicio,112)=convert(nvarchar,act.fecha_inicio,112) and fecha_inicio<act.fecha_inicio order by fecha_inicio desc),108) as Tiempo_Desplazamiento,
replace(act.longitud,',','.') as LATITUD,
replace(act.latitud,',','.') as LONGITUD,
case est.color 
when 'ROJO' then '#FF0000'
when 'AMARILLO' then '#FFFF00'
when 'VERDE' then '#00FF00'
when 'MARRON' then '#800000'
when 'NARANJA' then '#FFA500'
else '#00FFFF'
end as color,
u.color as ColorTecnico
FROM         
(select * from dbo.BITSAT_ACTIVIDAD  with (nolock) where codigo_actividad in ('INI','AVI','INSPP','MONTA','ORDTA','ORDTC','PC','FIN','ABS', 'IMP')) as ACT 
inner join Bitsat_Tipo_Actividad as tact  with (nolock) on act.codigo_actividad=tact.codigo
inner join BitSat_Estado_Actividad as est  with (nolock) on act.estado=est.estado
inner JOIN bitsat_compañia c  with (nolock) on act.codigo_compañia=c.codigo_compañia
inner join bitsat_centro ce  with (nolock) on act.codigo_compañia=ce.codigo_compañia and act.codigo_centro=ce.codigo_centro
inner join dbo.BITSAT_USUARIO AS u  with (nolock) ON act.codigo_compañia = u.codigo_compañia and act.codigo_usuario = u.CODIGO 
left JOIN dbo.BITSAT_UNIDAD AS un  with (nolock) ON act.codigo_compañia = un.codigo_compañia and act.codigo_unidad = un.CODIGO_unidad
left join dbo.BITSAT_AVISOS AS av  with (nolock) on act.id_aviso=av.clave_aviso
left join bitsat_provincia p  with (nolock) on 
  (not un.codigo_unidad is null and (un.codigo_compañia=p.codigo_compañia and un.provincia=p.codigo_provincia )) or
  (not av.clave_aviso is null and (av.codigo_compañia=p.codigo_compañia and av.codigo_provincia=p.codigo_provincia))
left join bitsat_poblacion pbl  with (nolock) on 
  (not un.codigo_unidad is null and (un.provincia=pbl.codigo_provincia and un.poblacion=pbl.codigo_poblacion )) or
  (not av.clave_aviso is null and (av.codigo_provincia=pbl.codigo_provincia and av.codigo_poblacion=pbl.codigo_poblacion))





GO
/****** Object:  Table [dbo].[BITSAT_INTERFACE_MATERIALES_HERMES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_INTERFACE_MATERIALES_HERMES](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[MATERIAL] [nvarchar](50) NULL,
	[CANTIDAD] [real] NULL,
	[TIPO_MATERIAL] [int] NULL,
	[FECHA_PROCESO] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_INTERFACE_MATERIALES_HERMES] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_HERMES_MATERIALES_FOTOGRAFIA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[V_HERMES_MATERIALES_FOTOGRAFIA]
AS

SELECT
	BITSAT_INTERFACE_MATERIALES_HERMES.CODIGO_PDA AS CodigoPDA,
	BITSAT_INTERFACE_MATERIALES_HERMES.ID AS IdActividad,
	BITSAT_ACTIVIDAD_FOTOGRAFIA.FECHA AS Fecha,
	BITSAT_ACTIVIDAD_FOTOGRAFIA.FOTOGRAFIA AS Fotografia
FROM 
	BITSAT_INTERFACE_MATERIALES_HERMES INNER JOIN
	BITSAT_ACTIVIDAD_MATERIAL ON BITSAT_INTERFACE_MATERIALES_HERMES.CODIGO_PDA=BITSAT_ACTIVIDAD_MATERIAL.CODIGO_PDA AND BITSAT_INTERFACE_MATERIALES_HERMES.ID=BITSAT_ACTIVIDAD_MATERIAL.ID AND
		BITSAT_INTERFACE_MATERIALES_HERMES.FECHA=BITSAT_ACTIVIDAD_MATERIAL.FECHA INNER JOIN
	BITSAT_ACTIVIDAD_FOTOGRAFIA ON BITSAT_ACTIVIDAD_MATERIAL.ID=BITSAT_ACTIVIDAD_FOTOGRAFIA.ID AND BITSAT_ACTIVIDAD_FOTOGRAFIA.TIPO_FOTOGRAFIA IN(1,3)
		AND BITSAT_ACTIVIDAD_MATERIAL.CODIGO_PDA=BITSAT_ACTIVIDAD_FOTOGRAFIA.CODIGO_PDA
	
WHERE 
	BITSAT_INTERFACE_MATERIALES_HERMES.FECHA_PROCESO IS NULL AND
	BITSAT_ACTIVIDAD_FOTOGRAFIA.FOTOGRAFIA IS NOT NULL AND 1 = 2



GO
/****** Object:  View [dbo].[V_PEGASO_GASTOS_BACKUP_2]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE VIEW [dbo].[V_PEGASO_GASTOS_BACKUP_2]
AS
	SELECT
		COMPAÑIA_ACTIVIDAD AS IdCia,
		CONVERT(NVARCHAR(2),SUBSTRING(CONVERT(VARCHAR,DATEPART(YEAR,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)),3,2)) AS Year,
		REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
			CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Mes,
		REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
			CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Dia,
		CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_USUARIO))) AS IdEmpleado,
		'1' AS IdCentro,
		ISNULL(BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,BITSAT_ACTIVIDAD.CODIGO_CENTRO) AS Loge,
		CONVERT(NVARCHAR(6),RTRIM(LTRIM(ISNULL(ISNULL(ISNULL((CASE WHEN ISNULL(BITSAT_RUTA.SUPERVISOR,'') = '000001' THEN NULL ELSE BITSAT_RUTA.SUPERVISOR END),BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR),BITSAT_USUARIO.SUPERIOR),'')))) AS IdSupervisor,
		CONVERT(DECIMAL(9,2),ISNULL(BITSAT_ACTIVIDAD_GASTO.IMPORTE,0)) AS Gastos,
		CONVERT(NVARCHAR(2),BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO) AS CodGasto,
		CONVERT(VARCHAR(7),dbo.ObtenerCodigoActividad(BITSAT_ACTIVIDAD.CODIGO_PDA, BITSAT_ACTIVIDAD.ID)) AS CodActividad,
		ISNULL(BITSAT_ACTIVIDAD.CODIGO_UNIDAD,'') AS Concepto,
		BITSAT_INTERFACE_GASTOS_PEGASO.FECHA AS FechaAlta,
		CASE WHEN BITSAT_RUTA.SUPERVISOR IS NULL THEN '000001' ELSE NULL END AS IdSupFunciones,
		CASE WHEN BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO = '06' THEN CONVERT(nvarchar(7),BITSAT_ACTIVIDAD_GASTO.KM) ELSE NULL END AS Kilometraje
	FROM BITSAT_INTERFACE_GASTOS_PEGASO INNER JOIN
	BITSAT_ACTIVIDAD_GASTO ON BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA AND BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD_GASTO.ID AND
		BITSAT_INTERFACE_GASTOS_PEGASO.FECHA=BITSAT_ACTIVIDAD_GASTO.FECHA INNER JOIN
	BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_GASTO.ID=BITSAT_ACTIVIDAD.ID
	AND BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
	LEFT JOIN BITSAT_UNIDAD ON BITSAT_ACTIVIDAD.COMPAÑIA_ACTIVIDAD=BITSAT_UNIDAD.CODIGO_COMPAÑIA AND 
		BITSAT_ACTIVIDAD.CODIGO_UNIDAD=BITSAT_UNIDAD.CODIGO_UNIDAD
	LEFT JOIN (SELECT DISTINCT CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, SUPERVISOR FROM BITSAT_RUTA WHERE DISP=1)BITSAT_RUTA ON BITSAT_UNIDAD.CODIGO_COMPAÑIA=BITSAT_RUTA.CODIGO_COMPAÑIA AND 
		BITSAT_UNIDAD.CODIGO_RUTA=BITSAT_RUTA.CODIGO_RUTA AND
		SUBSTRING(BITSAT_UNIDAD.CODIGO_CENTRO,1,6)=BITSAT_RUTA.CODIGO_CENTRO
	LEFT JOIN BITSAT_USUARIO ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=BITSAT_USUARIO.CODIGO AND BITSAT_USUARIO.SUPERIOR IS NOT NULL AND BITSAT_USUARIO.DISP=1
	WHERE BITSAT_INTERFACE_GASTOS_PEGASO.FECHA_PROCESO IS NULL






GO
/****** Object:  View [dbo].[V_HERMES_MATERIALES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[V_HERMES_MATERIALES]
AS

SELECT
	BITSAT_ACTIVIDAD.ID AS IdActividad,
	BITSAT_ACTIVIDAD.CODIGO_PDA AS CodigoPDA,
	COMPAÑIA_ACTIVIDAD AS Cia,
	(ISNULL(BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,BITSAT_ACTIVIDAD.CODIGO_CENTRO)) AS Loge,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_USUARIO))) AS IdUsuarioTecnico,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR))) AS IdUsuarioSupervisor,
	CONVERT(NVARCHAR(50),BITSAT_ACTIVIDAD_MATERIAL.MATERIAL) AS Material,
	CONVERT(NVARCHAR(50),BITSAT_TIPO_MATERIAL.DESCRIPCION) AS TipoMaterial,
	CONVERT(REAL,ISNULL(BITSAT_ACTIVIDAD_MATERIAL.CANTIDAD,0)) AS Cantidad,
	CONVERT(VARCHAR(7),dbo.ObtenerCodigoActividad(BITSAT_ACTIVIDAD.CODIGO_PDA, BITSAT_ACTIVIDAD.ID)) AS CodigoActividad,
	ISNULL(BITSAT_UNIDAD.TIPO_CONTRATO,'') AS TipoContrato,
	ISNULL(BITSAT_UNIDAD.CONTRATO,'') AS CodigoContrato,
	ISNULL(BITSAT_UNIDAD.CODIGO_UNIDAD,'') AS CodigoUnidad,
	CONVERT(BIT,(CASE WHEN ISNULL(BITSAT_ACTIVIDAD_AVISO.ESTADO_UNIDAD,0) = 2 THEN 1 ELSE 0 END)) AS IndicadorUrgente,
	BITSAT_INTERFACE_MATERIALES_HERMES.FECHA AS FechaMaterial
FROM 
	BITSAT_INTERFACE_MATERIALES_HERMES INNER JOIN
	BITSAT_ACTIVIDAD_MATERIAL ON BITSAT_INTERFACE_MATERIALES_HERMES.CODIGO_PDA=BITSAT_ACTIVIDAD_MATERIAL.CODIGO_PDA AND BITSAT_INTERFACE_MATERIALES_HERMES.ID=BITSAT_ACTIVIDAD_MATERIAL.ID AND
		BITSAT_INTERFACE_MATERIALES_HERMES.FECHA=BITSAT_ACTIVIDAD_MATERIAL.FECHA INNER JOIN
	BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_MATERIAL.ID=BITSAT_ACTIVIDAD.ID
	AND BITSAT_ACTIVIDAD_MATERIAL.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
	LEFT JOIN BITSAT_UNIDAD ON BITSAT_ACTIVIDAD.COMPAÑIA_ACTIVIDAD=BITSAT_UNIDAD.CODIGO_COMPAÑIA AND 
		BITSAT_ACTIVIDAD.CODIGO_UNIDAD=BITSAT_UNIDAD.CODIGO_UNIDAD
	LEFT JOIN BITSAT_TIPO_MATERIAL ON BITSAT_ACTIVIDAD_MATERIAL.TIPO_MATERIAL=BITSAT_TIPO_MATERIAL.CODIGO AND BITSAT_TIPO_MATERIAL.DISP=1
	LEFT JOIN BITSAT_ACTIVIDAD_AVISO ON BITSAT_ACTIVIDAD.ID=BITSAT_ACTIVIDAD_AVISO.ID AND BITSAT_ACTIVIDAD.CODIGO_PDA=BITSAT_ACTIVIDAD_AVISO.CODIGO_PDA AND BITSAT_ACTIVIDAD.CODIGO_ACTIVIDAD='AVI'
WHERE 
	BITSAT_INTERFACE_MATERIALES_HERMES.FECHA_PROCESO IS NULL




GO
/****** Object:  Table [dbo].[BITSAT_ORDEN_T]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ORDEN_T](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[NUMERO_T] [nvarchar](6) NOT NULL,
	[CONTRATO] [nvarchar](5) NOT NULL,
	[QUOTEID] [uniqueidentifier] NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[SUPERVISOR] [nvarchar](15) NULL,
	[NUMERO_OFERTA] [nvarchar](10) NULL,
	[TOTAL_HORAS_LABOR] [decimal](18, 2) NULL,
	[TOTAL_MATERIALES] [decimal](18, 2) NULL,
	[FECHA_MATERIAL_PREVISTO] [datetime] NULL,
	[FECHA_LABOR_PREVISTA] [datetime] NULL,
	[PRECIO_OFERTA] [decimal](18, 2) NULL,
	[FECHA_CONTRATACION] [datetime] NULL,
	[ESTADO_EJECUCION] [int] NULL,
	[OBSERVACIONES] [nvarchar](1024) NULL,
	[FECHA_ANULACION] [datetime] NULL,
	[PORCFACTTERMINACION] [decimal](5, 2) NULL,
	[FECHA_TERMINACION] [datetime] NULL,
	[FECHA_CAMBIO_ESTADO] [datetime] NULL,
	[BLOQUEO_ENVIO_JDE] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_ORDEN_T] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[NUMERO_T] ASC,
	[CONTRATO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_JDE_WO_BAJAS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[V_JDE_WO_BAJAS]
AS

	SELECT 
		BITSAT_ORDEN_T.CODIGO_COMPAÑIA AS CodCia,
		BITSAT_ORDEN_T.CONTRATO AS CodContrato,
		BITSAT_ORDEN_T.NUMERO_T AS NumeroOrden,
		CONVERT(DATETIME,CONVERT(VARCHAR(10),BITSAT_ORDEN_T.FECHA_ANULACION,103),103) AS FechaBaja,
		NULL AS CodMotivoBaja
	FROM
		BITSAT_ORDEN_T
		INNER JOIN BITSAT_COMPAÑIA ON BITSAT_ORDEN_T.CODIGO_COMPAÑIA = BITSAT_COMPAÑIA.CODIGO_COMPAÑIA
	WHERE
		BITSAT_ORDEN_T.FECHA_ANULACION IS NOT NULL
		AND ISNULL(BITSAT_COMPAÑIA.DISP_JDE, 0) = 1
		AND ISNULL(BITSAT_ORDEN_T.CODIGO_COMPAÑIA, '') <> ''
		AND ISNULL(BITSAT_ORDEN_T.CONTRATO, '') <> ''
		AND ISNULL(BITSAT_ORDEN_T.NUMERO_T, '') <> ''

GO
/****** Object:  View [dbo].[vw_PBI_EficienciaMantenimiento_Cierre_Total]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE VIEW [dbo].[vw_PBI_EficienciaMantenimiento_Cierre_Total]
AS

	SELECT AÑO,	MES, IDCIA, COMPAÑIA, CODIGO_CENTRO, CENTRO, LOGE, CODIGO_SUPERVISOR, SUPERVISOR, RUTA, UNIDAD, PREVISTAS, REALIZADAS, PENDIENTES, CONVERT(datetime, (CONVERT(varchar, AÑO) + '-' + FORMAT(MES, '00') + '-01')) as FechaV 
	FROM PBI_EficienciaMantenimientoHistorico


GO
/****** Object:  Table [dbo].[BITSAT_REPARACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_REPARACION](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[NUMERO_T] [nvarchar](6) NOT NULL,
	[CONTRATO] [nvarchar](5) NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[NUMERO_OFERTA] [nvarchar](9) NULL,
	[FECHA_CONCERTADA] [datetime] NULL,
	[SUPERVISOR] [nvarchar](15) NULL,
	[ESTADO] [int] NULL,
	[FECHA_ANULACION] [datetime] NULL,
	[FECHA_TERMINACION] [datetime] NULL,
	[FECHA_MATERIAL_PREVISTO] [datetime] NULL,
	[FECHA_LABOR_PREVISTA] [datetime] NULL,
	[FACTURABLE] [nchar](1) NULL,
	[FECHA_PREVISTA] [datetime] NULL,
	[DESCRIPCION] [nvarchar](1024) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_REPARACIONES_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_UNIDAD] ASC,
	[NUMERO_T] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[V_JDE_WO_ALTAS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[V_JDE_WO_ALTAS]
AS
	SELECT 
		BITSAT_ORDEN_T.CODIGO_COMPAÑIA AS CodCia,
		BITSAT_ORDEN_T.CODIGO_CENTRO AS Loge,
		BITSAT_REPARACION.CODIGO_UNIDAD AS CodUnidad,
		BITSAT_ORDEN_T.CONTRATO AS CodContrato,
		BITSAT_ORDEN_T.NUMERO_T AS NumeroOrden,
		'T' AS CodTipoServicio,
		CONVERT(DATETIME,CONVERT(VARCHAR(10),BITSAT_ORDEN_T.FECHA_CONTRATACION,103),103) AS FechaAltaContrato,
		NULL AS FechaSuspensionUnidad,
		NULL AS MotivoSuspensionUnidad,
		CONVERT(DATETIME,CONVERT(VARCHAR(10),BITSAT_ORDEN_T.FECHA_TERMINACION,103),103) AS FechaVencimiento,
		CONVERT(DATETIME,CONVERT(VARCHAR(10),BITSAT_ORDEN_T.FECHA_CONTRATACION,103),103) AS FechaEfectiva,
		BITSAT_ORDEN_T.NUMERO_OFERTA AS NumeroOferta,
		'WOT' AS TipoWorkOrder,
		'' AS CodTipoInstalacion,
		0 AS NuePro
	FROM
		BITSAT_ORDEN_T INNER JOIN BITSAT_REPARACION
			ON	BITSAT_ORDEN_T.CODIGO_COMPAÑIA=BITSAT_REPARACION.CODIGO_COMPAÑIA AND
				BITSAT_ORDEN_T.CONTRATO=BITSAT_REPARACION.CONTRATO AND
				BITSAT_ORDEN_T.NUMERO_T=BITSAT_REPARACION.NUMERO_T 
		INNER JOIN BITSAT_COMPAÑIA ON BITSAT_ORDEN_T.CODIGO_COMPAÑIA = BITSAT_COMPAÑIA.CODIGO_COMPAÑIA
	WHERE
		-- ESTA LINEA ES REPARACION ABIERTA. SE SUSTITUYE POR BLOQUEO A JDE
		--(BITSAT_REPARACION.DISP=1 AND BITSAT_ORDEN_T.FECHA_ANULACION IS NULL)
		BITSAT_ORDEN_T.BLOQUEO_ENVIO_JDE = 0
		AND ISNULL(BITSAT_COMPAÑIA.DISP_JDE, 0) = 1
		AND ISNULL(BITSAT_ORDEN_T.CODIGO_COMPAÑIA, '') <> ''
		AND ISNULL(BITSAT_ORDEN_T.CONTRATO, '') <> ''
		AND ISNULL(BITSAT_ORDEN_T.NUMERO_T, '') <> ''
		AND ISNULL(BITSAT_REPARACION.CODIGO_UNIDAD, '') <> ''
		AND BITSAT_ORDEN_T.FECHA_CONTRATACION IS NOT NULL
		
		
	
GO
/****** Object:  View [dbo].[V_W_DETALLE_COMUNICACION_GPS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_W_DETALLE_COMUNICACION_GPS] 
AS
SELECT id,
drivernr as	[tecnico],
ordernr as [ultima unidad], 
num_servicio as	[ultima actividad],
st_servicio as [tipo actividad],
longitud,
latitud,
convert(datetime,
substring(fecha, 7,2)+'/'+substring(fecha, 5,2)+'/'+substring(fecha,1,4),103)  as [fecha captura],
substring(hora,1,2)+':'+substring(hora,3,2)+':'+ substring(hora,5,2)  as [hora captura],
timespam as [fecha recepción]
from bitsat_historico_tecnico  with (nolock) 
where not (longitud is null or latitud is null)
and timespam>dateadd(d,-30,getdate())

GO
/****** Object:  View [dbo].[V_AVISOS_FICHEROS_SALIDA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_AVISOS_FICHEROS_SALIDA]
AS

	SELECT
		CLAVE_AVISO,
		CODIGO_TECNICO,
		ESTADO_AVISO_BITSAT,
		MOTIVO_TRANSFERENCIA,
		MOTIVO_DEVOLUCION,
		UNIDAD_PARADA,
		MOTIVO_PARADA,
		ENVIAR_24H_CONF,
		ENVIAR_24H,
		CASE
			WHEN CODIGO_TECNICO IN ('121599', '121538') THEN NULL
			ELSE TIEMPO_LLEGADA
		END AS TIEMPO_LLEGADA,
		CASE
			WHEN CODIGO_TECNICO IN ('121599', '121538') THEN NULL
			ELSE MOTIVO_RETRASO
		END AS MOTIVO_RETRASO,
		FECHA_HORA_LLEGADA,
		FECHA_HORA_SALIDA,
		UNIDAD_OTIS,
		CODIGO_COMPETIDOR,
		UNIDAD_CIERRE,
		TECNICO_CIERRE,
		CODIGO_AVERIA,
		TIPO_AVISO,
		INDICADOR_FACTURACION,
		FECHA_ENVIO_24h,
		FECHA_ENVIO_24h_CONF,
		FICHERO_ENVIO
	FROM
		BITSAT_AVISOS
	WHERE
		 ENVIAR_24h_CONF = 1 OR
		 ENVIAR_24h = 1

GO
/****** Object:  Table [dbo].[BITSAT_GRUPO_USUARIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_GRUPO_USUARIO](
	[CODIGO] [nvarchar](10) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
	[AUTORIZACION] [int] NULL,
 CONSTRAINT [PK_TIPO_USUARIO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_GRUPO_USUARIO_AUTORIZACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_GRUPO_USUARIO_AUTORIZACION](
	[CODIGO_AUTORIZACION] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[MASCARA] [int] NULL,
 CONSTRAINT [PK_BITSAT_GRUPO_USUARIO_AUTORIZACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_AUTORIZACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vvObtenerAutorizacionGrupoUsuario]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vvObtenerAutorizacionGrupoUsuario]
AS
	select isnull(row_number() over (order by (select 1)),0) as IdRowNumber,
	gu.codigo, gu.descripcion, gu.disp, gu.autorizacion as authlevel, 
	gua.descripcion as authlevel_desc, gua.mascara as authlevel_mascara
	from BITSAT_GRUPO_USUARIO gu
	left join BITSAT_GRUPO_USUARIO_AUTORIZACION gua on gu.autorizacion = gua.codigo_autorizacion


GO
/****** Object:  View [dbo].[vvGlobalParametros]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vvGlobalParametros]
AS
SELECT     
	(SELECT     valorparam
    FROM          dbo.BITSAT_PARAMETROS
    WHERE      (nombreparam = 'MinutosAlarmaPosicion')) AS MinutosAlarmaPosicion,
        (SELECT     valorparam
        FROM          dbo.BITSAT_PARAMETROS AS BITSAT_PARAMETROS_4
        WHERE      (nombreparam = 'MinutosAlarmaPosicion')) AS MinutosAlarmaSinMovimiento,
        (SELECT     valorparam
        FROM          dbo.BITSAT_PARAMETROS AS BITSAT_PARAMETROS_3
        WHERE      (nombreparam = 'ColorAlarmaTecnicoPosicion')) AS ColorAlarmaTecnicoPosicion,
        (SELECT     valorparam
        FROM          dbo.BITSAT_PARAMETROS AS BITSAT_PARAMETROS_2
        WHERE      (nombreparam = 'ColorAlarmaTecnicoSinMovimiento')) AS ColorAlarmaTecnicoSinMovimiento,
        (SELECT     valorparam
        FROM          dbo.BITSAT_PARAMETROS AS BITSAT_PARAMETROS_1
        WHERE      (nombreparam = 'ColorAlarmaTecnicoSinPosicion')) AS ColorAlarmaTecnicoSinPosicion,
        (SELECT     CONVERT(decimal(10, 5), valorparam) AS Expr1
        FROM          dbo.BITSAT_PARAMETROS AS BITSAT_PARAMETROS_1
        WHERE      (nombreparam = 'MetrosAlarmaGPSSinMovimiento')) AS DistanciaAlarmaSinMovimiento,
        isnull((SELECT     valorparam
        FROM          dbo.BITSAT_PARAMETROS AS BITSAT_PARAMETROS_1
        WHERE      (nombreparam = 'MinimoRegistrosAlarmaSinMovimiento')),5) AS MinimoRegistrosAlarmaSinMovimiento,
		(SELECT valorparam FROM BITSAT_PARAMETROS WHERE nombreparam = 'ColorUbicacionAviso') AS ColorUbicacionAviso

GO
/****** Object:  View [dbo].[vvStrDetalleActividadViewInspeccion]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vvStrDetalleActividadViewInspeccion]
AS
	SELECT	isnull(row_number() over (order by (select 1)),0) as IdRowNumber, *
	FROM 
		V_W_DETALLE_INSPECCION 

GO
/****** Object:  View [dbo].[V_PEGASO_GASTOS_BACKUP_3]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO








CREATE VIEW [dbo].[V_PEGASO_GASTOS_BACKUP_3]
AS
	
	SELECT
	COMPAÑIA_ACTIVIDAD AS IdCia,
	CONVERT(NVARCHAR(2),SUBSTRING(CONVERT(VARCHAR,DATEPART(YEAR,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)),3,2)) AS Year,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Mes,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Dia,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_USUARIO))) AS IdEmpleado,
	'1' AS IdCentro,
	ISNULL(BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,BITSAT_ACTIVIDAD.CODIGO_CENTRO) AS Loge,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(ISNULL(ISNULL(ISNULL((CASE WHEN ISNULL(BITSAT_RUTA.SUPERVISOR,'') = '000001' THEN NULL ELSE BITSAT_RUTA.SUPERVISOR END),BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR),BITSAT_USUARIO.SUPERIOR),'')))) AS IdSupervisor,
	CONVERT(DECIMAL(9,2),ISNULL(BITSAT_ACTIVIDAD_GASTO.IMPORTE,0)) AS Gastos,
	CONVERT(NVARCHAR(2),BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO) AS CodGasto,
	CONVERT(VARCHAR(7),dbo.ObtenerCodigoActividad(BITSAT_ACTIVIDAD.CODIGO_PDA, BITSAT_ACTIVIDAD.ID)) AS CodActividad,
	ISNULL(BITSAT_ACTIVIDAD.CODIGO_UNIDAD,'') AS Concepto,
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA AS FechaAlta,
	CASE WHEN BITSAT_RUTA.SUPERVISOR IS NULL THEN '000001' ELSE NULL END AS IdSupFunciones,
	CASE WHEN BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO = '06' THEN CONVERT(nvarchar(7),BITSAT_ACTIVIDAD_GASTO.KM) ELSE NULL END AS Kilometraje
FROM BITSAT_INTERFACE_GASTOS_PEGASO INNER JOIN
BITSAT_ACTIVIDAD_GASTO ON BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA AND BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD_GASTO.ID AND
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA=BITSAT_ACTIVIDAD_GASTO.FECHA INNER JOIN
BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_GASTO.ID=BITSAT_ACTIVIDAD.ID
AND BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
LEFT JOIN BITSAT_UNIDAD ON BITSAT_ACTIVIDAD.COMPAÑIA_ACTIVIDAD=BITSAT_UNIDAD.CODIGO_COMPAÑIA AND 
	BITSAT_ACTIVIDAD.CODIGO_UNIDAD=BITSAT_UNIDAD.CODIGO_UNIDAD
LEFT JOIN (SELECT DISTINCT CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, SUPERVISOR FROM BITSAT_RUTA WHERE DISP=1)BITSAT_RUTA ON BITSAT_UNIDAD.CODIGO_COMPAÑIA=BITSAT_RUTA.CODIGO_COMPAÑIA AND 
	BITSAT_UNIDAD.CODIGO_RUTA=BITSAT_RUTA.CODIGO_RUTA AND
	SUBSTRING(BITSAT_UNIDAD.CODIGO_CENTRO,1,6)=BITSAT_RUTA.CODIGO_CENTRO
LEFT JOIN BITSAT_USUARIO ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=BITSAT_USUARIO.CODIGO AND BITSAT_USUARIO.SUPERIOR IS NOT NULL AND BITSAT_USUARIO.DISP=1
WHERE BITSAT_INTERFACE_GASTOS_PEGASO.FECHA_PROCESO IS NULL AND BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO <> '15'
UNION ALL
SELECT
	COMPAÑIA_ACTIVIDAD AS IdCia,
	CONVERT(NVARCHAR(2),SUBSTRING(CONVERT(VARCHAR,DATEPART(YEAR,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)),3,2)) AS Year,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Mes,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Dia,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_USUARIO))) AS IdEmpleado,
	'1' AS IdCentro,
	ISNULL(BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,BITSAT_ACTIVIDAD.CODIGO_CENTRO) AS Loge,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(ISNULL(ISNULL(ISNULL((CASE WHEN ISNULL(BITSAT_RUTA.SUPERVISOR,'') = '000001' THEN NULL ELSE BITSAT_RUTA.SUPERVISOR END),BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR),BITSAT_USUARIO.SUPERIOR),'')))) AS IdSupervisor,
	
	CONVERT(DECIMAL(9,2),(CASE WHEN IMP_SALIDAS.COMPAÑIA IS NULL THEN (ISNULL(BITSAT_ACTIVIDAD_GASTO.IMPORTE,0)) ELSE
		(CASE WHEN CONVERT(DECIMAL(9,2),ISNULL(BITSAT_ACTIVIDAD_GASTO.IMPORTE,0)) > CONVERT(DECIMAL(9,2),IMP_SALIDAS.IMPORTE) THEN (IMP_SALIDAS.IMPORTE) ELSE ISNULL(BITSAT_ACTIVIDAD_GASTO.IMPORTE,0) END)END)) AS Gastos,
	CONVERT(NVARCHAR(2),BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO) AS CodGasto,

	CONVERT(VARCHAR(7),dbo.ObtenerCodigoActividad(BITSAT_ACTIVIDAD.CODIGO_PDA, BITSAT_ACTIVIDAD.ID)) AS CodActividad,
	ISNULL(BITSAT_ACTIVIDAD.CODIGO_UNIDAD,'') AS Concepto,
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA AS FechaAlta,
	CASE WHEN BITSAT_RUTA.SUPERVISOR IS NULL THEN '000001' ELSE NULL END AS IdSupFunciones,
	NULL AS Kilometraje
FROM BITSAT_INTERFACE_GASTOS_PEGASO INNER JOIN
BITSAT_ACTIVIDAD_GASTO ON BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA AND BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD_GASTO.ID AND
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA=BITSAT_ACTIVIDAD_GASTO.FECHA INNER JOIN
BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_GASTO.ID=BITSAT_ACTIVIDAD.ID
AND BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
LEFT JOIN BITSAT_UNIDAD ON BITSAT_ACTIVIDAD.COMPAÑIA_ACTIVIDAD=BITSAT_UNIDAD.CODIGO_COMPAÑIA AND 
	BITSAT_ACTIVIDAD.CODIGO_UNIDAD=BITSAT_UNIDAD.CODIGO_UNIDAD
LEFT JOIN (SELECT DISTINCT CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, SUPERVISOR FROM BITSAT_RUTA WHERE DISP=1)BITSAT_RUTA ON BITSAT_UNIDAD.CODIGO_COMPAÑIA=BITSAT_RUTA.CODIGO_COMPAÑIA AND 
	BITSAT_UNIDAD.CODIGO_RUTA=BITSAT_RUTA.CODIGO_RUTA AND
	SUBSTRING(BITSAT_UNIDAD.CODIGO_CENTRO,1,6)=BITSAT_RUTA.CODIGO_CENTRO
LEFT JOIN BITSAT_USUARIO ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=BITSAT_USUARIO.CODIGO AND BITSAT_USUARIO.SUPERIOR IS NOT NULL AND BITSAT_USUARIO.DISP=1
LEFT JOIN (SELECT MAX_YEAR.COMPAÑIA, MAX_YEAR.AÑO, MAX_MES.MES, DEF.IMP_CT AS IMPORTE  FROM
			(SELECT COMPAÑIA, MAX(AÑO) AS AÑO FROM BITSAT_TIPO_GASTO_DEF WHERE CODIGO='15' AND DISP=1 AND COMPAÑIA='99'
			GROUP BY COMPAÑIA)MAX_YEAR INNER JOIN 
			(SELECT COMPAÑIA, AÑO, MAX(MES) AS MES FROM BITSAT_TIPO_GASTO_DEF WHERE CODIGO='15' AND DISP=1
			GROUP BY COMPAÑIA, AÑO)MAX_MES ON MAX_YEAR.COMPAÑIA=MAX_MES.COMPAÑIA AND MAX_YEAR.AÑO=MAX_MES.AÑO
			INNER JOIN BITSAT_TIPO_GASTO_DEF DEF ON MAX_YEAR.COMPAÑIA=DEF.COMPAÑIA AND MAX_YEAR.AÑO=DEF.AÑO AND 
			MAX_MES.MES=DEF.MES AND DEF.CODIGO=15 AND DEF.DISP = 1)IMP_SALIDAS
	ON BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA=IMP_SALIDAS.COMPAÑIA
WHERE BITSAT_INTERFACE_GASTOS_PEGASO.FECHA_PROCESO IS NULL AND BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO = '15'
UNION ALL
SELECT
	COMPAÑIA_ACTIVIDAD AS IdCia,
	CONVERT(NVARCHAR(2),SUBSTRING(CONVERT(VARCHAR,DATEPART(YEAR,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)),3,2)) AS Year,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(MONTH,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Mes,
	REPLICATE('0', 2 - LEN(CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)))) + 
		CONVERT(VARCHAR,DATEPART(DAY,BITSAT_INTERFACE_GASTOS_PEGASO.FECHA)) AS Dia,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(BITSAT_ACTIVIDAD.CODIGO_USUARIO))) AS IdEmpleado,
	'1' AS IdCentro,
	ISNULL(BITSAT_ACTIVIDAD.CENTRO_ACTIVIDAD,BITSAT_ACTIVIDAD.CODIGO_CENTRO) AS Loge,
	CONVERT(NVARCHAR(6),RTRIM(LTRIM(ISNULL(ISNULL(ISNULL((CASE WHEN ISNULL(BITSAT_RUTA.SUPERVISOR,'') = '000001' THEN NULL ELSE BITSAT_RUTA.SUPERVISOR END),BITSAT_ACTIVIDAD.CODIGO_SUPERVISOR),BITSAT_USUARIO.SUPERIOR),'')))) AS IdSupervisor,
	
	CONVERT(DECIMAL(9,2),ISNULL(BITSAT_ACTIVIDAD_GASTO.IMPORTE,0) - IMP_SALIDAS.IMPORTE) AS Gastos,
	CONVERT(NVARCHAR(2),'18') AS CodGasto,
	
	CONVERT(VARCHAR(7),dbo.ObtenerCodigoActividad(BITSAT_ACTIVIDAD.CODIGO_PDA, BITSAT_ACTIVIDAD.ID)) AS CodActividad,
	ISNULL(BITSAT_ACTIVIDAD.CODIGO_UNIDAD,'') AS Concepto,
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA AS FechaAlta,
	CASE WHEN BITSAT_RUTA.SUPERVISOR IS NULL THEN '000001' ELSE NULL END AS IdSupFunciones,
	NULL AS Kilometraje
FROM BITSAT_INTERFACE_GASTOS_PEGASO INNER JOIN
BITSAT_ACTIVIDAD_GASTO ON BITSAT_INTERFACE_GASTOS_PEGASO.CODIGO_PDA=BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA AND BITSAT_INTERFACE_GASTOS_PEGASO.ID=BITSAT_ACTIVIDAD_GASTO.ID AND
	BITSAT_INTERFACE_GASTOS_PEGASO.FECHA=BITSAT_ACTIVIDAD_GASTO.FECHA INNER JOIN
BITSAT_ACTIVIDAD ON BITSAT_ACTIVIDAD_GASTO.ID=BITSAT_ACTIVIDAD.ID
AND BITSAT_ACTIVIDAD_GASTO.CODIGO_PDA=BITSAT_ACTIVIDAD.CODIGO_PDA
LEFT JOIN BITSAT_UNIDAD ON BITSAT_ACTIVIDAD.COMPAÑIA_ACTIVIDAD=BITSAT_UNIDAD.CODIGO_COMPAÑIA AND 
	BITSAT_ACTIVIDAD.CODIGO_UNIDAD=BITSAT_UNIDAD.CODIGO_UNIDAD
LEFT JOIN (SELECT DISTINCT CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_RUTA, SUPERVISOR FROM BITSAT_RUTA WHERE DISP=1)BITSAT_RUTA ON BITSAT_UNIDAD.CODIGO_COMPAÑIA=BITSAT_RUTA.CODIGO_COMPAÑIA AND 
	BITSAT_UNIDAD.CODIGO_RUTA=BITSAT_RUTA.CODIGO_RUTA AND
	SUBSTRING(BITSAT_UNIDAD.CODIGO_CENTRO,1,6)=BITSAT_RUTA.CODIGO_CENTRO
LEFT JOIN BITSAT_USUARIO ON BITSAT_ACTIVIDAD.CODIGO_USUARIO=BITSAT_USUARIO.CODIGO AND BITSAT_USUARIO.SUPERIOR IS NOT NULL AND BITSAT_USUARIO.DISP=1
INNER JOIN (SELECT MAX_YEAR.COMPAÑIA, MAX_YEAR.AÑO, MAX_MES.MES, DEF.IMP_CT AS IMPORTE  FROM
			(SELECT COMPAÑIA, MAX(AÑO) AS AÑO FROM BITSAT_TIPO_GASTO_DEF WHERE CODIGO='15' AND DISP=1 AND COMPAÑIA='99'
			GROUP BY COMPAÑIA)MAX_YEAR INNER JOIN 
			(SELECT COMPAÑIA, AÑO, MAX(MES) AS MES FROM BITSAT_TIPO_GASTO_DEF WHERE CODIGO='15' AND DISP=1
			GROUP BY COMPAÑIA, AÑO)MAX_MES ON MAX_YEAR.COMPAÑIA=MAX_MES.COMPAÑIA AND MAX_YEAR.AÑO=MAX_MES.AÑO
			INNER JOIN BITSAT_TIPO_GASTO_DEF DEF ON MAX_YEAR.COMPAÑIA=DEF.COMPAÑIA AND MAX_YEAR.AÑO=DEF.AÑO AND 
			MAX_MES.MES=DEF.MES AND DEF.CODIGO=15 AND DEF.DISP = 1)IMP_SALIDAS
	ON BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA=IMP_SALIDAS.COMPAÑIA
WHERE BITSAT_INTERFACE_GASTOS_PEGASO.FECHA_PROCESO IS NULL AND BITSAT_ACTIVIDAD_GASTO.CODIGO_GASTO = '15' AND 
		CONVERT(DECIMAL(9,2),ISNULL(BITSAT_ACTIVIDAD_GASTO.IMPORTE,0)) > CONVERT(DECIMAL(9,2),IMP_SALIDAS.IMPORTE)










GO
/****** Object:  View [dbo].[vvStrDetalleActividadViewAviso]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vvStrDetalleActividadViewAviso]
AS
	SELECT	isnull(row_number() over (order by (select 1)),0) as IdRowNumber, *
	FROM 
		V_W_DETALLE_AVISO  

GO
/****** Object:  View [dbo].[vvHTCabeceraDetalleHojas]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vvHTCabeceraDetalleHojas]
AS
SELECT     
	BITSAT_HOJA_TIEMPOS_CABECERA.codigo_hoja, BITSAT_HOJA_TIEMPOS_CABECERA.codigo_compañia, BITSAT_HOJA_TIEMPOS_CABECERA.codigo_centro, 
	BITSAT_HOJA_TIEMPOS_CABECERA.codigo_tecnico, BITSAT_HOJA_TIEMPOS_CABECERA.año, BITSAT_HOJA_TIEMPOS_CABECERA.mes, 
	BITSAT_HOJA_TIEMPOS_CABECERA.codigo_supervisor, BITSAT_HOJA_TIEMPOS_CABECERA.fecha_desde, BITSAT_HOJA_TIEMPOS_CABECERA.fecha_hasta, 
	BITSAT_HOJA_TIEMPOS_CABECERA.total_horas, BITSAT_HOJA_TIEMPOS_CABECERA.estado_hoja, BITSAT_HOJA_TIEMPOS_CABECERA.ind_exportar, 
	BITSAT_HOJA_TIEMPOS_CABECERA.fecha_exportacion, BITSAT_HOJA_TIEMPOS_CABECERA.fichero_exportacion, BITSAT_HOJA_TIEMPOS_LINEA.codigo_linea, 
	BITSAT_HOJA_TIEMPOS_LINEA.dia, BITSAT_HOJA_TIEMPOS_LINEA.hora_inicio, BITSAT_HOJA_TIEMPOS_LINEA.hora_fin, 
	BITSAT_HOJA_TIEMPOS_LINEA.tiempo_pausa, BITSAT_HOJA_TIEMPOS_LINEA.horas_normales, BITSAT_HOJA_TIEMPOS_LINEA.horas_extras, 
	BITSAT_HOJA_TIEMPOS_LINEA.horas_viaje_dentro, BITSAT_HOJA_TIEMPOS_LINEA.horas_viaje_fuera, BITSAT_HOJA_TIEMPOS_LINEA.horas_con_plus, 
	BITSAT_HOJA_TIEMPOS_LINEA.gastos, BITSAT_HOJA_TIEMPOS_LINEA.codigo_gasto, BITSAT_HOJA_TIEMPOS_LINEA.cargo_codigo_actividad, 
	BITSAT_HOJA_TIEMPOS_LINEA.cargo_numero_unidad, BITSAT_HOJA_TIEMPOS_LINEA.numero, BITSAT_HOJA_TIEMPOS_LINEA.component, 
	BITSAT_HOJA_TIEMPOS_LINEA.descripcion, BITSAT_HOJA_TIEMPOS_LINEA.horas_xr, BITSAT_HOJA_TIEMPOS_LINEA.numero_xr, 
	BITSAT_HOJA_TIEMPOS_LINEA.tipo_linea, BITSAT_HOJA_TIEMPOS_LINEA.estado_linea, BITSAT_HOJA_TIEMPOS_LINEA.confirmado_supervisor, 
	BITSAT_HOJA_TIEMPOS_LINEA.fecha_confirmado_supervisor, BITSAT_HOJA_TIEMPOS_LINEA.confirmado_delegado, 
	BITSAT_HOJA_TIEMPOS_LINEA.fecha_confirmado_delegado, BITSAT_HOJA_TIEMPOS_LINEA.fecha_inicio_jornada, BITSAT_HOJA_TIEMPOS_LINEA.fecha_fin_jornada
FROM         
	BITSAT_HOJA_TIEMPOS_CABECERA with (nolock) INNER JOIN
    BITSAT_HOJA_TIEMPOS_LINEA with (nolock) ON BITSAT_HOJA_TIEMPOS_CABECERA.codigo_hoja = BITSAT_HOJA_TIEMPOS_LINEA.codigo_hoja

GO
/****** Object:  View [dbo].[V_TECNICOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[V_TECNICOS]
AS
SELECT     TOP (100) PERCENT cia.CODIGO_compañia, cia.descripcion as compañia, c.CODIGO_CENTRO, c.descripcion as CENTRO, d.CODIGO AS CODIGO_TECNICO, LTRIM(RTRIM(ISNULL(d.NOMBRE, N'') + ' ' + ISNULL(d.APELLIDOS, N''))) 
                      AS TECNICO, d.GRUPO_USUARIO, m.CODIGO AS PDA, m.DESCRIPCION, m.TIPO AS TIPO_MOBILE, m.NUM_TELEFONO, m.NUM_SERIE, t.INSPECCIONES, 
                      t.AVISOS, t.REPARACIONES, t.MONTAJES, t.ORDENES_X, isnull(d.email,'') as EMAIL, d.SUPERIOR
FROM
	dbo.BITSAT_compañia cia INNER JOIN
	dbo.BITSAT_CENTRO c ON CIA.codigo_compañia=c.codigo_compañia inner join
	dbo.BITSAT_USUARIO AS d on c.codigo_compañia=d.codigo_compañia and c.codigo_centro=d.codigo_centro INNER JOIN
    dbo.BITSAT_USUARIO_DATOS AS t ON t.codigo_compañia = d.codigo_compañia AND t.CODIGO = d.CODIGO INNER JOIN
    dbo.BITSAT_MOBILE AS m ON t.PDA_ASIGNADA = m.CODIGO
where d.disp=1
ORDER BY Tecnico
GO
/****** Object:  View [dbo].[vvStrMapsViewDetalleInspeccion]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vvStrMapsViewDetalleInspeccion]
AS
SELECT  isnull(row_number() over (order by (select 1)),0) as ID,   
		idact, CODIGO_USUARIO, CODIGO_ACTIVIDAD, FECHA_INICIO, FECHA_FIN, CODIGO_UNIDAD, estado, LONGITUD, LATITUD
FROM         dbo.V_W_DETALLE_INSPECCION


GO
/****** Object:  View [dbo].[vnGlobalViewTiemposActividades]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vnGlobalViewTiemposActividades]
AS
SELECT
	isnull(row_number() over (order by (select 1)),0) as IdRowNumber,
	BITSAT_ACTIVIDADACTUAL.CODIGO_PDA, BITSAT_ACTIVIDADACTUAL.ID,
	BITSAT_ACTIVIDADACTUAL.CODIGO_COMPAÑIA AS CODIGO_COMPAÑIA, BITSAT_ACTIVIDADACTUAL.CODIGO_CENTRO AS CODIGO_CENTRO,
	BITSAT_CENTRO.DESCRIPCION AS NOMBRE_CENTRO, BITSAT_ACTIVIDADACTUAL.CODIGO_SUPERVISOR, BITSAT_ACTIVIDADACTUAL.CODIGO_USUARIO,
	BITSAT_ACTIVIDADACTUAL.CODIGO_ACTIVIDAD, BITSAT_TIPO_ACTIVIDAD.DESCRIPCION AS DESCRIPCION_ACTIVIDAD,
	BITSAT_ACTIVIDADACTUAL.CODIGO_UNIDAD, BITSAT_UNIDAD.NOMBRE_UNIDAD, BITSAT_UNIDAD.CODIGO_RUTA, BITSAT_UNIDAD.TIPO_SERVICIO, BITSAT_TIPO_SERVICIO_MANTENIMIENTO.CODIGO_OPERACION_MANTENIMIENTO,
	BITSAT_ACTIVIDADACTUAL.FECHA_INICIO_ACTIVIDAD, BITSAT_ACTIVIDADACTUAL.FECHA_FIN_ACTIVIDAD,
	BITSAT_ACTIVIDADANTERIOR.CODIGO_ACTIVIDAD AS CODIGO_ACTIVIDADANTERIOR,
	BITSAT_ACTIVIDADANTERIOR.FECHA_INICIO_ACTIVIDAD AS FECHA_INICIO_ACTIVIDADANTERIOR, BITSAT_ACTIVIDADANTERIOR.FECHA_FIN_ACTIVIDAD AS FECHA_FIN_ACTIVIDADANTERIOR,
	BITSAT_ACTIVIDADSIGUIENTE.CODIGO_ACTIVIDAD AS CODIGO_ACTIVIDADSIGUIENTE,
	BITSAT_ACTIVIDADSIGUIENTE.FECHA_INICIO_ACTIVIDAD AS FECHA_INICIO_ACTIVIDADSIGUIENTE, BITSAT_ACTIVIDADSIGUIENTE.FECHA_FIN_ACTIVIDAD AS FECHA_FIN_ACTIVIDADSIGUIENTE,
	DATEDIFF(mi, BITSAT_ACTIVIDADACTUAL.FECHA_INICIO_ACTIVIDAD, BITSAT_ACTIVIDADACTUAL.FECHA_FIN_ACTIVIDAD) AS TotalMinutosActividad,
	dbo.[fncNumMinutosFueraJornadaLaboral](BITSAT_ACTIVIDADACTUAL.CODIGO_COMPAÑIA, BITSAT_ACTIVIDADACTUAL.CODIGO_CENTRO, BITSAT_ACTIVIDADACTUAL.CODIGO_USUARIO, BITSAT_ACTIVIDADACTUAL.FECHA_INICIO_ACTIVIDAD, BITSAT_ACTIVIDADACTUAL.FECHA_FIN_ACTIVIDAD) AS TotalMinutosActividadFueraJL,  
	DATEDIFF(mi, BITSAT_ACTIVIDADANTERIOR.FECHA_FIN_ACTIVIDAD, BITSAT_ACTIVIDADACTUAL.FECHA_INICIO_ACTIVIDAD) AS TotalMinutosViaje,
	dbo.[fncNumMinutosFueraJornadaLaboral](BITSAT_ACTIVIDADACTUAL.CODIGO_COMPAÑIA, BITSAT_ACTIVIDADACTUAL.CODIGO_CENTRO, BITSAT_ACTIVIDADACTUAL.CODIGO_USUARIO, BITSAT_ACTIVIDADANTERIOR.FECHA_FIN_ACTIVIDAD, BITSAT_ACTIVIDADACTUAL.FECHA_INICIO_ACTIVIDAD) AS TotalMinutosViajeFueraJL
FROM 
	(
		SELECT
			ISNULL(ROW_NUMBER() OVER (ORDER BY BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA, BITSAT_ACTIVIDAD.CODIGO_USUARIO, ISNULL(TIME_INI, ISNULL(FECHA_INICIO, FECHA_FIN))),0) as IdRowNumber, 
			ISNULL(TIME_INI, ISNULL(FECHA_INICIO, FECHA_FIN)) AS FECHA_INICIO_ACTIVIDAD, ISNULL(TIME_END, ISNULL(FECHA_FIN, FECHA_INICIO)) AS FECHA_FIN_ACTIVIDAD, 
			BITSAT_ACTIVIDAD.*
		FROM
			BITSAT_ACTIVIDAD with (nolock) LEFT JOIN
			BITSAT_ACTIVIDAD_TIEMPO with (nolock) ON BITSAT_ACTIVIDAD.CODIGO_PDA = BITSAT_ACTIVIDAD_TIEMPO.CODIGO_PDA
									AND BITSAT_ACTIVIDAD.ID = BITSAT_ACTIVIDAD_TIEMPO.ID
	
	) BITSAT_ACTIVIDADACTUAL 
	LEFT JOIN
	(
		SELECT
			ISNULL(ROW_NUMBER() OVER (ORDER BY BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA, BITSAT_ACTIVIDAD.CODIGO_USUARIO, ISNULL(TIME_INI, ISNULL(FECHA_INICIO, FECHA_FIN))),0) as IdRowNumber, 
			ISNULL(TIME_INI, ISNULL(FECHA_INICIO, FECHA_FIN)) AS FECHA_INICIO_ACTIVIDAD, ISNULL(TIME_END, ISNULL(FECHA_FIN, FECHA_INICIO)) AS FECHA_FIN_ACTIVIDAD, 
			BITSAT_ACTIVIDAD.*
		FROM
			BITSAT_ACTIVIDAD with (nolock) LEFT JOIN
			BITSAT_ACTIVIDAD_TIEMPO with (nolock) ON BITSAT_ACTIVIDAD.CODIGO_PDA = BITSAT_ACTIVIDAD_TIEMPO.CODIGO_PDA
									AND BITSAT_ACTIVIDAD.ID = BITSAT_ACTIVIDAD_TIEMPO.ID

	) BITSAT_ACTIVIDADANTERIOR ON BITSAT_ACTIVIDADACTUAL.CODIGO_COMPAÑIA = BITSAT_ACTIVIDADANTERIOR.CODIGO_COMPAÑIA
								AND BITSAT_ACTIVIDADACTUAL.CODIGO_USUARIO = BITSAT_ACTIVIDADANTERIOR.CODIGO_USUARIO
								AND BITSAT_ACTIVIDADACTUAL.CODIGO_PDA = BITSAT_ACTIVIDADANTERIOR.CODIGO_PDA
								AND CONVERT(nvarchar,BITSAT_ACTIVIDADACTUAL.FECHA_INICIO_ACTIVIDAD,112) = CONVERT(nvarchar,BITSAT_ACTIVIDADANTERIOR.FECHA_INICIO_ACTIVIDAD,112)
								AND BITSAT_ACTIVIDADACTUAL.IdRowNumber - 1 = BITSAT_ACTIVIDADANTERIOR.IdRowNumber 
	LEFT JOIN
	(
		SELECT
			ISNULL(ROW_NUMBER() OVER (ORDER BY BITSAT_ACTIVIDAD.CODIGO_COMPAÑIA, BITSAT_ACTIVIDAD.CODIGO_USUARIO, ISNULL(TIME_INI, ISNULL(FECHA_INICIO, FECHA_FIN))),0) as IdRowNumber, 
			ISNULL(TIME_INI, ISNULL(FECHA_INICIO, FECHA_FIN)) AS FECHA_INICIO_ACTIVIDAD, ISNULL(TIME_END, ISNULL(FECHA_FIN, FECHA_INICIO)) AS FECHA_FIN_ACTIVIDAD, 
			BITSAT_ACTIVIDAD.*
		FROM
			BITSAT_ACTIVIDAD with (nolock) LEFT JOIN
			BITSAT_ACTIVIDAD_TIEMPO with (nolock) ON BITSAT_ACTIVIDAD.CODIGO_PDA = BITSAT_ACTIVIDAD_TIEMPO.CODIGO_PDA
									AND BITSAT_ACTIVIDAD.ID = BITSAT_ACTIVIDAD_TIEMPO.ID

	) BITSAT_ACTIVIDADSIGUIENTE ON BITSAT_ACTIVIDADACTUAL.CODIGO_COMPAÑIA = BITSAT_ACTIVIDADSIGUIENTE.CODIGO_COMPAÑIA
								AND BITSAT_ACTIVIDADACTUAL.CODIGO_USUARIO = BITSAT_ACTIVIDADSIGUIENTE.CODIGO_USUARIO
								AND BITSAT_ACTIVIDADACTUAL.CODIGO_PDA = BITSAT_ACTIVIDADSIGUIENTE.CODIGO_PDA
								AND CONVERT(nvarchar,BITSAT_ACTIVIDADACTUAL.FECHA_INICIO_ACTIVIDAD,112) = CONVERT(nvarchar,BITSAT_ACTIVIDADSIGUIENTE.FECHA_INICIO_ACTIVIDAD,112)
								AND BITSAT_ACTIVIDADACTUAL.IdRowNumber = BITSAT_ACTIVIDADSIGUIENTE.IdRowNumber - 1
	INNER JOIN
	BITSAT_TIPO_ACTIVIDAD with (nolock) ON BITSAT_ACTIVIDADACTUAL.CODIGO_ACTIVIDAD=BITSAT_TIPO_ACTIVIDAD.CODIGO INNER JOIN 
	BITSAT_USUARIO with (nolock) ON BITSAT_ACTIVIDADACTUAL.CODIGO_COMPAÑIA = BITSAT_USUARIO.CODIGO_COMPAÑIA 
					AND BITSAT_ACTIVIDADACTUAL.CODIGO_USUARIO = BITSAT_USUARIO.CODIGO 	INNER JOIN 
	BITSAT_CENTRO with (nolock) ON BITSAT_ACTIVIDADACTUAL.CODIGO_COMPAÑIA = BITSAT_CENTRO.CODIGO_COMPAÑIA
					AND BITSAT_ACTIVIDADACTUAL.CODIGO_CENTRO = BITSAT_CENTRO.CODIGO_CENTRO LEFT JOIN
	BITSAT_UNIDAD with (nolock) ON BITSAT_ACTIVIDADACTUAL.CODIGO_COMPAÑIA = BITSAT_UNIDAD.CODIGO_COMPAÑIA
					AND BITSAT_ACTIVIDADACTUAL.CODIGO_CENTRO = BITSAT_UNIDAD.CODIGO_CENTRO
					AND BITSAT_ACTIVIDADACTUAL.CODIGO_UNIDAD = BITSAT_UNIDAD.CODIGO_UNIDAD LEFT JOIN
	BITSAT_TIPO_SERVICIO_MANTENIMIENTO with (nolock) ON BITSAT_UNIDAD.TIPO_SERVICIO = BITSAT_TIPO_SERVICIO_MANTENIMIENTO.CODIGO_TIPO_SERVICIO

GO
/****** Object:  Table [dbo].[BITSAT_TIPO_IMPRODUCTIVIDAD]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_IMPRODUCTIVIDAD](
	[CODIGO] [nvarchar](7) NOT NULL,
	[TIPO] [nvarchar](5) NULL,
	[DESCRIPCION] [nvarchar](127) NULL,
	[DISP] [bit] NULL,
	[IND_SOL_UNIDAD] [bit] NOT NULL,
	[IND_PROGRAMABLE] [bit] NOT NULL,
	[IND_PORTIS] [bit] NULL,
	[IND_FOTO] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_IMPRODUCTIVIDAD] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vvStrInformesViewPreliminarRdeProduccion]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE VIEW [dbo].[vvStrInformesViewPreliminarRdeProduccion]
AS
	SELECT
		isnull(row_number() over (order by (select 1)),0) as IdRowNumber,
		(
			CASE  
				WHEN CODIGO_ACTIVIDAD = 'ABS' AND BITSAT_TIPO_IMPRODUCTIVIDAD.CODIGO <> 'VACACIO' THEN 1 
				WHEN CODIGO_ACTIVIDAD = 'IMP' THEN 1 
				WHEN BITSAT_TIPO_IMPRODUCTIVIDAD.CODIGO = 'VACACIO' THEN 2
				ELSE 0
			END
		) AS AGRUP_ACTIVIDAD,
		CODIGO_COMPAÑIA, CODIGO_CENTRO, NOMBRE_CENTRO, CODIGO_SUPERVISOR, CODIGO_USUARIO, 
		CODIGO_ACTIVIDAD, ISNULL(BITSAT_TIPO_IMPRODUCTIVIDAD.DESCRIPCION, DESCRIPCION_ACTIVIDAD) AS DESCRIPCION_ACTIVIDAD, CODIGO_OPERACION_MANTENIMIENTO AS TIPO_SERVICIO,
		CODIGO_RUTA, CODIGO_UNIDAD, FECHA_INICIO_ACTIVIDAD,
		((TotalMinutosActividad - TotalMinutosActividadFueraJL) / 60) AS HORAS_NORMALES, (TotalMinutosActividadFueraJL / 60) AS HORAS_EXTRAS,
		((TotalMinutosViaje - TotalMinutosViajeFueraJL) / 60) AS HORAS_VIAJE_DENTROJL, (TotalMinutosViajeFueraJL / 60) AS HORAS_VIAJE_FUERAJL,
		TOTAL_GASTOS
	FROM
		vnGlobalViewTiemposActividades LEFT JOIN
		(
			SELECT
				CODIGO_PDA, ID, SUM(IMPORTE) AS TOTAL_GASTOS
			FROM
				BITSAT_ACTIVIDAD_GASTO with (nolock)
			GROUP BY
				CODIGO_PDA, ID
		) TGASTOS ON vnGlobalViewTiemposActividades.CODIGO_PDA = TGASTOS.CODIGO_PDA
								AND vnGlobalViewTiemposActividades.ID = TGASTOS.ID LEFT JOIN
		BITSAT_TIPO_IMPRODUCTIVIDAD with (nolock) ON vnGlobalViewTiemposActividades.CODIGO_ACTIVIDAD = BITSAT_TIPO_IMPRODUCTIVIDAD.TIPO
	WHERE
		CODIGO_ACTIVIDAD NOT IN ('INI', 'FIN', 'PC')

GO
/****** Object:  View [dbo].[vvObtenerCambioGeoUnidades]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[vvObtenerCambioGeoUnidades]
AS
SELECT
		Actividad.CODIGO_UNIDAD
		, Actividad.ID AS IdActividad
		, Actividad.CODIGO_PDA AS PdaActividad
		, Actividad.CODIGO_USUARIO
		, Usuario.NOMBRE
		, Actividad.LATITUD AS LatitudActividad
		, Actividad.LONGITUD As LongitudActividad
		, Unidad.LONGITUD AS LatitudUnidad				-- Unidad tienes la LAT y LONG Cruzadas!!
		, Unidad.LATITUD AS LongitudUnidad
		, '['+rtrim(ltrim( isnull(Unidad.DIRECCION,'') +','+ isnull(unidad.numero,'') + ' '+ isnull(unidad.CODIGO_POSTAL,'')  ))+ ']' as Direccion
		, [dbo].[GeoDistancia](Actividad.LATITUD, Unidad.LONGITUD, Actividad.LONGITUD, Unidad.LATITUD) AS Distancia
		, Actividad.CoordsVal
	FROM BITSAT_UNIDAD AS Unidad with (nolock)
		INNER JOIN BITSAT_ACTIVIDAD AS Actividad with (nolock)
			ON Actividad.CODIGO_COMPAÑIA = Unidad.CODIGO_COMPAÑIA
			AND Actividad.CODIGO_UNIDAD = Unidad.CODIGO_UNIDAD
		INNER JOIN 
			(
				SELECT 
					CODIGO_COMPAÑIA,
					CODIGO_UNIDAD,
					CODIGO_PDA, 
					MAX(ID) AS ID 
				FROM BITSAT_ACTIVIDAD with (nolock)
				WHERE CoordsVal = 0
				GROUP BY CODIGO_COMPAÑIA, CODIGO_UNIDAD, CODIGO_PDA							
			) AS MaxActividad
			ON MaxActividad.CODIGO_COMPAÑIA = Unidad.CODIGO_COMPAÑIA
			AND MaxActividad.CODIGO_UNIDAD = Unidad.CODIGO_UNIDAD
			AND MaxActividad.CODIGO_PDA = Actividad.CODIGO_PDA 
			AND MaxActividad.ID = Actividad.ID
		INNER JOIN BITSAT_USUARIO AS Usuario with (nolock)
		ON Usuario.CODIGO = Actividad.CODIGO_USUARIO and usuario.CODIGO_COMPAÑIA = actividad.CODIGO_COMPAÑIA 
		INNER JOIN (SELECT valorparam FROM BITSAT_PARAMETROS WHERE NOMBREPARAM='DistanciaAvisoCoordenadas') AS p
		ON [dbo].[GeoDistancia](Actividad.LATITUD, Unidad.LONGITUD, Actividad.LONGITUD, Unidad.LATITUD) > p.valorparam

	WHERE  [dbo].[ParseCoord](Actividad.LONGITUD) <> 0
	AND [dbo].[ParseCoord](Actividad.LATITUD) <> 0
	AND [dbo].[ParseCoord](Unidad.LONGITUD) <> 0
	AND [dbo].[ParseCoord](Unidad.LATITUD) <> 0
GO
/****** Object:  View [dbo].[vvStrRutasViewRutasPlanificadas]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/****** Objeto:  View [dbo].[vvStrRutasViewRutasPlanificadas]    Fecha de la secuencia de comandos: 03/14/2014 11:12:58 ******/

CREATE VIEW [dbo].[vvStrRutasViewRutasPlanificadas]
AS
SELECT  isnull(row_number() OVER (ORDER BY (SELECT     1)), 0) AS IdRowNumber, d.CODIGO_WEB as rankTecnico, 
R.RUTA, R.ruta_descripcion,  R.Codigo_Tecnico, R.Tecnico,  R.codigo_compañia,  R.compañia, R.codigo_centro, 
R.centro, R.codigo_unidad,  R.nombre_unidad, R.direccion, R.provincia,  R.poblacion,  R.codigo_postal,
R.longitud, R.latitud, R.estado, R.añomes, R.DescripcionEstado, R.fecha_actividad, R.AvisosPendientes, R.Color
FROM V_W_RUTA_PLANIFICADA_SIN_PERIODICIDAD  r LEFT OUTER JOIN
dbo.BITSAT_USUARIO_DATOS AS d WITH (NOLOCK) ON r.codigo_compañia = d.codigo_compañia AND r.CODIGO_tecnico = d.CODIGO
GO
/****** Object:  View [dbo].[V_W_FICHERO_HISTORICO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_W_FICHERO_HISTORICO]
AS
SELECT
	EX.ID,
	EX.ID_ACTIVIDAD,
	EX.CODIGO_PDA,
	USU.NOMBRE AS TECNICO,
	ACT.COMPAÑIA_ACTIVIDAD,
	ACT.CODIGO_UNIDAD,
	EX.COD_ACT,
	ACT.FECHA_INICIO,
	ACT.FECHA_FIN,
	ISNULL(ACT.FECHA_FIN_CB, ACT.FECHA_FIN) AS FECHA_FIN_TRABAJOS,
	ACT.AÑOMES
FROM
	BITSAT_ACTIVIDAD ACT 
	INNER JOIN BITSAT_EXP_DATA EX ON ACT.ID = EX.ID_ACTIVIDAD AND ACT.CODIGO_PDA = EX.CODIGO_PDA
		AND EX.ACTIVIDAD = 'ACT_FH' AND EX.EXPORTAR_ESERVICE = 1
	INNER JOIN BITSAT_USUARIO USU ON ACT.CODIGO_PDA = USU.CODIGO AND ACT.CODIGO_COMPAÑIA = USU.CODIGO_COMPAÑIA
GO
/****** Object:  View [dbo].[vvStrInformesViewControlDeInspecciones]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE VIEW [dbo].[vvStrInformesViewControlDeInspecciones]
AS
SELECT
isnull(row_number() over (order by (select 1)),0) as IdRowNumber,
cia.CODIGO_COMPAÑIA, c.CODIGO_CENTRO, c.DESCRIPCION AS NOMBRE_CENTRO, 
s.SUPERVISOR AS CODIGO_SUPERVISOR, s.IDBitRutas AS CODIGO_USUARIO, 
s.CODIGO_RUTA, s.CODIGO_UNIDAD, s.NOMBRE_UNIDAD, tsm.CODIGO_OPERACION_MANTENIMIENTO AS TIPO_SERVICIO,  
case when act.fecha_inicio is null then 0 else 1 end  INSPECCIONES_REALIZADAS, case when act.fecha_inicio is null then 1 else 0 end  AS INSPECCIONES_QUE_FALTAN,
--act.FECHA_INICIO AS FECHA_INSPECCION, vd.añomes,
convert(datetime, act.FECHA_INICIO, 103) AS FECHA_INSPECCION, vd.añomes,
substring(vd.añomes,1,4) AS AÑO_INSPECCION, substring(vd.añomes,5,2) AS MES_INSPECCION
from 
(
select convert(nvarchar(4),año.año)+mes.mes  as añomes
from
(select year(getdate()) as año
 union
 select year(getdate())-1
 union
 select year(getdate())-2
) año
inner join 
(select '01'  as mes 
union
select '02'  as mes 
union
select '03'  as mes 
union
select '04'  as mes 
union
select '05'  as mes 
union
select '06'  as mes 
union
select '07'  as mes 
union
select '08'  as mes 
union
select '09'  as mes 
union
select '10'  as mes 
union
select '11'  as mes 
union
select '12'  as mes
 ) mes on 1=1
 ) vd
cross join 
dbo.BITSAT_compañia AS cia 
INNER JOIN dbo.BITSAT_CENTRO AS c ON cia.codigo_compañia = c.codigo_compañia 
INNER JOIN 
		(
		 select r.codigo_compañia, u.codigo_centro, CODIGO_SUPERVISOR as supervisor, CODIGO_TECNICO as IDBitRutas, r.CODIGO_RUTA, u.CODIGO_UNIDAD, u.NOMBRE_UNIDAD, u.tipo_servicio, u.altamantenimiento, u.periodo_visitas, '1' as numperiodo
		 from BITSAT_RUTAS r with (nolock)
		 left join BITSAT_RUTAS_TECNICO rt with (nolock) on r.ID = rt.IDRUTA
		 inner join bitsat_unidad u with (nolock)on r.ID = u.IDRUTA
		 inner join bitsat_usuario us with (nolock)on rt.CODIGO_TECNICO=us.codigo and r.CODIGO_COMPAÑIA = us.CODIGO_COMPAÑIA
		 left join bitsat_tipo_frecuencia f  with (nolock)on u.periodo_visitas=f.codigo
		 where r.disp=1 and u.disp=1 and u.ESTADO = '10'
		 union
		 select r.codigo_compañia, u.codigo_centro, CODIGO_SUPERVISOR as supervisor, CODIGO_TECNICO as IDBitRutas, r.CODIGO_RUTA, u.CODIGO_UNIDAD, u.NOMBRE_UNIDAD,  u.tipo_servicio, u.altamantenimiento, u.periodo_visitas,'2' as numperiodo
		 from BITSAT_RUTAS r with (nolock)
		 left join BITSAT_RUTAS_TECNICO rt with (nolock) on r.ID = rt.IDRUTA
		 inner join bitsat_unidad u with (nolock)on r.ID = u.IDRUTA
		 inner join bitsat_usuario us with (nolock)on rt.CODIGO_TECNICO=us.codigo and r.CODIGO_COMPAÑIA = us.CODIGO_COMPAÑIA 
		 left join bitsat_tipo_frecuencia f  with (nolock) on u.periodo_visitas=f.codigo
		 where u.periodo_visitas='Q' and r.disp=1 and u.disp=1 and u.ESTADO = '10') s ON c.codigo_compañia = s.codigo_compañia AND c.CODIGO_CENTRO = s.CODIGO_CENTRO 
INNER JOIN BITSAT_TIPO_SERVICIO_MANTENIMIENTO tsm with (nolock) on s.tipo_servicio=tsm.codigo_tipo_servicio
LEFT JOIN BITSAT_ACTIVIDAD act with (nolock) on cia.codigo_compañia=act.codigo_compañia and s.codigo_unidad=act.codigo_unidad and act.añomes=vd.añomes and
act.codigo_actividad='INSPP' 
where
C.DISP=1 and dbo.PermitidoPeriodo(s.codigo_unidad,s.codigo_compañia,vd.añomes,s.altamantenimiento,s.periodo_visitas)=1
GO
/****** Object:  View [dbo].[vnBITSAT_HISTORICO_TECNICO_ULTIMA_GEOPOSICION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vnBITSAT_HISTORICO_TECNICO_ULTIMA_GEOPOSICION]
AS
select 
	HT.*
from
	(select 
		MOBILEDEVICEID,MAX(TIMESPAM) TIMESPAM
	from 
		BITSAT_HISTORICO_TECNICO  with (nolock)
	WHERE
		isnull(LONGITUD,'') <>'' AND
		isnull(LATITUD ,'') <>''
	GROUP BY 
		MOBILEDEVICEID) BHT
	JOIN BITSAT_HISTORICO_TECNICO HT with (nolock)
		ON HT.TIMESPAM = BHT.TIMESPAM AND
		   HT.MOBILEDEVICEID = BHT.MOBILEDEVICEID
GO
/****** Object:  View [dbo].[V_INTERFACE_BITSAT_SEXPERTO_AVISOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE VIEW [dbo].[V_INTERFACE_BITSAT_SEXPERTO_AVISOS]
AS

SELECT        A.CLAVE_AVISO, A.CODIGO_COMPAÑIA, A.CODIGO_CENTRO, A.CODIGO_TECNICO, A.FECHA_RECEPCION, A.ESTADO_AVISO, A.CONTRATO, A.TIPO_SERVICIO, A.ELITE, A.UNIDAD, A.APARATO, REPLACE(A.SITUACION, '''', '')
                         AS SITUACION, A.RUTA, A.TIPO_VIA, REPLACE(A.DIRECCION, '''', '') AS DIRECCION, REPLACE(A.NUMERO1, '''', '') AS NUMERO1, REPLACE(A.NUMERO2, '''', '') AS NUMERO2, REPLACE(A.EDIFICIO, '''', '') AS EDIFICIO,
                         A.CODIGO_PROVINCIA, A.CODIGO_POBLACION, REPLACE(A.DESCRIPCION_AVERIA, '''', '') AS DESCRIPCION_AVERIA, A.ESTADO_ASCENSOR, REPLACE(A.LLAMADOR, '''', '') AS LLAMADOR, A.TELEFONO_LLAMADOR,
                         REPLACE(A.OBSERVACIONES, '''', '') AS OBSERVACIONES, A.REMSN, REPLACE(A.DESCRIPCION_REM_INOP, '''', '') AS DESCRIPCION_REM_INOP, U.EMAIL AS EMAILTECNICO
FROM            dbo.BITSAT_AVISOS AS A INNER JOIN
                         dbo.BITSAT_USUARIO AS U ON A.CODIGO_TECNICO = U.CODIGO AND U.DISP = 1
WHERE        (A.FECHA_ENVIO_SEXPERTO IS NULL)


GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Acresa]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Acresa](
	[codigo_unidad] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_ANIS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ANIS](
	[ANI] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Autorizados_Baja_Masiva]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Autorizados_Baja_Masiva](
	[ID] [int] NOT NULL,
	[CodCia] [char](2) NOT NULL,
	[CodContrato] [char](5) NOT NULL,
	[Nif] [nvarchar](50) NOT NULL,
	[Concepto] [nvarchar](35) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_BACKLOG_OFERTAS_T]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_BACKLOG_OFERTAS_T](
	[CIA] [nvarchar](255) NULL,
	[OFERTA] [nvarchar](255) NULL,
	[T-TS/X] [nvarchar](255) NULL,
	[LOGE] [nvarchar](255) NULL,
	[ESTADO] [nvarchar](255) NULL,
	[FEC# ESTADO] [datetime] NULL,
	[CONTRATO] [nvarchar](255) NULL,
	[IMPORTE OFERTA] [float] NULL,
	[% CONTRATACION] [float] NULL,
	[IMPORTE PTE#] [float] NULL,
	[SUPERVISOR] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_BACKLOG_ORDENES_T_20230901]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_BACKLOG_ORDENES_T_20230901](
	[CODIGO_COMPAÑIA] [nvarchar](255) NULL,
	[NUMERO_T] [nvarchar](255) NULL,
	[CONTRATO] [nvarchar](255) NULL,
	[CODIGO_CENTRO] [nvarchar](255) NULL,
	[SUPERVISOR] [nvarchar](255) NULL,
	[NUMERO_OFERTA] [nvarchar](255) NULL,
	[TOTAL_HORAS_LABOR] [decimal](18, 2) NULL,
	[TOTAL_MATERIALES] [decimal](18, 2) NULL,
	[FECHA_MATERIAL_PREVISTO] [datetime] NULL,
	[FECHA_LABOR_PREVISTA] [datetime] NULL,
	[PRECIO_OFERTA] [decimal](18, 2) NULL,
	[FECHA_CONTRATACION] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_BACKUP_BITSAT_ATRIBUCIONES_USUARIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_BACKUP_BITSAT_ATRIBUCIONES_USUARIO](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_USUARIO] [nvarchar](15) NOT NULL,
	[CODIGO_ATRIBUCION] [nvarchar](10) NOT NULL,
	[ACTIVO] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_BACKUP_BITSAT_CALENDARIO_TECNICO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_BACKUP_BITSAT_CALENDARIO_TECNICO](
	[CODIGO] [int] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO_TECNICO] [nvarchar](15) NOT NULL,
	[CODIGO_CALENDARIO] [int] NOT NULL,
	[CODIGO_HORARIO] [int] NOT NULL,
	[FECHA_DESDE] [datetime] NOT NULL,
	[FECHA_HASTA] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_BACKUP_BITSAT_HOJA_TIEMPOS_LINEA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_BACKUP_BITSAT_HOJA_TIEMPOS_LINEA](
	[codigo_hoja] [bigint] NOT NULL,
	[codigo_linea] [int] NOT NULL,
	[dia] [int] NULL,
	[hora_inicio] [datetime] NULL,
	[hora_fin] [datetime] NULL,
	[tiempo_pausa] [datetime] NULL,
	[horas_dentro_jornada] [float] NULL,
	[horas_fuera_jornada] [float] NULL,
	[horas_normales] [float] NULL,
	[horas_no_contabilizar] [float] NULL,
	[horas_extras] [float] NULL,
	[horas_viaje_dentro] [float] NULL,
	[horas_viaje_fuera] [float] NULL,
	[horas_con_plus] [float] NULL,
	[gastos] [float] NULL,
	[kilometros] [float] NULL,
	[codigo_gasto] [nvarchar](64) NULL,
	[cargo_codigo_actividad] [nvarchar](7) NULL,
	[cargo_numero_unidad] [nvarchar](5) NULL,
	[numero] [int] NULL,
	[component] [nvarchar](5) NULL,
	[descripcion] [nvarchar](256) NULL,
	[horas_xr] [datetime] NULL,
	[numero_xr] [nvarchar](7) NULL,
	[tipo_linea] [int] NULL,
	[estado_linea] [int] NULL,
	[confirmado_supervisor] [bit] NULL,
	[fecha_confirmado_supervisor] [datetime] NULL,
	[confirmado_delegado] [bit] NULL,
	[fecha_confirmado_delegado] [datetime] NULL,
	[CODIGO_PDA] [nvarchar](15) NULL,
	[ID] [datetime] NULL,
	[CODIGO_ACTIVIDAD] [nvarchar](7) NULL,
	[CODIGO_IDENTIFICADOR] [nchar](1) NULL,
	[registro_manual] [bit] NOT NULL,
	[codigo_supervisor_actividad] [nvarchar](15) NULL,
	[fecha_fin_jornada] [datetime] NULL,
	[fecha_inicio_jornada] [datetime] NULL,
	[fecha_modificacion] [datetime] NULL,
	[codigo_usuario_modificacion] [nvarchar](15) NULL,
	[motivo_modificacion] [nvarchar](max) NULL,
	[ind_exportar] [bit] NULL,
	[fecha_exportacion] [datetime] NULL,
	[fichero_exportacion] [nvarchar](64) NULL,
	[apunte_financiero] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_BATERIA_MPD_20230322]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_BATERIA_MPD_20230322](
	[Column 0] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_BIR_EmpleadoMail]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_BIR_EmpleadoMail](
	[EmpNU] [nvarchar](255) NOT NULL,
	[UsuCorExtTX] [nvarchar](255) NULL,
	[UsuCorMovTX] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_BIR_GRL_Empleado]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_BIR_GRL_Empleado](
	[EmpNU] [varchar](15) NOT NULL,
	[EmpNO] [varchar](80) NOT NULL,
	[CiaCD] [varchar](2) NULL,
	[LogCD] [varchar](9) NULL,
	[LogCtbCD] [varchar](7) NULL,
	[CiaAccCD] [varchar](2) NULL,
	[LogAccTP] [char](1) NULL,
	[LogAccCD] [varchar](8) NULL,
	[LogNO] [varchar](100) NULL,
	[DirNO] [varchar](100) NULL,
	[ActNO] [varchar](100) NULL,
	[CtgNO] [varchar](100) NULL,
	[MovNU] [varchar](20) NULL,
	[IniEmpFF] [datetime] NULL,
	[FinEmpFF] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_BIR_Supervisores_O365]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_BIR_Supervisores_O365](
	[NumeroEmpresa] [float] NULL,
	[Nombre] [nvarchar](255) NULL,
	[Responsabilidades] [nvarchar](255) NULL,
	[CuentaCorreo] [nvarchar](255) NULL,
	[CuentaCorreo_O365] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_BIR_Users_0365]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_BIR_Users_0365](
	[Direcciones de correo electrónico alternativas] [nvarchar](255) NULL,
	[Bloquear credencial] [nvarchar](255) NULL,
	[Población] [nvarchar](255) NULL,
	[País o región] [nvarchar](255) NULL,
	[Departamento] [nvarchar](255) NULL,
	[DirSyncEnabled] [nvarchar](255) NULL,
	[Nombre para mostrar] [nvarchar](255) NULL,
	[Fax] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
	[Última hora de sincronización de directorios] [nvarchar](255) NULL,
	[Apellido] [nvarchar](255) NULL,
	[Última marca de tiempo de cambio de contraseña] [nvarchar](255) NULL,
	[Errores de asignación de licencias] [nvarchar](255) NULL,
	[Licencias] [nvarchar](255) NULL,
	[Teléfono móvil] [nvarchar](255) NULL,
	[Metadatos de token de Oath] [nvarchar](255) NULL,
	[Id# de objeto] [nvarchar](255) NULL,
	[Office] [nvarchar](255) NULL,
	[La contraseña no caduca nunca] [nvarchar](255) NULL,
	[Número de teléfono] [nvarchar](255) NULL,
	[Código postal] [nvarchar](255) NULL,
	[Ubicación de datos preferida] [nvarchar](255) NULL,
	[Idioma preferido] [nvarchar](255) NULL,
	[Direcciones proxy] [nvarchar](255) NULL,
	[Calendario de lanzamiento] [nvarchar](255) NULL,
	[Marca de tiempo de eliminación temporal] [nvarchar](255) NULL,
	[Estado o provincia] [nvarchar](255) NULL,
	[Dirección postal] [nvarchar](255) NULL,
	[Es necesario utilizar una contraseña segura] [nvarchar](255) NULL,
	[Título] [nvarchar](255) NULL,
	[Ubicación de uso] [nvarchar](255) NULL,
	[Nombre principal de usuario] [nvarchar](255) NULL,
	[Cuando se crea] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_BIR_UsersAndRoles]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_BIR_UsersAndRoles](
	[EmployeeNumber] [nvarchar](15) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[OfficeCode] [nvarchar](50) NOT NULL,
	[DisplayName] [nvarchar](100) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[SupervisorName] [nvarchar](100) NOT NULL,
	[SupervisorEmail] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[OrganizationalRole] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[DeviceType] [nvarchar](20) NULL,
	[VoiceInfo] [nvarchar](20) NULL,
	[SupervisorEmployeeNumber] [nvarchar](15) NULL,
	[DeleteDate] [datetime] NULL,
	[ProcessDate] [datetime] NULL,
 CONSTRAINT [PK__BIR_UsersAndRoles] PRIMARY KEY CLUSTERED 
(
	[EmployeeNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_BITSAT_CONTACTOS_BK14042023]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_BITSAT_CONTACTOS_BK14042023](
	[ID] [bigint] NOT NULL,
	[CODCONTACTO] [bigint] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CONTRATO] [nvarchar](5) NOT NULL,
	[NIF_CIF] [nvarchar](9) NOT NULL,
	[NOMBRE_FIRMANTE] [nvarchar](50) NOT NULL,
	[PISO_FIRMANTE] [nvarchar](50) NULL,
	[TELEFONO_FIRMANTE] [nvarchar](15) NULL,
	[CALIDAD_FIRMANTE] [nvarchar](10) NULL,
	[DIRECCION_CORREO_ELECTRONICO] [nvarchar](200) NULL,
	[DISP] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_CAMBIO_LOGE_2021]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_CAMBIO_LOGE_2021](
	[SCO_ID_HR] [float] NULL,
	[SCO_ID_WORK_LOC] [nvarchar](255) NULL,
	[Loge 2021] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Carga_Inicial_Encuestas23]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Carga_Inicial_Encuestas23](
	[Fecha] [datetime] NULL,
	[Hora] [datetime] NULL,
	[Actividad] [nvarchar](255) NULL,
	[Sub-Actividad] [nvarchar](255) NULL,
	[Loge] [nvarchar](255) NULL,
	[Compañía] [nvarchar](255) NULL,
	[Área] [nvarchar](255) NULL,
	[Delegación] [nvarchar](255) NULL,
	[OS] [nvarchar](255) NULL,
	[Contrato] [nvarchar](255) NULL,
	[Encuestado] [nvarchar](255) NULL,
	[Propiedad] [nvarchar](255) NULL,
	[Experiencia y relación con GRUPO OTIS] [float] NULL,
	[Respuesta de GRUPO OTIS a requerimientos] [float] NULL,
	[Producto GRUPO OTIS respecto a competencia (0 NS/NC)] [float] NULL,
	[Calidad GRUPO OTIS respecto a competencia (0 NS/NC)] [float] NULL,
	[Servicio GRUPO OTIS respecto a competencia (0 NS/NC)] [float] NULL,
	[Recomendación a terceros] [float] NULL,
	[Mejoras Sugeridas] [nvarchar](255) NULL,
	[Mejoras sugeridas: OTROS] [nvarchar](255) NULL,
	[Tiempo de llegada del técnico (0 NS/NC)] [float] NULL,
	[Atención telefónica (0 NS/NC)] [float] NULL,
	[Quién realizó el Rescate] [nvarchar](255) NULL,
	[Observaciones Adicionales] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_COBI]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_COBI](
	[ANI] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_disponi_4]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_disponi_4](
	[EMPRESA] [nvarchar](255) NULL,
	[LO] [nvarchar](255) NULL,
	[CODIGO_CENTRO] [nvarchar](255) NULL,
	[DESCRIPCION] [nvarchar](255) NULL,
	[IMPORTE] [float] NULL,
	[LUNES] [nvarchar](255) NULL,
	[MARTES] [nvarchar](255) NULL,
	[MIERCOLES] [nvarchar](255) NULL,
	[JUEVES] [nvarchar](255) NULL,
	[VIERNES] [nvarchar](255) NULL,
	[SABADO] [nvarchar](255) NULL,
	[DOMINGO] [nvarchar](255) NULL,
	[EXCLUYENTE] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_ELEVA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ELEVA](
	[CodCia] [nvarchar](255) NULL,
	[CodContrato] [nvarchar](255) NULL,
	[CodUnidad] [nvarchar](255) NULL,
	[Loge] [nvarchar](255) NULL,
	[CodCia_Despues] [nvarchar](255) NULL,
	[CodContrato_Despues] [nvarchar](255) NULL,
	[CodUnidad_Despues] [nvarchar](255) NULL,
	[Loge_Despues] [nvarchar](255) NULL,
	[Row] [nvarchar](255) NULL,
	[CAMBIO_CONTRATO] [nvarchar](255) NULL,
	[CAMBIO_UNIDAD] [nvarchar](255) NULL,
	[CAMBIO_LOGE] [nvarchar](255) NULL,
	[CodRutaEleva] [nvarchar](255) NULL,
	[SupervisorEleva] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_EmpleadosMasivos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_EmpleadosMasivos](
	[EmpNU] [nvarchar](255) NULL,
	[CiaCD] [nvarchar](255) NULL,
	[Loge 2021] [nvarchar](255) NULL,
	[Loge 2022] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_EmpleadosNoMasivos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_EmpleadosNoMasivos](
	[EmpNU] [float] NULL,
	[CiaCD] [float] NULL,
	[Loge 2021] [nvarchar](255) NULL,
	[Loge 2022] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_EmpleadosResponsable]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_EmpleadosResponsable](
	[Cia] [float] NULL,
	[NEmpresa] [float] NULL,
	[NuevaLoge ] [nvarchar](255) NULL,
	[Perfil] [nvarchar](255) NULL,
	[Responsable] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_HCO_ENCUESTAS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_HCO_ENCUESTAS](
	[Fecha] [datetime] NULL,
	[Hora] [datetime] NULL,
	[Actividad] [nvarchar](255) NULL,
	[Sub-Actividad] [nvarchar](255) NULL,
	[Loge] [nvarchar](255) NULL,
	[Compañía] [nvarchar](255) NULL,
	[Área] [nvarchar](255) NULL,
	[Delegación] [nvarchar](255) NULL,
	[OS] [nvarchar](255) NULL,
	[Contrato] [nvarchar](255) NULL,
	[Encuestado] [nvarchar](255) NULL,
	[Propiedad] [nvarchar](255) NULL,
	[Experiencia y relación con GRUPO OTIS] [float] NULL,
	[Respuesta de GRUPO OTIS a requerimientos] [float] NULL,
	[Producto GRUPO OTIS respecto a competencia (0 NS/NC)] [float] NULL,
	[Calidad GRUPO OTIS respecto a competencia (0 NS/NC)] [float] NULL,
	[Servicio GRUPO OTIS respecto a competencia (0 NS/NC)] [float] NULL,
	[Recomendación a terceros] [float] NULL,
	[Mejoras Sugeridas] [nvarchar](255) NULL,
	[Mejoras sugeridas: OTROS] [nvarchar](255) NULL,
	[Tiempo de llegada del técnico (0 NS/NC)] [float] NULL,
	[Atención telefónica (0 NS/NC)] [float] NULL,
	[Quién realizó el Rescate] [nvarchar](255) NULL,
	[Observaciones Adicionales] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_LOGES_BAJA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_LOGES_BAJA](
	[CodCia] [char](2) NOT NULL,
	[Loge] [char](6) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Loges2021a2022]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Loges2021a2022](
	[CodCia] [char](2) NULL,
	[DZ_Antes] [char](2) NULL,
	[DL_Antes] [char](2) NULL,
	[OS_Antes] [char](2) NULL,
	[PA_Antes] [char](2) NULL,
	[Loge_Antes] [nvarchar](100) NULL,
	[DZ_Despues] [char](2) NULL,
	[DL_Despues] [char](2) NULL,
	[OS_Despues] [char](2) NULL,
	[PA_Despues] [char](2) NULL,
	[Loge_Despues] [nvarchar](100) NULL,
	[Nueva] [bit] NULL,
	[CodProvincia_Despues] [char](2) NULL,
	[DeshabilitarOrigen] [bit] NULL,
	[Notas] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Loges2022a2023]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Loges2022a2023](
	[CodCia] [char](2) NULL,
	[DZ_Antes] [char](2) NULL,
	[DL_Antes] [char](2) NULL,
	[OS_Antes] [char](2) NULL,
	[PA_Antes] [char](2) NULL,
	[Loge_Antes] [nvarchar](100) NULL,
	[DZ_Despues] [char](2) NULL,
	[DL_Despues] [char](2) NULL,
	[OS_Despues] [char](2) NULL,
	[PA_Despues] [char](2) NULL,
	[Loge_Despues] [nvarchar](100) NULL,
	[Nueva] [bit] NULL,
	[CodProvincia_Despues] [char](2) NULL,
	[DeshabilitarOrigen] [bit] NULL,
	[Notas] [nvarchar](250) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_LogesEmpleados2023_Asociadas]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_LogesEmpleados2023_Asociadas](
	[Cia] [nvarchar](255) NULL,
	[IdEmpleado] [nvarchar](255) NULL,
	[Apellidos] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
	[Loge_2022] [nvarchar](255) NULL,
	[Loge_2023] [nvarchar](255) NULL,
	[Nombre lugar trabajo 2022] [nvarchar](255) NULL,
	[Tipo] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_LogesEmpleados2023_Otis]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_LogesEmpleados2023_Otis](
	[Cia] [nvarchar](255) NULL,
	[IdEmpleado] [nvarchar](255) NULL,
	[Apellidos] [nvarchar](255) NULL,
	[Nombre] [nvarchar](255) NULL,
	[Loge_2022] [nvarchar](255) NULL,
	[Loge_2023] [nvarchar](255) NULL,
	[Nombre lugar trabajo 2022] [nvarchar](255) NULL,
	[Tipo] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_LogesNoMasivas2021a2022_Total]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_LogesNoMasivas2021a2022_Total](
	[Id] [int] NOT NULL,
	[CodCia] [varchar](2) NULL,
	[CodContrato] [nvarchar](255) NULL,
	[CodUnidad] [char](5) NULL,
	[Loge_Antes] [nvarchar](max) NULL,
	[Loge_Despues] [nvarchar](max) NULL,
	[Vendedor_Antes] [nvarchar](max) NULL,
	[Vendedor_Despues] [nvarchar](max) NULL,
	[Origen] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_LogesNoMasivas2022a2023_Total]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_LogesNoMasivas2022a2023_Total](
	[id] [int] NOT NULL,
	[Codcia] [char](2) NULL,
	[CodContrato] [nvarchar](255) NULL,
	[CodUnidad] [char](5) NULL,
	[Loge_Antes] [nvarchar](255) NULL,
	[Loge_Despues] [nvarchar](255) NULL,
	[Vendedor_Antes] [nvarchar](255) NULL,
	[Vendedor_Despues] [nvarchar](255) NULL,
	[Origen] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Mantenimiento_Portis]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Mantenimiento_Portis](
	[Linea] [float] NULL,
	[Aparato] [nvarchar](255) NULL,
	[Cab] [float] NULL,
	[Orden] [float] NULL,
	[Descripcion] [nvarchar](255) NULL,
	[Peso] [float] NULL,
	[Nuevo] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_MPD_LENCE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_MPD_LENCE](
	[Column 0] [varchar](50) NULL,
	[Column 1] [varchar](50) NULL,
	[Column 2] [varchar](50) NULL,
	[Column 3] [varchar](50) NULL,
	[Column 4] [varchar](50) NULL,
	[Column 5] [varchar](50) NULL,
	[Column 6] [varchar](50) NULL,
	[Column 7] [varchar](50) NULL,
	[Column 8] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_MPD_LENCE_2]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_MPD_LENCE_2](
	[Column 0] [varchar](500) NULL,
	[Column 1] [varchar](500) NULL,
	[Column 2] [varchar](500) NULL,
	[Column 3] [varchar](500) NULL,
	[Column 4] [varchar](500) NULL,
	[Column 5] [varchar](500) NULL,
	[Column 6] [varchar](500) NULL,
	[Column 7] [varchar](500) NULL,
	[Column 8] [varchar](500) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Oficinas_ITC]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Oficinas_ITC](
	[Nombre] [nvarchar](255) NULL,
	[Compañía] [float] NULL,
	[LOGE] [float] NULL,
	[LOGE6] [nvarchar](255) NULL,
	[Dirección] [nvarchar](255) NULL,
	[Tipo de vía] [nvarchar](255) NULL,
	[Nombre de vía] [nvarchar](255) NULL,
	[Número] [float] NULL,
	[Ciudad] [nvarchar](255) NULL,
	[Código Postal] [float] NULL,
	[Provincia] [nvarchar](255) NULL,
	[Latitud] [nvarchar](255) NULL,
	[Longitud] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_ORDENES_ENOR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ORDENES_ENOR](
	[Id] [int] NOT NULL,
	[CodCia] [char](2) NOT NULL,
	[CodContrato] [char](5) NOT NULL,
	[NumeroOrden] [char](6) NOT NULL,
	[NumeroOferta] [varchar](15) NULL,
	[ImporteOrden] [decimal](9, 2) NOT NULL,
	[ImporteMargen] [decimal](9, 2) NULL,
	[CodTipoOrden] [char](1) NULL,
	[NumeroPedido] [varchar](12) NULL,
	[NumeroAlbaran] [varchar](7) NULL,
	[NumeroProveedor] [varchar](7) NULL,
	[CodUnidadBase] [varchar](6) NULL,
	[NumeroUnidadesMPD] [int] NULL,
	[ReferenciaUpgrade] [nvarchar](6) NULL,
	[FechaBaja] [datetime2](3) NULL,
	[FechaOperacion] [datetime2](3) NULL,
	[FechaEnvio] [datetime2](3) NULL,
	[BloqueoEnvioJDE] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_ORDENES_MPB_ABIERTAS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_ORDENES_MPB_ABIERTAS](
	[CodCia] [char](2) NOT NULL,
	[CodContrato] [char](5) NOT NULL,
	[NumeroOrden] [char](6) NOT NULL,
	[NumeroOferta] [varchar](15) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Plan_Mantenimiento_Portis]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Plan_Mantenimiento_Portis](
	[TIPO_APARATO] [nvarchar](255) NULL,
	[NUMERACION] [nvarchar](255) NULL,
	[DESCRIPCION] [nvarchar](255) NULL,
	[EXCEL] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Sabana_Loges_2023]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Sabana_Loges_2023](
	[Centro] [nvarchar](255) NULL,
	[DESCRIPCION] [nvarchar](255) NULL,
	[IMPORTE] [float] NULL,
	[L] [nvarchar](255) NULL,
	[M] [nvarchar](255) NULL,
	[X] [nvarchar](255) NULL,
	[J] [nvarchar](255) NULL,
	[V] [nvarchar](255) NULL,
	[S] [nvarchar](255) NULL,
	[D] [nvarchar](255) NULL,
	[EXCL] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Super_BIR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Super_BIR](
	[Email] [nvarchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Supersivores]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Supersivores](
	[N] [float] NULL,
	[Loge] [float] NULL,
	[ZONA] [nvarchar](255) NULL,
	[CENTRO DE TRABAJO] [nvarchar](255) NULL,
	[NumeroEmpresa] [float] NULL,
	[Nombre y Apellidos] [nvarchar](255) NULL,
	[Responsabilidades como supervisor] [nvarchar](255) NULL,
	[Otras Responsabilidades] [nvarchar](255) NULL,
	[% Act_] [float] NULL,
	[En Funciones] [nvarchar](255) NULL,
	[Fecha_de_Alta] [datetime] NULL,
	[Fecha_de_Baja] [datetime] NULL,
	[Alta/Baja por] [nvarchar](255) NULL,
	[Descripción del Alta o de la Baja] [nvarchar](255) NULL,
	[Teléfono Fijo] [nvarchar](255) NULL,
	[Buzón de Correo Exterior] [nvarchar](255) NULL,
	[Tipo de Curso] [nvarchar](255) NULL,
	[MONTAJE] [datetime] NULL,
	[MTO#] [datetime] NULL,
	[MIXTO] [datetime] NULL,
	[MAS RECIENTE] [datetime] NULL,
	[FORMACION FORMADORES] [nvarchar](255) NULL,
	[LIFTS] [nvarchar](255) NULL,
	[OW] [nvarchar](255) NULL,
	[SMELT] [datetime] NULL,
	[Seguridad_Básico:_50/60 h] [datetime] NULL,
	[Seguridad_intermedio:_300 h] [nvarchar](255) NULL,
	[Seguridad_Superior:_600 h] [nvarchar](255) NULL,
	[FPA] [datetime] NULL,
	[Reglas Oro y FPA_(E-Learning)] [nvarchar](255) NULL,
	[Identificación_de Peligros] [float] NULL,
	[Elevación y suspensión de cargas] [nvarchar](255) NULL,
	[Realización eficaz de auditorías FPA] [datetime] NULL,
	[Realización eficaz de reuniones de seguridad] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_TEMPORAL_ABRIL2020]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_TEMPORAL_ABRIL2020](
	[DIA] [int] NULL,
	[ID] [datetime] NULL,
	[CODIGO_PDA] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_TEMPORAL_ABRIL2020_v2]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_TEMPORAL_ABRIL2020_v2](
	[DIA] [int] NULL,
	[ID] [datetime] NULL,
	[CODIGO_PDA] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_TEMPORAL_MAYO2020]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_TEMPORAL_MAYO2020](
	[DIA] [int] NULL,
	[ID] [datetime] NULL,
	[CODIGO_PDA] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Traspaso_Enor_Portis]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Traspaso_Enor_Portis](
	[CodCia] [nvarchar](255) NULL,
	[CodContrato] [nvarchar](255) NULL,
	[CodUnidad] [nvarchar](255) NULL,
	[Loge] [nvarchar](255) NULL,
	[CodCia_Despues] [nvarchar](255) NULL,
	[CodContrato_Despues] [nvarchar](255) NULL,
	[CodUnidad_Despues] [nvarchar](255) NULL,
	[Loge_Despues] [nvarchar](255) NULL,
	[Comercial_Despues] [nvarchar](255) NULL,
	[CodTipoFacturacion] [nvarchar](255) NULL,
	[TipoServicio_Despues] [nvarchar](255) NULL,
	[CambiaUnidad] [nvarchar](255) NULL,
	[CambiaContrato] [nvarchar](255) NULL,
	[ContratoAfectado] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[_Traspaso_Ingar_Pertor]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[_Traspaso_Ingar_Pertor](
	[CodCia] [nvarchar](255) NULL,
	[CodContrato] [nvarchar](255) NULL,
	[CodUnidad] [nvarchar](255) NULL,
	[Loge] [nvarchar](255) NULL,
	[CodCia_Despues] [nvarchar](255) NULL,
	[CodContrato_Despues] [nvarchar](255) NULL,
	[CodUnidad_Despues] [nvarchar](255) NULL,
	[Loge_Despues] [nvarchar](255) NULL,
	[CodTipoFacturacion] [nvarchar](255) NULL,
	[CambiaUnidad] [nvarchar](255) NULL,
	[CambiaContrato] [nvarchar](255) NULL,
	[ContratoAfectado] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[API_T_TM_SEGURIDAD_APLICACIONES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[API_T_TM_SEGURIDAD_APLICACIONES](
	[IdAplicacion] [int] IDENTITY(1,1) NOT NULL,
	[DescripcionAplicacion] [varchar](200) NOT NULL,
	[Token] [varchar](100) NOT NULL,
	[Activo] [bit] NULL,
	[UsuarioCreacion] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioModificacion] [varchar](100) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioBaja] [varchar](100) NULL,
	[FechaBaja] [datetime] NULL,
 CONSTRAINT [PK_API_T_TM_SEGURIDAD_APLICACIONES] PRIMARY KEY CLUSTERED 
(
	[IdAplicacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[API_T_TM_SEGURIDAD_APLICACIONES_APIs]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[API_T_TM_SEGURIDAD_APLICACIONES_APIs](
	[IdAplicacion] [int] NOT NULL,
	[IdAPI] [int] NOT NULL,
	[UsuarioCreacion] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioModificacion] [varchar](100) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioBaja] [varchar](100) NULL,
	[FechaBaja] [datetime] NULL,
 CONSTRAINT [PK_API_T_TM_SEGURIDAD_APLICACIONES_APIs] PRIMARY KEY CLUSTERED 
(
	[IdAplicacion] ASC,
	[IdAPI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[API_T_TM_SEGURIDAD_INVENTARIO_APIs]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[API_T_TM_SEGURIDAD_INVENTARIO_APIs](
	[IdAPI] [int] IDENTITY(1,1) NOT NULL,
	[Controlador] [varchar](100) NOT NULL,
	[Accion] [varchar](100) NOT NULL,
	[Descripcion] [varchar](500) NULL,
	[Activo] [bit] NULL,
	[UsuarioCreacion] [varchar](100) NOT NULL,
	[FechaCreacion] [datetime] NOT NULL,
	[UsuarioModificacion] [varchar](100) NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioBaja] [varchar](100) NULL,
	[FechaBaja] [datetime] NULL,
 CONSTRAINT [PK_API_T_TM_SEGURIDAD_INVENTARIO_APIs] PRIMARY KEY CLUSTERED 
(
	[IdAPI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTAS_ENTREGA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTAS_ENTREGA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_ACTA] [int] NOT NULL,
	[TIPO_APARATO] [nvarchar](20) NULL,
	[DESCRIPCION] [nvarchar](512) NULL,
	[VERSION_ACTA] [nvarchar](16) NULL,
	[USUARIO_CREACION] [nvarchar](15) NULL,
	[FECHA_CREACION] [datetime] NULL,
	[USUARIO_MODIFICACION] [nvarchar](15) NULL,
	[FECHA_MODIFICACION] [datetime] NULL,
	[INDICADOR_BAJA] [bit] NULL,
	[FECHA_BAJA] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_ACTAS_ENTREGA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_ACTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTAS_ENTREGA_APARTADOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTAS_ENTREGA_APARTADOS](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_ACTA] [int] NOT NULL,
	[CODIGO_APARTADO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](512) NULL,
	[NUMERO_ORDEN] [int] NULL,
 CONSTRAINT [PK_BITSAT_ACTAS_ENTREGA_APARTADOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_ACTA] ASC,
	[CODIGO_APARTADO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTAS_ENTREGA_VERIFICACIONES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTAS_ENTREGA_VERIFICACIONES](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_ACTA] [int] NOT NULL,
	[CODIGO_APARTADO] [int] NOT NULL,
	[CODIGO_VERIFICACION] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](512) NULL,
	[NUMERO_ORDEN] [int] NULL,
	[TIPO_RESPUESTA] [int] NULL,
	[VALOR_MAXIMO] [nvarchar](20) NULL,
	[VALOR_MINIMO] [nvarchar](20) NULL,
	[COMPROBAR] [bit] NULL,
	[OBLIGATORIO] [bit] NULL,
 CONSTRAINT [PK_BITSAT_ACTAS_ENTREGA_VERIFICACIONES] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_ACTA] ASC,
	[CODIGO_APARTADO] ASC,
	[CODIGO_VERIFICACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_ANOTACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_ANOTACION](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[IND_PERSONAL] [bit] NULL,
	[ANOTACION] [nvarchar](1024) NULL,
	[TIPO_RIESGO_BAJA] [int] NULL,
	[ANOTACION_ID] [datetime] NOT NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_ANOTACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[FECHA] ASC,
	[ANOTACION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_CLIENTE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_CLIENTE](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[CLIENTE] [nvarchar](50) NOT NULL,
	[DIRECCION] [nvarchar](50) NULL,
	[LOCALIDAD] [nvarchar](40) NOT NULL,
	[CODIGO_POSTAL] [nvarchar](5) NULL,
	[CONTRATO] [nvarchar](5) NULL,
	[TIPO_SERVICIO] [nvarchar](3) NULL,
	[RAE] [nvarchar](20) NULL,
	[NIF] [nvarchar](20) NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_CLIENTE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_MONTAJE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[REQUISITOS_MINIMOS] [bit] NULL,
	[INCUMPLIMIENTO_REQUISITOS] [int] NULL,
	[PREPARACION_OBRA] [bit] NULL,
	[MOTIVO_PREPARACION_OBRA] [nvarchar](255) NULL,
	[FECHA_INICIO] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_MONTAJE] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_MONTAJE_ACTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE_ACTA](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_MONTAJE] [nvarchar](9) NOT NULL,
	[CODIGO_ACTA] [int] NOT NULL,
	[CODIGO_APARTADO] [int] NOT NULL,
	[CODIGO_VERIFICACION] [int] NOT NULL,
	[ESTADO] [int] NULL,
	[VALOR] [nvarchar](256) NULL,
	[TIMESTAMP] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_MONTAJE_ACTA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_MONTAJE] ASC,
	[CODIGO_ACTA] ASC,
	[CODIGO_APARTADO] ASC,
	[CODIGO_VERIFICACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_MONTAJE_HITOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE_HITOS](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_MONTAJE] [nvarchar](9) NOT NULL,
	[TIPO_MONTAJE] [nvarchar](1) NOT NULL,
	[TIPO_APARATO] [nvarchar](10) NOT NULL,
	[NUMERO_HITO] [int] NOT NULL,
	[FECHA_INICIO] [datetime] NOT NULL,
	[FECHA_FIN] [datetime] NULL,
	[ESTADO] [int] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_MONTAJE_HITOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_MONTAJE] ASC,
	[TIPO_MONTAJE] ASC,
	[TIPO_APARATO] ASC,
	[NUMERO_HITO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_MTD]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_MTD](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA_PROCESO] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_MTD] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ACTIVIDAD_PELIGROS_INSTALACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ACTIVIDAD_PELIGROS_INSTALACION](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[CODIGO_PELIGRO] [int] NULL,
	[SITUACION] [int] NULL,
 CONSTRAINT [PK_BITSAT_ACTIVIDAD_PELIGROS_INSTALACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ALARMA_POSICION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ALARMA_POSICION](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [varchar](8) NOT NULL,
	[CODIGO_USUARIO] [nvarchar](15) NOT NULL,
	[CODIGO_SUPERVISOR] [nvarchar](15) NULL,
	[COMPAÑIA_ACTIVIDAD] [nvarchar](2) NULL,
	[CENTRO_ACTIVIDAD] [nvarchar](8) NULL,
	[SUPERVISOR_ACTIVIDAD] [nvarchar](15) NULL,
	[CODIGO_PDA] [nvarchar](15) NULL,
	[X] [nvarchar](15) NULL,
	[Y] [nvarchar](15) NULL,
	[FECHA_RECEPCION] [datetime] NOT NULL,
	[TIPO_ALARMA] [char](1) NULL,
	[ENVIAR_24h] [bit] NULL,
	[FECHA_ENVIO_24h] [datetime] NULL,
	[FICHERO_ENVIO] [nvarchar](512) NULL,
	[ENVIAR_CORREO] [bit] NULL,
	[FECHA_ENVIO_CORREO] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ALARMA_POSICION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_CENTRO] ASC,
	[CODIGO_USUARIO] ASC,
	[FECHA_RECEPCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ALARMAS_USUARIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ALARMAS_USUARIO](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[TIPO_ALARMA_USUARIO] [bigint] NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[CODIGO_DELEGADO] [nvarchar](15) NULL,
	[CODIGO_SUPERVISOR] [nvarchar](15) NULL,
	[ALARMA] [nvarchar](max) NULL,
	[FECHA] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ALARMAS_USUARIO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ANOTACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ANOTACION](
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_USUARIO] [nvarchar](15) NULL,
	[FECHA_HORA] [datetime] NULL,
	[IND_PERSONAL] [bit] NULL,
	[ANOTACION] [nvarchar](1024) NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NULL,
	[IND_RIESGO_BAJA] [bit] NULL,
	[MOTIVO_RIESGO] [int] NULL,
	[ANOTACION_ID] [datetime] NOT NULL,
 CONSTRAINT [PK_BITSAT_ANOTACION_1] PRIMARY KEY CLUSTERED 
(
	[ANOTACION_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ATRIBUCIONES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ATRIBUCIONES](
	[CODIGO] [nvarchar](10) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_ATRIBUCIONES] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ATRIBUCIONES_GRUPO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ATRIBUCIONES_GRUPO](
	[CODIGO_GRUPO_USUARIO] [nvarchar](10) NOT NULL,
	[CODIGO_ATRIBUCION] [nvarchar](10) NOT NULL,
	[ACTIVO] [bit] NULL,
 CONSTRAINT [PK_BITSAT_ATRIBUCIONES_GRUPO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_GRUPO_USUARIO] ASC,
	[CODIGO_ATRIBUCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ATRIBUCIONES_USUARIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ATRIBUCIONES_USUARIO](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_USUARIO] [nvarchar](15) NOT NULL,
	[CODIGO_ATRIBUCION] [nvarchar](10) NOT NULL,
	[ACTIVO] [bit] NULL,
 CONSTRAINT [PK_BITSAT_ATRIBUCIONES_USUARIO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_USUARIO] ASC,
	[CODIGO_ATRIBUCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_AUTOVALIDACION_ENVIOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_AUTOVALIDACION_ENVIOS](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TIPO] [nvarchar](50) NOT NULL,
	[PERFIL] [nvarchar](50) NOT NULL,
	[CODIGO] [nvarchar](6) NOT NULL,
	[EMAIL] [nvarchar](256) NOT NULL,
	[FECHA_ENVIO] [datetime] NOT NULL,
 CONSTRAINT [PK_BITSAT_AUTOVALIDACION_ENVIOS] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_AUTOVALIDACION_HDT]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_AUTOVALIDACION_HDT](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[CODIGO_TECNICO] [nvarchar](15) NULL,
	[FECHA] [datetime] NULL,
	[TIPO_JORNADA] [nchar](1) NULL,
	[SUPERVISOR_RESPONSABLE] [nvarchar](15) NULL,
	[TIPO_VALIDACION] [nvarchar](50) NULL,
	[TEXTO] [nvarchar](255) NULL,
	[SUPERVISOR_ACTIVIDAD] [nvarchar](10) NULL,
	[VALIDAR] [bit] NULL,
	[FECHAPROCESO] [datetime] NOT NULL,
	[FECHAENVIO] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_AUTOVALIDACION_HDT_SERVICIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_AUTOVALIDACION_HDT_SERVICIO](
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[CODIGO_SUPERVISOR] [nvarchar](15) NULL,
	[CODIGO_TECNICO] [nvarchar](15) NULL,
	[TIPO_JORNADA] [nchar](1) NULL,
	[AUTOVALIDA] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_AVISOS_LLEGADA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_AVISOS_LLEGADA](
	[CLAVE_AVISO] [nvarchar](15) NOT NULL,
	[CODIGO_TECNICO] [nvarchar](15) NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[CODIGO_PDA] [nvarchar](15) NULL,
	[IDActividad] [datetime] NULL,
	[FECHA_LLEGADA] [datetime] NULL,
	[ENVIAR_24h] [bit] NULL,
	[FECHA_ENVIO_24h] [datetime] NULL,
	[FICHERO_ENVIO] [nvarchar](512) NULL,
 CONSTRAINT [PK_BITSAT_AVISOS_LLEGADA] PRIMARY KEY CLUSTERED 
(
	[CLAVE_AVISO] ASC,
	[CODIGO_TECNICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_CALENDARIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CALENDARIO](
	[CODIGO_CALENDARIO] [int] IDENTITY(1,1) NOT NULL,
	[AÑO] [int] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[TIPO_CALENDARIO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](256) NULL,
 CONSTRAINT [PK_BITSAT_BITSAT_CALENDARIO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_CALENDARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_CALENDARIO_FESTIVOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CALENDARIO_FESTIVOS](
	[CODIGO_CALENDARIO] [int] NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[TIPO_HORARIO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](256) NULL,
 CONSTRAINT [PK_BITSAT_BITSAT_CALENDARIO_FESTIVOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_CALENDARIO] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_CALENDARIO_TECNICO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CALENDARIO_TECNICO](
	[CODIGO] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO_TECNICO] [nvarchar](15) NOT NULL,
	[CODIGO_CALENDARIO] [int] NOT NULL,
	[CODIGO_HORARIO] [int] NOT NULL,
	[FECHA_DESDE] [datetime] NOT NULL,
	[FECHA_HASTA] [datetime] NOT NULL,
 CONSTRAINT [PK_BITSAT_CALENDARIO_TECNICO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_CLIENTES_COPIA_PDF]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CLIENTES_COPIA_PDF](
	[NIF] [nvarchar](50) NOT NULL,
	[RUTA_COMPARTIDA] [nvarchar](250) NOT NULL,
	[FECHA_DESDE] [datetime] NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_CLIENTES_COPIA_PDF] PRIMARY KEY CLUSTERED 
(
	[NIF] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_CODIGOS_AUTOFACTURABLES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CODIGOS_AUTOFACTURABLES](
	[CODIGO] [nvarchar](5) NOT NULL,
	[COMPAÑIA] [nvarchar](2) NOT NULL,
	[TIPO_CONTRATO_EXC] [nvarchar](10) NULL,
 CONSTRAINT [PK_BITSAT_CODIGOS_AUTOFACTURABLES] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[COMPAÑIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_CONTACTOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CONTACTOS](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[CODCONTACTO] [bigint] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CONTRATO] [nvarchar](5) NOT NULL,
	[NIF_CIF] [nvarchar](9) NOT NULL,
	[NOMBRE_FIRMANTE] [nvarchar](50) NOT NULL,
	[PISO_FIRMANTE] [nvarchar](50) NULL,
	[TELEFONO_FIRMANTE] [nvarchar](15) NULL,
	[CALIDAD_FIRMANTE] [nvarchar](10) NULL,
	[DIRECCION_CORREO_ELECTRONICO] [nvarchar](200) NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_CONTACTOS] PRIMARY KEY CLUSTERED 
(
	[CODCONTACTO] ASC,
	[CODIGO_COMPAÑIA] ASC,
	[CONTRATO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_CONTACTOS_BK]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_CONTACTOS_BK](
	[ID] [bigint] NOT NULL,
	[CODCONTACTO] [bigint] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[NIF_CIF] [nvarchar](9) NOT NULL,
	[NOMBRE_FIRMANTE] [nvarchar](50) NOT NULL,
	[PISO_FIRMANTE] [nvarchar](50) NULL,
	[TELEFONO_FIRMANTE] [nvarchar](15) NULL,
	[CALIDAD_FIRMANTE] [nvarchar](10) NULL,
	[DIRECCION_CORREO_ELECTRONICO] [nvarchar](200) NULL,
	[DISP] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_DETALLE_HORARIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_DETALLE_HORARIO](
	[codigo_horario] [int] NOT NULL,
	[dia_semana] [int] NOT NULL,
	[inicio_mañana] [smalldatetime] NOT NULL,
	[fin_mañana] [smalldatetime] NOT NULL,
	[inicio_tarde] [smalldatetime] NOT NULL,
	[fin_tarde] [smalldatetime] NOT NULL,
	[total_jornada] [float] NOT NULL,
	[inicio_pausa] [smalldatetime] NOT NULL,
	[fin_pausa] [smalldatetime] NOT NULL,
	[duracion_pausa] [float] NOT NULL,
	[dia_activo] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_DETALLE_HORARIO] PRIMARY KEY CLUSTERED 
(
	[codigo_horario] ASC,
	[dia_semana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ERRORES_CIERRE_AVISO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ERRORES_CIERRE_AVISO](
	[ID] [datetime] NULL,
	[CODIGO_PDA] [nvarchar](15) NULL,
	[FECHA] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ESTADO_MONTAJE_ACTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ESTADO_MONTAJE_ACTA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_MONTAJE] [nvarchar](9) NOT NULL,
	[CODIGO_ACTA] [int] NOT NULL,
	[CODIGO_APARTADO] [int] NOT NULL,
	[CODIGO_VERIFICACION] [int] NOT NULL,
	[ESTADO] [int] NULL,
	[VALOR] [nvarchar](256) NULL,
	[TIMESTAMP] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ESTADO_MONTAJE_ACTA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_MONTAJE] ASC,
	[CODIGO_ACTA] ASC,
	[CODIGO_APARTADO] ASC,
	[CODIGO_VERIFICACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ESTADO_MONTAJE_HITOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ESTADO_MONTAJE_HITOS](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_MONTAJE] [nvarchar](8) NOT NULL,
	[TIPO_MONTAJE] [nvarchar](1) NOT NULL,
	[TIPO_APARATO] [nvarchar](10) NOT NULL,
	[NUMERO_HITO] [int] NOT NULL,
	[ESTADO] [int] NULL,
	[FECHA_INICIO] [datetime] NOT NULL,
	[FECHA_FIN] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_ESTADO_MONTAJE_HITOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_MONTAJE] ASC,
	[TIPO_MONTAJE] ASC,
	[TIPO_APARATO] ASC,
	[NUMERO_HITO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_EXP_DEF]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_EXP_DEF](
	[ACTIVIDAD] [nvarchar](10) NOT NULL,
	[CLAVE] [nvarchar](50) NOT NULL,
	[VALOR] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_BITSAT_EXP_DEF_1] PRIMARY KEY CLUSTERED 
(
	[ACTIVIDAD] ASC,
	[CLAVE] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_EXP_DET]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_EXP_DET](
	[ID_TABLA] [int] NOT NULL,
	[ID_FIELD] [int] NOT NULL,
	[CAMPO_ENTRADA] [nvarchar](50) NULL,
	[TIPO] [nvarchar](10) NULL,
	[INIF] [int] NULL,
	[SIZE] [int] NULL,
	[PREC] [int] NULL,
	[FORMAT] [nchar](10) NULL,
	[DATA] [nvarchar](50) NULL,
	[ORDEN] [int] NULL,
 CONSTRAINT [PK_BitSat_EXP_DET] PRIMARY KEY CLUSTERED 
(
	[ID_TABLA] ASC,
	[ID_FIELD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_EXP_FIRMANTE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_EXP_FIRMANTE](
	[NUMFILA] [bigint] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NULL,
	[FECHA_INICIO] [datetime] NULL,
	[Nombre_Firmante] [nvarchar](50) NULL,
	[Piso_Firmante] [nvarchar](50) NULL,
	[Telefono_Firmante] [nvarchar](9) NULL,
	[CALIDAD_FIRMANTE] [nvarchar](10) NULL,
	[DIRECCION_CORREO_ELECTRONICO] [nvarchar](200) NULL,
	[COMPAÑIA_ACTIVIDAD] [nvarchar](2) NOT NULL,
	[CENTRO_ACTIVIDAD] [nvarchar](8) NOT NULL,
	[TECNICO] [nvarchar](15) NULL,
	[FECHASINCRONIZACION] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_EXP_RUTAUNIDAD]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_EXP_RUTAUNIDAD](
	[añomes] [nvarchar](6) NULL,
	[codigo_compañia] [nvarchar](2) NULL,
	[compañia] [nvarchar](50) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[CentroTrabajo] [nvarchar](50) NULL,
	[CODIGO_PLANIFICACION] [nvarchar](80) NULL,
	[Fecha_Planificacion] [datetime] NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NULL,
	[NombreUnidad] [nvarchar](50) NULL,
	[TIEMPO_RESP] [int] NULL,
	[VIP] [bit] NULL,
	[DIRECCION] [nvarchar](100) NULL,
	[CODIGO_POSTAL] [nvarchar](5) NULL,
	[POBLACION] [nvarchar](40) NULL,
	[PAIS] [nvarchar](10) NULL,
	[Telefono] [nvarchar](50) NULL,
	[Telefax] [nvarchar](50) NULL,
	[TIEMPO_PARADA] [nvarchar](10) NULL,
	[Fecha_Prevista] [datetime] NULL,
	[Hora_Prevista] [datetime] NULL,
	[Fecha_Entrega] [datetime] NULL,
	[Hora_Inicio1] [datetime] NULL,
	[Hora_Fin1] [datetime] NULL,
	[Hora_Inicio2] [datetime] NULL,
	[Hora_Fin2] [datetime] NULL,
	[NUMERO_VIAJE] [nvarchar](10) NULL,
	[CODIGO_INSPECCION] [nvarchar](5) NULL,
	[Codigo_Tecnico] [nvarchar](15) NULL,
	[Tecnico] [nvarchar](150) NULL,
	[Conductor] [nvarchar](15) NULL,
	[Codigo_Camion] [nvarchar](15) NULL,
	[Enviado] [nvarchar](1) NULL,
	[Numero_Casa] [nvarchar](15) NULL,
	[COMPLEMENTO_DIRECCION] [nvarchar](50) NULL,
	[Deposito_Planificado] [nvarchar](1) NULL,
	[TIPO_SERVICIO] [nvarchar](3) NULL,
	[descripcion] [nvarchar](3) NULL,
	[LONGITUD] [nvarchar](15) NULL,
	[LATITUD] [nvarchar](15) NULL,
	[Estado] [nvarchar](10) NULL,
	[Desc_Estado] [nvarchar](50) NULL,
	[Usuario_Act] [nvarchar](15) NULL,
	[PDA_Act] [nvarchar](15) NULL,
	[Fecha_Act] [datetime] NULL,
	[Distancia] [float] NULL,
	[Ruta] [nvarchar](4) NULL,
	[TIPO_APARATO] [nvarchar](10) NULL,
	[Frecuencia] [nvarchar](1) NULL,
	[numperiodo] [nvarchar](1) NULL,
	[inspecciones_realizadas] [nvarchar](12) NULL,
	[id_actividad_firma] [datetime] NULL,
	[id_actividad_visita] [datetime] NULL,
	[supervisor] [nvarchar](15) NULL,
	[FECHASINCRONIZACION] [datetime] NOT NULL,
	[AVISO_MES_TAREAS_COMUNES] [bit] NOT NULL,
	[REBELDE] [bit] NULL,
	[CRITICA] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_EXP_RUTAUNIDAD_BACKUP]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_EXP_RUTAUNIDAD_BACKUP](
	[añomes] [nvarchar](6) NULL,
	[codigo_compañia] [nvarchar](2) NULL,
	[compañia] [nvarchar](50) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[CentroTrabajo] [nvarchar](50) NULL,
	[CODIGO_PLANIFICACION] [nvarchar](80) NULL,
	[Fecha_Planificacion] [datetime] NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NULL,
	[NombreUnidad] [nvarchar](50) NULL,
	[TIEMPO_RESP] [int] NULL,
	[VIP] [bit] NULL,
	[DIRECCION] [nvarchar](100) NULL,
	[CODIGO_POSTAL] [nvarchar](5) NULL,
	[POBLACION] [nvarchar](40) NULL,
	[PAIS] [nvarchar](10) NULL,
	[Telefono] [nvarchar](50) NULL,
	[Telefax] [nvarchar](50) NULL,
	[TIEMPO_PARADA] [nvarchar](10) NULL,
	[Fecha_Prevista] [datetime] NULL,
	[Hora_Prevista] [datetime] NULL,
	[Fecha_Entrega] [datetime] NULL,
	[Hora_Inicio1] [datetime] NULL,
	[Hora_Fin1] [datetime] NULL,
	[Hora_Inicio2] [datetime] NULL,
	[Hora_Fin2] [datetime] NULL,
	[NUMERO_VIAJE] [nvarchar](10) NULL,
	[CODIGO_INSPECCION] [nvarchar](5) NULL,
	[Codigo_Tecnico] [nvarchar](15) NULL,
	[Tecnico] [nvarchar](150) NULL,
	[Conductor] [nvarchar](15) NULL,
	[Codigo_Camion] [nvarchar](15) NULL,
	[Enviado] [nvarchar](1) NULL,
	[Numero_Casa] [nvarchar](15) NULL,
	[COMPLEMENTO_DIRECCION] [nvarchar](50) NULL,
	[Deposito_Planificado] [nvarchar](1) NULL,
	[TIPO_SERVICIO] [nvarchar](3) NULL,
	[descripcion] [nvarchar](3) NULL,
	[LONGITUD] [nvarchar](15) NULL,
	[LATITUD] [nvarchar](15) NULL,
	[Estado] [nvarchar](10) NULL,
	[Desc_Estado] [nvarchar](50) NULL,
	[Usuario_Act] [nvarchar](15) NULL,
	[PDA_Act] [nvarchar](15) NULL,
	[Fecha_Act] [datetime] NULL,
	[Distancia] [float] NULL,
	[Ruta] [nvarchar](4) NULL,
	[TIPO_APARATO] [nvarchar](10) NULL,
	[Frecuencia] [nvarchar](1) NULL,
	[numperiodo] [nvarchar](1) NULL,
	[inspecciones_realizadas] [nvarchar](12) NULL,
	[id_actividad_firma] [datetime] NULL,
	[supervisor] [nvarchar](15) NULL,
	[FECHASINCRONIZACION] [datetime] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_GASTO_DISPONIBILIDAD_SABANA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_GASTO_DISPONIBILIDAD_SABANA](
	[GASTO_SABANA] [int] NOT NULL,
	[LUNES] [bit] NOT NULL,
	[MARTES] [bit] NOT NULL,
	[MIERCOLES] [bit] NOT NULL,
	[JUEVES] [bit] NOT NULL,
	[VIERNES] [bit] NOT NULL,
	[SABADO] [bit] NOT NULL,
	[DOMINGO] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_GASTO_DISPONIBILIDAD_SABANA] PRIMARY KEY CLUSTERED 
(
	[GASTO_SABANA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_GASTOS_SABANA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_GASTOS_SABANA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_GASTO] [nvarchar](5) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NOT NULL,
	[IMPORTE] [float] NOT NULL,
	[EXCLUYENTE] [bit] NOT NULL,
	[FECHA_ALTA] [datetime] NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_GASTOS_SABANA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_GRUPO_USUARIO_AREA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_GRUPO_USUARIO_AREA](
	[CODIGO_GRUPO_USUARIO] [nvarchar](10) NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[DIRECCION_ZONA] [nvarchar](2) NOT NULL,
	[ACTIVO] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_GRUPO_USUARIO_AREA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_GRUPO_USUARIO] ASC,
	[CODIGO_COMPAÑIA] ASC,
	[DIRECCION_ZONA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_GRUPO_USUARIO_AREA_BK]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_GRUPO_USUARIO_AREA_BK](
	[CODIGO_GRUPO_USUARIO] [nvarchar](10) NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[DIRECCION_ZONA] [nvarchar](2) NOT NULL,
	[ACTIVO] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_GRUPO_USUARIO_AREA_BK] PRIMARY KEY CLUSTERED 
(
	[CODIGO_GRUPO_USUARIO] ASC,
	[CODIGO_COMPAÑIA] ASC,
	[DIRECCION_ZONA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_HELP_MAPPING]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_HELP_MAPPING](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[CODIGO_COMPAÑIA_DESTINO] [nvarchar](2) NOT NULL,
	[CODIGO_UNIDAD_DESTINO] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_BITSAT_HELP_MAPPING] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_UNIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_HISTORICO_TECNICO_POSICIONES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_HISTORICO_TECNICO_POSICIONES](
	[ID] [bigint] NOT NULL,
	[TIPO_MENSAJE] [int] NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[DRIVERNR] [nvarchar](15) NULL,
	[ORDERNR] [nvarchar](5) NULL,
	[NUM_SERVICIO] [nvarchar](16) NULL,
	[ST_SERVICIO] [nvarchar](10) NULL,
	[LONGITUD] [nvarchar](15) NULL,
	[LATITUD] [nvarchar](15) NULL,
	[VELOCIDAD] [nvarchar](15) NULL,
	[FECHA] [nvarchar](10) NULL,
	[HORA] [nvarchar](8) NULL,
	[COMENTARIOS] [nvarchar](255) NULL,
	[ESTADO] [nvarchar](10) NULL,
	[TIMESPAM] [datetime] NULL,
	[CODIGO_MOTIVO] [int] NULL,
	[MOBILEDEVICEID] [nvarchar](15) NULL,
	[AVERIAS_PENDIENTES] [int] NULL,
	[INSPECCIONES_REALIZADAS] [int] NULL,
	[AVERIAS_REALIZADAS] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_HITOS_MONTAJE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_HITOS_MONTAJE](
	[TIPO_MONTAJE] [nvarchar](1) NOT NULL,
	[TIPO_APARATO] [nvarchar](10) NOT NULL,
	[NUMERO_HITO] [int] NOT NULL,
	[ORDEN] [int] NULL,
	[DESCRIPCION] [nvarchar](256) NULL,
	[SIMULTANEO] [bit] NULL,
	[PESO] [int] NULL,
	[DISP] [bit] NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
 CONSTRAINT [PK_BITSAT_HITOS_MONTAJE] PRIMARY KEY CLUSTERED 
(
	[TIPO_MONTAJE] ASC,
	[TIPO_APARATO] ASC,
	[NUMERO_HITO] ASC,
	[CODIGO_COMPAÑIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_HORARIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_HORARIO](
	[CODIGO_HORARIO] [int] IDENTITY(1,1) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NOT NULL,
	[TIPO_HORARIO] [int] NOT NULL,
	[AÑO] [int] NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[HORARIO_CENTRO] [bit] NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_HORARIOS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_HORARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_HORARIOS_CENTRO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_HORARIOS_CENTRO](
	[compañia] [nvarchar](2) NOT NULL,
	[centro] [nvarchar](8) NOT NULL,
	[codigo_horario] [int] NOT NULL,
 CONSTRAINT [PK_BITSAT_HORARIOS_CENTRO] PRIMARY KEY CLUSTERED 
(
	[compañia] ASC,
	[centro] ASC,
	[codigo_horario] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_HORARIOS_TECNICO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_HORARIOS_TECNICO](
	[compañia] [nvarchar](2) NOT NULL,
	[centro] [nvarchar](8) NOT NULL,
	[tecnico] [nvarchar](15) NOT NULL,
	[codigo_horario] [int] NOT NULL,
 CONSTRAINT [PK_BITSAT_HORARIOS_TECNICO] PRIMARY KEY CLUSTERED 
(
	[compañia] ASC,
	[tecnico] ASC,
	[codigo_horario] DESC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_HORAS_COMPENSABLES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_HORAS_COMPENSABLES](
	[AÑO] [int] NOT NULL,
	[COMPAÑIA] [nvarchar](2) NOT NULL,
	[TECNICO] [nvarchar](15) NOT NULL,
	[HORAS_ACUM] [int] NULL,
	[HORAS_CONSUMIDAS] [int] NULL,
 CONSTRAINT [PK_HORAS_COMPENSABLES] PRIMARY KEY CLUSTERED 
(
	[AÑO] ASC,
	[COMPAÑIA] ASC,
	[TECNICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_HORAS_EXTRAS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_HORAS_EXTRAS](
	[AÑO] [int] NOT NULL,
	[COMPAÑIA] [nvarchar](2) NOT NULL,
	[TECNICO] [nvarchar](15) NOT NULL,
	[HORAS_CONSUMIDAS] [int] NOT NULL,
 CONSTRAINT [PK_HORAS_EXTRAS] PRIMARY KEY CLUSTERED 
(
	[AÑO] ASC,
	[COMPAÑIA] ASC,
	[TECNICO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_IMP_DEF]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_IMP_DEF](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [varchar](1024) NULL,
	[SQL_SERVER_TYPE] [int] NULL,
	[SQL_CONNECTION_IN] [varchar](max) NULL,
	[TYPE] [int] NULL,
	[SQL_DATA_IN] [varchar](max) NULL,
	[CIA_FIELD_IN] [varchar](40) NULL,
	[CENTRE_FIELD_IN] [varchar](40) NULL,
	[DATE_FIELD_IN] [varchar](40) NULL,
	[TABLE_OUT] [varchar](max) NULL,
	[CIA_FIELD_OUT] [varchar](40) NULL,
	[CENTRE_FIELD_OUT] [varchar](40) NULL,
	[FILTER_OUT] [varchar](max) NULL,
	[ALTA] [bit] NULL,
	[BAJA] [bit] NULL,
	[MODIFICACION] [bit] NULL,
	[CONNECTION_ID] [varchar](40) NULL,
	[CONNECTION_PUBLICKEY] [varchar](40) NULL,
	[LAST_CENTER_EXEC] [bit] NULL,
 CONSTRAINT [PK_BITSAT_IMP_DEF] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_IMP_DET]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_IMP_DET](
	[ID_TABLA] [int] NOT NULL,
	[ID_FIELD] [int] NOT NULL,
	[CAMPO_ENTRADA] [varchar](50) NULL,
	[CAMPO_SALIDA] [varchar](50) NULL,
	[CLAVE] [bit] NULL,
	[FORMATO_SALIDA] [varchar](50) NULL,
 CONSTRAINT [PK_BitSat_IMP_DET] PRIMARY KEY CLUSTERED 
(
	[ID_TABLA] ASC,
	[ID_FIELD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_IMP_PROA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_IMP_PROA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[AÑOMES] [nvarchar](6) NOT NULL,
	[ESTADO] [int] NOT NULL,
	[AÑO] [int] NOT NULL,
	[MES] [int] NOT NULL,
	[FECHAREVISION] [datetime] NULL,
	[VISITA] [int] NULL,
	[FECHAPROCESO] [datetime] NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_IMP_PROA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_UNIDAD] ASC,
	[AÑOMES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_INFORMES_SERVICIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_INFORMES_SERVICIO](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[IDIOMA] [nvarchar](5) NOT NULL,
	[POR_DEFECTO] [bit] NULL,
	[DIRECCION_ORIGEN] [nvarchar](255) NOT NULL,
	[DIRECCION_RESPUESTA] [nvarchar](255) NOT NULL,
	[ASUNTO] [nvarchar](max) NOT NULL,
	[CUERPO] [nvarchar](max) NOT NULL,
	[PLANTILLA_INSPECCION] [nvarchar](1024) NULL,
	[PLANTILLA_SERVICIO] [nvarchar](1024) NULL,
	[AVISO_PRIVACIDAD] [nvarchar](1024) NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
 CONSTRAINT [PK_BITSAT_INFORMES_SERVICIO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[IDIOMA] ASC,
	[CODIGO_CENTRO] ASC,
	[CODIGO_UNIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_INSPECCIONES_REALIZADAS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_INSPECCIONES_REALIZADAS](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[AÑO] [nvarchar](4) NOT NULL,
	[TIPO_APARATO] [nvarchar](10) NULL,
	[TIPO_SERVICIO] [nvarchar](5) NULL,
	[INSPECCIONES_REALIZADAS] [nvarchar](12) NULL,
 CONSTRAINT [PK_BITSAT_INSPECCIONES_REALIZADAS] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_UNIDAD] ASC,
	[AÑO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_INTERFACE_MAESTRO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_INTERFACE_MAESTRO](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nchar](50) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[CronExpression] [nchar](50) NOT NULL,
	[Running] [bit] NULL,
	[LastExecution] [datetimeoffset](7) NULL,
	[Disp] [bit] NULL,
	[LastExecutionResult] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_INTERFACE_SEXPERTO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_INTERFACE_SEXPERTO](
	[CODIGO_PDA] [nvarchar](15) NOT NULL,
	[ID] [datetime] NOT NULL,
	[CODIGO_TECNICO] [nvarchar](15) NULL,
	[CODIGO_UNIDAD] [nvarchar](7) NULL,
	[CODIGO_RUTA] [nvarchar](4) NULL,
	[CODIGO_ACTIVIDAD] [nvarchar](10) NULL,
	[FECHA_HORA] [datetime] NULL,
	[EMAIL_TECNICO] [nvarchar](256) NULL,
 CONSTRAINT [PK_BITSAT_INTERFACE_SEXPERTO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_PDA] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_LOG]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_LOG](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Tipo] [nvarchar](50) NULL,
	[Mensaje] [nvarchar](1024) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_MARCAINSTALACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_MARCAINSTALACION](
	[CODMARCA] [nvarchar](4) NOT NULL,
	[DESCRIPCION] [nvarchar](50) NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_MARCAINSTALACION] PRIMARY KEY CLUSTERED 
(
	[CODMARCA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_MAX_HORAS_EXTRAS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_MAX_HORAS_EXTRAS](
	[AÑO] [int] NOT NULL,
	[COMPAÑIA] [nvarchar](2) NOT NULL,
	[MAX_HORAS] [int] NOT NULL,
 CONSTRAINT [PK_MAX_HORAS_EXTRAS] PRIMARY KEY CLUSTERED 
(
	[AÑO] ASC,
	[COMPAÑIA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_MONTAJE_PREVISTO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_MONTAJE_PREVISTO](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_MONTAJE] [nvarchar](9) NOT NULL,
	[CODIGO_USUARIO] [nvarchar](15) NOT NULL,
	[FECHA_ASIGNACION] [datetime] NULL,
	[USUARIO_ASIGNACION] [nvarchar](6) NULL,
 CONSTRAINT [PK_BITSAT_MONTAJE_PREVISTO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_MONTAJE] ASC,
	[CODIGO_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_NUMERACION_XR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_NUMERACION_XR](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[XR] [nvarchar](4) NOT NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_NUMERACION_XR] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[XR] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_OPERACIONES_COMUNES_SERVICIO_APARATO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_OPERACIONES_COMUNES_SERVICIO_APARATO](
	[CODIGO_OPERACION] [int] NOT NULL,
	[TIPO_SERVICIO] [nvarchar](3) NOT NULL,
	[TIPO_APARATO] [nvarchar](50) NOT NULL,
	[ORDEN] [int] NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_OPERACIONES_COMUNES_SERVICIO_APARATO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_OPERACION] ASC,
	[TIPO_SERVICIO] ASC,
	[TIPO_APARATO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION](
	[CODIGO_OPERACION] [int] NOT NULL,
	[CODIGO_INSPECCION] [nvarchar](10) NOT NULL,
	[ORDEN] [nvarchar](4) NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_OPERACION] ASC,
	[CODIGO_INSPECCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_OPERACIONES_IDIOMA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_OPERACIONES_IDIOMA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_OPERACION] [int] NOT NULL,
	[DESCRIPCION_OPERACION] [nvarchar](200) NULL,
 CONSTRAINT [PK_BITSAT_OPERACIONES_IDIOMA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_OPERACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ORDEN_X]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ORDEN_X](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[ORDENX] [nvarchar](7) NOT NULL,
	[UNIDAD] [nvarchar](6) NOT NULL,
	[SUPERVISOR] [nvarchar](6) NULL,
	[FECHA_PREVISTA] [datetime] NULL,
	[DESCRIPCION] [nvarchar](1024) NULL,
	[DISP] [bit] NULL,
	[ESTADO] [int] NOT NULL,
 CONSTRAINT [PK_BITSAT_ORDENES_X] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[ORDENX] ASC,
	[UNIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ORDEN_X_PREVISTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ORDEN_X_PREVISTA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[ORDENX] [nvarchar](7) NOT NULL,
	[UNIDAD] [nvarchar](6) NOT NULL,
	[CODIGO_USUARIO] [nvarchar](15) NOT NULL,
	[FECHA_ASIGNACION] [datetime] NULL,
	[USUARIO_ASIGNACION] [nvarchar](6) NULL,
 CONSTRAINT [PK_BITSAT_ORDEN_X_PREVISTA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[ORDENX] ASC,
	[CODIGO_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ORDEN_XR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ORDEN_XR](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[ORDENXR] [nvarchar](7) NOT NULL,
	[UNIDAD] [nvarchar](8) NOT NULL,
	[VALOR_MAX_HORAS] [float] NULL,
	[SUPERVISOR] [nvarchar](6) NULL,
	[FECHA_PREVISTA] [datetime] NULL,
	[DESCRIPCION] [nvarchar](1024) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_ORDENES_XR] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[ORDENXR] ASC,
	[UNIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_ORDEN_XR_PREVISTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_ORDEN_XR_PREVISTA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[ORDENXR] [nvarchar](7) NOT NULL,
	[CODIGO_USUARIO] [nvarchar](15) NOT NULL,
	[FECHA_ASIGNACION] [datetime] NULL,
	[USUARIO_ASIGNACION] [nvarchar](6) NULL,
	[UNIDAD] [nvarchar](8) NOT NULL,
 CONSTRAINT [PK_BITSAT_ORDEN_XR_PREVISTA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[ORDENXR] ASC,
	[UNIDAD] ASC,
	[CODIGO_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_PARAMETROS_HORAS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_PARAMETROS_HORAS](
	[DiaSemana] [int] NOT NULL,
	[HoraInicio] [datetime] NOT NULL,
	[HoraFin] [datetime] NOT NULL,
 CONSTRAINT [PK_PARAMETROS_HORAS] PRIMARY KEY CLUSTERED 
(
	[DiaSemana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_PELIGROS_INSTALACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_PELIGROS_INSTALACION](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[CODIGO_PELIGRO] [int] NOT NULL,
	[SITUACION] [int] NULL,
	[CODIGO_PDA] [nvarchar](15) NULL,
	[ID_ACTIVIDAD] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_PELIGROS_INSTALACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_UNIDAD] ASC,
	[CODIGO_PELIGRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_PRECIO_KILOMETRO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_PRECIO_KILOMETRO](
	[CODIGO] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[PRECIO_KM] [real] NOT NULL,
 CONSTRAINT [PK_BITSAT_PRECIO_KILOMETRO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_REGISTRO_HOJA_TIEMPOS]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_REGISTRO_HOJA_TIEMPOS](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](15) NULL,
	[Accion] [nvarchar](4000) NULL,
	[Fecha] [datetime] NULL,
	[Codigo_hoja] [bigint] NULL,
	[Codigo_linea] [int] NULL,
	[Ip] [nvarchar](16) NULL,
	[Codigo_compañia] [nvarchar](2) NULL,
 CONSTRAINT [PK_BITSAT_REGISTRO_HOJA_TIEMPOS] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_REPARACION_ESTADO_EJECUCION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_REPARACION_ESTADO_EJECUCION](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](50) NOT NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_REPARACION_ESTADO_EJECUCION] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_REPARACION_MATERIAL]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_REPARACION_MATERIAL](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[NUMERO_T] [nvarchar](6) NOT NULL,
	[CONTRATO] [nvarchar](5) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](10) NOT NULL,
	[ID] [uniqueidentifier] NOT NULL,
	[NUMERO_OFERTA] [nvarchar](10) NOT NULL,
	[CODIGO_OPERACION] [nvarchar](50) NULL,
	[DESCRIPCION_OPERACION] [nvarchar](500) NULL,
	[CODIGO_MATERIAL] [nvarchar](50) NULL,
	[DESCRIPCION_MATERIAL] [nvarchar](500) NULL,
	[CANTIDAD] [decimal](18, 4) NULL,
	[CANTIDADOPERACION] [decimal](18, 4) NULL,
	[idOperacion] [uniqueidentifier] NULL,
	[ClaseOperacion] [nvarchar](5) NULL,
	[ClaseMaterial] [nvarchar](5) NULL,
	[ibm_supplytypeidOperacion] [uniqueidentifier] NULL,
	[ibm_supplytypeidMaterial] [uniqueidentifier] NULL,
	[Suministro] [nvarchar](20) NULL,
	[ibm_familytypeOperacion] [nvarchar](20) NULL,
	[ibm_familytypeMaterial] [nvarchar](20) NULL,
	[TipoItem] [nvarchar](50) NULL,
	[HorasOperacion] [decimal](18, 4) NULL,
	[HorasMaterial] [decimal](18, 4) NULL,
 CONSTRAINT [PK_BITSAT_REPARACION_MATERIAL] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[NUMERO_T] ASC,
	[CONTRATO] ASC,
	[CODIGO_UNIDAD] ASC,
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_REPARACION_PREVISTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_REPARACION_PREVISTA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[NUMERO_T] [nvarchar](6) NOT NULL,
	[CODIGO_USUARIO] [nvarchar](15) NOT NULL,
	[FECHA_ASIGNACION] [datetime] NULL,
	[USUARIO_ASIGNACION] [nvarchar](6) NULL,
	[CONTRATO] [nvarchar](5) NULL,
 CONSTRAINT [PK_BITSAT_REPARACION_PREVISTA_1] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_UNIDAD] ASC,
	[NUMERO_T] ASC,
	[CODIGO_USUARIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_SUBTIPOINSTALACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_SUBTIPOINSTALACION](
	[CODTIPOINSTALACION] [nvarchar](2) NOT NULL,
	[CODSUBTIPOINSTALACION] [nvarchar](2) NOT NULL,
	[DESCRIPCION] [nvarchar](25) NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_SUBTIPOINSTALACION] PRIMARY KEY CLUSTERED 
(
	[CODTIPOINSTALACION] ASC,
	[CODSUBTIPOINSTALACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 20) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_SUPERVISOR_MONTAJE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_SUPERVISOR_MONTAJE](
	[CODIGO] [nvarchar](15) NOT NULL,
	[NOMBRE_COMPLETO] [nvarchar](50) NULL,
	[EMAIL] [nvarchar](256) NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[IND_META4] [bit] NULL,
	[IND_SUPERVISOR] [bit] NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_SUPERVISOR_MONTAJE] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_CENTRO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_ALARMA_USUARIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_ALARMA_USUARIO](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [nvarchar](256) NOT NULL,
	[CONSULTA] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_BITSAT_TIPO_ALARMA_USUARIO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_BATERIA_ESTADO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_BATERIA_ESTADO](
	[TIPO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BITSAT_TIPO_BATERIA_ESTADO] PRIMARY KEY CLUSTERED 
(
	[TIPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_CALENDARIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_CALENDARIO](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_BITSAT_BITSAT_TIPO_CALENDARIO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_DIA_SEMANA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_DIA_SEMANA](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BITSAT_TIPO_DIA_SEMANA] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_ESTADO_MONTAJE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_ESTADO_MONTAJE](
	[Codigo] [int] NOT NULL,
	[Valor] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_BITSAT_TIPO_ESTADO_MONTAJE] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_ESTADO_ORDEN]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_ESTADO_ORDEN](
	[Codigo] [int] NOT NULL,
	[Valor] [nvarchar](100) NULL,
 CONSTRAINT [PK_BITSAT_TIPO_ESTADO_ORDEN] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_FOTOGRAFIA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_FOTOGRAFIA](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](50) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_FOTOGRAFIA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_FRECUENCIA_MES_INSPECCION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_FRECUENCIA_MES_INSPECCION](
	[CODIGO] [nvarchar](1) NOT NULL,
	[MES_PROPUESTA] [int] NOT NULL,
	[MES_INSPECCION] [int] NOT NULL,
 CONSTRAINT [PK_BITSAT_TIPO_FRECUENCIA_MES_INSPECCION] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC,
	[MES_PROPUESTA] ASC,
	[MES_INSPECCION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_GASTO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_GASTO](
	[CODIGO] [nvarchar](5) NOT NULL,
	[DESCRIPCION] [nvarchar](127) NULL,
	[DISP] [bit] NULL,
	[IND_IMP_CT] [bit] NULL,
	[IND_SOL_IMP] [bit] NULL,
	[IND_SOL_KM] [bit] NULL,
	[IND_HN] [bit] NULL,
	[IND_HE] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_GASTO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_GPS_DISP]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_GPS_DISP](
	[TIPO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_BITSAT_TIPO_GPS_DISP] PRIMARY KEY CLUSTERED 
(
	[TIPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_HORARIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_HORARIO](
	[codigo] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_bitsat_tipo_horario] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_IMPOSIBILIDAD_ACCESO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_IMPOSIBILIDAD_ACCESO](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](254) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_IMPOSIBILIDAD_ACCESO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_INCIDENCIAS_RESULTADO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_INCIDENCIAS_RESULTADO](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](255) NULL,
 CONSTRAINT [PK_BITSAT_TIPO_INCIDENCIAS_RESULTADO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_JORNADA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_JORNADA](
	[CODIGO] [nvarchar](1) NOT NULL,
	[DESCRIPCION] [nvarchar](64) NOT NULL,
	[AÑO] [int] NULL,
	[IMPORTE_CONVENIO] [float] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_JORNADA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_MENSAJE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_MENSAJE](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](256) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_MENSAJE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_MONTAJE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_MONTAJE](
	[CODIGO] [nvarchar](1) NOT NULL,
	[DESCRIPCION] [nvarchar](256) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_MONTAJE] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_OPERACION_INSPECCION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_OPERACION_INSPECCION](
	[CODIGO_INSPECCION] [nvarchar](10) NOT NULL,
	[CODIGO_OPERACION] [nvarchar](10) NOT NULL,
	[DESCRIPCION_OPERACION] [nvarchar](127) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_OPERACION_INSPECCION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_INSPECCION] ASC,
	[CODIGO_OPERACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_PELIGRO_ESPECIFICIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_PELIGRO_ESPECIFICIO](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](64) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_PELIGRO_ESPECIFICIO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_REPARACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_REPARACION](
	[CODIGO] [nvarchar](15) NOT NULL,
	[DESCRIPCION] [nvarchar](128) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_REPARACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_REQUISITO_MINIMO_INCUMPLIDO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_REQUISITO_MINIMO_INCUMPLIDO](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](64) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_REQUISITO_MINIMO_INCUMPLIDO] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_RIESGO_BAJA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_RIESGO_BAJA](
	[CODIGO] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](64) NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_RIESGO_BAJA] PRIMARY KEY CLUSTERED 
(
	[CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPO_SERVICIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPO_SERVICIO](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_TIPO_SERVICIO] [nvarchar](3) NOT NULL,
	[DESCRIPCION] [nvarchar](60) NULL,
	[PERIODO_REVISION] [int] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_TIPO_SERVICIO] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_TIPO_SERVICIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TIPOINSTALACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TIPOINSTALACION](
	[CODTIPOINSTALACION] [nvarchar](2) NOT NULL,
	[DESCRIPCION] [nvarchar](25) NOT NULL,
	[ISDEFAULT] [bit] NOT NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_BITSAT_TIPOINSTALACION] PRIMARY KEY CLUSTERED 
(
	[CODTIPOINSTALACION] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TMP_DATA_IMAGE]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TMP_DATA_IMAGE](
	[id] [datetime] NOT NULL,
	[imagen] [varbinary](max) NULL,
 CONSTRAINT [PK_BITSAT_TMP_DATA_IMAGE] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_TS_LOG]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_TS_LOG](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[Mensaje] [nvarchar](1024) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_BITSAT_TS_LOG] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_UBICACION]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_UBICACION](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO_USUARIO] [nvarchar](15) NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[CODIGO_PDA] [nvarchar](15) NULL,
	[LONGITUD] [nvarchar](15) NULL,
	[LATITUD] [nvarchar](15) NULL,
 CONSTRAINT [PK_BITSAT_UBICACION] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_USUARIO] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_UNIDAD_ESTACIONALIDAD]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_UNIDAD_ESTACIONALIDAD](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[MES] [int] NOT NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_BITSAT_UNIDAD_ESTACIONALIDAD] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_UNIDAD] ASC,
	[MES] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_USUARIO_Backup_03012022]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_USUARIO_Backup_03012022](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[NOMBRE] [nvarchar](50) NULL,
	[APELLIDOS] [nvarchar](50) NULL,
	[GRUPO_USUARIO] [nvarchar](10) NULL,
	[LOGIN] [nvarchar](32) NULL,
	[CONTRASEÑA] [nvarchar](32) NULL,
	[EMAIL] [nvarchar](256) NULL,
	[COLOR] [nvarchar](30) NULL,
	[DISP] [bit] NULL,
	[SUPERIOR] [nvarchar](15) NULL,
	[LOGE_OTIS] [nvarchar](8) NULL,
	[AUTORIZACION] [int] NULL,
	[ActivoMTD] [bit] NULL,
	[IDTipoTransporte] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_USUARIO_FECHA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_USUARIO_FECHA](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO] [nvarchar](15) NOT NULL,
	[FECHA] [datetime] NOT NULL,
	[DIRECCION_PARTIDA] [nvarchar](50) NULL,
	[NUMERO_DIRECCION_PARTIDA] [nvarchar](15) NULL,
	[CODIGO_POSTAL_PARTIDA] [nvarchar](5) NULL,
	[POBLACION_DIRECCION_PARTIDA] [nvarchar](50) NULL,
	[DIRECCION_LLEGADA] [nvarchar](50) NULL,
	[NUMERO_DIRECCION_LLEGADA] [nvarchar](15) NULL,
	[CODIGO_POSTAL_LLEGADA] [nvarchar](5) NULL,
	[POBLACION_DIRECCION_LLEGADA] [nvarchar](50) NULL,
	[HORA_INI1] [datetime] NULL,
	[HORA_FIN1] [datetime] NULL,
	[HORA_INI2] [datetime] NULL,
	[HORA_FIN2] [datetime] NULL,
	[TIEMPO_TRABAJO] [int] NULL,
	[HORA_INICIO_PAUSA] [datetime] NULL,
	[HORA_FIN_PAUSA] [datetime] NULL,
	[TIEMPO_PAUSA] [int] NULL,
	[TIEMPO_EXTRA] [int] NULL,
	[MINUTOS_DISPONIBLES] [int] NULL,
 CONSTRAINT [PK_BITSAT_USUARIO_FECHA] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO] ASC,
	[FECHA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BITSAT_USUARIO_FICTICIO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BITSAT_USUARIO_FICTICIO](
	[USUARIO] [nvarchar](15) NOT NULL,
	[USUARIO_FICTICIO] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_BITSAT_USUARIO_FICTICIO] PRIMARY KEY CLUSTERED 
(
	[USUARIO] ASC,
	[USUARIO_FICTICIO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FISS_CC_MAILING_ENCUESTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_CC_MAILING_ENCUESTA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[OFICINA] [nvarchar](6) NOT NULL,
	[PARA] [nvarchar](500) NULL,
	[COPIA] [nvarchar](500) NULL,
 CONSTRAINT [PK_FISS_CC_MAILING_ENCUESTA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FISS_CC_TEXTO_ENCUESTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_CC_TEXTO_ENCUESTA](
	[ID] [int] NOT NULL,
	[DESCRIPCION] [nvarchar](256) NOT NULL,
	[TIPO] [char](1) NOT NULL,
	[ALERTA_HASTA] [int] NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_FISS_CC_TEXTO_ENCUESTA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FISS_CC_TEXTO_ENCUESTA_SELECTOR]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_CC_TEXTO_ENCUESTA_SELECTOR](
	[ID_TEXTO_ENCUESTA] [int] NOT NULL,
	[ID_SELECTOR_ENCUESTA] [int] NOT NULL,
	[ORDEN] [int] NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_FISS_CC_TEXTO_ENCUESTA_SELECTOR] PRIMARY KEY CLUSTERED 
(
	[ID_TEXTO_ENCUESTA] ASC,
	[ID_SELECTOR_ENCUESTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FISS_CC_TIPO_ENCUESTA_TEXTO]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_CC_TIPO_ENCUESTA_TEXTO](
	[ID_TIPO_ENCUESTA] [int] NOT NULL,
	[ID_TEXTO_ENCUESTA] [int] NOT NULL,
	[ORDEN] [int] NULL,
	[DISP] [bit] NOT NULL,
 CONSTRAINT [PK_FISS_CC_TIPO_ENCUESTA_TEXTO] PRIMARY KEY CLUSTERED 
(
	[ID_TIPO_ENCUESTA] ASC,
	[ID_TEXTO_ENCUESTA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FISS_CC_TIPO_PREGUNTA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_CC_TIPO_PREGUNTA](
	[TIPO] [char](1) NOT NULL,
	[DESCRIPCION] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_FISS_CC_TIPO_PREGUNTA] PRIMARY KEY CLUSTERED 
(
	[TIPO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FISS_OFICINA]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_OFICINA](
	[Nombre] [nvarchar](255) NULL,
	[Compañía] [float] NULL,
	[LOGE] [float] NULL,
	[LOGE6] [nvarchar](255) NULL,
	[Dirección] [nvarchar](255) NULL,
	[Tipo de vía] [nvarchar](255) NULL,
	[Nombre de vía] [nvarchar](255) NULL,
	[Número] [float] NULL,
	[Ciudad] [nvarchar](255) NULL,
	[Código Postal] [float] NULL,
	[Provincia] [nvarchar](255) NULL,
	[Latitud] [nvarchar](255) NULL,
	[Longitud] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FISS_TEMP_UNIDADES]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FISS_TEMP_UNIDADES](
	[CODIGO_COMPAÑIA] [nvarchar](2) NOT NULL,
	[CODIGO_CENTRO] [nvarchar](8) NOT NULL,
	[CODIGO_UNIDAD] [nvarchar](5) NOT NULL,
	[NOMBRE_UNIDAD] [nvarchar](50) NULL,
	[VIA] [nvarchar](2) NULL,
	[DIRECCION] [nvarchar](50) NULL,
	[NUMERO] [nvarchar](15) NULL,
	[COMPLEMENTO_DIRECCION] [nvarchar](50) NULL,
	[CODIGO_POSTAL] [nvarchar](5) NULL,
	[PROVINCIA] [nvarchar](2) NULL,
	[POBLACION] [nvarchar](4) NULL,
	[PAIS] [nvarchar](10) NULL,
	[TIPO_CONTRATO] [nvarchar](50) NULL,
	[DURACION_PREVISTA] [int] NULL,
	[HORARIO_INICIO1] [datetime] NULL,
	[HORARIO_FIN1] [datetime] NULL,
	[HORARIO_INICIO2] [datetime] NULL,
	[HORARIO_FIN2] [datetime] NULL,
	[PRIORIDAD] [nvarchar](10) NULL,
	[TIPO_SERVICIO] [nvarchar](3) NULL,
	[PERIODO_VISITAS] [nvarchar](1) NULL,
	[CONTRATO] [nvarchar](5) NULL,
	[ALTAMANTENIMIENTO] [datetime] NULL,
	[DISP] [bit] NULL,
	[SERVICIO_24H] [nvarchar](1) NOT NULL,
	[FACTURACION_AUTOMATICA] [nvarchar](1) NOT NULL,
	[TIEMPO_RESP] [int] NOT NULL,
	[VIP] [bit] NOT NULL,
	[UNIDAD_TEMPORAL] [nvarchar](1) NULL,
	[ESTADO] [nvarchar](2) NULL,
	[TIPOCLIENTE_SKP] [nvarchar](50) NULL,
	[RAE] [nvarchar](20) NULL,
	[NIF] [nvarchar](50) NULL,
	[CODTIPOINSTALACION] [nvarchar](2) NULL,
	[CODSUBTIPOINSTALACION] [nvarchar](2) NULL,
	[CODMARCA] [nvarchar](4) NULL,
 CONSTRAINT [PK_FISS_TEMP_UNIDADES] PRIMARY KEY CLUSTERED 
(
	[CODIGO_COMPAÑIA] ASC,
	[CODIGO_UNIDAD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_AccesibilidadInstalacion]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_AccesibilidadInstalacion](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[CodigoUnidad] [nvarchar](5) NOT NULL,
	[IDConocimiento] [int] NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_AccesibilidadInstalacion] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[CodigoUnidad] ASC,
	[IDConocimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_CargaTrabajoNiveles]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_CargaTrabajoNiveles](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDCargaTrabajo] [int] IDENTITY(1,1) NOT NULL,
	[CargaTrabajoDesde] [int] NOT NULL,
	[CargaTrabajoHasta] [int] NOT NULL,
	[Peso] [int] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_CargaTrabajoNiveles] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDCargaTrabajo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_ClasificacionAviso]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_ClasificacionAviso](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDClasificacionAviso] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[TiempoObjetivo] [decimal](5, 2) NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_ClasificacionAviso] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDClasificacionAviso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_Conocimientos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_Conocimientos](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDConocimiento] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[NivelAcceso] [int] NULL,
	[Peso] [int] NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_Conocimientos] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDConocimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_Especializacion]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_Especializacion](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDEspecializacion] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_Especializacion] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDEspecializacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_EspecializacionTecnico]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_EspecializacionTecnico](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDEspecializacion] [int] NOT NULL,
	[CodigoTecnico] [nvarchar](15) NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_EspecializacionTecnico] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDEspecializacion] ASC,
	[CodigoTecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_Parametros]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_Parametros](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[CodigoCentro] [nvarchar](8) NOT NULL,
	[IDParametro] [nvarchar](30) NOT NULL,
	[Valor] [nvarchar](20) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
	[Peso] [int] NOT NULL,
 CONSTRAINT [PK_MTD_Parametros] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[CodigoCentro] ASC,
	[IDParametro] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_Relacion_Tecnico_Cliente]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_Relacion_Tecnico_Cliente](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[CodigoTecnico] [nvarchar](15) NOT NULL,
	[NIFCliente] [nvarchar](15) NOT NULL,
	[Preferencia] [int] NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_Relacion_Usuario_Cliente] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[CodigoTecnico] ASC,
	[NIFCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_Tecnico_Conocimientos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_Tecnico_Conocimientos](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDConocimiento] [int] NOT NULL,
	[CodigoTecnico] [nvarchar](15) NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_Tecnico_Conocimientos] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDConocimiento] ASC,
	[CodigoTecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_Tecnico_ValorSubjetivo]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_Tecnico_ValorSubjetivo](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDValorSubjetivo] [int] NOT NULL,
	[CodigoTecnico] [nvarchar](15) NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_Tecnico_ValorSubjetivo] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDValorSubjetivo] ASC,
	[CodigoTecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_Territorio]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_Territorio](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDTerritorio] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_Territorio] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDTerritorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_Territorio_Ruta]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_Territorio_Ruta](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[CodigoCentro] [nvarchar](8) NOT NULL,
	[CodigoRuta] [nvarchar](4) NOT NULL,
	[IDTerritorio] [int] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_Territorio_Ruta] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[CodigoCentro] ASC,
	[CodigoRuta] ASC,
	[IDTerritorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_Territorio_Ruta_Tecnico]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_Territorio_Ruta_Tecnico](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[CodigoCentro] [nvarchar](8) NOT NULL,
	[CodigoRuta] [nvarchar](4) NOT NULL,
	[CodigoTecnico] [nvarchar](15) NOT NULL,
	[IDTerritorio] [int] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_Territorio_Ruta_Tecnico] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[CodigoCentro] ASC,
	[CodigoRuta] ASC,
	[CodigoTecnico] ASC,
	[IDTerritorio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_Territorio_Tecnico]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_Territorio_Tecnico](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDTerritorio] [int] NOT NULL,
	[CodigoTecnico] [nvarchar](15) NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_Territorio_Tecnico] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDTerritorio] ASC,
	[CodigoTecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_TiempoDesplazamiento]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_TiempoDesplazamiento](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDTiempoDesplazamiento] [int] IDENTITY(1,1) NOT NULL,
	[IDClasificacionAviso] [int] NOT NULL,
	[TiempoDesde] [decimal](6, 2) NOT NULL,
	[TiempoHasta] [decimal](6, 2) NOT NULL,
	[Peso] [int] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_TiempoDesplazamiento] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDTiempoDesplazamiento] ASC,
	[IDClasificacionAviso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_TiempoObjetivoAvisoCentro]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_TiempoObjetivoAvisoCentro](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[CodigoCentro] [nvarchar](8) NOT NULL,
	[IDClasificacionAviso] [int] NOT NULL,
	[TiempoObjetivo] [decimal](5, 2) NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_TiempoObjetivoAvisoCentro] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[CodigoCentro] ASC,
	[IDClasificacionAviso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_TipoEquipo_Conocimientos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_TipoEquipo_Conocimientos](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDConocimiento] [int] NOT NULL,
	[IDGrupoAparato] [nvarchar](2) NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_TipoEquipo_Conocimientos] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDConocimiento] ASC,
	[IDGrupoAparato] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_TipoTecnologia_Conocimientos]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_TipoTecnologia_Conocimientos](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDConocimiento] [int] NOT NULL,
	[IDTipoTecnologia] [int] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_TipoTecnologia_Conocimientos] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDConocimiento] ASC,
	[IDTipoTecnologia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_TipoTransporte]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_TipoTransporte](
	[IDTipoTransporte] [int] NOT NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_TipoTransporte] PRIMARY KEY CLUSTERED 
(
	[IDTipoTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_UsuariosAplicacion]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_UsuariosAplicacion](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDUsuario] [nvarchar](15) NOT NULL,
	[NivelAcceso] [int] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_UsuariosAplicacion] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_UsuPruebas]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_UsuPruebas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](100) NOT NULL,
	[TipoAccion] [nvarchar](10) NOT NULL,
	[Fecha] [datetime] NOT NULL,
 CONSTRAINT [PK_MTD_UsuPruebas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_ValorSubjetivo]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_ValorSubjetivo](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[IDValorSubjetivo] [int] IDENTITY(1,1) NOT NULL,
	[NivelAcceso] [int] NULL,
	[Descripcion] [nvarchar](255) NOT NULL,
	[Peso] [int] NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_ValorSubjetivo] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[IDValorSubjetivo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_Variables]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_Variables](
	[IDVariable] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
	[FechaActualizacion] [datetime] NULL,
 CONSTRAINT [PK_MTD_Variables] PRIMARY KEY CLUSTERED 
(
	[IDVariable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MTD_VariablesPorCompañia]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTD_VariablesPorCompañia](
	[CodigoCompañia] [nvarchar](2) NOT NULL,
	[CodigoCentro] [nvarchar](8) NOT NULL,
	[IDVariable] [int] NOT NULL,
	[Orden] [int] NOT NULL,
	[FechaActualizacion] [datetime] NULL,
	[DISP] [bit] NULL,
 CONSTRAINT [PK_MTD_VariablesPorCompañia] PRIMARY KEY CLUSTERED 
(
	[CodigoCompañia] ASC,
	[CodigoCentro] ASC,
	[IDVariable] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Cia]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Cia](
	[CodCia] [nvarchar](128) NOT NULL,
	[CodCiaInt] [nvarchar](max) NULL,
	[NombreCorto] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Cif] [nvarchar](max) NULL,
	[CodPais] [nvarchar](max) NULL,
	[TipoVia] [nvarchar](max) NULL,
	[NombreVia] [nvarchar](max) NULL,
	[Numvia] [nvarchar](max) NULL,
	[Edificio] [nvarchar](max) NULL,
	[Piso] [nvarchar](max) NULL,
	[Escalera] [nvarchar](max) NULL,
	[Puerta] [nvarchar](max) NULL,
	[NucleoUrbano] [nvarchar](max) NULL,
	[CodMunicipio] [nvarchar](max) NULL,
	[CodProvincia] [nvarchar](max) NULL,
	[CodPostal] [nvarchar](max) NULL,
	[Telefono] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[RegistroMercantil] [nvarchar](max) NULL,
	[Web] [nvarchar](max) NULL,
	[PorcentajeTAC] [decimal](18, 2) NULL,
	[Activa] [bit] NOT NULL,
	[SeFactura] [bit] NOT NULL,
	[CodCompetidor] [nvarchar](max) NULL,
	[UsaDivisa] [bit] NOT NULL,
	[IdDivisa] [nvarchar](max) NULL,
	[ActivaJDE] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TB_Cia] PRIMARY KEY CLUSTERED 
(
	[CodCia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_DireccionesInstalacionUd]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_DireccionesInstalacionUd](
	[CodCia] [nvarchar](128) NOT NULL,
	[CodUnidad] [nvarchar](128) NOT NULL,
	[CodDireccionInstalacion] [tinyint] NOT NULL,
	[TipoVia] [nvarchar](max) NULL,
	[NombreVia] [nvarchar](max) NULL,
	[NumVia] [nvarchar](max) NULL,
	[Edificio] [nvarchar](max) NULL,
	[Escalera] [nvarchar](max) NULL,
	[Piso] [nvarchar](max) NULL,
	[Puerta] [nvarchar](max) NULL,
	[NucleoUrbano] [nvarchar](max) NULL,
	[CodProvincia] [nvarchar](128) NULL,
	[CodMunicipio] [nvarchar](128) NULL,
	[CodPostal] [nvarchar](max) NULL,
	[TC_TipoVia_CodTipoVia] [nvarchar](128) NULL,
 CONSTRAINT [PK_dbo.TB_DireccionesInstalacionUd] PRIMARY KEY CLUSTERED 
(
	[CodCia] ASC,
	[CodUnidad] ASC,
	[CodDireccionInstalacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Loges_MPB]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Loges_MPB](
	[CodCia] [char](2) NOT NULL,
	[LogeDelegacion] [char](2) NOT NULL,
	[LogeLocal] [char](2) NOT NULL,
	[LogeOficinaServicio] [char](2) NOT NULL,
	[LogePuntoAsistencia] [char](2) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Activa] [bit] NOT NULL,
	[CodProvincia] [char](2) NULL,
	[IdLoge] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TB_Unidades]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TB_Unidades](
	[CodCia] [nvarchar](128) NOT NULL,
	[CodUnidad] [nvarchar](128) NOT NULL,
	[CodTipoInstalacion] [nvarchar](max) NULL,
	[CodSubTipoInstalacion] [nvarchar](max) NULL,
	[CodTipoAparato] [nvarchar](max) NULL,
	[CodGrupoAparato] [nvarchar](max) NULL,
	[CodProcedencia] [nvarchar](max) NULL,
	[CodMarca] [nvarchar](max) NULL,
	[CodActividad] [nvarchar](max) NULL,
	[CodEstado] [nvarchar](max) NULL,
	[CodMotivoAlta] [nvarchar](max) NULL,
	[FechaAlta] [datetime] NULL,
	[FechaAltaFacturacion] [datetime] NULL,
	[FechaInicioServicio] [datetime] NULL,
	[FechaSuspensionMto] [datetime] NULL,
	[CodMotivoSuspensionMto] [nvarchar](max) NULL,
	[FechaPrevistaReactivacion] [datetime] NULL,
	[FechaReactivacion] [datetime] NULL,
	[ObservacionesSuspension] [nvarchar](max) NULL,
	[FechaBaja] [datetime] NULL,
	[CodMotivoBaja] [nvarchar](max) NULL,
	[FechaMontaje] [datetime] NULL,
	[MesesFOS] [int] NULL,
	[FechaInicioFos] [datetime] NULL,
	[FechaFinFos] [datetime] NULL,
	[FechaEntregaProyecto] [datetime] NULL,
	[FechaPuestaEnServicio] [datetime] NULL,
	[FechaPuestaEnMarcha] [datetime] NULL,
	[FechaAutorizacionInst] [datetime] NULL,
	[FechaAprobacionActa] [datetime] NULL,
	[FechaEntrega] [datetime] NULL,
	[FechaUltModernizacion] [datetime] NULL,
	[FechaNoContratacion] [datetime] NULL,
	[IdMotivoNoContratacion] [int] NULL,
	[UnidadVip] [bit] NULL,
	[UnidadEnServicio] [bit] NULL,
	[PeriodoRi] [nvarchar](max) NULL,
	[CodComunicador] [nvarchar](max) NULL,
	[TelefComunicador] [nvarchar](max) NULL,
	[TelefonoComunicador] [nvarchar](max) NULL,
	[Latitud] [nvarchar](max) NULL,
	[Longitud] [nvarchar](max) NULL,
	[TiempoResolucionTipo1] [tinyint] NULL,
	[TiempoResolucionTipo1E] [tinyint] NULL,
	[TiempoResolucionTipo2] [tinyint] NULL,
	[TiempoResolucionTipo3] [tinyint] NULL,
	[T1Vend] [decimal](18, 2) NULL,
	[T1Norm] [decimal](18, 2) NULL,
	[T1EncNor] [int] NULL,
	[T1EncExt] [int] NULL,
	[Fiabilidad] [decimal](18, 2) NULL,
	[Disponibilidad] [decimal](18, 2) NULL,
	[ImporteMantenimiento] [decimal](18, 2) NULL,
	[Penalizaciones] [nvarchar](max) NULL,
	[UbicacionDentroEdificio] [nvarchar](max) NULL,
	[ImporteGuardia] [decimal](18, 2) NULL,
	[ImporteCompetencia] [decimal](18, 2) NULL,
	[FechaEfectoGuardia] [datetime] NULL,
	[FechaElevador] [datetime] NULL,
	[DesdeRevision] [datetime] NULL,
	[HastaRevision] [datetime] NULL,
	[CodFrecuenciaVisita] [nvarchar](max) NULL,
	[InspeccionObligatoria] [bit] NULL,
	[FechaModificacion] [datetime] NULL,
	[UsuarioModificacion] [nvarchar](max) NULL,
	[IpUsuarioModificacion] [nvarchar](max) NULL,
	[HostUsuarioModificacion] [nvarchar](max) NULL,
	[Timestamp] [varbinary](max) NULL,
	[TiempoRespuesta] [int] NULL,
	[NumeroViviendasEdif] [int] NULL,
	[MarcaCuadro] [nvarchar](max) NULL,
	[FinSemana] [nvarchar](max) NULL,
	[ObservacionesSinServicio] [nvarchar](max) NULL,
	[ObservacionesVIP] [nvarchar](max) NULL,
	[ObservacionesBaja] [nvarchar](max) NULL,
	[CodEmpresaIntegrada] [nvarchar](max) NULL,
	[CodTipoClienteSKP] [nvarchar](max) NULL,
	[IdEstadoTelefono] [int] NULL,
	[CodComunicadorD18] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TB_Unidades] PRIMARY KEY CLUSTERED 
(
	[CodCia] ASC,
	[CodUnidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TC_Municipios]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TC_Municipios](
	[CodProvincia] [nvarchar](128) NOT NULL,
	[CodMunicipio] [nvarchar](128) NOT NULL,
	[NombreIne] [nvarchar](max) NULL,
	[NombreOficial] [nvarchar](max) NULL,
	[NombreCooficial] [nvarchar](max) NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.TC_Municipios] PRIMARY KEY CLUSTERED 
(
	[CodProvincia] ASC,
	[CodMunicipio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TC_Provincias]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TC_Provincias](
	[CodProvincia] [nvarchar](128) NOT NULL,
	[Provincia] [nvarchar](max) NULL,
	[IdComununidad] [int] NOT NULL,
	[NombreOficial] [nvarchar](max) NULL,
	[NombreCooficial] [nvarchar](max) NULL,
	[CodZona] [nvarchar](max) NULL,
	[Activo] [bit] NOT NULL,
	[Tite] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TC_Provincias] PRIMARY KEY CLUSTERED 
(
	[CodProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TC_TipoVia]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TC_TipoVia](
	[CodTipoVia] [nvarchar](128) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TC_TipoVia] PRIMARY KEY CLUSTERED 
(
	[CodTipoVia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[test]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[test](
	[prueba2] [nvarchar](2) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TT_BIR_ICD_JOB_UltimoIDActividad]    Script Date: 28/10/2023 17:17:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TT_BIR_ICD_JOB_UltimoIDActividad](
	[UltimoIDEnviado] [datetime] NOT NULL,
	[FechaModificacion] [datetime] NOT NULL,
 CONSTRAINT [PK_TT_BIR_ICD_JOB_UltimoIDActividad] PRIMARY KEY CLUSTERED 
(
	[UltimoIDEnviado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BITSAT_ACTAS_ENTREGA] ADD  CONSTRAINT [DF_BITSAT_ACTAS_ENTREGA_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD] ADD  CONSTRAINT [DF_BITSAT_ACTIVIDAD_CoordsVal]  DEFAULT ((0)) FOR [CoordsVal]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AUTOFACTURACION] ADD  CONSTRAINT [DF_BITSAT_ACTIVIDAD_AUTOFACTURACION_AUTOFACTURABLE]  DEFAULT ('') FOR [AUTOFACTURABLE]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_DATOS_GUARDIA] ADD  DEFAULT ((1)) FOR [NUMERO_LINEA]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_FIRMA] ADD  DEFAULT ((0)) FOR [INTENTOS_ENVIO]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_FIRMA] ADD  DEFAULT ((0)) FOR [AUTORIZADO]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_FIRMA] ADD  DEFAULT ((0)) FOR [NUEVO_FIRMANTE]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_FOTOGRAFIA] ADD  DEFAULT ((0)) FOR [ENVIADO_PDA]
GO
ALTER TABLE [dbo].[BITSAT_ATRIBUCIONES] ADD  CONSTRAINT [DF_BITSAT_ATRIBUCIONES_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS] ADD  CONSTRAINT [DF_BITSAT_AVISOS_ENVIADO_OP]  DEFAULT ((0)) FOR [ENVIADO_OP]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS] ADD  CONSTRAINT [DF_BITSAT_AVISOS_ENVIAR_24h]  DEFAULT ((0)) FOR [ENVIAR_24h]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS] ADD  CONSTRAINT [DF_BITSAT_AVISOS_CONFIRMADO_TECNICO]  DEFAULT ((0)) FOR [CONFIRMADO_TECNICO]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS] ADD  CONSTRAINT [DF_BITSAT_AVISOS_ENVIAR_24h_CONF]  DEFAULT ((0)) FOR [ENVIAR_24h_CONF]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS_ESTADOS] ADD  CONSTRAINT [DF_BITSAT_AVISOS_ESTADOS_ind24h]  DEFAULT ((1)) FOR [ind24h]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS_ESTADOS] ADD  CONSTRAINT [DF_BITSAT_AVISOS_ESTADOS_FECHA_HORA]  DEFAULT (getdate()) FOR [FECHA_HORA]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS_ESTADOS] ADD  CONSTRAINT [DF_BITSAT_AVISOS_ESTADOS_Valido]  DEFAULT ((1)) FOR [VALIDO]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS_ESTADOS] ADD  CONSTRAINT [DF__BITSAT_AV__FICHE__766C7FFC]  DEFAULT ('') FOR [FICHERO_ENTRADA]
GO
ALTER TABLE [dbo].[BITSAT_CALIDAD_FIRMANTE] ADD  CONSTRAINT [DF_BITSAT_CALIDAD_FIRMANTE_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_CENTRO] ADD  CONSTRAINT [DF_BITSAT_CENTRO_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_CODIGO_AVISO_ELEMENTO] ADD  CONSTRAINT [DF_BITSAT_CODIGO_AVISO_ELEMENTO_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_CODIGO_AVISO_TIPO] ADD  CONSTRAINT [DF_BITSAT_CODIGO_AVISO_TIPO_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_COMPAÑIA] ADD  CONSTRAINT [DF_BITSAT_COMPAÑIA_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_DETALLE_HORARIO] ADD  CONSTRAINT [DF_BITSAT_DETALLE_HORARIO_dia_activo]  DEFAULT ((1)) FOR [dia_activo]
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_ASCENSOR] ADD  CONSTRAINT [DF_BITSAT_ESTADO_ASCENSOR_DIPS]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_UNIDAD_AVISO] ADD  CONSTRAINT [DF_BITSAT_ESTADO_UNIDAD_AVISO_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_GRADO_SATISFACCION] ADD  CONSTRAINT [DF_BITSAT_GRADO_SATISFACCION_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_GRUPO_USUARIO] ADD  CONSTRAINT [DF_BITSAT_GRUPO_USUARIO_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_HISTORICO_TECNICO] ADD  CONSTRAINT [DF_HistoricoDeVehiculo_timespam]  DEFAULT (getdate()) FOR [TIMESPAM]
GO
ALTER TABLE [dbo].[BITSAT_HITOS_MONTAJE] ADD  CONSTRAINT [DF_BITSAT_HITOS_MONTAJE_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_HOJA_TIEMPOS_CABECERA] ADD  CONSTRAINT [DF_BITSAT_HOJA_TIEMPOS_CABECERA_ind_pendiente_exportar]  DEFAULT ((0)) FOR [ind_exportar]
GO
ALTER TABLE [dbo].[BITSAT_HOJA_TIEMPOS_CABECERA] ADD  CONSTRAINT [DF__BITSAT_HO__regis__308412F8]  DEFAULT ((0)) FOR [registro_manual]
GO
ALTER TABLE [dbo].[BITSAT_HOJA_TIEMPOS_LINEA] ADD  CONSTRAINT [DF__BITSAT_HO__regis__2F8FEEBF]  DEFAULT ((0)) FOR [registro_manual]
GO
ALTER TABLE [dbo].[BITSAT_HOJA_TIEMPOS_LINEA] ADD  CONSTRAINT [apunte_financiero_defaultValue]  DEFAULT ((0)) FOR [apunte_financiero]
GO
ALTER TABLE [dbo].[BITSAT_IDENTIFICADOR] ADD  CONSTRAINT [DF_BITSAT_IDENTIFICADOR_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_IMP_DEF] ADD  CONSTRAINT [DF_BITSAT_IMP_DEF_ALTA]  DEFAULT ((1)) FOR [ALTA]
GO
ALTER TABLE [dbo].[BITSAT_IMP_DEF] ADD  CONSTRAINT [DF_BITSAT_IMP_DEF_BAJA]  DEFAULT ((1)) FOR [BAJA]
GO
ALTER TABLE [dbo].[BITSAT_IMP_DEF] ADD  CONSTRAINT [DF_BITSAT_IMP_DEF_MODIFICACION]  DEFAULT ((1)) FOR [MODIFICACION]
GO
ALTER TABLE [dbo].[BITSAT_INFORMES_SERVICIO] ADD  CONSTRAINT [DF_BITSAT_INFORMES_SERVICIO_CODIGO_CENTRO]  DEFAULT ('') FOR [CODIGO_CENTRO]
GO
ALTER TABLE [dbo].[BITSAT_INFORMES_SERVICIO] ADD  CONSTRAINT [DF_BITSAT_INFORMES_SERVICIO_CODIGO_UNIDAD]  DEFAULT ('') FOR [CODIGO_UNIDAD]
GO
ALTER TABLE [dbo].[BITSAT_INSPECCION_PREVISTA] ADD  CONSTRAINT [DF_BITSAT_INSPECCION_PREVISTA_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_LOG] ADD  CONSTRAINT [DF_BITSAT_LOG_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[BITSAT_MOBILE] ADD  CONSTRAINT [DF_BITSAT_MOBILE_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_MOBILE] ADD  CONSTRAINT [DF_BITSAT_MOBILE_BLOQUEADA]  DEFAULT ((0)) FOR [BLOQUEADA]
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE] ADD  CONSTRAINT [DF_BITSAT_MONTAJE_ESTADO_MONTAJE]  DEFAULT ((1)) FOR [ESTADO_MONTAJE]
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE] ADD  CONSTRAINT [DF_BITSAT_MONTAJE_NUMERO_MAXIMO_TECNICOS]  DEFAULT ((3)) FOR [NUMERO_MAXIMO_TECNICOS]
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE] ADD  CONSTRAINT [DF_BITSAT_MONTAJES_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_NUMERACION_XR] ADD  CONSTRAINT [DF_BITSAT_NUMERACION_XR_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES] ADD  CONSTRAINT [DF_BITSAT_OPERACIONES_TIPO_OPERACION]  DEFAULT ('E') FOR [TIPO_OPERACION]
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES] ADD  CONSTRAINT [DF_BITSAT_OPERACIONES_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_COMUNES_SERVICIO_APARATO] ADD  CONSTRAINT [DF_BITSAT_OPERACIONES_COMUNES_SERVICIO_APARATO_ORDEN]  DEFAULT ((1)) FOR [ORDEN]
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_COMUNES_SERVICIO_APARATO] ADD  CONSTRAINT [DF_BITSAT_OPERACIONES_COMUNES_SERVICIO_APARATO_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION] ADD  CONSTRAINT [DF_BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION_ORDEN]  DEFAULT ((1)) FOR [ORDEN]
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION] ADD  CONSTRAINT [DF_BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_T] ADD  CONSTRAINT [DF__BITSAT_OR__ESTAD__173A0D98]  DEFAULT ((1)) FOR [ESTADO_EJECUCION]
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_X] ADD  CONSTRAINT [DF_BITSAT_ORDENES_X_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_X] ADD  CONSTRAINT [DF_BITSAT_ORDEN_X_ESTADO]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_XR] ADD  CONSTRAINT [DF_BITSAT_ORDENES_XR_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_PARAMETROS_HORAS] ADD  CONSTRAINT [DF_BITSAT_PARAMETROS_HORAS_HoraInicio]  DEFAULT ('1900-1-1 00:00:00') FOR [HoraInicio]
GO
ALTER TABLE [dbo].[BITSAT_PARAMETROS_HORAS] ADD  CONSTRAINT [DF_BITSAT_PARAMETROS_HORAS_HoraFin]  DEFAULT ('1900-1-1 00:00:00') FOR [HoraFin]
GO
ALTER TABLE [dbo].[BITSAT_POBLACION] ADD  CONSTRAINT [DF_BITSAT_POBLACION_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_PROVINCIA] ADD  CONSTRAINT [DF_BITSAT_PROVINCIA_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_REPARACION] ADD  CONSTRAINT [DF_BITSAT_REPARACION_NUMERO_OFERTA]  DEFAULT ('') FOR [NUMERO_OFERTA]
GO
ALTER TABLE [dbo].[BITSAT_REPARACION] ADD  CONSTRAINT [DF_BITSAT_REPARACION_ESTADO]  DEFAULT ((1)) FOR [ESTADO]
GO
ALTER TABLE [dbo].[BITSAT_REPARACION] ADD  CONSTRAINT [DF_BITSAT_REPARACION_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_RUTA] ADD  CONSTRAINT [DF_BITSAT_RUTA_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_RUTA] ADD  DEFAULT ((1)) FOR [ActivoMTD]
GO
ALTER TABLE [dbo].[BITSAT_RUTAS] ADD  DEFAULT ((0)) FOR [SUPERVISOR_EN_FUNCIONES]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_ACTIVIDAD] ADD  CONSTRAINT [DF_BITSAT_TIPO_ACTIVIDAD_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_APARATO] ADD  CONSTRAINT [DF_BITSAT_TIPO_APARATO_disp]  DEFAULT ((1)) FOR [disp]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_AVISO] ADD  CONSTRAINT [DF_BITSAT_TIPO_AVISO_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_FOTOGRAFIA] ADD  CONSTRAINT [DF_BITSAT_TIPO_FOTOGRAFIA_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_FRECUENCIA] ADD  CONSTRAINT [DF_BITSAT_TIPO_FRECUENCIA_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_GASTO] ADD  CONSTRAINT [DF_BITSAT_TIPO_GASTO_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_GASTO_DEF] ADD  CONSTRAINT [DF_BITSAT_TIPO_GASTO_DEF_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_IMPRODUCTIVIDAD] ADD  CONSTRAINT [DF_BITSAT_TIPO_IMPRODUCTIVIDAD_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_IMPRODUCTIVIDAD] ADD  CONSTRAINT [DF_BITSAT_TIPO_IMPRODUCTIVIDAD_IND_SOL_UNIDAD]  DEFAULT ((0)) FOR [IND_SOL_UNIDAD]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_IMPRODUCTIVIDAD] ADD  CONSTRAINT [DF_BITSAT_TIPO_IMPRODUCTIVIDAD_IND_PROGRAMABLE]  DEFAULT ((1)) FOR [IND_PROGRAMABLE]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_INSPECCION] ADD  CONSTRAINT [DF_BITSAT_TIPO_INSPECCION_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_MATERIAL] ADD  CONSTRAINT [DF_BITSAT_TIPO_MATERIAL_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_MENSAJE] ADD  CONSTRAINT [DF_BITSAT_TIPO_MENSAJE_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_MONTAJE] ADD  CONSTRAINT [DF__BITSAT_TIP__DISP__2ACB39A2]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_OPERACION_INSPECCION] ADD  CONSTRAINT [DF_BITSAT_TIPO_OPERACION_INSPECCION_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_PELIGRO_ESPECIFICIO] ADD  CONSTRAINT [DF_BITSAT_TIPO_PELIGRO_ESPECIFICIO_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_REQUISITO_MINIMO_INCUMPLIDO] ADD  CONSTRAINT [DF_BITSAT_TIPO_REQUISITO_MINIMO_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_RIESGO_BAJA] ADD  CONSTRAINT [DF_BITSAT_TIPO_RIESGO_BAJA_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_SERVICIO] ADD  CONSTRAINT [DF_BITSAT_TIPO_SERVICIO_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_TS_LOG] ADD  CONSTRAINT [DF_BITSAT_TS_LOG_Fecha]  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] ADD  CONSTRAINT [DF_BITSAT_UNIDAD_PAIS]  DEFAULT (N'es-ES') FOR [PAIS]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] ADD  CONSTRAINT [DF_BITSAT_UNIDAD_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] ADD  CONSTRAINT [SERVICIO_24H_defaultValue]  DEFAULT ('N') FOR [SERVICIO_24H]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] ADD  CONSTRAINT [FACTURACION_AUTOMATICA_defaultValue]  DEFAULT ('N') FOR [FACTURACION_AUTOMATICA]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] ADD  CONSTRAINT [TIEMPO_RESP_defaultValue]  DEFAULT ((0)) FOR [TIEMPO_RESP]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] ADD  CONSTRAINT [VIP_defaultValue]  DEFAULT ((0)) FOR [VIP]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO] ADD  CONSTRAINT [DF_BITSAT_USUARIO_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO] ADD  DEFAULT ((1)) FOR [ActivoMTD]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_DATOS] ADD  CONSTRAINT [DF__BITSAT_US__CODIG__0C11A858]  DEFAULT ((0)) FOR [CODIGO_WEB]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_DATOS] ADD  DEFAULT ((0)) FOR [SUPERVISOR_EN_FUNCIONES]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_DATOS] ADD  DEFAULT ((0)) FOR [RESET_CACHE]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_DATOS] ADD  DEFAULT ((0)) FOR [EXPERTO_REMOTO]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] ADD  CONSTRAINT [DF_FISS_TEMP_UNIDADES_PAIS]  DEFAULT (N'es-ES') FOR [PAIS]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] ADD  CONSTRAINT [DF_FISS_TEMP_UNIDADES_DISP]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] ADD  CONSTRAINT [SERVICIO_24H_TEMP_UNIDADES_defaultValue]  DEFAULT ('N') FOR [SERVICIO_24H]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] ADD  CONSTRAINT [FACTURACION_AUTOMATICA_TEMP_UNIDADES_defaultValue]  DEFAULT ('N') FOR [FACTURACION_AUTOMATICA]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] ADD  CONSTRAINT [TIEMPO_RESP_TEMP_UNIDADES_defaultValue]  DEFAULT ((0)) FOR [TIEMPO_RESP]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] ADD  CONSTRAINT [VIP_TEMP_UNIDADES_defaultValue]  DEFAULT ((0)) FOR [VIP]
GO
ALTER TABLE [dbo].[MTD_AccesibilidadInstalacion] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_AccesibilidadInstalacion] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_CargaTrabajoNiveles] ADD  DEFAULT ((0)) FOR [Peso]
GO
ALTER TABLE [dbo].[MTD_CargaTrabajoNiveles] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_CargaTrabajoNiveles] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_ClasificacionAviso] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_ClasificacionAviso] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_Conocimientos] ADD  DEFAULT ((0)) FOR [NivelAcceso]
GO
ALTER TABLE [dbo].[MTD_Conocimientos] ADD  DEFAULT ((0)) FOR [Peso]
GO
ALTER TABLE [dbo].[MTD_Conocimientos] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_Conocimientos] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_Especializacion] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_Especializacion] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_EspecializacionTecnico] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_EspecializacionTecnico] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_Parametros] ADD  DEFAULT ((0)) FOR [CodigoCentro]
GO
ALTER TABLE [dbo].[MTD_Parametros] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_Parametros] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_Parametros] ADD  DEFAULT ((0)) FOR [Peso]
GO
ALTER TABLE [dbo].[MTD_Relacion_Tecnico_Cliente] ADD  DEFAULT ((0)) FOR [Preferencia]
GO
ALTER TABLE [dbo].[MTD_Relacion_Tecnico_Cliente] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_Relacion_Tecnico_Cliente] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_Tecnico_Conocimientos] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_Tecnico_Conocimientos] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_Tecnico_ValorSubjetivo] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_Tecnico_ValorSubjetivo] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_Territorio] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_Territorio] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_Territorio_Ruta] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_Territorio_Ruta] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_Territorio_Ruta_Tecnico] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_Territorio_Ruta_Tecnico] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_Territorio_Tecnico] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_Territorio_Tecnico] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_TiempoDesplazamiento] ADD  CONSTRAINT [DF__MTD_Tiempo__Peso__65E1DDCF]  DEFAULT ((0)) FOR [Peso]
GO
ALTER TABLE [dbo].[MTD_TiempoDesplazamiento] ADD  CONSTRAINT [DF__MTD_Tiemp__Fecha__66D60208]  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_TiempoDesplazamiento] ADD  CONSTRAINT [DF__MTD_Tiempo__DISP__67CA2641]  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_TiempoObjetivoAvisoCentro] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_TiempoObjetivoAvisoCentro] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_TipoEquipo_Conocimientos] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_TipoEquipo_Conocimientos] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_TipoTecnologia_Conocimientos] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_TipoTecnologia_Conocimientos] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_TipoTransporte] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_TipoTransporte] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_UsuariosAplicacion] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_UsuariosAplicacion] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_UsuPruebas] ADD  DEFAULT (getdate()) FOR [Fecha]
GO
ALTER TABLE [dbo].[MTD_ValorSubjetivo] ADD  DEFAULT ((0)) FOR [NivelAcceso]
GO
ALTER TABLE [dbo].[MTD_ValorSubjetivo] ADD  DEFAULT ((0)) FOR [Peso]
GO
ALTER TABLE [dbo].[MTD_ValorSubjetivo] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_ValorSubjetivo] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[MTD_Variables] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_VariablesPorCompañia] ADD  DEFAULT ('0') FOR [CodigoCentro]
GO
ALTER TABLE [dbo].[MTD_VariablesPorCompañia] ADD  DEFAULT (getdate()) FOR [FechaActualizacion]
GO
ALTER TABLE [dbo].[MTD_VariablesPorCompañia] ADD  DEFAULT ((1)) FOR [DISP]
GO
ALTER TABLE [dbo].[TT_BIR_ICD_JOB_Actividad] ADD  DEFAULT ((0)) FOR [JOB_BILLABLE]
GO
ALTER TABLE [dbo].[TT_BIR_ICD_JOB_Actividad] ADD  DEFAULT ((0)) FOR [JOM_CUSTOMER_FLAG]
GO
ALTER TABLE [dbo].[TT_BIR_ICD_JOB_Actividad] ADD  DEFAULT (getdate()) FOR [JOB_INSERTDATE]
GO
ALTER TABLE [dbo].[TT_BIR_ICD_JOB_Actividad] ADD  DEFAULT (getdate()) FOR [JOB_UPDATEDATE]
GO
ALTER TABLE [dbo].[TT_BIR_ICD_JOB_UltimoIDActividad] ADD  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[API_T_TM_SEGURIDAD_APLICACIONES_APIs]  WITH CHECK ADD  CONSTRAINT [FK_API_T_TM_SEGURIDAD_APLICACIONES_APIs_API_T_TM_SEGURIDAD_APLICACIONES] FOREIGN KEY([IdAplicacion])
REFERENCES [dbo].[API_T_TM_SEGURIDAD_APLICACIONES] ([IdAplicacion])
GO
ALTER TABLE [dbo].[API_T_TM_SEGURIDAD_APLICACIONES_APIs] CHECK CONSTRAINT [FK_API_T_TM_SEGURIDAD_APLICACIONES_APIs_API_T_TM_SEGURIDAD_APLICACIONES]
GO
ALTER TABLE [dbo].[API_T_TM_SEGURIDAD_APLICACIONES_APIs]  WITH CHECK ADD  CONSTRAINT [FK_API_T_TM_SEGURIDAD_APLICACIONES_APIs_API_T_TM_SEGURIDAD_INVENTARIO_APIs] FOREIGN KEY([IdAPI])
REFERENCES [dbo].[API_T_TM_SEGURIDAD_INVENTARIO_APIs] ([IdAPI])
GO
ALTER TABLE [dbo].[API_T_TM_SEGURIDAD_APLICACIONES_APIs] CHECK CONSTRAINT [FK_API_T_TM_SEGURIDAD_APLICACIONES_APIs_API_T_TM_SEGURIDAD_INVENTARIO_APIs]
GO
ALTER TABLE [dbo].[BITSAT_ACTAS_ENTREGA_APARTADOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTAS_ENTREGA_APARTADOS_BITSAT_ACTAS_ENTREGA] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_ACTA])
REFERENCES [dbo].[BITSAT_ACTAS_ENTREGA] ([CODIGO_COMPAÑIA], [CODIGO_ACTA])
GO
ALTER TABLE [dbo].[BITSAT_ACTAS_ENTREGA_APARTADOS] CHECK CONSTRAINT [FK_BITSAT_ACTAS_ENTREGA_APARTADOS_BITSAT_ACTAS_ENTREGA]
GO
ALTER TABLE [dbo].[BITSAT_ACTAS_ENTREGA_VERIFICACIONES]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTAS_ENTREGA_VERIFICACIONES_BITSAT_ACTAS_ENTREGA_APARTADOS] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_ACTA], [CODIGO_APARTADO])
REFERENCES [dbo].[BITSAT_ACTAS_ENTREGA_APARTADOS] ([CODIGO_COMPAÑIA], [CODIGO_ACTA], [CODIGO_APARTADO])
GO
ALTER TABLE [dbo].[BITSAT_ACTAS_ENTREGA_VERIFICACIONES] CHECK CONSTRAINT [FK_BITSAT_ACTAS_ENTREGA_VERIFICACIONES_BITSAT_ACTAS_ENTREGA_APARTADOS]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_ESTADO_ACTIVIDAD] FOREIGN KEY([ESTADO])
REFERENCES [dbo].[BITSAT_ESTADO_ACTIVIDAD] ([ESTADO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_ESTADO_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_IDENTIFICADOR] FOREIGN KEY([CODIGO_IDENTIFICADOR])
REFERENCES [dbo].[BITSAT_IDENTIFICADOR] ([CODIGO])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD] NOCHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_IDENTIFICADOR]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_MOBILE] FOREIGN KEY([CODIGO_PDA])
REFERENCES [dbo].[BITSAT_MOBILE] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_MOBILE]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_TIPO_ACTIVIDAD] FOREIGN KEY([CODIGO_ACTIVIDAD])
REFERENCES [dbo].[BITSAT_TIPO_ACTIVIDAD] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_TIPO_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_TIPO_IMPOSIBILIDAD_ACCESO] FOREIGN KEY([MOTIVO_IMPOSIBILIDAD_ACCESO])
REFERENCES [dbo].[BITSAT_TIPO_IMPOSIBILIDAD_ACCESO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_TIPO_IMPOSIBILIDAD_ACCESO]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_TIPO_IMPRODUCTIVIDAD] FOREIGN KEY([MOTIVO_PAUSA])
REFERENCES [dbo].[BITSAT_TIPO_IMPRODUCTIVIDAD] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_TIPO_IMPRODUCTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_TIPO_JORNADA] FOREIGN KEY([TIPO_JORNADA])
REFERENCES [dbo].[BITSAT_TIPO_JORNADA] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_TIPO_JORNADA]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_USUARIO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD] NOCHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_ANOTACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_ANOTACION_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_ANOTACION] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_ANOTACION_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_ANOTACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_ANOTACION_BITSAT_TIPO_RIESGO_BAJA] FOREIGN KEY([TIPO_RIESGO_BAJA])
REFERENCES [dbo].[BITSAT_TIPO_RIESGO_BAJA] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_ANOTACION] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_ANOTACION_BITSAT_TIPO_RIESGO_BAJA]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AUTOFACTURACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_AUTOFACTURACION_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AUTOFACTURACION] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_AUTOFACTURACION_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AUTOFACTURACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_AUTOFACTURACION_MOTIVOS_NO_FACTURACION] FOREIGN KEY([MOTIVO_NO_FACTURACION])
REFERENCES [dbo].[BITSAT_MOTIVOS_NO_FACTURACION] ([CODIGO_MOTIVO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AUTOFACTURACION] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_AUTOFACTURACION_MOTIVOS_NO_FACTURACION]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AVISO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_AVISO_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AVISO] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_AVISO_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AVISO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_AVISO_BITSAT_ESTADO_UNIDAD_AVISO] FOREIGN KEY([ESTADO_UNIDAD])
REFERENCES [dbo].[BITSAT_ESTADO_UNIDAD_AVISO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AVISO] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_AVISO_BITSAT_ESTADO_UNIDAD_AVISO]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AVISO]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_AVISO_BITSAT_MOTIVOS_NO_INSPECCION] FOREIGN KEY([MOTIVO_NO_INSPECCION])
REFERENCES [dbo].[BITSAT_MOTIVOS_NO_INSPECCION] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AVISO] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_AVISO_BITSAT_MOTIVOS_NO_INSPECCION]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AVISO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_AVISO_BITSAT_TIPO_AVISO] FOREIGN KEY([TIPO_AVISO])
REFERENCES [dbo].[BITSAT_TIPO_AVISO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AVISO] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_AVISO_BITSAT_TIPO_AVISO]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AVISO]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_AVISO_BITSAT_TIPO_MOTIVO_AVISO] FOREIGN KEY([CODIGO_MOTIVO_ACCION], [TIPO_MOTIVO_ACCION])
REFERENCES [dbo].[BITSAT_TIPO_MOTIVO_AVISO] ([CODIGO], [TIPO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_AVISO] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_AVISO_BITSAT_TIPO_MOTIVO_AVISO]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_CLIENTE]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_CLIENTE_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_CLIENTE] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_CLIENTE_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_DATOS_GUARDIA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_DATOS_GUARDIA_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_DATOS_GUARDIA] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_DATOS_GUARDIA_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_DATOS_GUARDIA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_DATOS_GUARDIA_BITSAT_TIPO_JORNADA] FOREIGN KEY([TIPO_JORNADA])
REFERENCES [dbo].[BITSAT_TIPO_JORNADA] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_DATOS_GUARDIA] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_DATOS_GUARDIA_BITSAT_TIPO_JORNADA]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_FIRMA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_FIRMA_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_FIRMA] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_FIRMA_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_FIRMA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_FIRMA_BITSAT_CALIDAD_FIRMANTE] FOREIGN KEY([CALIDAD_FIRMANTE])
REFERENCES [dbo].[BITSAT_CALIDAD_FIRMANTE] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_FIRMA] NOCHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_FIRMA_BITSAT_CALIDAD_FIRMANTE]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_FOTOGRAFIA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_FOTOGRAFIA_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_FOTOGRAFIA] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_FOTOGRAFIA_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_FOTOGRAFIA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_FOTOGRAFIA_BITSAT_TIPO_FOTOGRAFIA] FOREIGN KEY([TIPO_FOTOGRAFIA])
REFERENCES [dbo].[BITSAT_TIPO_FOTOGRAFIA] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_FOTOGRAFIA] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_FOTOGRAFIA_BITSAT_TIPO_FOTOGRAFIA]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_GASTO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_GASTO_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_GASTO] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_GASTO_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_GASTO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_GASTO_BITSAT_TIPO_GASTO] FOREIGN KEY([CODIGO_GASTO])
REFERENCES [dbo].[BITSAT_TIPO_GASTO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_GASTO] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_GASTO_BITSAT_TIPO_GASTO]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_INSPECCION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_INSPECCION_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_INSPECCION] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_INSPECCION_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_INSPECCION]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_INSPECCION_BITSAT_ESTADO_UNIDAD_AVISO] FOREIGN KEY([ESTADO_UNIDAD])
REFERENCES [dbo].[BITSAT_ESTADO_UNIDAD_AVISO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_INSPECCION] NOCHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_INSPECCION_BITSAT_ESTADO_UNIDAD_AVISO]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_INSPECCION]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_INSPECCION_BITSAT_GRADO_SATISFACCION] FOREIGN KEY([GRADO_SATISFACCION])
REFERENCES [dbo].[BITSAT_GRADO_SATISFACCION] ([GRADO_SATISFACCION])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_INSPECCION] NOCHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_INSPECCION_BITSAT_GRADO_SATISFACCION]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_INSPECCION]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_INSPECCION_BITSAT_SEMAFORO_VISITA] FOREIGN KEY([CODIGO_SEMAFORO])
REFERENCES [dbo].[BITSAT_SEMAFORO_VISITA] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_INSPECCION] NOCHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_INSPECCION_BITSAT_SEMAFORO_VISITA]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_INSPECCION]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_INSPECCION_BITSAT_TIPO_INSPECCION] FOREIGN KEY([TIPO_INSPECCION])
REFERENCES [dbo].[BITSAT_TIPO_INSPECCION] ([CODIGO_INSPECCION])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_INSPECCION] NOCHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_INSPECCION_BITSAT_TIPO_INSPECCION]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MATERIAL]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_MATERIAL_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MATERIAL] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_MATERIAL_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MATERIAL]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_MATERIAL_BITSAT_TIPO_MATERIAL] FOREIGN KEY([TIPO_MATERIAL])
REFERENCES [dbo].[BITSAT_TIPO_MATERIAL] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MATERIAL] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_MATERIAL_BITSAT_TIPO_MATERIAL]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_MONTAJE_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_MONTAJE_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_MONTAJE_BITSAT_TIPO_REQUISITO_MINIMO_INCUMPLIDO] FOREIGN KEY([INCUMPLIMIENTO_REQUISITOS])
REFERENCES [dbo].[BITSAT_TIPO_REQUISITO_MINIMO_INCUMPLIDO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_MONTAJE_BITSAT_TIPO_REQUISITO_MINIMO_INCUMPLIDO]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE_ACTA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_MONTAJE_ACTA_BITSAT_ACTIVIDAD_MONTAJE_UNIDADES] FOREIGN KEY([CODIGO_PDA], [ID], [CODIGO_COMPAÑIA], [CODIGO_MONTAJE])
REFERENCES [dbo].[BITSAT_ACTIVIDAD_MONTAJE_UNIDADES] ([CODIGO_PDA], [ID], [CODIGO_COMPAÑIA], [CODIGO_MONTAJE])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE_ACTA] NOCHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_MONTAJE_ACTA_BITSAT_ACTIVIDAD_MONTAJE_UNIDADES]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE_HITOS]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_MONTAJE_HITOS_BITSAT_ACTIVIDAD_MONTAJE_UNIDADES] FOREIGN KEY([CODIGO_PDA], [ID], [CODIGO_COMPAÑIA], [CODIGO_MONTAJE])
REFERENCES [dbo].[BITSAT_ACTIVIDAD_MONTAJE_UNIDADES] ([CODIGO_PDA], [ID], [CODIGO_COMPAÑIA], [CODIGO_MONTAJE])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE_HITOS] NOCHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_MONTAJE_HITOS_BITSAT_ACTIVIDAD_MONTAJE_UNIDADES]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE_PROBLEMA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_MONTAJE_PROBLEMA_BITSAT_ACTIVIDAD_MONTAJE] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD_MONTAJE] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE_PROBLEMA] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_MONTAJE_PROBLEMA_BITSAT_ACTIVIDAD_MONTAJE]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE_UNIDADES]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_MONTAJE_UNIDADES_BITSAT_ACTIVIDAD_MONTAJE] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD_MONTAJE] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MONTAJE_UNIDADES] NOCHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_MONTAJE_UNIDADES_BITSAT_ACTIVIDAD_MONTAJE]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MTD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_MTD_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_MTD] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_MTD_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_OPERACIONES]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_OPERACIONES_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_OPERACIONES] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_OPERACIONES_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_OPERACIONES]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_OPERACIONES_OPERACION] FOREIGN KEY([CODIGO_OPERACION])
REFERENCES [dbo].[BITSAT_OPERACIONES] ([CODIGO_OPERACION])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_OPERACIONES] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_OPERACIONES_OPERACION]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_PELIGROS_INSTALACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_PELIGROS_INSTALACION_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_PELIGROS_INSTALACION] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_PELIGROS_INSTALACION_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_PELIGROS_INSTALACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_PELIGROS_INSTALACION_BITSAT_TIPO_PELIGRO_ESPECIFICIO] FOREIGN KEY([CODIGO_PELIGRO])
REFERENCES [dbo].[BITSAT_TIPO_PELIGRO_ESPECIFICIO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_PELIGROS_INSTALACION] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_PELIGROS_INSTALACION_BITSAT_TIPO_PELIGRO_ESPECIFICIO]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_REPARACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_REPARACION_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_REPARACION] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_REPARACION_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_REPARACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_REPARACION_BITSAT_GRADO_SATISFACCION] FOREIGN KEY([GRADO_SATISFACCION])
REFERENCES [dbo].[BITSAT_GRADO_SATISFACCION] ([GRADO_SATISFACCION])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_REPARACION] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_REPARACION_BITSAT_GRADO_SATISFACCION]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_REPARACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_REPARACION_BITSAT_TIPO_REPARACION] FOREIGN KEY([TIPO_REPARACION])
REFERENCES [dbo].[BITSAT_TIPO_REPARACION] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_REPARACION] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_REPARACION_BITSAT_TIPO_REPARACION]
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_TIEMPO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ACTIVIDAD_TIEMPO_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_ACTIVIDAD_TIEMPO] CHECK CONSTRAINT [FK_BITSAT_ACTIVIDAD_TIEMPO_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_ALARMAS_USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ALARMAS_USUARIO_BITSAT_TIPO_ALARMA_USUARIO] FOREIGN KEY([TIPO_ALARMA_USUARIO])
REFERENCES [dbo].[BITSAT_TIPO_ALARMA_USUARIO] ([ID])
GO
ALTER TABLE [dbo].[BITSAT_ALARMAS_USUARIO] CHECK CONSTRAINT [FK_BITSAT_ALARMAS_USUARIO_BITSAT_TIPO_ALARMA_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_ANOTACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ANOTACION_BITSAT_ANOTACION] FOREIGN KEY([MOTIVO_RIESGO])
REFERENCES [dbo].[BITSAT_TIPO_RIESGO_BAJA] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ANOTACION] CHECK CONSTRAINT [FK_BITSAT_ANOTACION_BITSAT_ANOTACION]
GO
ALTER TABLE [dbo].[BITSAT_ANOTACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ANOTACION_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_ANOTACION] CHECK CONSTRAINT [FK_BITSAT_ANOTACION_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_ANOTACION]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_ANOTACION_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_USUARIO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_ANOTACION] NOCHECK CONSTRAINT [FK_BITSAT_ANOTACION_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_ATRIBUCIONES_GRUPO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ATRIBUCIONES_GRUPO_BITSAT_ATRIBUCIONES] FOREIGN KEY([CODIGO_ATRIBUCION])
REFERENCES [dbo].[BITSAT_ATRIBUCIONES] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ATRIBUCIONES_GRUPO] CHECK CONSTRAINT [FK_BITSAT_ATRIBUCIONES_GRUPO_BITSAT_ATRIBUCIONES]
GO
ALTER TABLE [dbo].[BITSAT_ATRIBUCIONES_GRUPO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ATRIBUCIONES_GRUPO_BITSAT_GRUPO_USUARIO] FOREIGN KEY([CODIGO_GRUPO_USUARIO])
REFERENCES [dbo].[BITSAT_GRUPO_USUARIO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ATRIBUCIONES_GRUPO] CHECK CONSTRAINT [FK_BITSAT_ATRIBUCIONES_GRUPO_BITSAT_GRUPO_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_ATRIBUCIONES_USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ATRIBUCIONES_USUARIO_BITSAT_ATRIBUCIONES] FOREIGN KEY([CODIGO_ATRIBUCION])
REFERENCES [dbo].[BITSAT_ATRIBUCIONES] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ATRIBUCIONES_USUARIO] CHECK CONSTRAINT [FK_BITSAT_ATRIBUCIONES_USUARIO_BITSAT_ATRIBUCIONES]
GO
ALTER TABLE [dbo].[BITSAT_ATRIBUCIONES_USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ATRIBUCIONES_USUARIO_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_USUARIO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ATRIBUCIONES_USUARIO] CHECK CONSTRAINT [FK_BITSAT_ATRIBUCIONES_USUARIO_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_AVISOS_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_AVISOS] CHECK CONSTRAINT [FK_BITSAT_AVISOS_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_AVISOS_BITSAT_ESTADO_ASCENSOR] FOREIGN KEY([ESTADO_ASCENSOR])
REFERENCES [dbo].[BITSAT_ESTADO_ASCENSOR] ([CODIGO_ESTADO])
GO
ALTER TABLE [dbo].[BITSAT_AVISOS] CHECK CONSTRAINT [FK_BITSAT_AVISOS_BITSAT_ESTADO_ASCENSOR]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_AVISOS_BITSAT_ESTADO_AVERIA] FOREIGN KEY([ESTADO_AVISO_BITSAT])
REFERENCES [dbo].[BITSAT_ESTADO_AVERIA] ([CODIGO_ESTADO])
GO
ALTER TABLE [dbo].[BITSAT_AVISOS] CHECK CONSTRAINT [FK_BITSAT_AVISOS_BITSAT_ESTADO_AVERIA]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_AVISOS_BITSAT_POBLACION] FOREIGN KEY([CODIGO_PROVINCIA], [CODIGO_POBLACION])
REFERENCES [dbo].[BITSAT_POBLACION] ([CODIGO_PROVINCIA], [CODIGO_POBLACION])
GO
ALTER TABLE [dbo].[BITSAT_AVISOS] NOCHECK CONSTRAINT [FK_BITSAT_AVISOS_BITSAT_POBLACION]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_AVISOS_BITSAT_PROVINCIA] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_PROVINCIA])
REFERENCES [dbo].[BITSAT_PROVINCIA] ([CODIGO_COMPAÑIA], [CODIGO_PROVINCIA])
GO
ALTER TABLE [dbo].[BITSAT_AVISOS] CHECK CONSTRAINT [FK_BITSAT_AVISOS_BITSAT_PROVINCIA]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_AVISOS_BITSAT_UNIDAD] FOREIGN KEY([CODIGO_COMPAÑIA], [UNIDAD])
REFERENCES [dbo].[BITSAT_UNIDAD] ([CODIGO_COMPAÑIA], [CODIGO_UNIDAD])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_AVISOS] NOCHECK CONSTRAINT [FK_BITSAT_AVISOS_BITSAT_UNIDAD]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS_ESTADOS]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_AVISOS_ESTADOS_BITSAT_AVISOS1] FOREIGN KEY([CLAVE_AVISO], [TECNICO_AVISO])
REFERENCES [dbo].[BITSAT_AVISOS] ([CLAVE_AVISO], [CODIGO_TECNICO])
GO
ALTER TABLE [dbo].[BITSAT_AVISOS_ESTADOS] NOCHECK CONSTRAINT [FK_BITSAT_AVISOS_ESTADOS_BITSAT_AVISOS1]
GO
ALTER TABLE [dbo].[BITSAT_AVISOS_LLEGADA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_AVISOS_LLEGADA_BITSAT_AVISOS] FOREIGN KEY([CLAVE_AVISO], [CODIGO_TECNICO])
REFERENCES [dbo].[BITSAT_AVISOS] ([CLAVE_AVISO], [CODIGO_TECNICO])
GO
ALTER TABLE [dbo].[BITSAT_AVISOS_LLEGADA] CHECK CONSTRAINT [FK_BITSAT_AVISOS_LLEGADA_BITSAT_AVISOS]
GO
ALTER TABLE [dbo].[BITSAT_CALENDARIO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_CALENDARIO_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_CALENDARIO] CHECK CONSTRAINT [FK_BITSAT_CALENDARIO_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_CALENDARIO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_CALENDARIO_BITSAT_TIPO_CALENDARIO] FOREIGN KEY([TIPO_CALENDARIO])
REFERENCES [dbo].[BITSAT_TIPO_CALENDARIO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_CALENDARIO] CHECK CONSTRAINT [FK_BITSAT_CALENDARIO_BITSAT_TIPO_CALENDARIO]
GO
ALTER TABLE [dbo].[BITSAT_CALENDARIO_FESTIVOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_CALENDARIO_FESTIVOS_BITSAT_TIPO_HORARIO] FOREIGN KEY([TIPO_HORARIO])
REFERENCES [dbo].[BITSAT_TIPO_HORARIO] ([codigo])
GO
ALTER TABLE [dbo].[BITSAT_CALENDARIO_FESTIVOS] CHECK CONSTRAINT [FK_BITSAT_CALENDARIO_FESTIVOS_BITSAT_TIPO_HORARIO]
GO
ALTER TABLE [dbo].[BITSAT_CALENDARIO_TECNICO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_HORARIO_BITSAT_CALENDARIO] FOREIGN KEY([CODIGO_CALENDARIO])
REFERENCES [dbo].[BITSAT_CALENDARIO] ([CODIGO_CALENDARIO])
GO
ALTER TABLE [dbo].[BITSAT_CALENDARIO_TECNICO] CHECK CONSTRAINT [FK_BITSAT_HORARIO_BITSAT_CALENDARIO]
GO
ALTER TABLE [dbo].[BITSAT_CALENDARIO_TECNICO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_HORARIO_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_CALENDARIO_TECNICO] CHECK CONSTRAINT [FK_BITSAT_HORARIO_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_CALENDARIO_TECNICO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_HORARIO_BITSAT_HORARIO] FOREIGN KEY([CODIGO_HORARIO])
REFERENCES [dbo].[BITSAT_HORARIO] ([CODIGO_HORARIO])
GO
ALTER TABLE [dbo].[BITSAT_CALENDARIO_TECNICO] CHECK CONSTRAINT [FK_BITSAT_HORARIO_BITSAT_HORARIO]
GO
ALTER TABLE [dbo].[BITSAT_CENTRO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_CENTRO_BITSAT_DELEGACION] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_CENTRO] CHECK CONSTRAINT [FK_BITSAT_CENTRO_BITSAT_DELEGACION]
GO
ALTER TABLE [dbo].[BITSAT_CENTROS_FACTURACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_CENTROS_FACTURACION_BITSAT_CENTRO] FOREIGN KEY([CODIGO_COMPANIA], [CODIGO_CENTRO])
REFERENCES [dbo].[BITSAT_CENTRO] ([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
GO
ALTER TABLE [dbo].[BITSAT_CENTROS_FACTURACION] CHECK CONSTRAINT [FK_BITSAT_CENTROS_FACTURACION_BITSAT_CENTRO]
GO
ALTER TABLE [dbo].[BITSAT_CODIGOS_AUTOFACTURABLES]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_CODIGOS_AUTOFACTURABLES_BITSAT_COMPAÑIA] FOREIGN KEY([COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_CODIGOS_AUTOFACTURABLES] CHECK CONSTRAINT [FK_BITSAT_CODIGOS_AUTOFACTURABLES_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_CONTACTOS]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_CONTACTOS_BITSAT_CALIDAD_FIRMANTE] FOREIGN KEY([CALIDAD_FIRMANTE])
REFERENCES [dbo].[BITSAT_CALIDAD_FIRMANTE] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_CONTACTOS] NOCHECK CONSTRAINT [FK_BITSAT_CONTACTOS_BITSAT_CALIDAD_FIRMANTE]
GO
ALTER TABLE [dbo].[BITSAT_DETALLE_HORARIO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_DETALLE_HORARIO_BITSAT_HORARIOS] FOREIGN KEY([codigo_horario])
REFERENCES [dbo].[BITSAT_HORARIO] ([CODIGO_HORARIO])
GO
ALTER TABLE [dbo].[BITSAT_DETALLE_HORARIO] CHECK CONSTRAINT [FK_BITSAT_DETALLE_HORARIO_BITSAT_HORARIOS]
GO
ALTER TABLE [dbo].[BITSAT_DETALLE_HORARIO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_DETALLE_HORARIO_BITSAT_TIPO_DIA_SEMANA] FOREIGN KEY([dia_semana])
REFERENCES [dbo].[BITSAT_TIPO_DIA_SEMANA] ([codigo])
GO
ALTER TABLE [dbo].[BITSAT_DETALLE_HORARIO] CHECK CONSTRAINT [FK_BITSAT_DETALLE_HORARIO_BITSAT_TIPO_DIA_SEMANA]
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_ACTA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_ACTA_BITSAT_ACTAS_ENTREGA_VERIFICACIONES] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_ACTA], [CODIGO_APARTADO], [CODIGO_VERIFICACION])
REFERENCES [dbo].[BITSAT_ACTAS_ENTREGA_VERIFICACIONES] ([CODIGO_COMPAÑIA], [CODIGO_ACTA], [CODIGO_APARTADO], [CODIGO_VERIFICACION])
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_ACTA] CHECK CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_ACTA_BITSAT_ACTAS_ENTREGA_VERIFICACIONES]
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_ACTA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_ACTA_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_ACTA] CHECK CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_ACTA_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_ACTA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_ACTA_BITSAT_MONTAJE] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_MONTAJE])
REFERENCES [dbo].[BITSAT_MONTAJE] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_ACTA] CHECK CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_ACTA_BITSAT_MONTAJE]
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_HITOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_HITOS_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_HITOS] CHECK CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_HITOS_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_HITOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_HITOS_BITSAT_HITOS_MONTAJE] FOREIGN KEY([TIPO_MONTAJE], [TIPO_APARATO], [NUMERO_HITO], [CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_HITOS_MONTAJE] ([TIPO_MONTAJE], [TIPO_APARATO], [NUMERO_HITO], [CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_HITOS] CHECK CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_HITOS_BITSAT_HITOS_MONTAJE]
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_HITOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_HITOS_BITSAT_TIPO_APARATO] FOREIGN KEY([CODIGO_COMPAÑIA], [TIPO_APARATO])
REFERENCES [dbo].[BITSAT_TIPO_APARATO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_HITOS] CHECK CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_HITOS_BITSAT_TIPO_APARATO]
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_HITOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_HITOS_BITSAT_TIPO_MONTAJE] FOREIGN KEY([TIPO_MONTAJE])
REFERENCES [dbo].[BITSAT_TIPO_MONTAJE] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ESTADO_MONTAJE_HITOS] CHECK CONSTRAINT [FK_BITSAT_ESTADO_MONTAJE_HITOS_BITSAT_TIPO_MONTAJE]
GO
ALTER TABLE [dbo].[BITSAT_EXP_VISITAS_PROA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_EXP_VISITAS_PROA_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_EXP_VISITAS_PROA] CHECK CONSTRAINT [FK_BITSAT_EXP_VISITAS_PROA_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_GASTO_DISPONIBILIDAD_SABANA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_GASTO_DISPONIBILIDAD_SABANA_GASTOS_SABANA] FOREIGN KEY([GASTO_SABANA])
REFERENCES [dbo].[BITSAT_GASTOS_SABANA] ([ID])
GO
ALTER TABLE [dbo].[BITSAT_GASTO_DISPONIBILIDAD_SABANA] NOCHECK CONSTRAINT [FK_BITSAT_GASTO_DISPONIBILIDAD_SABANA_GASTOS_SABANA]
GO
ALTER TABLE [dbo].[BITSAT_GASTOS_SABANA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_GASTOS_SABANA_BITSAT_CENTRO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
REFERENCES [dbo].[BITSAT_CENTRO] ([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
GO
ALTER TABLE [dbo].[BITSAT_GASTOS_SABANA] NOCHECK CONSTRAINT [FK_BITSAT_GASTOS_SABANA_BITSAT_CENTRO]
GO
ALTER TABLE [dbo].[BITSAT_GASTOS_SABANA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_GASTOS_SABANA_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_GASTOS_SABANA] NOCHECK CONSTRAINT [FK_BITSAT_GASTOS_SABANA_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_GASTOS_SABANA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_GASTOS_SABANA_BITSAT_TIPO_GASTO] FOREIGN KEY([CODIGO_GASTO])
REFERENCES [dbo].[BITSAT_TIPO_GASTO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_GASTOS_SABANA] NOCHECK CONSTRAINT [FK_BITSAT_GASTOS_SABANA_BITSAT_TIPO_GASTO]
GO
ALTER TABLE [dbo].[BITSAT_GRUPO_MONTAJE_ASIGNACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_GRUPO_MONTAJE_ASIGNACION_BITSAT_GRUPO_MONTAJE] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_GRUPO])
REFERENCES [dbo].[BITSAT_GRUPO_MONTAJE] ([CODIGO_COMPAÑIA], [CODIGO_GRUPO])
GO
ALTER TABLE [dbo].[BITSAT_GRUPO_MONTAJE_ASIGNACION] CHECK CONSTRAINT [FK_BITSAT_GRUPO_MONTAJE_ASIGNACION_BITSAT_GRUPO_MONTAJE]
GO
ALTER TABLE [dbo].[BITSAT_GRUPO_MONTAJE_ASIGNACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_GRUPO_MONTAJE_ASIGNACION_BITSAT_MONTAJE] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_MONTAJE])
REFERENCES [dbo].[BITSAT_MONTAJE] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_GRUPO_MONTAJE_ASIGNACION] CHECK CONSTRAINT [FK_BITSAT_GRUPO_MONTAJE_ASIGNACION_BITSAT_MONTAJE]
GO
ALTER TABLE [dbo].[BITSAT_GRUPO_USUARIO_AREA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_GRUPO_USUARIO_AREA_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_GRUPO_USUARIO_AREA] CHECK CONSTRAINT [FK_BITSAT_GRUPO_USUARIO_AREA_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_GRUPO_USUARIO_AREA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_GRUPO_USUARIO_AREA_BITSAT_GRUPO_USUARIO] FOREIGN KEY([CODIGO_GRUPO_USUARIO])
REFERENCES [dbo].[BITSAT_GRUPO_USUARIO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_GRUPO_USUARIO_AREA] CHECK CONSTRAINT [FK_BITSAT_GRUPO_USUARIO_AREA_BITSAT_GRUPO_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_HISTORICO_TECNICO]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_HISTORICO_TECNICO_BITSAT_MOBILE] FOREIGN KEY([MOBILEDEVICEID])
REFERENCES [dbo].[BITSAT_MOBILE] ([CODIGO])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_HISTORICO_TECNICO] NOCHECK CONSTRAINT [FK_BITSAT_HISTORICO_TECNICO_BITSAT_MOBILE]
GO
ALTER TABLE [dbo].[BITSAT_HISTORICO_TECNICO]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_HISTORICO_TECNICO_BITSAT_TIPO_MENSAJE] FOREIGN KEY([TIPO_MENSAJE])
REFERENCES [dbo].[BITSAT_TIPO_MENSAJE] ([ID])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_HISTORICO_TECNICO] NOCHECK CONSTRAINT [FK_BITSAT_HISTORICO_TECNICO_BITSAT_TIPO_MENSAJE]
GO
ALTER TABLE [dbo].[BITSAT_HISTORICO_TECNICO]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_HISTORICO_TECNICO_BITSAT_UNIDAD] FOREIGN KEY([CODIGO_COMPAÑIA], [ORDERNR])
REFERENCES [dbo].[BITSAT_UNIDAD] ([CODIGO_COMPAÑIA], [CODIGO_UNIDAD])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_HISTORICO_TECNICO] NOCHECK CONSTRAINT [FK_BITSAT_HISTORICO_TECNICO_BITSAT_UNIDAD]
GO
ALTER TABLE [dbo].[BITSAT_HISTORICO_TECNICO]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_HISTORICO_TECNICO_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [DRIVERNR])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_HISTORICO_TECNICO] NOCHECK CONSTRAINT [FK_BITSAT_HISTORICO_TECNICO_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_HISTORICO_TECNICO]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_HISTORICO_TECNICO_BITSAT_USUARIO1] FOREIGN KEY([CODIGO_COMPAÑIA], [DRIVERNR])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_HISTORICO_TECNICO] NOCHECK CONSTRAINT [FK_BITSAT_HISTORICO_TECNICO_BITSAT_USUARIO1]
GO
ALTER TABLE [dbo].[BITSAT_HITOS_MONTAJE]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_HITOS_MONTAJE_BITSAT_TIPO_MONTAJE] FOREIGN KEY([TIPO_MONTAJE])
REFERENCES [dbo].[BITSAT_TIPO_MONTAJE] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_HITOS_MONTAJE] CHECK CONSTRAINT [FK_BITSAT_HITOS_MONTAJE_BITSAT_TIPO_MONTAJE]
GO
ALTER TABLE [dbo].[BITSAT_HOJA_TIEMPOS_CABECERA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_HOJA_TIEMPOS_CABECERA_BITSAT_CENTRO] FOREIGN KEY([codigo_compañia], [codigo_centro])
REFERENCES [dbo].[BITSAT_CENTRO] ([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
GO
ALTER TABLE [dbo].[BITSAT_HOJA_TIEMPOS_CABECERA] CHECK CONSTRAINT [FK_BITSAT_HOJA_TIEMPOS_CABECERA_BITSAT_CENTRO]
GO
ALTER TABLE [dbo].[BITSAT_HOJA_TIEMPOS_CABECERA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_HOJA_TIEMPOS_CABECERA_BITSAT_COMPAÑIA] FOREIGN KEY([codigo_compañia])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_HOJA_TIEMPOS_CABECERA] CHECK CONSTRAINT [FK_BITSAT_HOJA_TIEMPOS_CABECERA_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_HOJA_TIEMPOS_CABECERA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_HOJA_TIEMPOS_CABECERA_BITSAT_USUARIO] FOREIGN KEY([codigo_compañia], [codigo_tecnico])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_HOJA_TIEMPOS_CABECERA] NOCHECK CONSTRAINT [FK_BITSAT_HOJA_TIEMPOS_CABECERA_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_HOJA_TIEMPOS_LINEA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_HOJA_TIEMPOS_LINEA_BITSAT_HOJA_TIEMPOS_CABECERA] FOREIGN KEY([codigo_hoja])
REFERENCES [dbo].[BITSAT_HOJA_TIEMPOS_CABECERA] ([codigo_hoja])
GO
ALTER TABLE [dbo].[BITSAT_HOJA_TIEMPOS_LINEA] CHECK CONSTRAINT [FK_BITSAT_HOJA_TIEMPOS_LINEA_BITSAT_HOJA_TIEMPOS_CABECERA]
GO
ALTER TABLE [dbo].[BITSAT_HORARIO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_HORARIO_BITSAT_TIPO_HORARIO] FOREIGN KEY([TIPO_HORARIO])
REFERENCES [dbo].[BITSAT_TIPO_HORARIO] ([codigo])
GO
ALTER TABLE [dbo].[BITSAT_HORARIO] CHECK CONSTRAINT [FK_BITSAT_HORARIO_BITSAT_TIPO_HORARIO]
GO
ALTER TABLE [dbo].[BITSAT_IMP_DEF_DATE]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_IMP_DEF_DATE_BITSAT_CENTRO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
REFERENCES [dbo].[BITSAT_CENTRO] ([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_IMP_DEF_DATE] NOCHECK CONSTRAINT [FK_BITSAT_IMP_DEF_DATE_BITSAT_CENTRO]
GO
ALTER TABLE [dbo].[BITSAT_IMP_DET]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_IMP_DET_BITSAT_IMP_DEF] FOREIGN KEY([ID_TABLA])
REFERENCES [dbo].[BITSAT_IMP_DEF] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_IMP_DET] CHECK CONSTRAINT [FK_BITSAT_IMP_DET_BITSAT_IMP_DEF]
GO
ALTER TABLE [dbo].[BITSAT_INSPECCION_PREVISTA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_INSPECCION_PREVISTA_BITSAT_UNIDAD1] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_UNIDAD])
REFERENCES [dbo].[BITSAT_UNIDAD] ([CODIGO_COMPAÑIA], [CODIGO_UNIDAD])
GO
ALTER TABLE [dbo].[BITSAT_INSPECCION_PREVISTA] CHECK CONSTRAINT [FK_BITSAT_INSPECCION_PREVISTA_BITSAT_UNIDAD1]
GO
ALTER TABLE [dbo].[BITSAT_INSPECCION_PREVISTA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_INSPECCION_PREVISTA_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_USUARIO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_INSPECCION_PREVISTA] CHECK CONSTRAINT [FK_BITSAT_INSPECCION_PREVISTA_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_INTERFACE_GASTOS_PEGASO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_INTERFACE_GASTOS_PEGASO_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_INTERFACE_GASTOS_PEGASO] CHECK CONSTRAINT [FK_BITSAT_INTERFACE_GASTOS_PEGASO_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_INTERFACE_GASTOS_PEGASO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_INTERFACE_GASTOS_PEGASO_BITSAT_TIPO_GASTO] FOREIGN KEY([CODIGO_GASTO])
REFERENCES [dbo].[BITSAT_TIPO_GASTO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_INTERFACE_GASTOS_PEGASO] CHECK CONSTRAINT [FK_BITSAT_INTERFACE_GASTOS_PEGASO_BITSAT_TIPO_GASTO]
GO
ALTER TABLE [dbo].[BITSAT_INTERFACE_MATERIALES_HERMES]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_INTERFACE_MATERIALES_HERMES_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_INTERFACE_MATERIALES_HERMES] CHECK CONSTRAINT [FK_BITSAT_INTERFACE_MATERIALES_HERMES_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_INTERFACE_MATERIALES_HERMES]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_INTERFACE_MATERIALES_HERMES_BITSAT_TIPO_MATERIAL] FOREIGN KEY([TIPO_MATERIAL])
REFERENCES [dbo].[BITSAT_TIPO_MATERIAL] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_INTERFACE_MATERIALES_HERMES] CHECK CONSTRAINT [FK_BITSAT_INTERFACE_MATERIALES_HERMES_BITSAT_TIPO_MATERIAL]
GO
ALTER TABLE [dbo].[BITSAT_INTERFACE_SEXPERTO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_INTERFACE_SEXPERTO_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_INTERFACE_SEXPERTO] CHECK CONSTRAINT [FK_BITSAT_INTERFACE_SEXPERTO_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_MOBILE_DIAGNOSTIC]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_MOBILE_DIAGNOSTIC_BITSAT_TIPO_BATERIA_ESTADO] FOREIGN KEY([BATERIA_ESTADO])
REFERENCES [dbo].[BITSAT_TIPO_BATERIA_ESTADO] ([TIPO])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_MOBILE_DIAGNOSTIC] NOCHECK CONSTRAINT [FK_BITSAT_MOBILE_DIAGNOSTIC_BITSAT_TIPO_BATERIA_ESTADO]
GO
ALTER TABLE [dbo].[BITSAT_MOBILE_DIAGNOSTIC]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_MOBILE_DIAGNOSTIC_BITSAT_TIPO_GPS_DISP] FOREIGN KEY([GPS_DISP])
REFERENCES [dbo].[BITSAT_TIPO_GPS_DISP] ([TIPO])
GO
ALTER TABLE [dbo].[BITSAT_MOBILE_DIAGNOSTIC] CHECK CONSTRAINT [FK_BITSAT_MOBILE_DIAGNOSTIC_BITSAT_TIPO_GPS_DISP]
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE]  WITH CHECK ADD  CONSTRAINT [BITSAT_MONTAJE_INCUMPLIMIENTO_REQUISITOS_FK] FOREIGN KEY([INCUMPLIMIENTO_REQUISITOS])
REFERENCES [dbo].[BITSAT_TIPO_REQUISITO_MINIMO_INCUMPLIDO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE] CHECK CONSTRAINT [BITSAT_MONTAJE_INCUMPLIMIENTO_REQUISITOS_FK]
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_MONTAJE_BITSAT_ACTAS_ENTREGA] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_ACTA])
REFERENCES [dbo].[BITSAT_ACTAS_ENTREGA] ([CODIGO_COMPAÑIA], [CODIGO_ACTA])
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE] CHECK CONSTRAINT [FK_BITSAT_MONTAJE_BITSAT_ACTAS_ENTREGA]
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_MONTAJE_BITSAT_TIPO_ESTADO_MONTAJE] FOREIGN KEY([ESTADO_MONTAJE])
REFERENCES [dbo].[BITSAT_TIPO_ESTADO_MONTAJE] ([Codigo])
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE] CHECK CONSTRAINT [FK_BITSAT_MONTAJE_BITSAT_TIPO_ESTADO_MONTAJE]
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_MONTAJE_BITSAT_TIPO_MONTAJE] FOREIGN KEY([TIPO_MONTAJE])
REFERENCES [dbo].[BITSAT_TIPO_MONTAJE] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE] CHECK CONSTRAINT [FK_BITSAT_MONTAJE_BITSAT_TIPO_MONTAJE]
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_MONTAJES_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE] CHECK CONSTRAINT [FK_BITSAT_MONTAJES_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE_PREVISTO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_MONTAJE_PREVISTO_BITSAT_MONTAJE] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_MONTAJE])
REFERENCES [dbo].[BITSAT_MONTAJE] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE_PREVISTO] CHECK CONSTRAINT [FK_BITSAT_MONTAJE_PREVISTO_BITSAT_MONTAJE]
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE_PREVISTO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_MONTAJE_PREVISTO_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_USUARIO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_MONTAJE_PREVISTO] CHECK CONSTRAINT [FK_BITSAT_MONTAJE_PREVISTO_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_NUMERACION_XR]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_NUMERACION_XR_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_NUMERACION_XR] CHECK CONSTRAINT [FK_BITSAT_NUMERACION_XR_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_COMUNES_SERVICIO_APARATO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_OPERACIONES_COMUNES_OPERACIONES] FOREIGN KEY([CODIGO_OPERACION])
REFERENCES [dbo].[BITSAT_OPERACIONES] ([CODIGO_OPERACION])
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_COMUNES_SERVICIO_APARATO] CHECK CONSTRAINT [FK_BITSAT_OPERACIONES_COMUNES_OPERACIONES]
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION] FOREIGN KEY([CODIGO_INSPECCION])
REFERENCES [dbo].[BITSAT_TIPO_INSPECCION] ([CODIGO_INSPECCION])
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION] CHECK CONSTRAINT [FK_BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION]
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_OPERACIONES_ESPECIFICAS_OPERACIONES] FOREIGN KEY([CODIGO_OPERACION])
REFERENCES [dbo].[BITSAT_OPERACIONES] ([CODIGO_OPERACION])
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_ESPECIFICAS_INSPECCION] CHECK CONSTRAINT [FK_BITSAT_OPERACIONES_ESPECIFICAS_OPERACIONES]
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_IDIOMA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_OPERACIONES_IDIOMA_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_IDIOMA] NOCHECK CONSTRAINT [FK_BITSAT_OPERACIONES_IDIOMA_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_IDIOMA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_OPERACIONES_IDIOMA_OPERACIONES] FOREIGN KEY([CODIGO_OPERACION])
REFERENCES [dbo].[BITSAT_OPERACIONES] ([CODIGO_OPERACION])
GO
ALTER TABLE [dbo].[BITSAT_OPERACIONES_IDIOMA] CHECK CONSTRAINT [FK_BITSAT_OPERACIONES_IDIOMA_OPERACIONES]
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_T]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ORDEN_T_BITSAT_REPARACION_ESTADO_EJECUCION] FOREIGN KEY([ESTADO_EJECUCION])
REFERENCES [dbo].[BITSAT_REPARACION_ESTADO_EJECUCION] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_T] CHECK CONSTRAINT [FK_BITSAT_ORDEN_T_BITSAT_REPARACION_ESTADO_EJECUCION]
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_X]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ORDEN_X_BITSAT_TIPO_ESTADO_ORDEN] FOREIGN KEY([ESTADO])
REFERENCES [dbo].[BITSAT_TIPO_ESTADO_ORDEN] ([Codigo])
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_X] CHECK CONSTRAINT [FK_BITSAT_ORDEN_X_BITSAT_TIPO_ESTADO_ORDEN]
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_X]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ORDENES_X_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_X] CHECK CONSTRAINT [FK_BITSAT_ORDENES_X_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_X_PREVISTA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ORDEN_X_PREVISTA_BITSAT_ORDEN_X] FOREIGN KEY([CODIGO_COMPAÑIA], [ORDENX], [UNIDAD])
REFERENCES [dbo].[BITSAT_ORDEN_X] ([CODIGO_COMPAÑIA], [ORDENX], [UNIDAD])
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_X_PREVISTA] CHECK CONSTRAINT [FK_BITSAT_ORDEN_X_PREVISTA_BITSAT_ORDEN_X]
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_X_PREVISTA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ORDEN_X_PREVISTA_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_USUARIO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_X_PREVISTA] CHECK CONSTRAINT [FK_BITSAT_ORDEN_X_PREVISTA_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_XR]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ORDENES_XR_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_XR] CHECK CONSTRAINT [FK_BITSAT_ORDENES_XR_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_XR_PREVISTA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ORDEN_XR_PREVISTA_BITSAT_ORDEN_XR] FOREIGN KEY([CODIGO_COMPAÑIA], [ORDENXR], [UNIDAD])
REFERENCES [dbo].[BITSAT_ORDEN_XR] ([CODIGO_COMPAÑIA], [ORDENXR], [UNIDAD])
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_XR_PREVISTA] CHECK CONSTRAINT [FK_BITSAT_ORDEN_XR_PREVISTA_BITSAT_ORDEN_XR]
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_XR_PREVISTA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_ORDEN_XR_PREVISTA_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_USUARIO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_ORDEN_XR_PREVISTA] CHECK CONSTRAINT [FK_BITSAT_ORDEN_XR_PREVISTA_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_PELIGROS_INSTALACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_PELIGROS_INSTALACION_BITSAT_ACTIVIDAD] FOREIGN KEY([CODIGO_PDA], [ID_ACTIVIDAD])
REFERENCES [dbo].[BITSAT_ACTIVIDAD] ([CODIGO_PDA], [ID])
GO
ALTER TABLE [dbo].[BITSAT_PELIGROS_INSTALACION] CHECK CONSTRAINT [FK_BITSAT_PELIGROS_INSTALACION_BITSAT_ACTIVIDAD]
GO
ALTER TABLE [dbo].[BITSAT_PELIGROS_INSTALACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_PELIGROS_INSTALACION_BITSAT_TIPO_PELIGRO_ESPECIFICIO1] FOREIGN KEY([CODIGO_PELIGRO])
REFERENCES [dbo].[BITSAT_TIPO_PELIGRO_ESPECIFICIO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_PELIGROS_INSTALACION] CHECK CONSTRAINT [FK_BITSAT_PELIGROS_INSTALACION_BITSAT_TIPO_PELIGRO_ESPECIFICIO1]
GO
ALTER TABLE [dbo].[BITSAT_REGISTRO_HOJA_TIEMPOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_REGISTRO_HOJA_TIEMPOS_BITSAT_HOJA_TIEMPOS_CABECERA] FOREIGN KEY([Codigo_hoja])
REFERENCES [dbo].[BITSAT_HOJA_TIEMPOS_CABECERA] ([codigo_hoja])
GO
ALTER TABLE [dbo].[BITSAT_REGISTRO_HOJA_TIEMPOS] CHECK CONSTRAINT [FK_BITSAT_REGISTRO_HOJA_TIEMPOS_BITSAT_HOJA_TIEMPOS_CABECERA]
GO
ALTER TABLE [dbo].[BITSAT_REGISTRO_HOJA_TIEMPOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_REGISTRO_HOJA_TIEMPOS_BITSAT_USUARIO] FOREIGN KEY([Codigo_compañia], [Usuario])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_REGISTRO_HOJA_TIEMPOS] CHECK CONSTRAINT [FK_BITSAT_REGISTRO_HOJA_TIEMPOS_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_REPARACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_REPARACION_BITSAT_TIPO_ESTADO_ORDEN] FOREIGN KEY([ESTADO])
REFERENCES [dbo].[BITSAT_TIPO_ESTADO_ORDEN] ([Codigo])
GO
ALTER TABLE [dbo].[BITSAT_REPARACION] CHECK CONSTRAINT [FK_BITSAT_REPARACION_BITSAT_TIPO_ESTADO_ORDEN]
GO
ALTER TABLE [dbo].[BITSAT_REPARACION]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_REPARACIONES_BITSAT_UNIDAD99] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_UNIDAD])
REFERENCES [dbo].[BITSAT_UNIDAD] ([CODIGO_COMPAÑIA], [CODIGO_UNIDAD])
GO
ALTER TABLE [dbo].[BITSAT_REPARACION] NOCHECK CONSTRAINT [FK_BITSAT_REPARACIONES_BITSAT_UNIDAD99]
GO
ALTER TABLE [dbo].[BITSAT_REPARACION_PREVISTA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_REPARACION_PREVISTA_BITSAT_REPARACION] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_UNIDAD], [NUMERO_T])
REFERENCES [dbo].[BITSAT_REPARACION] ([CODIGO_COMPAÑIA], [CODIGO_UNIDAD], [NUMERO_T])
GO
ALTER TABLE [dbo].[BITSAT_REPARACION_PREVISTA] CHECK CONSTRAINT [FK_BITSAT_REPARACION_PREVISTA_BITSAT_REPARACION]
GO
ALTER TABLE [dbo].[BITSAT_REPARACION_PREVISTA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_REPARACION_PREVISTA_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_USUARIO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_REPARACION_PREVISTA] CHECK CONSTRAINT [FK_BITSAT_REPARACION_PREVISTA_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_RUTA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_RUTA_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [IDBitRutas])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_RUTA] NOCHECK CONSTRAINT [FK_BITSAT_RUTA_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_RUTAS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_RUTAS_BITSAT_CENTRO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
REFERENCES [dbo].[BITSAT_CENTRO] ([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BITSAT_RUTAS] CHECK CONSTRAINT [FK_BITSAT_RUTAS_BITSAT_CENTRO]
GO
ALTER TABLE [dbo].[BITSAT_RUTAS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_RUTAS_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_SUPERVISOR])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BITSAT_RUTAS] CHECK CONSTRAINT [FK_BITSAT_RUTAS_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_RUTAS_TECNICO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_RUTAS_TECNICO_BITSAT_RUTAS] FOREIGN KEY([IDRUTA])
REFERENCES [dbo].[BITSAT_RUTAS] ([ID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BITSAT_RUTAS_TECNICO] CHECK CONSTRAINT [FK_BITSAT_RUTAS_TECNICO_BITSAT_RUTAS]
GO
ALTER TABLE [dbo].[BITSAT_RUTAS_TECNICO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_RUTAS_TECNICO_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_TECNICO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_RUTAS_TECNICO] CHECK CONSTRAINT [FK_BITSAT_RUTAS_TECNICO_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_SUBTIPOINSTALACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_SUBTIPOINSTALACION_BITSAT_TIPOINSTALACION] FOREIGN KEY([CODTIPOINSTALACION])
REFERENCES [dbo].[BITSAT_TIPOINSTALACION] ([CODTIPOINSTALACION])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[BITSAT_SUBTIPOINSTALACION] CHECK CONSTRAINT [FK_BITSAT_SUBTIPOINSTALACION_BITSAT_TIPOINSTALACION]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_FRECUENCIA_MES_INSPECCION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_TIPO_FRECUENCIA_MES_INSPECCION_FRECUENCIA] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[BITSAT_TIPO_FRECUENCIA] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_TIPO_FRECUENCIA_MES_INSPECCION] CHECK CONSTRAINT [FK_BITSAT_TIPO_FRECUENCIA_MES_INSPECCION_FRECUENCIA]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_GASTO_DEF]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_TIPO_GASTO_DEF_BITSAT_COMPAÑIA] FOREIGN KEY([COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_TIPO_GASTO_DEF] CHECK CONSTRAINT [FK_BITSAT_TIPO_GASTO_DEF_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_GASTO_DEF]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_TIPO_GASTO_DEF_BITSAT_TIPO_GASTO] FOREIGN KEY([CODIGO])
REFERENCES [dbo].[BITSAT_TIPO_GASTO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_TIPO_GASTO_DEF] CHECK CONSTRAINT [FK_BITSAT_TIPO_GASTO_DEF_BITSAT_TIPO_GASTO]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_OPERACION_INSPECCION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_TIPO_OPERACION_INSPECCION_BITSAT_TIPO_INSPECCION] FOREIGN KEY([CODIGO_INSPECCION])
REFERENCES [dbo].[BITSAT_TIPO_INSPECCION] ([CODIGO_INSPECCION])
GO
ALTER TABLE [dbo].[BITSAT_TIPO_OPERACION_INSPECCION] CHECK CONSTRAINT [FK_BITSAT_TIPO_OPERACION_INSPECCION_BITSAT_TIPO_INSPECCION]
GO
ALTER TABLE [dbo].[BITSAT_TIPO_SERVICIO]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_TIPO_SERVICIO_BITSAT_TIPO_SERVICIO_MANTENIMIENTO1] FOREIGN KEY([CODIGO_TIPO_SERVICIO])
REFERENCES [dbo].[BITSAT_TIPO_SERVICIO_MANTENIMIENTO] ([CODIGO_TIPO_SERVICIO])
GO
ALTER TABLE [dbo].[BITSAT_TIPO_SERVICIO] CHECK CONSTRAINT [FK_BITSAT_TIPO_SERVICIO_BITSAT_TIPO_SERVICIO_MANTENIMIENTO1]
GO
ALTER TABLE [dbo].[BITSAT_UBICACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_UBICACION_BITSAT_MOBILE] FOREIGN KEY([CODIGO_PDA])
REFERENCES [dbo].[BITSAT_MOBILE] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_UBICACION] CHECK CONSTRAINT [FK_BITSAT_UBICACION_BITSAT_MOBILE]
GO
ALTER TABLE [dbo].[BITSAT_UBICACION]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_UBICACION_BITSAT_USUARIO1] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_USUARIO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_UBICACION] CHECK CONSTRAINT [FK_BITSAT_UBICACION_BITSAT_USUARIO1]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_CENTRO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
REFERENCES [dbo].[BITSAT_CENTRO] ([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] CHECK CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_CENTRO]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_MARCAINSTALACION] FOREIGN KEY([CODMARCA])
REFERENCES [dbo].[BITSAT_MARCAINSTALACION] ([CODMARCA])
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] CHECK CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_MARCAINSTALACION]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_POBLACION] FOREIGN KEY([PROVINCIA], [POBLACION])
REFERENCES [dbo].[BITSAT_POBLACION] ([CODIGO_PROVINCIA], [CODIGO_POBLACION])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] NOCHECK CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_POBLACION]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_PROVINCIA] FOREIGN KEY([CODIGO_COMPAÑIA], [PROVINCIA])
REFERENCES [dbo].[BITSAT_PROVINCIA] ([CODIGO_COMPAÑIA], [CODIGO_PROVINCIA])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] NOCHECK CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_PROVINCIA]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_RUTAS] FOREIGN KEY([IDRUTA])
REFERENCES [dbo].[BITSAT_RUTAS] ([ID])
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] CHECK CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_RUTAS]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_SUBTIPOINSTALACION] FOREIGN KEY([CODTIPOINSTALACION], [CODSUBTIPOINSTALACION])
REFERENCES [dbo].[BITSAT_SUBTIPOINSTALACION] ([CODTIPOINSTALACION], [CODSUBTIPOINSTALACION])
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] CHECK CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_SUBTIPOINSTALACION]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_TIPO_APARATO] FOREIGN KEY([CODIGO_COMPAÑIA], [TIPO_APARATO])
REFERENCES [dbo].[BITSAT_TIPO_APARATO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] CHECK CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_TIPO_APARATO]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_TIPO_FRECUENCIA] FOREIGN KEY([PERIODO_VISITAS])
REFERENCES [dbo].[BITSAT_TIPO_FRECUENCIA] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] CHECK CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_TIPO_FRECUENCIA]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_TIPO_SERVICIO] FOREIGN KEY([CODIGO_COMPAÑIA], [TIPO_SERVICIO])
REFERENCES [dbo].[BITSAT_TIPO_SERVICIO] ([CODIGO_COMPAÑIA], [CODIGO_TIPO_SERVICIO])
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] CHECK CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_TIPO_SERVICIO]
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_TIPOINSTALACION] FOREIGN KEY([CODTIPOINSTALACION])
REFERENCES [dbo].[BITSAT_TIPOINSTALACION] ([CODTIPOINSTALACION])
GO
ALTER TABLE [dbo].[BITSAT_UNIDAD] CHECK CONSTRAINT [FK_BITSAT_UNIDAD_BITSAT_TIPOINSTALACION]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_USUARIO_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[BITSAT_USUARIO] CHECK CONSTRAINT [FK_BITSAT_USUARIO_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_USUARIO_BITSAT_GRUPO_USUARIO_AUTORIZACION] FOREIGN KEY([AUTORIZACION])
REFERENCES [dbo].[BITSAT_GRUPO_USUARIO_AUTORIZACION] ([CODIGO_AUTORIZACION])
GO
ALTER TABLE [dbo].[BITSAT_USUARIO] CHECK CONSTRAINT [FK_BITSAT_USUARIO_BITSAT_GRUPO_USUARIO_AUTORIZACION]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_USUARIO_BITSAT_TIPO_USUARIO] FOREIGN KEY([GRUPO_USUARIO])
REFERENCES [dbo].[BITSAT_GRUPO_USUARIO] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_USUARIO] CHECK CONSTRAINT [FK_BITSAT_USUARIO_BITSAT_TIPO_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_USUARIO_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [SUPERIOR])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[BITSAT_USUARIO] CHECK CONSTRAINT [FK_BITSAT_USUARIO_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_DATOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_USUARIO_DATOS_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_DATOS] CHECK CONSTRAINT [FK_BITSAT_USUARIO_DATOS_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_DATOS]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_USUARIO_TECNICO_BITSAT_MOBILE] FOREIGN KEY([PDA_ASIGNADA])
REFERENCES [dbo].[BITSAT_MOBILE] ([CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_DATOS] CHECK CONSTRAINT [FK_BITSAT_USUARIO_TECNICO_BITSAT_MOBILE]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_EXCEPCION_SALIDA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_USUARIO_EXCEPCION_SALIDA_BITSAT_CENTRO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
REFERENCES [dbo].[BITSAT_CENTRO] ([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_EXCEPCION_SALIDA] NOCHECK CONSTRAINT [FK_BITSAT_USUARIO_EXCEPCION_SALIDA_BITSAT_CENTRO]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_EXCEPCION_SALIDA]  WITH NOCHECK ADD  CONSTRAINT [FK_BITSAT_USUARIO_EXCEPCION_SALIDA_BITSAT_USUARIO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_USUARIO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_EXCEPCION_SALIDA] NOCHECK CONSTRAINT [FK_BITSAT_USUARIO_EXCEPCION_SALIDA_BITSAT_USUARIO]
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_FECHA]  WITH CHECK ADD  CONSTRAINT [FK_BITSAT_USUARIO_FECHA_BITSAT_USUARIO1] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO])
REFERENCES [dbo].[BITSAT_USUARIO] ([CODIGO_COMPAÑIA], [CODIGO])
GO
ALTER TABLE [dbo].[BITSAT_USUARIO_FECHA] CHECK CONSTRAINT [FK_BITSAT_USUARIO_FECHA_BITSAT_USUARIO1]
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_ENCUESTA_BITSAT_CENTRO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
REFERENCES [dbo].[BITSAT_CENTRO] ([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA] CHECK CONSTRAINT [FK_FISS_CC_ENCUESTA_BITSAT_CENTRO]
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_ENCUESTA_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA] CHECK CONSTRAINT [FK_FISS_CC_ENCUESTA_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_ENCUESTA_FISS_CC_PERFIL_ENCUESTA] FOREIGN KEY([ID_PERFIL_ENCUESTA])
REFERENCES [dbo].[FISS_CC_PERFIL_ENCUESTA] ([ID])
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA] CHECK CONSTRAINT [FK_FISS_CC_ENCUESTA_FISS_CC_PERFIL_ENCUESTA]
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_ENCUESTA_FISS_CC_TIPO_ENCUESTA] FOREIGN KEY([ID_TIPO_ENCUESTA])
REFERENCES [dbo].[FISS_CC_TIPO_ENCUESTA] ([ID])
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA] CHECK CONSTRAINT [FK_FISS_CC_ENCUESTA_FISS_CC_TIPO_ENCUESTA]
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA_RESPUESTA]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_ENCUESTA_RESPUESTA_FISS_CC_ENCUESTA] FOREIGN KEY([ID_ENCUESTA])
REFERENCES [dbo].[FISS_CC_ENCUESTA] ([ID])
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA_RESPUESTA] CHECK CONSTRAINT [FK_FISS_CC_ENCUESTA_RESPUESTA_FISS_CC_ENCUESTA]
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA_RESPUESTA]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_ENCUESTA_RESPUESTA_FISS_CC_SELECTOR_ENCUESTA] FOREIGN KEY([ID_SELECTOR_ENCUESTA])
REFERENCES [dbo].[FISS_CC_SELECTOR_ENCUESTA] ([ID])
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA_RESPUESTA] CHECK CONSTRAINT [FK_FISS_CC_ENCUESTA_RESPUESTA_FISS_CC_SELECTOR_ENCUESTA]
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA_RESPUESTA]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_ENCUESTA_RESPUESTA_FISS_CC_TEXTO_ENCUESTA] FOREIGN KEY([ID_TEXTO_ENCUESTA])
REFERENCES [dbo].[FISS_CC_TEXTO_ENCUESTA] ([ID])
GO
ALTER TABLE [dbo].[FISS_CC_ENCUESTA_RESPUESTA] CHECK CONSTRAINT [FK_FISS_CC_ENCUESTA_RESPUESTA_FISS_CC_TEXTO_ENCUESTA]
GO
ALTER TABLE [dbo].[FISS_CC_MAILING_ENCUESTA]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_MAILING_ENCUESTA_BITSAT_COMPAÑIA] FOREIGN KEY([CODIGO_COMPAÑIA])
REFERENCES [dbo].[BITSAT_COMPAÑIA] ([CODIGO_COMPAÑIA])
GO
ALTER TABLE [dbo].[FISS_CC_MAILING_ENCUESTA] CHECK CONSTRAINT [FK_FISS_CC_MAILING_ENCUESTA_BITSAT_COMPAÑIA]
GO
ALTER TABLE [dbo].[FISS_CC_TEXTO_ENCUESTA]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_TEXTO_ENCUESTA_FISS_CC_TIPO_PREGUNTA] FOREIGN KEY([TIPO])
REFERENCES [dbo].[FISS_CC_TIPO_PREGUNTA] ([TIPO])
GO
ALTER TABLE [dbo].[FISS_CC_TEXTO_ENCUESTA] CHECK CONSTRAINT [FK_FISS_CC_TEXTO_ENCUESTA_FISS_CC_TIPO_PREGUNTA]
GO
ALTER TABLE [dbo].[FISS_CC_TEXTO_ENCUESTA_SELECTOR]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_TEXTO_ENCUESTA_SELECTOR_FISS_CC_SELECTOR_ENCUESTA] FOREIGN KEY([ID_SELECTOR_ENCUESTA])
REFERENCES [dbo].[FISS_CC_SELECTOR_ENCUESTA] ([ID])
GO
ALTER TABLE [dbo].[FISS_CC_TEXTO_ENCUESTA_SELECTOR] CHECK CONSTRAINT [FK_FISS_CC_TEXTO_ENCUESTA_SELECTOR_FISS_CC_SELECTOR_ENCUESTA]
GO
ALTER TABLE [dbo].[FISS_CC_TEXTO_ENCUESTA_SELECTOR]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_TEXTO_ENCUESTA_SELECTOR_FISS_CC_TEXTO_ENCUESTA] FOREIGN KEY([ID_TEXTO_ENCUESTA])
REFERENCES [dbo].[FISS_CC_TEXTO_ENCUESTA] ([ID])
GO
ALTER TABLE [dbo].[FISS_CC_TEXTO_ENCUESTA_SELECTOR] CHECK CONSTRAINT [FK_FISS_CC_TEXTO_ENCUESTA_SELECTOR_FISS_CC_TEXTO_ENCUESTA]
GO
ALTER TABLE [dbo].[FISS_CC_TIPO_ENCUESTA_TEXTO]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_TIPO_ENCUESTA_TEXTO_FISS_CC_TEXTO_ENCUESTA] FOREIGN KEY([ID_TEXTO_ENCUESTA])
REFERENCES [dbo].[FISS_CC_TEXTO_ENCUESTA] ([ID])
GO
ALTER TABLE [dbo].[FISS_CC_TIPO_ENCUESTA_TEXTO] CHECK CONSTRAINT [FK_FISS_CC_TIPO_ENCUESTA_TEXTO_FISS_CC_TEXTO_ENCUESTA]
GO
ALTER TABLE [dbo].[FISS_CC_TIPO_ENCUESTA_TEXTO]  WITH CHECK ADD  CONSTRAINT [FK_FISS_CC_TIPO_ENCUESTA_TEXTO_FISS_CC_TIPO_ENCUESTA] FOREIGN KEY([ID_TIPO_ENCUESTA])
REFERENCES [dbo].[FISS_CC_TIPO_ENCUESTA] ([ID])
GO
ALTER TABLE [dbo].[FISS_CC_TIPO_ENCUESTA_TEXTO] CHECK CONSTRAINT [FK_FISS_CC_TIPO_ENCUESTA_TEXTO_FISS_CC_TIPO_ENCUESTA]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES]  WITH NOCHECK ADD  CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_CENTRO] FOREIGN KEY([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
REFERENCES [dbo].[BITSAT_CENTRO] ([CODIGO_COMPAÑIA], [CODIGO_CENTRO])
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] CHECK CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_CENTRO]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES]  WITH NOCHECK ADD  CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_MARCAINSTALACION] FOREIGN KEY([CODMARCA])
REFERENCES [dbo].[BITSAT_MARCAINSTALACION] ([CODMARCA])
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] CHECK CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_MARCAINSTALACION]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES]  WITH NOCHECK ADD  CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_POBLACION] FOREIGN KEY([PROVINCIA], [POBLACION])
REFERENCES [dbo].[BITSAT_POBLACION] ([CODIGO_PROVINCIA], [CODIGO_POBLACION])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] NOCHECK CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_POBLACION]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES]  WITH NOCHECK ADD  CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_PROVINCIA] FOREIGN KEY([CODIGO_COMPAÑIA], [PROVINCIA])
REFERENCES [dbo].[BITSAT_PROVINCIA] ([CODIGO_COMPAÑIA], [CODIGO_PROVINCIA])
NOT FOR REPLICATION 
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] NOCHECK CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_PROVINCIA]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES]  WITH NOCHECK ADD  CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_SUBTIPOINSTALACION] FOREIGN KEY([CODTIPOINSTALACION], [CODSUBTIPOINSTALACION])
REFERENCES [dbo].[BITSAT_SUBTIPOINSTALACION] ([CODTIPOINSTALACION], [CODSUBTIPOINSTALACION])
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] CHECK CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_SUBTIPOINSTALACION]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES]  WITH NOCHECK ADD  CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_TIPO_FRECUENCIA] FOREIGN KEY([PERIODO_VISITAS])
REFERENCES [dbo].[BITSAT_TIPO_FRECUENCIA] ([CODIGO])
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] CHECK CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_TIPO_FRECUENCIA]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES]  WITH NOCHECK ADD  CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_TIPO_SERVICIO] FOREIGN KEY([CODIGO_COMPAÑIA], [TIPO_SERVICIO])
REFERENCES [dbo].[BITSAT_TIPO_SERVICIO] ([CODIGO_COMPAÑIA], [CODIGO_TIPO_SERVICIO])
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] CHECK CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_TIPO_SERVICIO]
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES]  WITH NOCHECK ADD  CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_TIPOINSTALACION] FOREIGN KEY([CODTIPOINSTALACION])
REFERENCES [dbo].[BITSAT_TIPOINSTALACION] ([CODTIPOINSTALACION])
GO
ALTER TABLE [dbo].[FISS_TEMP_UNIDADES] CHECK CONSTRAINT [FK_FISS_TEMP_UNIDADES_BITSAT_TIPOINSTALACION]
GO
ALTER TABLE [dbo].[TB_DireccionesInstalacionUd]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TB_DireccionesInstalacionUd_dbo.TB_Unidades_CodCia_CodUnidad] FOREIGN KEY([CodCia], [CodUnidad])
REFERENCES [dbo].[TB_Unidades] ([CodCia], [CodUnidad])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TB_DireccionesInstalacionUd] CHECK CONSTRAINT [FK_dbo.TB_DireccionesInstalacionUd_dbo.TB_Unidades_CodCia_CodUnidad]
GO
ALTER TABLE [dbo].[TB_DireccionesInstalacionUd]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TB_DireccionesInstalacionUd_dbo.TC_Municipios_CodProvincia_CodMunicipio] FOREIGN KEY([CodProvincia], [CodMunicipio])
REFERENCES [dbo].[TC_Municipios] ([CodProvincia], [CodMunicipio])
GO
ALTER TABLE [dbo].[TB_DireccionesInstalacionUd] CHECK CONSTRAINT [FK_dbo.TB_DireccionesInstalacionUd_dbo.TC_Municipios_CodProvincia_CodMunicipio]
GO
ALTER TABLE [dbo].[TB_DireccionesInstalacionUd]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TB_DireccionesInstalacionUd_dbo.TC_TipoVia_TC_TipoVia_CodTipoVia] FOREIGN KEY([TC_TipoVia_CodTipoVia])
REFERENCES [dbo].[TC_TipoVia] ([CodTipoVia])
GO
ALTER TABLE [dbo].[TB_DireccionesInstalacionUd] CHECK CONSTRAINT [FK_dbo.TB_DireccionesInstalacionUd_dbo.TC_TipoVia_TC_TipoVia_CodTipoVia]
GO
ALTER TABLE [dbo].[TC_Municipios]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TC_Municipios_dbo.TC_Provincias_CodProvincia] FOREIGN KEY([CodProvincia])
REFERENCES [dbo].[TC_Provincias] ([CodProvincia])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TC_Municipios] CHECK CONSTRAINT [FK_dbo.TC_Municipios_dbo.TC_Provincias_CodProvincia]
GO
/****** Object:  StoredProcedure [dbo].[PA_LightHouse_ActividadHdt]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





/******************************************************************************
OBTIENE LA INFORMACIÓN DE LA HOJA DE TIEMPOS IGUAL QUE LO HACE PARA DASHBOARD
******************************************************************************/

CREATE PROCEDURE [dbo].[PA_LightHouse_ActividadHdt]
	@CiaConsulta nvarchar(2),
	@LogeConsulta nvarchar(6),
	@fechaInicio nvarchar(10),
	@fechaFin nvarchar(10),
	@mesConsulta nvarchar(2)
AS
BEGIN

	SET LANGUAGE Spanish

	DECLARE @Consulta NVARCHAR(max)

	SET @Consulta = 'SELECT DISTINCT 
		CompanyCode =  BITSAT_COMPAÑIA.CODIGO_COMPAÑIA,
		OfficeCode = SUBSTRING(c.codigo_centro, 1, 6), 
		EmployeeIDNumber = C.codigo_tecnico, 
		EmployeeName = (CASE WHEN usr.APELLIDOS IS NULL THEN usr.NOMBRE ELSE usr.APELLIDOS + '', '' + usr.NOMBRE END), 
		[Year] = CASE WHEN (
							CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,l.hora_inicio)), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
									THEN 
										CASE WHEN DATEPART(ISO_WEEK, l.hora_inicio) = 53
												THEN 1
											WHEN DATEPART(ISO_WEEK, l.hora_inicio) = 52 AND DATEPART(ISO_WEEK, DATEADD(DAY,-1,l.hora_inicio)) = 52 --Si el sábado es la misma semana que el domingo
												THEN 1	
											ELSE DATEPART(ISO_WEEK, l.hora_inicio) + 1 --Semana siguiente, ya que la semana comienza en domingo
										END
									ELSE DATEPART(ISO_WEEK, l.hora_inicio) --La semana que devuelva, ya que estará entre el lunes y el sábado
							 END
							) = 53 AND MONTH(l.hora_inicio) = 1
						THEN YEAR(l.hora_inicio) - 1
						ELSE --Ver que no ponga el año mayor al que corresponde cuando la fecha el última de año anterior pero en año actual
							CASE WHEN C.Mes = 1 AND 
										CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,l.hora_inicio)), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
												THEN 
													CASE WHEN DATEPART(ISO_WEEK, l.hora_inicio) = 53
															THEN 1
														WHEN DATEPART(ISO_WEEK, l.hora_inicio) = 52 AND DATEPART(ISO_WEEK, DATEADD(DAY,-1,l.hora_inicio)) = 52 --Si el sábado es la misma semana que el domingo
															THEN 1	
														ELSE DATEPART(ISO_WEEK, l.hora_inicio) + 1 --Semana siguiente, ya que la semana comienza en domingo
													END
												ELSE DATEPART(ISO_WEEK, l.hora_inicio) --La semana que devuelva, ya que estará entre el lunes y el sábado
										 END IN (52, 53)
									THEN YEAR(l.hora_inicio) - 1
									ELSE YEAR(l.hora_inicio)
							END
					END,    
		[Month] = C.Mes, 
		[Day] = L.Dia, 
		 -- SEGÚN REUNIÓN 29/05/2020, Gema y Maribel, LA SEMANA 53 PASA A FORMAR PARTE DE LA SEMANA 1 DEL AÑO SIGUIENTE
		 -- SEGÚN REUNIÓN 13/01/2021 Maribel, Gema y Pedro Luís, SE CAMBIA que la semana 53 sea la 1 del año siguiente (que se dijo fuese así en reunión del 29/05/2020)
		[Week] = CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,l.hora_inicio)), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
						THEN 
							CASE WHEN DATEPART(ISO_WEEK, l.hora_inicio) = 53
									THEN 1
								WHEN DATEPART(ISO_WEEK, l.hora_inicio) = 52 AND DATEPART(ISO_WEEK, DATEADD(DAY,-1,l.hora_inicio)) = 52 --Si el sábado es la misma semana que el domingo
									THEN 1	
								ELSE DATEPART(ISO_WEEK, l.hora_inicio) + 1 --Semana siguiente, ya que la semana comienza en domingo
							END
						ELSE DATEPART(ISO_WEEK, l.hora_inicio) --La semana que devuelva, ya que estará entre el lunes y el sábado
				 END,
		StartDate = l.hora_inicio, 
		EndDate = l.hora_fin, 
		HoursWithInWorkingDay = FORMAT(FLOOR(horas_normales)*100 + (horas_normales-FLOOR(horas_normales))*60,''00:00''), --SE CAMBIA POR PETICIÓN DE GEMA EL 01/04/2022
		-- FJBA. 14/07/2021. SE MODIFICA EL CÁLCULO DE LAS HORAS DE PAUSA PARA QUE SE PUEDAN RESTAR EN QLICK. LA FÓRMULA ME LA PASA NACHO.
		[Pause] = CAST(0 AS varchar) + '':'' + CAST(0 AS varchar), --SE CAMBIA POR PETICIÓN DE GEMA EL 01/04/2022
		PuseHours = CAST(0 AS float), --SE CAMBIA POR PETICIÓN DE GEMA EL 01/04/2022
		CodeActivity = L.cargo_codigo_actividad, --FJBA 06/07/2020. Se egún correo de Gema 03/07/2020, se pone L.cargo_codigo_actividad
		ActivityDescritption = CASE 
									WHEN LEFT(L.cargo_codigo_actividad, 1) = ''N''
									   THEN ''New Equipment''
									WHEN CHARINDEX(''-'' + ISNULL(L.cargo_codigo_actividad, ''@'') + ''-'', 
									''-HUELGA-002-004-005-012-015-016-017-018-018NT-021-023-025-027C-031-ENF-ACC-VACACIO-COMPENS-PERMISO-AUSENTE-PATERNI-MATERNI-SANCION-ETICA-'') > 0 
									THEN ''Unproductive''
									WHEN CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OMI-OCI-OSI-FOSI-XO-'') > 0 
									THEN ''Inspection''
									WHEN  CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-SA-'') > 0 
									THEN ''Modernization''
									WHEN CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OMA-OMAC-OMAL-OCA-OCAC-OCAL-OSA-OSAC-OSAL-DISPONI-XA-'') > 0 OR
										 CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OMAV-OMAVC-OMAVL-OCAV-OCAVC-OCAVL-OSAV-OSAVC-OSAVL-'') > 0
									THEN ''Callback''
									WHEN CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OCAT-OCATC-OCATL-OMAT-OMATL-OMATC-OSAT-OSATC-OSATL-OCT-OMT-OST-'') > 0 OR
										 CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OCTV-OMTV-OSTV-'') > 0
									THEN ''Chargeable CB''
									WHEN CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OMR-OMAR-OMARL-OMARC-OSR-OSAR-OSARL-OSARC-XQ-'') > 0 OR 
										 CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OMRV-OSRV-OCRV-'') > 0 
									THEN ''Repair''
									WHEN LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 1) = ''T'' OR
										 LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 2) = ''XR'' OR
										 CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-XT-'') > 0
									THEN ''T''
									WHEN LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 1) = ''K'' OR 
										 LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 2) = ''XK''
									THEN ''BEX''
									WHEN LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 1) = ''S'' OR 
										 LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 2) = ''XS''
									THEN ''Modernization''
									WHEN LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 1) = ''N'' OR		
										 LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 2) = ''XN'' OR
										 CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-XM-'') > 0 
									THEN ''New Equipment''						
									ELSE ''Unproductive''
							END,
		--UnproductiveDescription = ISNULL(TI.DESCRIPCION, ''''), FJBA 06/07/2020. Según correo de Gema 03/07/2020, se quita. Aunque me dijeron en un principio que lo pusiera.
		OTS_Activity = CASE 
							WHEN ISNULL(L.cargo_codigo_actividad, ''@'') = ''VACACIO''
								THEN ''VACACIO''
							WHEN ISNULL(L.cargo_codigo_actividad, ''@'') = ''COMPENS''
								THEN ''COMPENS''
							ELSE 
								CASE WHEN  CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-SA-XM-'') > 0 
									THEN ''S''
									WHEN CHARINDEX(''-'' + ISNULL(L.cargo_codigo_actividad, ''@'') + ''-'', 
										 ''-HUELGA-002-004-005-012-015-016-017-018-018NT-021-023-025-027C-028-031-ENF-ACC-DGR-VACACIO-COMPENS-PERMISO-AUSENTE-PATERNI-MATERNI-SANCION-VEHICUL-ETICA-'') > 0 
									THEN ''Unproductive''
									WHEN CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OMI-OCI-OSI-FOSI-'') > 0 OR
										 CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OMR-OMAR-OMARL-OMARC-OSR-OSAR-OSARL-OSARC-'') > 0 OR
										 CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OMA-OMAC-OMAL-OCA-OCAC-OCAL-OSA-OSAC-OSAL-DISPONI-'') > 0 OR 
										 CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-XO-XA-XQ-OMAV-OMAVC-OMAVL-OCAV-OCAVC-OCAVL-OSAV-OSAVC-OSAVL-OMRV-OSRV-OCRV-'') > 0 
									THEN ''O''
									WHEN (LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 1) = ''N'' OR 
										 LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 2) = ''XN'') OR
										 (LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 1) = ''K'' OR 
										 LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 2) = ''XK'') OR
										 (LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 1) = ''S'' OR 
										 LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 2) = ''XS'')
									THEN ''S''																
									WHEN (LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 1) = ''T'' OR
										 LEFT(ISNULL(UPPER(L.cargo_codigo_actividad), ''@''), 2) = ''XR'') OR
										 CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OMA-OMAC-OMAL-OCA-OCAC-OCAL-OSA-OSAC-OSAL-DISPONI-XT-'') > 0 OR
										 CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OCAT-OCATC-OCATL-OMAT-OMATL-OMATC-OSAT-OSATC-OSATL-OCT-OMT-OST-'') > 0 OR
										 CHARINDEX(''-'' + ISNULL(UPPER(L.cargo_codigo_actividad), ''@'') + ''-'', ''-OCTV-OMTV-OSTV-'') > 0
									THEN ''T''
									--ELSE ''Unproductive'' Lo comento, porque no está especificado en ningún documento y así se puede verificar que hay un dato distinto.
								END
							
						END,    
		WeekDay = (DATEPART(dw, l.hora_inicio) + 7) % 7 + 1,
		Unit = ISNULL(L.cargo_numero_unidad,''''),
		Route = CASE WHEN ISNULL(L.cargo_numero_unidad,'''') = '''' --FJBA 03/11/2020. SE AÑADE PARA SOLVENTAR UN PROBLEMA QUE TIENE EL EQUIPO GLOBAL (CORREO MARIBEL 03/11/2020)
					THEN ''''
					ELSE ISNULL(U.CODIGO_RUTA,''9999'')
				END,
		Number = CASE WHEN L.numero IS NULL
						THEN ''''
						ELSE CAST(L.Numero as nvarchar(1))
				END,
		Available_hours_per_FTE = ISNULL(DH.total_jornada, ISNULL(l.horas_dentro_jornada, 0))	--	FJBA 25/08/2020. Lo he relacionado con BITSAT_CALENDARIO_TECNICO y BITSAT_DETALLE_HORARIO. 
																						--		Aquellas horas que salen como 0 coinciden con sábados y domingos que no se trabaja. 
																						--		Entiendo que son horas extras y que deberán aplicar alguna lógica. 
																						--		Pongo las horas dentro de jornada realizadas. **** CONSULTAR SI ESTO ES CORRECTO ****
	FROM         
        BITSAT_HOJA_TIEMPOS_CABECERA AS C WITH (NOLOCK) INNER JOIN
        BITSAT_HOJA_TIEMPOS_LINEA AS L WITH (NOLOCK) ON 
            C.codigo_hoja = L.codigo_hoja
        --INNER JOIN BITSAT_USUARIO AS usr WITH (NOLOCK) ON 
        --    usr.CODIGO = C.codigo_tecnico 
            --FJBA 12/04/2023. QUITO ESTO PARA QUE SALGAN LAS ACTIVIDADES DE TÉCNICOS QUE PERTENECIENDO A UNA COMPAÑIA, HACEN TRABAJOS PARA OTRA.
            --AND usr.CODIGO_COMPAÑIA = C.codigo_compañia
        --CAMBIO EL INNER JOIN POR EL CROSS APPLY, PORQUE PUEDEN PONER ALGÚN CARACTER EN EL NOMBRE DEL TÉCNICO QUE HAGA QUE SE DUPLIQUEN LOS REGISTROS (QUE SEA DISTINTO DE UNA CIA A OTRA)
        CROSS APPLY (SELECT TOP(1) U.CODIGO, U.APELLIDOS, U.NOMBRE
                     FROM BITSAT_USUARIO U WITH (NOLOCK)
                     WHERE U.CODIGO = C.codigo_tecnico  
                     ORDER BY U.APELLIDOS DESC) usr
        INNER JOIN BITSAT_USUARIO AS superv WITH (NOLOCK) ON 
            superv.CODIGO = C.codigo_supervisor
        LEFT JOIN [dbo].[BITSAT_ACTIVIDAD] A WITH (NOLOCK) ON 
            A.CODIGO_PDA = L.CODIGO_PDA AND 
            A.ID = L.ID
        --FJBA 03/11/2020. SE AÑADE PARA SOLVENTAR UN PROBLEMA QUE TIENE EL EQUIPO GLOBAL (CORREO MARIBEL 03/11/2020)
        LEFT JOIN BITSAT_UNIDAD U WITH (NOLOCK) ON
            LEFT(U.CODIGO_CENTRO, 6) = LEFT(C.CODIGO_CENTRO, 6) AND
            U.CODIGO_COMPAÑIA = C.CODIGO_COMPAÑIA AND 
            U.CODIGO_UNIDAD = L.cargo_numero_unidad
        --Para obtener "Available hours per FTE" ******
        LEFT JOIN [dbo].[BITSAT_CALENDARIO_TECNICO] AS CAL WITH (NOLOCK) ON
                        CAL.CODIGO_TECNICO = usr.CODIGO
                        AND FORMAT(l.hora_inicio, ''yyyyMMdd'') BETWEEN FORMAT(CAL.FECHA_DESDE, ''yyyyMMdd'') AND FORMAT(CAL.FECHA_HASTA, ''yyyyMMdd'')
                        AND CAL.CODIGO_CENTRO = C.codigo_centro
                        AND CAL.CODIGO_COMPAÑIA = C.CODIGO_COMPAÑIA
        LEFT JOIN [dbo].[BITSAT_DETALLE_HORARIO] AS DH with (nolock) ON
                        DH.codigo_horario = CAL.CODIGO_HORARIO
                        AND DATEPART(dw, l.hora_inicio) = DH.dia_semana --Como en el calendario los días empiezan por Lunes, lo pongo así y no como se obtiene empezando por Domingo.
        --****** Para obtener "Available hours per FTE"
        LEFT JOIN BITSAT_COMPAÑIA WITH (NOLOCK) ON C.codigo_compañia = BITSAT_COMPAÑIA.CODIGO_COMPAÑIA
        LEFT JOIN BITSAT_TIPO_IMPRODUCTIVIDAD TI ON
            L.cargo_codigo_actividad = TI.CODIGO AND TI.ind_programable = 1
	  WHERE
        (C.codigo_compañia = ' + @CiaConsulta + ') AND
        (LEFT(C.codigo_centro, 6) = ' + @LogeConsulta + ') AND
        (LEFT(ISNULL(C.codigo_centro, ''000''), 2) <= 30) AND
        (FORMAT(l.hora_inicio, ''yyyyMMdd'') >= ' + @fechaInicio + ') AND
        (FORMAT(l.hora_inicio, ''yyyyMMdd'') <= ' + @fechaFin + ') AND
		(C.Mes = ' + @mesConsulta + ' OR ' + @mesConsulta + ' = ''0'')
	ORDER BY l.hora_inicio'

	EXEC sp_executesql @Consulta

END



GO
/****** Object:  StoredProcedure [dbo].[PA_LightHouse_Inspections]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/*************************************************************
INSPECCIONES POR COMPAÑÍA, CENTRO Y RUTA EN UN MES, MÁS
LAS REALIZADAS DE LOS MESES PREVIOS
**************************************************************/

CREATE PROCEDURE [dbo].[PA_LightHouse_Inspections]
	@CiaConsulta nvarchar(2),
	@LogeConsulta nvarchar(6),
	@fechaInicioMes nvarchar(10),
	@fechaFinalMes nvarchar(10), 
	@SemanaConsulta nvarchar(6),
	@numSemanasMes int,
	@mes int,
	@AñoMes_Anteriores nvarchar(256)
AS
BEGIN

	SET LANGUAGE Spanish
	DECLARE @Consulta NVARCHAR(max)

/* OBTENCIÓN DE INSPECCIONES PLANIFICADAS*/
	SET @Consulta = '
		IF OBJECT_ID(N''tempdb..##PLANIFICADAS_' + @CiaConsulta + '_' + @LogeConsulta + ''') IS NOT NULL
		BEGIN
			DROP TABLE ##PLANIFICADAS_' + @CiaConsulta + '_' + @LogeConsulta + '
		END'

	EXEC sp_executesql @Consulta 

	SET @Consulta = '
		SELECT DISTINCT
			CompanyCode = MAX(cia.CODIGO_COMPAÑIA), 
			OfficeCode = SUBSTRING(MAX(centro.CODIGO_CENTRO), 1, 6),
			Rute = MAX(r.CODIGO_RUTA), 
			Unit = u.codigo_unidad, 
			ToDo = 1,
				-- SEGÚN REUNIÓN 29/05/2020, Gema y Maribel, LA SEMANA 53 PASA A FORMAR PARTE DE LA SEMANA 1 DEL AÑO SIGUIENTE
				-- SEGÚN REUNIÓN 13/01/2021 Maribel, Gema y Pedro Luís, SE CAMBIA que la semana 53 sea la 1 del año siguiente (que se dijo fuese así en reunión del 29/05/2020)
			Done = CASE WHEN ( CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,MIN(a.fecha_fin))), ''-SUNDAY-DOMINGO'') > 0 
									THEN 
										CASE WHEN DATEPART(ISO_WEEK, MIN(a.fecha_fin)) = 53
											THEN 1
											ELSE DATEPART(ISO_WEEK, MIN(a.fecha_fin)) + 1 --Semana siguiente, ya que la semana comienza en domingo
										END
									ELSE DATEPART(ISO_WEEK, MIN(a.fecha_fin)) --La semana que devuelva, ya que estará entre el lunes y el sábado
								END) = ' + @SemanaConsulta + ' AND MAX(a.estado) = ''INSFIN''
						THEN 
							CASE WHEN MAX(a.id) IS NULL 
								THEN 0 
								ELSE 1 
							END
						ELSE 0
					END,
			Añomes = MAX(a.añomes)
		INTO ##PLANIFICADAS_' + @CiaConsulta + '_' + @LogeConsulta + '
		FROM [fncTablaAñoMes](CAST(''' + @fechaInicioMes + ''' as date), CAST(''' + @fechaFinalMes + ''' as date)) AS periodos  
			CROSS JOIN BITSAT_RUTAS AS r  with (nolock)
			LEFT JOIN BITSAT_RUTAS_TECNICO AS rt with (nolock) ON r.ID = rt.IDRUTA
			INNER JOIN bitsat_compañia AS cia  with (nolock) ON r.codigo_compañia = cia.codigo_compañia 
			INNER JOIN bitsat_unidad AS u  with (nolock) ON r.ID = u.IDRUTA and u.disp=1 and not u.altamantenimiento is null
			INNER JOIN bitsat_centro AS centro  with (nolock) ON u.codigo_compañia = centro.codigo_compañia AND centro.codigo_centro = u.codigo_centro
			LEFT JOIN bitsat_tipo_servicio_mantenimiento AS srv  with (nolock) ON u.tipo_servicio = srv.codigo_tipo_servicio 
			LEFT JOIN bitsat_actividad AS a  with (nolock) ON a.codigo_actividad = ''INSPP'' AND a.codigo_compañia = u.codigo_compañia AND a.codigo_unidad = u.codigo_unidad AND a.añomes = periodos.añomes
			LEFT JOIN BITSAT_ACTIVIDAD_FIRMA AS FIR	WITH (NOLOCK) ON FIR.CODIGO_PDA = A.CODIGO_PDA AND FIR.ID = (CASE WHEN A.[ID_ACTIVIDAD_FIRMA] IS NOT NULL THEN A.[ID_ACTIVIDAD_FIRMA] ELSE A.[ID] END)
		WHERE r.disp = 1 
			AND cia.CODIGO_COMPAÑIA = ''' + @CiaConsulta + '''
			AND LEFT(centro.CODIGO_CENTRO, 6) = ''' + @LogeConsulta + '''
			AND U.CODIGO_RUTA NOT IN (''23NA'', ''23ND'', ''23NE'', ''23NF'', ''23NH'')
			AND
			(
				case U.PERIODO_VISITAS
					when ''Q'' then 1
					when ''M'' then 1
					when ''N'' then
						CASE WHEN (' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=1 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=3 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=4 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=5 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=6 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=7 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=9 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=10 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=11) THEN 1 ELSE 0 END
					when ''B'' then 
						CASE WHEN (' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=1 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=3 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=5 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=7 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=9 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=11) THEN 1 ELSE 0 END
					when ''T'' then 
						CASE WHEN (' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=1 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=4 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=7 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=10 ) THEN 1 ELSE 0 END
					when ''C'' then
						CASE WHEN (' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=1 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=5 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=9 ) THEN 1 ELSE 0 END
					when ''S'' then
						CASE WHEN (' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=1 or ' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=7 ) THEN 1 ELSE 0 END
					when ''A'' then 
						CASE WHEN (' + RTRIM(RTRIM(CONVERT(nvarchar(2), @mes))) + '=1 ) THEN 1 ELSE 0 END
					else
						1
				end
			) IN (1,2)
		GROUP BY u.CODIGO_UNIDAD'

	EXEC sp_executesql @Consulta 

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*	OBTENCIÓN DE INSPECCIONES COMPLETADAS MES EN CURSO		*/

	SET @Consulta = '
		IF OBJECT_ID(N''tempdb..##INSPECCIONES_MES_ACTUAL_' + @CiaConsulta + '_' + @LogeConsulta + ''') IS NOT NULL
		BEGIN
			DROP TABLE ##INSPECCIONES_MES_ACTUAL_' + @CiaConsulta + '_' + @LogeConsulta + '
		END'

	EXEC sp_executesql @Consulta 

	SET @Consulta = '
		SELECT DISTINCT
			CompanyCode = MAX(cia.CODIGO_COMPAÑIA), 
			OfficeCode = SUBSTRING(MAX(centro.CODIGO_CENTRO), 1, 6),
			Rute = MAX(r.CODIGO_RUTA), 
			Unit = MAX(u.codigo_unidad), 
			INSP_FINALIZADAS_MES_CURSO = CASE WHEN (CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,MIN(a.fecha_fin))), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
														THEN 
															CASE WHEN DATEPART(ISO_WEEK, MIN(a.fecha_fin)) = 53
																THEN 1
																ELSE DATEPART(ISO_WEEK, MIN(a.fecha_fin)) + 1 --Semana siguiente, ya que la semana comienza en domingo
															END
														ELSE DATEPART(ISO_WEEK, MIN(a.fecha_fin)) --La semana que devuelva, ya que estará entre el lunes y el sábado
													END) = ' + @SemanaConsulta + '
											THEN 
												CASE WHEN MAX(a.id) IS NULL 
													THEN 0 
													ELSE 1 
												END
											ELSE 0
										END,
			Añomes = MAX(a.añomes),
			Semana = CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,MAX(a.fecha_fin))), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
						THEN 
							CASE WHEN DATEPART(ISO_WEEK, MAX(a.fecha_fin)) = 53
								THEN 1
								ELSE DATEPART(ISO_WEEK, MAX(a.fecha_fin)) + 1 --Semana siguiente, ya que la semana comienza en domingo
							END
						ELSE DATEPART(ISO_WEEK, MAX(a.fecha_fin)) --La semana que devuelva, ya que estará entre el lunes y el sábado
					END
		INTO ##INSPECCIONES_MES_ACTUAL_' + @CiaConsulta + '_' + @LogeConsulta + '
		FROM [fncTablaAñoMes](CAST(''' + @fechaInicioMes + ''' as date), CAST(''' + @fechaFinalMes + ''' as date)) AS periodos
			CROSS JOIN BITSAT_RUTAS AS r  with (nolock)
			LEFT JOIN BITSAT_RUTAS_TECNICO AS rt with (nolock) ON r.ID = rt.IDRUTA
			INNER JOIN bitsat_compañia AS cia  with (nolock) ON r.codigo_compañia = cia.codigo_compañia 
			--left JOIN bitsat_usuario AS tec  with (nolock) ON r.codigo_compañia = tec.codigo_compañia AND rt.CODIGO_TECNICO = tec.codigo 
			--left JOIN bitsat_usuario AS sup  with (nolock) ON tec.codigo_compañia = sup.codigo_compañia AND tec.superior = sup.codigo 
			INNER JOIN bitsat_unidad AS u  with (nolock) ON r.ID = u.IDRUTA and u.disp=1 and not u.altamantenimiento is null
			INNER JOIN bitsat_centro AS centro  with (nolock) ON u.codigo_compañia = centro.codigo_compañia AND centro.codigo_centro = u.codigo_centro
			LEFT JOIN bitsat_tipo_servicio_mantenimiento AS srv  with (nolock) ON u.tipo_servicio = srv.codigo_tipo_servicio 
			LEFT JOIN bitsat_actividad AS a  with (nolock) ON a.codigo_actividad = ''INSPP''  AND a.estado = ''INSFIN'' AND a.codigo_compañia = u.codigo_compañia AND a.codigo_unidad = u.codigo_unidad AND a.añomes = periodos.añomes
			LEFT JOIN BITSAT_ACTIVIDAD_FIRMA AS FIR	WITH (NOLOCK) ON FIR.CODIGO_PDA = A.CODIGO_PDA AND FIR.ID = (CASE WHEN A.[ID_ACTIVIDAD_FIRMA] IS NOT NULL THEN A.[ID_ACTIVIDAD_FIRMA] ELSE A.[ID] END)
		WHERE r.disp = 1 
			AND cia.CODIGO_COMPAÑIA = ''' + @CiaConsulta + '''
			AND LEFT(centro.CODIGO_CENTRO, 6) = ''' + @LogeConsulta + '''
			AND U.CODIGO_RUTA NOT IN (''23NA'', ''23ND'', ''23NE'', ''23NF'', ''23NH'')
		GROUP BY u.CODIGO_UNIDAD
		HAVING
			CASE WHEN (CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,MIN(a.fecha_fin))), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
							THEN 
								CASE WHEN DATEPART(ISO_WEEK, MIN(a.fecha_fin)) = 53
									THEN 1
									ELSE DATEPART(ISO_WEEK, MIN(a.fecha_fin)) + 1 --Semana siguiente, ya que la semana comienza en domingo
								END
							ELSE DATEPART(ISO_WEEK, MIN(a.fecha_fin)) --La semana que devuelva, ya que estará entre el lunes y el sábado
						END) = ' + @SemanaConsulta + ' AND MAX(a.estado) = ''INSFIN''
				THEN CASE WHEN MAX(a.id) IS NULL THEN 0 ELSE 1 END
				ELSE 0
			END = 1'

	EXEC sp_executesql @Consulta 

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*	INSPECCIONES COMPLETADAS MESES ANTERIORES Y POSTERIOR		*/

	SET @Consulta = '
		IF OBJECT_ID(N''tempdb..##INSPECCIONES_MESES_ANTERIORES_' + @CiaConsulta + '_' + @LogeConsulta + ''') IS NOT NULL
		BEGIN
			DROP TABLE ##INSPECCIONES_MESES_ANTERIORES_' + @CiaConsulta + '_' + @LogeConsulta + '
		END'

	EXEC sp_executesql @Consulta 

	SET @Consulta = '
		IF OBJECT_ID(N''tempdb..#AñoMes_Anteriores'') IS NOT NULL
		BEGIN
			DROP TABLE #AñoMes_Anteriores
		END

		SELECT * INTO #AñoMes_Anteriores
		FROM STRING_SPLIT(''' + @AñoMes_Anteriores + ''', '','') S

		SELECT DISTINCT AÑOMES = A.AÑOMES, 
						CompanyCode = MAX(A.CODIGO_COMPAÑIA), 
						OfficeCode = LEFT(MAX(U.CODIGO_CENTRO), 6),
						Rute = MAX(U.CODIGO_RUTA), 
						A.CODIGO_UNIDAD,
						ESTADO = MAX(A.ESTADO),
						Semana = CASE WHEN MAX(A.fecha_fin) IS NULL
									THEN 0
									ELSE
										CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,MIN(A.fecha_fin))), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
										THEN 
											CASE WHEN DATEPART(ISO_WEEK, MIN(A.fecha_fin)) = 53
												THEN 1
												ELSE DATEPART(ISO_WEEK, MIN(A.fecha_fin)) + 1 --Semana siguiente, ya que la semana comienza en domingo
											END
										ELSE DATEPART(ISO_WEEK, MIN(A.fecha_fin)) --La semana que devuelva, ya que estará entre el lunes y el sábado
										END
									END,
						INSP_FINALIZADAS_MESES_ANTERIORES = 1
		INTO ##INSPECCIONES_MESES_ANTERIORES_' + @CiaConsulta + '_' + @LogeConsulta + '
		FROM BITSAT_UNIDAD U WITH (NOLOCK) 
			LEFT JOIN BITSAT_ACTIVIDAD A WITH (NOLOCK) ON
					U.CODIGO_COMPAÑIA = A.CODIGO_COMPAÑIA AND 
					U.CODIGO_UNIDAD = A.CODIGO_UNIDAD
			INNER JOIN #AñoMes_Anteriores ANT ON 
					ANT.value = A.AÑOMES
		WHERE 
			A.CODIGO_COMPAÑIA = ''' + @CiaConsulta + '''
			--AND A.AÑOMES IN (202204,202203,202202,202201,202112,202111,202110,202206)
			AND LEFT(U.CODIGO_CENTRO, 6) = ''' + @LogeConsulta + ''' --PONER CONTRA LA UNIDAD PORQUE UNA UNIDAD LE PUEDE REALIZAR LA INSPECCIÓN UN TÉCNICO QUE NO PERTENECE A LA LOGE DEL APARATO.
			AND A.CODIGO_ACTIVIDAD = ''INSPP''
			AND A.ESTADO = ''INSFIN''
			AND U.CODIGO_RUTA NOT IN (''23NA'', ''23ND'', ''23NE'', ''23NF'', ''23NH'')
			AND CASE WHEN A.fecha_fin IS NULL
				THEN 0
				ELSE
					CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,A.fecha_fin)), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
						THEN 
							CASE WHEN DATEPART(ISO_WEEK, A.fecha_fin) = 53
								THEN 1
								ELSE DATEPART(ISO_WEEK, A.fecha_fin) + 1 --Semana siguiente, ya que la semana comienza en domingo
							END
						ELSE DATEPART(ISO_WEEK, A.fecha_fin) --La semana que devuelva, ya que estará entre el lunes y el sábado
					END
				END = ' + @SemanaConsulta + '
		GROUP BY A.CODIGO_UNIDAD, A.AÑOMES --AÑADIR QUE AGRUPE POR A.AÑOMES, PORQUE SI NO DEJA DE SUMAR LAS DE OTROS MESES.'

	EXEC sp_executesql @Consulta 

	/* CONSULTA DE OBTENCIÓN DE LOS DATOS A PARTIR DE LAS TABLAS TEMPORALES*/
	SET @Consulta = '
		SELECT 
			CompanyCode = INSP_CM.CompanyCode
			,OfficeCode = INSP_CM.OfficeCode
			,[Year] = LEFT(''' + @fechaFinalMes + ''', 4) 
			,[Week] = INSP_CM.[Week]
			,Rute = INSP_CM.Rute
			,TotalSemanaReal = INSP_CM.TotalSemanaReal
			,PlanedInspectionsDecimals = INSP_CM.PlanedInspectionsDecimals
			,PlanedInspections = INSP_CM.PlanedInspections
			,InspectionscompletedCM = ISNULL(COMPLETADAS_MESES_CURSO.INSP_FINALIZADAS_MES_CURSO, 0) --INSP_CM.InspectionscompletedCM
			,InspectionscompletedPM = ISNULL(COMPLETADAS_MESES_ANTERIORES.INSP_FINALIZADAS_MESES_ANTERIORES, 0)
			,Pending = INSP_CM.Pending
		FROM 
			( /*	INSPECCIONES PLANFICADAS		*/
				SELECT 
					INSP.CompanyCode
					,INSP.OfficeCode
					,[Year] = LEFT(MAX(INSP.Añomes), 4)
					,[Week] = ' + @SemanaConsulta + '
					,Rute
					,TotalSemanaReal = SUM(INSP.ToDo)
					, PlanedInspectionsDecimals = (SUM(INSP.ToDo) / ' + CONVERT(nvarchar(5), CONVERT(decimal(4,2),  @numSemanasMes)) + ') - (SUM(INSP.ToDo) / ' + CONVERT(nvarchar(1), @numSemanasMes) + ')
					,PlanedInspections = SUM(INSP.ToDo) / ' + CONVERT(nvarchar(1), @numSemanasMes) + '
					,InspectionscompletedCM = SUM(INSP.Done)
					,InspectionscompletedPM = 0
					,Pending = (SUM(INSP.ToDo) / ' + CONVERT(nvarchar(1), @numSemanasMes) + ') - SUM(INSP.Done) --No lo paso a decimal para que devuelva un entero
				FROM ##PLANIFICADAS_' + @CiaConsulta + '_' + @LogeConsulta + ' AS INSP
				GROUP BY 
					CompanyCode, 
					OfficeCode,
					Rute
			) AS INSP_CM

			LEFT JOIN

			( /*	INSPECCIONES COMPLETADAS MES EN CURSO		*/

				SELECT 
					AÑOMES = MAX(AÑOMES),
					CompanyCode = MAX(CompanyCode), 
					OfficeCode= MAX(OfficeCode),
					Rute, 
					Semana,
					INSP_FINALIZADAS_MES_CURSO = SUM(INSP_FINALIZADAS_MES_CURSO)
				FROM ##INSPECCIONES_MES_ACTUAL_' + @CiaConsulta + '_' + @LogeConsulta + ' AS CM
				GROUP BY Rute, Semana
			) AS COMPLETADAS_MESES_CURSO ON
						INSP_CM.CompanyCode = COMPLETADAS_MESES_CURSO.CompanyCode AND
						INSP_CM.OfficeCode = COMPLETADAS_MESES_CURSO.OfficeCode AND
						INSP_CM.Rute = COMPLETADAS_MESES_CURSO.Rute AND
						INSP_CM.[Week] = COMPLETADAS_MESES_CURSO.SEMANA

			LEFT JOIN

			( /*	INSPECCIONES COMPLETADAS MESES ANTERIORES Y POSTERIOR		*/
				SELECT 
					AÑOMES = MAX(AÑOMES),
					CompanyCode = MAX(CompanyCode), 
					OfficeCode= MAX(OfficeCode),
					Rute, 
					Semana,
					INSP_FINALIZADAS_MESES_ANTERIORES = SUM(INSP_FINALIZADAS_MESES_ANTERIORES)
				FROM ##INSPECCIONES_MESES_ANTERIORES_' + @CiaConsulta + '_' + @LogeConsulta + ' AS PM
				GROUP BY Rute, Semana
			) AS COMPLETADAS_MESES_ANTERIORES ON
						INSP_CM.CompanyCode = COMPLETADAS_MESES_ANTERIORES.CompanyCode AND
						INSP_CM.OfficeCode = COMPLETADAS_MESES_ANTERIORES.OfficeCode AND
						INSP_CM.Rute = COMPLETADAS_MESES_ANTERIORES.Rute AND
						INSP_CM.[Week] = COMPLETADAS_MESES_ANTERIORES.SEMANA
		ORDER BY INSP_CM.Rute'

	EXEC sp_executesql @Consulta 

END
GO
/****** Object:  StoredProcedure [dbo].[PA_LightHouse_Inspections_Planified]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


/***************************************************************
INSPECCIONES PLANIFICADAS POR COMPAÑÍA, CENTRO Y RUTA EN UN MES
****************************************************************/

CREATE PROCEDURE [dbo].[PA_LightHouse_Inspections_Planified]
	@CiaConsulta nvarchar(2),
	@LogeConsulta nvarchar(6),
	@fechaInicioMes nvarchar(10),
	@fechaFinalMes nvarchar(10), 
	@SemanaConsulta nvarchar(2),
	@numSemanasMes int,
	@mes int
AS
BEGIN

	SET LANGUAGE Spanish

	IF OBJECT_ID(N'tempdb..#PLANIFICADAS') IS NOT NULL
	BEGIN
		DROP TABLE #PLANIFICADAS
	END

	/* PREPARAR LOS DATOS PARA LUEGO OBTENER EL RESUMEN*/
	/* OBTENCIÓN DE INSPECCIONES PLANIFICADAS*/
	SELECT DISTINCT
		CompanyCode = MAX(cia.CODIGO_COMPAÑIA), 
		OfficeCode = SUBSTRING(MAX(centro.CODIGO_CENTRO), 1, 6),
		Rute = MAX(r.CODIGO_RUTA), 
		Unit = u.codigo_unidad, 
		ToDo = 1,
			-- SEGÚN REUNIÓN 29/05/2020, Gema y Maribel, LA SEMANA 53 PASA A FORMAR PARTE DE LA SEMANA 1 DEL AÑO SIGUIENTE
			-- SEGÚN REUNIÓN 13/01/2021 Maribel, Gema y Pedro Luís, SE CAMBIA que la semana 53 sea la 1 del año siguiente (que se dijo fuese así en reunión del 29/05/2020)
		Done = CASE WHEN ( CASE WHEN CHARINDEX(UPPER('-' + DATENAME(dw,MIN(a.fecha_fin))), '-SUNDAY-DOMINGO') > 0 --Si el día de la semana es domingo, será la semana siguiente
								THEN 
									CASE WHEN DATEPART(ISO_WEEK, MIN(a.fecha_fin)) = 53
										THEN 1
										ELSE DATEPART(ISO_WEEK, MIN(a.fecha_fin)) + 1 --Semana siguiente, ya que la semana comienza en domingo
									END
								ELSE DATEPART(ISO_WEEK, MIN(a.fecha_fin)) --La semana que devuelva, ya que estará entre el lunes y el sábado
							END) = @SemanaConsulta AND MAX(a.estado) = 'INSFIN'
					THEN 
						CASE WHEN MAX(a.id) IS NULL 
							THEN 0 
							ELSE 1 
						END
					ELSE 0
				END,
		Añomes = MAX(a.añomes)
	INTO #PLANIFICADAS
	FROM [fncTablaAñoMes](CAST(@fechaInicioMes as date), CAST(@fechaFinalMes as date)) AS periodos  
		CROSS JOIN BITSAT_RUTAS AS r  with (nolock)
		LEFT JOIN BITSAT_RUTAS_TECNICO AS rt with (nolock) ON r.ID = rt.IDRUTA
		INNER JOIN bitsat_compañia AS cia  with (nolock) ON r.codigo_compañia = cia.codigo_compañia 
		INNER JOIN bitsat_unidad AS u  with (nolock) ON r.ID = u.IDRUTA and u.disp=1 and not u.altamantenimiento is null
		INNER JOIN bitsat_centro AS centro  with (nolock) ON u.codigo_compañia = centro.codigo_compañia AND centro.codigo_centro = u.codigo_centro
		LEFT JOIN bitsat_tipo_servicio_mantenimiento AS srv  with (nolock) ON u.tipo_servicio = srv.codigo_tipo_servicio 
		LEFT JOIN bitsat_actividad AS a  with (nolock) ON a.codigo_actividad = 'INSPP' AND a.codigo_compañia = u.codigo_compañia AND a.codigo_unidad = u.codigo_unidad AND a.añomes = periodos.añomes
		LEFT JOIN BITSAT_ACTIVIDAD_FIRMA AS FIR	WITH (NOLOCK) ON FIR.CODIGO_PDA = A.CODIGO_PDA AND FIR.ID = (CASE WHEN A.[ID_ACTIVIDAD_FIRMA] IS NOT NULL THEN A.[ID_ACTIVIDAD_FIRMA] ELSE A.[ID] END)
	WHERE r.disp = 1 
		AND cia.CODIGO_COMPAÑIA = @CiaConsulta
		AND LEFT(centro.CODIGO_CENTRO, 6) = @LogeConsulta
		AND U.CODIGO_RUTA NOT IN ('23NA', '23ND', '23NE', '23NF', '23NH')
		AND
		(
			case U.PERIODO_VISITAS
				when 'Q' then 1
				when 'M' then 1
				when 'N' then
					CASE WHEN (@mes=1 or @mes=3 or @mes=4 or @mes=5 or @mes=6 or @mes=7 or @mes=9 or @mes=10 or @mes=11) THEN 1 ELSE 0 END
				when 'B' then 
					CASE WHEN (@mes=1 or @mes=3 or @mes=5 or @mes=7 or @mes=9 or @mes=11) THEN 1 ELSE 0 END
				when 'T' then 
					CASE WHEN (@mes=1 or @mes=4 or @mes=7 or @mes=10 ) THEN 1 ELSE 0 END
				when 'C' then
					CASE WHEN (@mes=1 or @mes=5 or @mes=9 ) THEN 1 ELSE 0 END
				when 'S' then
					CASE WHEN (@mes=1 or @mes=7 ) THEN 1 ELSE 0 END
				when 'A' then 
					CASE WHEN (@mes=1 ) THEN 1 ELSE 0 END
				else
					1
			end
		) IN (1,2)
	GROUP BY u.CODIGO_UNIDAD

	/* CONSULTA DE OBTENCIÓN DE LOS DATOS A PARTIR DE LAS TABLAS TEMPORALES*/
	SELECT 
		CompanyCode = INSP_CM.CompanyCode
		,OfficeCode = INSP_CM.OfficeCode
		,[Year] = ISNULL(INSP_CM.[Year], LEFT(@fechaInicioMes, 4))
		,[Week] = INSP_CM.[Week]
		,Rute = INSP_CM.Rute
		,TotalSemanaReal = INSP_CM.TotalSemanaReal
		,PlanedInspectionsDecimals = INSP_CM.PlanedInspectionsDecimals
		,PlanedInspections = INSP_CM.PlanedInspections
		,InspectionscompletedCM = 0
		,InspectionscompletedPM = 0
		,Pending = 0
	FROM 
		( /*	INSPECCIONES PLANFICADAS		*/
			SELECT 
				INSP.CompanyCode
				,INSP.OfficeCode
				,[Year] = LEFT(MAX(INSP.Añomes), 4)
				,[Week] = @SemanaConsulta
				,Rute
				,TotalSemanaReal = SUM(INSP.ToDo)
				,PlanedInspectionsDecimals = (SUM(INSP.ToDo) / CONVERT(decimal(4,2), @numSemanasMes)) - (SUM(INSP.ToDo) / @numSemanasMes)
				,PlanedInspections = SUM(INSP.ToDo) / @numSemanasMes --@numSemanasMes
				,InspectionscompletedCM = SUM(INSP.Done)
				,InspectionscompletedPM = 0
				,Pending = (SUM(INSP.ToDo) / @numSemanasMes) - SUM(INSP.Done) --No lo paso a decimal para que devuelva un entero
			FROM #PLANIFICADAS AS INSP
			GROUP BY 
				CompanyCode, 
				OfficeCode,
				Rute
		) AS INSP_CM
	ORDER BY INSP_CM.Rute
	
END
GO
/****** Object:  StoredProcedure [dbo].[PA_LightHouse_InspectionsByTechnician]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





/*************************************************************
INSPECCIONES POR COMPAÑÍA, CENTRO, RUTA Y TÉCNICO EN UN MES, 
MÁS LAS REALIZADAS DE LOS MESES PREVIOS Y UNO POSTERIOR
**************************************************************/

CREATE PROCEDURE [dbo].[PA_LightHouse_InspectionsByTechnician]
	@CiaConsulta nvarchar(2),
	@LogeConsulta nvarchar(6),
	@fechaInicioMes nvarchar(10),
	@fechaFinalMes nvarchar(10), 
	@SemanaConsulta nvarchar(6),
	@numSemanasMes int,
	@mes int,
	@AñoMes_Anteriores nvarchar(256)
AS
BEGIN

	SET LANGUAGE Spanish

	DECLARE @Consulta NVARCHAR(max)

/*	OBTENCIÓN DE INSPECCIONES COMPLETADAS MES EN CURSO		*/

	SET @Consulta = '
		IF OBJECT_ID(N''tempdb..##INSPECCIONES_MES_ACTUAL_TECNICO_' + @CiaConsulta + '_' + @LogeConsulta + ''') IS NOT NULL
		BEGIN
			DROP TABLE ##INSPECCIONES_MES_ACTUAL_TECNICO_' + @CiaConsulta + '_' + @LogeConsulta + '
		END'

	EXEC sp_executesql @Consulta 

	SET @Consulta = '
		SELECT DISTINCT
			CompanyCode = MAX(cia.CODIGO_COMPAÑIA), 
			OfficeCode = SUBSTRING(MAX(centro.CODIGO_CENTRO), 1, 6),
			Rute = MAX(r.CODIGO_RUTA), 
			Unit = MAX(u.codigo_unidad), 
			Technician = A.CODIGO_PDA, 
			INSP_FINALIZADAS_MES_CURSO = CASE WHEN (CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,MIN(a.fecha_fin))), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
														THEN 
															CASE WHEN DATEPART(ISO_WEEK, MIN(a.fecha_fin)) = 53
																THEN 1
																ELSE DATEPART(ISO_WEEK, MIN(a.fecha_fin)) + 1 --Semana siguiente, ya que la semana comienza en domingo
															END
														ELSE DATEPART(ISO_WEEK, MIN(a.fecha_fin)) --La semana que devuelva, ya que estará entre el lunes y el sábado
													END) = ' + @SemanaConsulta + '
											THEN 
												CASE WHEN MAX(a.id) IS NULL 
													THEN 0 
													ELSE 1 
												END
											ELSE 0
										END,
			Añomes = MAX(a.añomes),
			Semana = CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,MAX(a.fecha_fin))), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
						THEN 
							CASE WHEN DATEPART(ISO_WEEK, MAX(a.fecha_fin)) = 53
								THEN 1
								ELSE DATEPART(ISO_WEEK, MAX(a.fecha_fin)) + 1 --Semana siguiente, ya que la semana comienza en domingo
							END
						ELSE DATEPART(ISO_WEEK, MAX(a.fecha_fin)) --La semana que devuelva, ya que estará entre el lunes y el sábado
					END
		INTO ##INSPECCIONES_MES_ACTUAL_TECNICO_' + @CiaConsulta + '_' + @LogeConsulta + '
		FROM [fncTablaAñoMes](CAST(''' + @fechaInicioMes + ''' as date), CAST(''' + @fechaFinalMes + ''' as date)) AS periodos
			CROSS JOIN bitsat_ruta AS r  with (nolock) 
			INNER JOIN bitsat_compañia AS cia  with (nolock) ON r.codigo_compañia = cia.codigo_compañia 
			INNER JOIN bitsat_centro AS centro  with (nolock) ON r.codigo_compañia = centro.codigo_compañia AND SUBSTRING(centro.codigo_centro, 1, 6) = r.codigo_centro 
			--left JOIN bitsat_usuario AS tec  with (nolock) ON r.codigo_compañia = tec.codigo_compañia AND r.idbitrutas = tec.codigo 
			--left JOIN bitsat_usuario AS sup  with (nolock) ON tec.codigo_compañia = sup.codigo_compañia AND tec.superior = sup.codigo 
			INNER JOIN bitsat_unidad AS u  with (nolock) ON r.codigo_compañia = u.codigo_compañia AND CENTRO.CODIGO_CENTRO=U.CODIGO_CENTRO AND r.codigo_ruta = u.codigo_ruta and u.disp=1 and not u.altamantenimiento is null
			LEFT JOIN bitsat_tipo_servicio_mantenimiento AS srv  with (nolock) ON u.tipo_servicio = srv.codigo_tipo_servicio 
			LEFT JOIN bitsat_actividad AS a  with (nolock) ON a.codigo_actividad = ''INSPP''  AND a.estado = ''INSFIN'' AND a.codigo_compañia = u.codigo_compañia AND a.codigo_unidad = u.codigo_unidad AND a.añomes = periodos.añomes
			LEFT JOIN BITSAT_ACTIVIDAD_FIRMA AS FIR	WITH (NOLOCK) ON FIR.CODIGO_PDA = A.CODIGO_PDA AND FIR.ID = (CASE WHEN A.[ID_ACTIVIDAD_FIRMA] IS NOT NULL THEN A.[ID_ACTIVIDAD_FIRMA] ELSE A.[ID] END)
		WHERE r.disp = 1 
			AND cia.CODIGO_COMPAÑIA = ''' + @CiaConsulta + '''
			AND LEFT(centro.CODIGO_CENTRO, 6) = ''' + @LogeConsulta + '''
			AND U.CODIGO_RUTA NOT IN (''23NA'', ''23ND'', ''23NE'', ''23NF'', ''23NH'')
		GROUP BY u.CODIGO_UNIDAD, A.CODIGO_PDA 
		HAVING
			CASE WHEN (CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,MIN(a.fecha_fin))), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
							THEN 
								CASE WHEN DATEPART(ISO_WEEK, MIN(a.fecha_fin)) = 53
									THEN 1
									ELSE DATEPART(ISO_WEEK, MIN(a.fecha_fin)) + 1 --Semana siguiente, ya que la semana comienza en domingo
								END
							ELSE DATEPART(ISO_WEEK, MIN(a.fecha_fin)) --La semana que devuelva, ya que estará entre el lunes y el sábado
						END) = ' + @SemanaConsulta + ' AND MAX(a.estado) = ''INSFIN''
				THEN CASE WHEN MAX(a.id) IS NULL THEN 0 ELSE 1 END
				ELSE 0
			END = 1'

	EXEC sp_executesql @Consulta 

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*	INSPECCIONES COMPLETADAS MESES ANTERIORES Y POSTERIOR		*/

	SET @Consulta = '
		IF OBJECT_ID(N''tempdb..##INSPECCIONES_MESES_ANTERIORES_TECNICO_' + @CiaConsulta + '_' + @LogeConsulta + ''') IS NOT NULL
		BEGIN
			DROP TABLE ##INSPECCIONES_MESES_ANTERIORES_TECNICO_' + @CiaConsulta + '_' + @LogeConsulta + '
		END'

	EXEC sp_executesql @Consulta 

	SET @Consulta = '
		IF OBJECT_ID(N''tempdb..#AñoMes_Anteriores_Tecnico'') IS NOT NULL
		BEGIN
			DROP TABLE #AñoMes_Anteriores_Tecnico
		END

		SELECT * INTO #AñoMes_Anteriores_Tecnico
		FROM STRING_SPLIT(''' + @AñoMes_Anteriores + ''', '','') S

		SELECT DISTINCT AÑOMES = A.AÑOMES, 
						CompanyCode = MAX(A.CODIGO_COMPAÑIA), 
						OfficeCode = LEFT(MAX(U.CODIGO_CENTRO), 6),
						Rute = MAX(U.CODIGO_RUTA), 
						A.CODIGO_UNIDAD,
						Technician = A.CODIGO_PDA, 
						ESTADO = MAX(A.ESTADO),
						Semana = CASE WHEN MAX(A.fecha_fin) IS NULL
									THEN 0
									ELSE
										CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,MIN(A.fecha_fin))), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
										THEN 
											CASE WHEN DATEPART(ISO_WEEK, MIN(A.fecha_fin)) = 53
												THEN 1
												ELSE DATEPART(ISO_WEEK, MIN(A.fecha_fin)) + 1 --Semana siguiente, ya que la semana comienza en domingo
											END
										ELSE DATEPART(ISO_WEEK, MIN(A.fecha_fin)) --La semana que devuelva, ya que estará entre el lunes y el sábado
										END
									END,
						INSP_FINALIZADAS_MESES_ANTERIORES = 1
		INTO ##INSPECCIONES_MESES_ANTERIORES_TECNICO_' + @CiaConsulta + '_' + @LogeConsulta + '
		FROM BITSAT_UNIDAD U WITH (NOLOCK) 
			LEFT JOIN BITSAT_ACTIVIDAD A WITH (NOLOCK) ON
					U.CODIGO_COMPAÑIA = A.CODIGO_COMPAÑIA AND 
					U.CODIGO_UNIDAD = A.CODIGO_UNIDAD
			INNER JOIN #AñoMes_Anteriores_Tecnico ANT ON 
					ANT.value = A.AÑOMES
		WHERE 
			A.CODIGO_COMPAÑIA = ''' + @CiaConsulta + '''
			--AND A.AÑOMES IN (202204,202203,202202,202201,202112,202111,202110,202206)
			AND LEFT(U.CODIGO_CENTRO, 6) = ''' + @LogeConsulta + ''' --PONER CONTRA LA UNIDAD PORQUE UNA UNIDAD LE PUEDE REALIZAR LA INSPECCIÓN UN TÉCNICO QUE NO PERTENECE A LA LOGE DEL APARATO.
			AND A.CODIGO_ACTIVIDAD = ''INSPP''
			AND A.ESTADO = ''INSFIN''
			AND U.CODIGO_RUTA NOT IN (''23NA'', ''23ND'', ''23NE'', ''23NF'', ''23NH'')
			AND CASE WHEN A.fecha_fin IS NULL
				THEN 0
				ELSE
					CASE WHEN CHARINDEX(UPPER(''-'' + DATENAME(dw,A.fecha_fin)), ''-SUNDAY-DOMINGO'') > 0 --Si el día de la semana es domingo, será la semana siguiente
						THEN 
							CASE WHEN DATEPART(ISO_WEEK, A.fecha_fin) = 53
								THEN 1
								ELSE DATEPART(ISO_WEEK, A.fecha_fin) + 1 --Semana siguiente, ya que la semana comienza en domingo
							END
						ELSE DATEPART(ISO_WEEK, A.fecha_fin) --La semana que devuelva, ya que estará entre el lunes y el sábado
					END
				END = ' + @SemanaConsulta + '
		GROUP BY A.CODIGO_UNIDAD, A.CODIGO_PDA, A.AÑOMES --AÑADIR QUE AGRUPE POR A.AÑOMES, PORQUE SI NO DEJA DE SUMAR LAS DE OTROS MESES.'

	EXEC sp_executesql @Consulta 

	/* CONSULTA DE OBTENCIÓN DE LOS DATOS A PARTIR DE LAS TABLAS TEMPORALES*/
	SET @Consulta = '
		SELECT 
			CompanyCode = COMPLETADAS_MESES_CURSO.CompanyCode
			,OfficeCode = COMPLETADAS_MESES_CURSO.OfficeCode
			,[Year] = LEFT(''' + @fechaFinalMes + ''', 4) 
			,[Week] = COMPLETADAS_MESES_CURSO.[Week]
			,Rute = COMPLETADAS_MESES_CURSO.Rute
			,IdTechnician = COMPLETADAS_MESES_CURSO.Technician
			,Technician = TEC.NOMBRE
			,InspectionscompletedCM = ISNULL(COMPLETADAS_MESES_CURSO.INSP_FINALIZADAS_MES_CURSO, 0) --INSP_CM.InspectionscompletedCM
			,InspectionscompletedPM = ISNULL(COMPLETADAS_MESES_ANTERIORES.INSP_FINALIZADAS_MESES_ANTERIORES, 0)
		FROM 

			( /*	INSPECCIONES COMPLETADAS MES EN CURSO		*/

				SELECT 
					AÑOMES = MAX(AÑOMES),
					CompanyCode = MAX(CompanyCode), 
					OfficeCode= MAX(OfficeCode),
					Rute, 
					Technician, 
					[Week] = Semana,
					INSP_FINALIZADAS_MES_CURSO = SUM(INSP_FINALIZADAS_MES_CURSO)
				FROM ##INSPECCIONES_MES_ACTUAL_TECNICO_' + @CiaConsulta + '_' + @LogeConsulta + ' AS CM
				GROUP BY Rute, Semana, Technician
			) AS COMPLETADAS_MESES_CURSO 

			LEFT JOIN

			( /*	INSPECCIONES COMPLETADAS MESES ANTERIORES Y POSTERIOR		*/
				SELECT 
					AÑOMES = MAX(AÑOMES),
					CompanyCode = MAX(CompanyCode), 
					OfficeCode= MAX(OfficeCode),
					Rute, 
					Technician, 
					Semana,
					INSP_FINALIZADAS_MESES_ANTERIORES = SUM(INSP_FINALIZADAS_MESES_ANTERIORES)
				FROM ##INSPECCIONES_MESES_ANTERIORES_TECNICO_' + @CiaConsulta + '_' + @LogeConsulta + ' AS PM
				GROUP BY Rute, Semana, Technician
			) AS COMPLETADAS_MESES_ANTERIORES ON
					COMPLETADAS_MESES_CURSO.CompanyCode = COMPLETADAS_MESES_ANTERIORES.CompanyCode AND
					COMPLETADAS_MESES_CURSO.OfficeCode = COMPLETADAS_MESES_ANTERIORES.OfficeCode AND
					COMPLETADAS_MESES_CURSO.Rute = COMPLETADAS_MESES_ANTERIORES.Rute AND
					COMPLETADAS_MESES_CURSO.Technician = COMPLETADAS_MESES_ANTERIORES.Technician AND
					COMPLETADAS_MESES_CURSO.[Week] = COMPLETADAS_MESES_ANTERIORES.SEMANA
			INNER JOIN BITSAT_USUARIO AS TEC WITH (NOLOCK) ON 
				COMPLETADAS_MESES_CURSO.CompanyCode = TEC.CODIGO_COMPAÑIA AND 
				COMPLETADAS_MESES_CURSO.Technician = TEC.CODIGO
		ORDER BY COMPLETADAS_MESES_CURSO.Rute'

	EXEC sp_executesql @Consulta 

END



GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_CargaTrabajoNiveles]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--USE [BITSAT_OTIS]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_Variables]    Script Date: 17/06/2021 15:58:44 ******/
--DROP PROCEDURE [dbo].[SP_MTD_Variables]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_UnidadGeolocalizacion]    Script Date: 17/06/2021 15:58:44 ******/
--DROP PROCEDURE [dbo].[SP_MTD_UnidadGeolocalizacion]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_UltimaActividadTecnico]    Script Date: 17/06/2021 15:58:44 ******/
--DROP PROCEDURE [dbo].[SP_MTD_UltimaActividadTecnico]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_TiempoObjetivoAviso_TipoAviso]    Script Date: 17/06/2021 15:58:44 ******/
--DROP PROCEDURE [dbo].[SP_MTD_TiempoObjetivoAviso_TipoAviso]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_TiempoDesplazamiento]    Script Date: 17/06/2021 15:58:44 ******/
--DROP PROCEDURE [dbo].[SP_MTD_TiempoDesplazamiento]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicoValoresSubjetivos]    Script Date: 17/06/2021 15:58:44 ******/
--DROP PROCEDURE [dbo].[SP_MTD_TecnicoValoresSubjetivos]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicosAvisoDevuelto]    Script Date: 17/06/2021 15:58:44 ******/
--DROP PROCEDURE [dbo].[SP_MTD_TecnicosAvisoDevuelto]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicoRelacionCliente]    Script Date: 17/06/2021 15:58:44 ******/
--DROP PROCEDURE [dbo].[SP_MTD_TecnicoRelacionCliente]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicoConocimientoTipoTecnologia]    Script Date: 17/06/2021 15:58:44 ******/
--DROP PROCEDURE [dbo].[SP_MTD_TecnicoConocimientoTipoTecnologia]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicoConocimientoTipoEquipo]    Script Date: 17/06/2021 15:58:44 ******/
--DROP PROCEDURE [dbo].[SP_MTD_TecnicoConocimientoTipoEquipo]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_RutaActivadaMTD]    Script Date: 17/06/2021 15:58:44 ******/
--DROP PROCEDURE [dbo].[SP_MTD_RutaActivadaMTD]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_CargaTrabajoNiveles]    Script Date: 17/06/2021 15:58:44 ******/
--DROP PROCEDURE [dbo].[SP_MTD_CargaTrabajoNiveles]
--GO
--/****** Object:  StoredProcedure [dbo].[SP_MTD_CargaTrabajoNiveles]    Script Date: 17/06/2021 15:58:44 ******/
--SET ANSI_NULLS ON
--GO
--SET QUOTED_IDENTIFIER ON
--GO


CREATE PROCEDURE [dbo].[SP_MTD_CargaTrabajoNiveles]
/*
DEVUELVE EL PESO DE LA CARGA DE TRABAJO

*/
AS

BEGIN
	SET NOCOUNT ON

	SELECT CodigoCompañia, CargaTrabajoDesde, CargaTrabajoHasta, Peso
	FROM MTD_CargaTrabajoNiveles WITH (NOLOCK)
	WHERE DISP = 1

	SET NOCOUNT OFF
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_DentroHorario]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 
CREATE PROCEDURE [dbo].[SP_MTD_DentroHorario]
/*
DEVUELVE SI HAY HORARIO PARA UNA LOGE, DIA DE LA SEMANA Y HORA. 30-07-2021
*/
(
 @cia NVARCHAR(2),
 @loge NVARCHAR(8),
 @horaAviso nvarchar(5),
 @diaSemana int
 
)
AS
BEGIN
 SET NOCOUNT ON

 Declare @hayHorario nvarchar(1) 
 SELECT TOP(1) @hayHorario = ISNULL(H.DISP, 0)
 --,  D.DIA_SEMANA, InicioJorndaMañana = FORMAT(D.INICIO_MAÑANA, 'HH:mm'), FinJorndaMañana = FORMAT(D.FIN_MAÑANA, 'HH:mm'),
 --  InicioJorndaTarde = FORMAT(D.INICIO_TARDE, 'HH:mm'), FinJorndaTarde = FORMAT(D.FIN_TARDE, 'HH:mm') 
 FROM BITSAT_HORARIO H
   INNER JOIN BITSAT_DETALLE_HORARIO D ON
    H.CODIGO_HORARIO = D.CODIGO_HORARIO
 WHERE H.DISP=1 AND H.AÑO=YEAR(GETDATE()) AND H.CODIGO_COMPAÑIA=@cia 
   AND H.TIPO_HORARIO=1
   AND LEFT(H.CODIGO_CENTRO,6)=LEFT(@loge,6)
   AND H.HORARIO_CENTRO = 1
   AND D.DIA_SEMANA = @diaSemana 
   AND D.TOTAL_JORNADA > 0
   AND --SE MODIFICA PARA QUE SE CONTEMPLE EL TIEMPO DE COMIDA. QUE ENTRA EN FUERA DE JORNADA.
    (@horaAviso BETWEEN --POR SI SOLO TIENE JORNADA DE MAÑANA O DE TARDE.
         CASE WHEN FORMAT(D.INICIO_MAÑANA, 'HH:mm') <> '00:00'
          THEN FORMAT(D.INICIO_MAÑANA, 'HH:mm')
          ELSE FORMAT(D.INICIO_TARDE, 'HH:mm')
         END
       AND
         CASE WHEN FORMAT(D.FIN_MAÑANA, 'HH:mm') <> '00:00'
          THEN FORMAT(D.FIN_MAÑANA, 'HH:mm')
          ELSE FORMAT(D.FIN_TARDE, 'HH:mm')
         END
    OR
    @horaAviso BETWEEN --POR SI SOLO TIENE JORNADA DE MAÑANA O DE TARDE.
         CASE WHEN FORMAT(D.INICIO_TARDE, 'HH:mm') <> '00:00'
          THEN FORMAT(D.INICIO_TARDE, 'HH:mm')
          ELSE FORMAT(D.INICIO_MAÑANA, 'HH:mm')
         END
       AND
         CASE WHEN FORMAT(D.FIN_TARDE, 'HH:mm') <> '00:00'
          THEN FORMAT(D.FIN_TARDE, 'HH:mm')
          ELSE FORMAT(D.FIN_MAÑANA, 'HH:mm')
         END
    )
   
    --((@horaAviso BETWEEN FORMAT(D.INICIO_MAÑANA, 'HH:mm') AND FORMAT(D.FIN_MAÑANA, 'HH:mm')) OR
    --(@horaAviso BETWEEN FORMAT(D.INICIO_TARDE, 'HH:mm') AND FORMAT(D.FIN_TARDE, 'HH:mm')))
 select EstoyDentroHorario = ISNULL(@hayHorario, 0)
 SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_RutaActivadaMTD]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_MTD_RutaActivadaMTD]
/*
DEVUELVE SI LA RUTA ESTÁ ACTIVADA

*/
(
	@cia NVARCHAR(2),
	@loge NVARCHAR(8),
	@ruta nvarchar(4)
	
)
AS

BEGIN
	SET NOCOUNT ON


	Declare @activadaMTD nvarchar(1)  

	SELECT @activadaMTD = ISNULL(ActivoMTD, '0') FROM [dbo].[BITSAT_RUTA] WITH (NOLOCK) WHERE CODIGO_COMPAÑIA = @cia AND SUBSTRING(CODIGO_CENTRO, 0, 5) = SUBSTRING(@loge, 0, 5) AND CODIGO_RUTA = @ruta AND DISP = 1

	--SET @activadaMTD = 1

	select RutaActivadaMTD = @activadaMTD

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicoCargaTrabajoAgrupadoPorTecnico]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

/*
DEVUELVE LA CARGA DE TRABAJO DE LOS TÉCNICOS.

*/

CREATE PROCEDURE [dbo].[SP_MTD_TecnicoCargaTrabajoAgrupadoPorTecnico]
(
	@CIA NVARCHAR(2),
	@CODIGO_CENTRO NVARCHAR(6),
	@TECNICOS NVARCHAR(350),
	@RUTA NVARCHAR(4),
	@AÑOMES NVARCHAR(6),
	@FECHA_CLAVEAVISO NVARCHAR(8),
	@CLAVE_AVISO NVARCHAR(15),
	@ACCIONES_AVISO NVARCHAR(256)
)
AS
BEGIN
	SET NOCOUNT ON

	--CREAMOS 1 TABLA TEMPORAL PARA LUEGO HACER JOIN CON ELLA Y FILTRAR LOS TÉCNICOS QUE SE PASAN POR PARÁMETRO.
	DECLARE @ListaTecnicos TABLE (IdTecnico NVARCHAR(15) PRIMARY KEY)
    DECLARE @StartPointer INT, @EndPointer INT
    SELECT @StartPointer = 1, @EndPointer = CHARINDEX(',', @TECNICOS)
    WHILE (@StartPointer < LEN(@TECNICOS) + 1)
    BEGIN
        IF @EndPointer = 0
            SET @EndPointer = LEN(@TECNICOS) + 1
        INSERT INTO @ListaTecnicos (IdTecnico)
        VALUES(LTRIM(RTRIM(SUBSTRING(@TECNICOS, @StartPointer,
                                     @EndPointer - @StartPointer))))
        SET @StartPointer = @EndPointer + 1
        SET @EndPointer = CHARINDEX(',', @TECNICOS, @StartPointer)
    END -- WHILE

	--CREAR TABLA TEMPORAL CON LA ACTIVIDAD
	
	CREATE TABLE #Actividad_tmp (NUMCAMPO int IDENTITY(1,1) NOT NULL,
								CODIGO_COMPAÑIA NVARCHAR(2) NOT NULL, 
								CODIGO_CENTRO NVARCHAR(8) NOT NULL, 
								CODIGO_PDA NVARCHAR(15) NOT NULL, 
								ID DATETIME NOT NULL, 
								CODIGO_ACTIVIDAD NVARCHAR(10),
								CODIGO_UNIDAD NVARCHAR(5),
								ESTADO NVARCHAR(10),
								AÑOMES NVARCHAR(6),
								fecha_fin DATETIME,
								PRIMARY KEY (NUMCAMPO, CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_PDA, ID)
							 )
	
	INSERT INTO #Actividad_tmp (CODIGO_COMPAÑIA, CODIGO_CENTRO, CODIGO_PDA, CODIGO_UNIDAD, CODIGO_ACTIVIDAD, ESTADO, AÑOMES, ID, fecha_fin)
		SELECT DISTINCT CODIGO_COMPAÑIA = a.codigo_compañia, CODIGO_CENTRO = a.CODIGO_CENTRO, CODIGO_PDA = a.CODIGO_PDA, CODIGO_UNIDAD = a.CODIGO_UNIDAD, CODIGO_ACTIVIDAD = a.CODIGO_ACTIVIDAD, ESTADO = a.ESTADO, AÑOMES = a.AÑOMES, ID = a.ID, fecha_fin = a.fecha_fin
		FROM bitsat_actividad AS a  WITH (NOLOCK) INNER JOIN 
					@ListaTecnicos T ON 
						a.CODIGO_PDA = T.IdTecnico INNER JOIN 
					bitsat_unidad AS u WITH (NOLOCK) ON 
						a.codigo_compañia = u.codigo_compañia AND 
						LEFT(a.CODIGO_CENTRO, 6) = LEFT(U.CODIGO_CENTRO, 6) AND 
						a.codigo_unidad = u.CODIGO_UNIDAD AND 
						u.disp=1
		WHERE a.AÑOMES = @AÑOMES AND
				a.CODIGO_COMPAÑIA = @CIA AND
				LEFT(a.CODIGO_CENTRO, 6) LIKE @CODIGO_CENTRO+'%' AND 
				a.codigo_actividad = 'INSPP' AND 
				a.FECHA_FIN IS NOT NULL

	--CREAR TABLA TEMPORAL CON LOS AVISOS
	
	CREATE TABLE #Aviso_tmp (NUMCAMPO int IDENTITY(1,1) NOT NULL,
								CODIGO_COMPAÑIA NVARCHAR(2) NOT NULL, 
								CODIGO_CENTRO NVARCHAR(8) NOT NULL, 
								CLAVE_AVISO NVARCHAR(15) NOT NULL, 
								CODIGO_TECNICO NVARCHAR(15) NOT NULL, 
								ACCION NVARCHAR(30),
								FECHA_HORA_ACCION DATETIME,
								ESTADO_ASCENSOR NVARCHAR(1),
								PRIMARY KEY (NUMCAMPO, CODIGO_COMPAÑIA, CODIGO_CENTRO, CLAVE_AVISO, CODIGO_TECNICO)
							 )
	INSERT INTO #Aviso_tmp (CODIGO_COMPAÑIA, CODIGO_CENTRO, CLAVE_AVISO, CODIGO_TECNICO, FECHA_HORA_ACCION, ESTADO_ASCENSOR, ACCION)
		SELECT CODIGO_COMPAÑIA = A2.CODIGO_COMPAÑIA, CODIGO_CENTRO = A2.CODIGO_CENTRO, AE2.CLAVE_AVISO, A2.CODIGO_TECNICO, FECHA_HORA_ACCION = AE2.FECHA_HORA_ACCION, A2.ESTADO_ASCENSOR, AE2.ACCION
		FROM BITSAT_AVISOS_ESTADOS AE2 WITH (NOLOCK) INNER JOIN
			BITSAT_AVISOS A2 WITH (NOLOCK) ON
				A2.CLAVE_AVISO = AE2.CLAVE_AVISO INNER JOIN 
			@ListaTecnicos T ON 
				A2.CODIGO_TECNICO = T.IdTecnico		
		WHERE LEFT(A2.CLAVE_AVISO, 8) = @FECHA_CLAVEAVISO AND A2.CLAVE_AVISO <> @CLAVE_AVISO AND LEFT(A2.CODIGO_CENTRO, 6) = @CODIGO_CENTRO
	--FIN CREACIÓN TABLAS TEMPORALES

	SELECT TipoConsulta = 'InspeccionesPlanificadasMes', Valor = SUM(1), Tecnico = RU.Codigo_Tecnico, AvisosA = 0, AvisosB = 0, AvisosC = 0
									FROM BITSAT_EXP_RUTAUNIDAD RU WITH (NOLOCK) INNER JOIN
											BITSAT_UNIDAD U WITH (NOLOCK) ON
												RU.codigo_compañia = U.CODIGO_COMPAÑIA AND 
												LEFT(RU.CODIGO_CENTRO, 6) = LEFT(U.CODIGO_CENTRO, 6) AND 
												RU.CODIGO_UNIDAD = U.CODIGO_UNIDAD INNER JOIN 
											@ListaTecnicos T ON 
												RU.Codigo_Tecnico = T.IdTecnico
									--WHERE RU.Codigo_Tecnico IN (@TECNICOS) AND RU.codigo_compañia = @CIA AND LEFT(RU.CODIGO_CENTRO, 6) LIKE @CODIGO_CENTRO+'%' AND RU.añomes = @AÑOMES
									WHERE RU.codigo_compañia = @CIA AND LEFT(RU.CODIGO_CENTRO, 6) LIKE @CODIGO_CENTRO+'%' AND RU.añomes = @AÑOMES
									GROUP BY RU.Codigo_Tecnico
	UNION
	SELECT TipoConsulta = 'InspeccionesRealizadasMes', Valor = R.realizadas, Tecnico = CODIGO_PDA, AvisosA = 0, AvisosB = 0, AvisosC = 0 
						FROM (SELECT DISTINCT realizadas = SUM(1), CODIGO_PDA = a.CODIGO_PDA, CODIGO_UNIDAD = MAX(a.CODIGO_UNIDAD), CODIGO_ACTIVIDAD = MAX(a.CODIGO_ACTIVIDAD), ESTADO = MAX(a.ESTADO), AÑOMES = MAX(a.AÑOMES), ID = MAX(a.ID), fecha_fin = MAX(a.fecha_fin)
								FROM #Actividad_tmp a
								WHERE a.AÑOMES = @AÑOMES AND
										a.CODIGO_COMPAÑIA = @CIA AND
										LEFT(a.CODIGO_CENTRO, 6) LIKE @CODIGO_CENTRO+'%' AND 
										--a.CODIGO_PDA IN (@TECNICOS) AND
										a.codigo_actividad = 'INSPP' AND 
										a.FECHA_FIN IS NOT NULL
										--AND a.estado = 'INSFIN'
								GROUP BY a.CODIGO_PDA
										) AS R
	UNION
	SELECT TipoConsulta = 'InspeccionesRealizadasDia', Valor = R.realizadas, Tecnico = CODIGO_PDA, AvisosA = 0, AvisosB = 0, AvisosC = 0
							 FROM (SELECT DISTINCT realizadas = SUM(1), CODIGO_PDA = a.CODIGO_PDA, CODIGO_UNIDAD = MAX(a.CODIGO_UNIDAD), CODIGO_ACTIVIDAD = MAX(a.CODIGO_ACTIVIDAD), ESTADO = MAX(a.ESTADO), AÑOMES = MAX(a.AÑOMES), ID = MAX(a.ID), fecha_fin = MAX(a.fecha_fin)
									FROM #Actividad_tmp a
									WHERE a.AÑOMES = @AÑOMES AND
											a.CODIGO_COMPAÑIA = @CIA AND
											LEFT(a.CODIGO_CENTRO, 6) LIKE @CODIGO_CENTRO+'%' AND 
											--a.CODIGO_PDA IN (@TECNICOS) AND
											FORMAT(a.FECHA_FIN, 'yyyyMMdd') = @FECHA_CLAVEAVISO AND
											a.codigo_actividad = 'INSPP'
											--AND a.estado = 'INSFIN'
									GROUP BY a.CODIGO_PDA
											) AS R
	UNION
	SELECT DISTINCT TipoConsulta = 'AvisosPendientes', Valor = SUM(1), Tecnico = A1.CODIGO_TECNICO, --A1.UNIDAD, AE1.CLAVE_AVISO
				AvisosA = SUM(CASE WHEN CHARINDEX(ISNULL(UPPER(A1.ESTADO_ASCENSOR), '@'), 'C') > 0
								THEN 1
								ELSE 0
						  END),
				AvisosB = SUM(CASE WHEN CHARINDEX(ISNULL(UPPER(A1.ESTADO_ASCENSOR), '@'), 'D-E-M-O-S') > 0
								THEN 1
								ELSE 0
						  END),
				AvisosC = SUM(CASE WHEN CHARINDEX(ISNULL(UPPER(A1.ESTADO_ASCENSOR), '@'), 'X') > 0
								THEN 1
								ELSE 0
						  END)
								FROM #Aviso_tmp A1 WITH (NOLOCK) INNER JOIN
										(SELECT AE2.CLAVE_AVISO, AE2.CODIGO_TECNICO, FECHA_HORA_ACCION = MAX(AE2.FECHA_HORA_ACCION)
											FROM #Aviso_tmp AE2 WITH (NOLOCK)
											WHERE LEFT(AE2.CLAVE_AVISO, 8) = @FECHA_CLAVEAVISO AND AE2.CLAVE_AVISO <> @CLAVE_AVISO AND LEFT(AE2.CODIGO_CENTRO, 6) = @CODIGO_CENTRO
											GROUP BY AE2.CODIGO_TECNICO, AE2.CLAVE_AVISO
										) AE3 ON
											A1.CLAVE_AVISO = AE3.CLAVE_AVISO AND
											A1.FECHA_HORA_ACCION = AE3.FECHA_HORA_ACCION
								WHERE LEFT(A1.CLAVE_AVISO, 8) = @FECHA_CLAVEAVISO AND A1.CLAVE_AVISO <> @CLAVE_AVISO AND LEFT(A1.CODIGO_CENTRO, 6) = @CODIGO_CENTRO AND
										CHARINDEX(ISNULL(UPPER(A1.ACCION), '@'), @ACCIONES_AVISO) = 0
								GROUP BY A1.CODIGO_TECNICO
	ORDER BY Tecnico

--ANULACION
--ANULADO
--CERRADO
--CIERRE
--CONFIRMADO
--DEVOLUCION
--DEVUELTO
--LANZADO
--PARADA
--PARADO
--REACTIVACION
--REACTIVADO
--TRANSFERENCIA
--TRANSFERIDO

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicoConocimientoTipoEquipo]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_MTD_TecnicoConocimientoTipoEquipo]
/*
DEVUELVE SI LA RUTA ESTÁ ACTIVADA

*/
(
	@CIA NVARCHAR(2),
	@GRUPOAPARATO NVARCHAR(2),
	@TECNICOS nvarchar(350)
	
)
AS

BEGIN
	SET NOCOUNT ON

	--CREAMOS 1 TABLA TEMPORAL PARA LUEGO HACER JOIN CON ELLA Y FILTRAR LOS TÉCNICOS QUE SE PASAN POR PARÁMETRO.
	--CREAMOS LA TABLA TEMPORAL PARA LOS TÉCNICOS
	DECLARE @ListaTecnicos TABLE (IdTecnico NVARCHAR(15) PRIMARY KEY)
    DECLARE @StartPointer INT, @EndPointer INT
    SELECT @StartPointer = 1, @EndPointer = CHARINDEX(',', @TECNICOS)
    WHILE (@StartPointer < LEN(@TECNICOS) + 1)
    BEGIN
        IF @EndPointer = 0
            SET @EndPointer = LEN(@TECNICOS) + 1
        INSERT INTO @ListaTecnicos (IdTecnico)
        VALUES(LTRIM(RTRIM(SUBSTRING(@TECNICOS, @StartPointer,
                                     @EndPointer - @StartPointer))))
        SET @StartPointer = @EndPointer + 1
        SET @EndPointer = CHARINDEX(',', @TECNICOS, @StartPointer)
    END -- WHILE

	SELECT TC.CodigoTecnico, C.IDConocimiento, C.Descripcion, C.Peso FROM MTD_Tecnico_Conocimientos TC WITH (NOLOCK)
					INNER JOIN MTD_Conocimientos C WITH (NOLOCK) ON
						C.CodigoCompañia = TC.CodigoCompañia AND 
						C.IDConocimiento = TC.IDConocimiento
					INNER JOIN @ListaTecnicos T ON TC.CodigoTecnico = T.IdTecnico
					INNER JOIN MTD_TipoEquipo_Conocimientos TEC WITH (NOLOCK) ON
						C.CodigoCompañia = TEC.CodigoCompañia AND
						C.IDConocimiento = TEC.IDConocimiento AND 
						TEC.IDGrupoAparato = @GRUPOAPARATO
	WHERE TC.CodigoCompañia = @CIA
	ORDER BY TC.CodigoTecnico, C.Peso DESC

	SET NOCOUNT OFF
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicoConocimientoTipoTecnologia]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_MTD_TecnicoConocimientoTipoTecnologia]
/*
DEVUELVE SI LA RUTA ESTÁ ACTIVADA

*/
(
	@CIA NVARCHAR(2),
	@tipoTecnologia INT,
	@TECNICOS nvarchar(350)
	
)
AS

BEGIN
	SET NOCOUNT ON

	--CREAMOS 1 TABLA TEMPORAL PARA LUEGO HACER JOIN CON ELLA Y FILTRAR LOS TÉCNICOS QUE SE PASAN POR PARÁMETRO.
	--CREAMOS LA TABLA TEMPORAL PARA LOS TÉCNICOS
	DECLARE @ListaTecnicos TABLE (IdTecnico NVARCHAR(15) PRIMARY KEY)
    DECLARE @StartPointer INT, @EndPointer INT
    SELECT @StartPointer = 1, @EndPointer = CHARINDEX(',', @TECNICOS)
    WHILE (@StartPointer < LEN(@TECNICOS) + 1)
    BEGIN
        IF @EndPointer = 0
            SET @EndPointer = LEN(@TECNICOS) + 1
        INSERT INTO @ListaTecnicos (IdTecnico)
        VALUES(LTRIM(RTRIM(SUBSTRING(@TECNICOS, @StartPointer,
                                     @EndPointer - @StartPointer))))
        SET @StartPointer = @EndPointer + 1
        SET @EndPointer = CHARINDEX(',', @TECNICOS, @StartPointer)
    END -- WHILE

	SELECT TC.CodigoTecnico, C.IDConocimiento, C.Descripcion, C.Peso FROM MTD_Tecnico_Conocimientos TC WITH (NOLOCK)
					INNER JOIN MTD_Conocimientos C WITH (NOLOCK) ON
						C.CodigoCompañia = TC.CodigoCompañia AND 
						C.IDConocimiento = TC.IDConocimiento
					INNER JOIN @ListaTecnicos T ON TC.CodigoTecnico = T.IdTecnico
					INNER JOIN MTD_TipoTecnologia_Conocimientos TTC WITH (NOLOCK) ON
						C.CodigoCompañia = TTC.CodigoCompañia AND
						C.IDConocimiento = TTC.IDConocimiento AND 
						TTC.IDTipoTecnologia = @tipoTecnologia
	WHERE TC.CodigoCompañia = @CIA 
	ORDER BY TC.CodigoTecnico, C.Peso DESC

	SET NOCOUNT OFF
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicoExperienciaUnidad]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_MTD_TecnicoExperienciaUnidad]
/*
DEVUELVE LA ÚLTIMA ACTIVIDAD DE LOS TECNICOS

*/
(
	@cia NVARCHAR(2),
	@unidad nvarchar(8),
	@tecnicos nvarchar(350)
)
AS

BEGIN
	SET NOCOUNT ON

	--CREAMOS LA TABLA TEMPORAL PARA LOS TÉCNICOS PARA LUEGO HACER JOIN CON ELLA Y FILTRAR LOS TÉCNICOS QUE SE PASAN POR PARÁMETRO.
	DECLARE @ListaTecnicos TABLE (IdTecnico NVARCHAR(15) PRIMARY KEY)
    DECLARE @StartPointer INT, @EndPointer INT
    SELECT @StartPointer = 1, @EndPointer = CHARINDEX(',', @tecnicos)
    WHILE (@StartPointer < LEN(@tecnicos) + 1)
    BEGIN
        IF @EndPointer = 0
            SET @EndPointer = LEN(@tecnicos) + 1
        INSERT INTO @ListaTecnicos (IdTecnico)
        VALUES(LTRIM(RTRIM(SUBSTRING(@tecnicos, @StartPointer,
                                     @EndPointer - @StartPointer))))
        SET @StartPointer = @EndPointer + 1
        SET @EndPointer = CHARINDEX(',', @tecnicos, @StartPointer)
    END -- WHILE

	SELECT DISTINCT TECNICO = AE.TECNICO_AVISO, TOTAL_AVISOS = COUNT(AE.CLAVE_AVISO), UNIDAD = MAX(A.UNIDAD) 
	FROM BITSAT_AVISOS_ESTADOS AE WITH (NOLOCK) 
			INNER JOIN BITSAT_AVISOS A WITH (NOLOCK) ON 
				A.CLAVE_AVISO = AE.CLAVE_AVISO AND
				AE.ACCION = 'CERRADO' 
			INNER JOIN @ListaTecnicos T ON
				AE.TECNICO_AVISO = T.IdTecnico
	WHERE A.CODIGO_COMPAÑIA = @cia AND A.UNIDAD = @unidad
	GROUP BY AE.TECNICO_AVISO

	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicoRelacionCliente]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_MTD_TecnicoRelacionCliente]
/*
DEVUELVE SI LA RUTA ESTÁ ACTIVADA

*/
(
	@CIA NVARCHAR(2),
	@NIFCliente NVARCHAR(15),
	@TECNICOS nvarchar(350)
	
)
AS

BEGIN
	SET NOCOUNT ON

	--CREAMOS 1 TABLA TEMPORAL PARA LUEGO HACER JOIN CON ELLA Y FILTRAR LOS TÉCNICOS QUE SE PASAN POR PARÁMETRO.
	--CREAMOS LA TABLA TEMPORAL PARA LOS TÉCNICOS
	DECLARE @ListaTecnicos TABLE (IdTecnico NVARCHAR(15) PRIMARY KEY)
    DECLARE @StartPointer INT, @EndPointer INT
    SELECT @StartPointer = 1, @EndPointer = CHARINDEX(',', @TECNICOS)
    WHILE (@StartPointer < LEN(@TECNICOS) + 1)
    BEGIN
        IF @EndPointer = 0
            SET @EndPointer = LEN(@TECNICOS) + 1
        INSERT INTO @ListaTecnicos (IdTecnico)
        VALUES(LTRIM(RTRIM(SUBSTRING(@TECNICOS, @StartPointer,
                                     @EndPointer - @StartPointer))))
        SET @StartPointer = @EndPointer + 1
        SET @EndPointer = CHARINDEX(',', @TECNICOS, @StartPointer)
    END -- WHILE

	SELECT CodigoCompañia, CodigoTecnico, NIFCliente, Preferencia
	FROM MTD_Relacion_Tecnico_Cliente WITH (NOLOCK)
			INNER JOIN @ListaTecnicos T ON CodigoTecnico = T.IdTecnico
	WHERE CodigoCompañia = @CIA AND
		NIFCliente = @NIFCliente AND 
		DISP = 1

	SET NOCOUNT OFF
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicoRuta]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SP_MTD_TecnicoRuta]
/*
DEVUELVE LOS TECNICOS:
	- ASOCIADOS A UNA RUTA. 
	- NO TIENEN RUTA ASOCIADA, PERO PERTENECEN A LA LOGE DE LA RUTA.
	- TÉCNICOS QUE PERTENECEN A UN TERRITORIO Y QUE TIENEN ESA RUTA ASOCIADA.

TAMBIÉN DEVUELVE SU ESPECIALIZACIÓN. AVISOS, BACKUP, ...

*/
(
	@cia NVARCHAR(2),
	@loge nvarchar(8),
	@ruta nvarchar(6),
	@transportePorDefecto nvarchar(50),
	@DescripcionTransportePorDefecto nvarchar(100)
)
AS

BEGIN
	SET NOCOUNT ON

	SET LANGUAGE Spanish

	SELECT DISTINCT CODIGO_COMPAÑIA, 
			CODIGO_CENTRO, 
			CODIGO, 
			NOMBRE, 
			CODIGO_RUTA,
			DISPONIBLE_RUTA,
			TERRITORIO,
			NOMBRE_TERRITORIO,
			RUTA_TERRITORIO,
			DISPONIBLE_TERRITORIO, 
			CODIGO_CENTRO_TERRITORIO,
			ORDEN,
			ESPECIALIZACION =	ISNULL(E.IDEspecializacion, 0),
			DESC_ESPECIALIZACION = ISNULL(E.Descripcion, ''),
			TRANSPORTE = ISNULL(TT.IDTipoTransporte, @transportePorDefecto),
			DESC_TRANSPORTE = ISNULL(TT.Descripcion, @DescripcionTransportePorDefecto)
	FROM (SELECT U.CODIGO_COMPAÑIA, 
					CODIGO_CENTRO = LEFT(U.CODIGO_CENTRO, 6), 
					U.CODIGO, 
					U.NOMBRE, 
					R.CODIGO_RUTA,
					DISPONIBLE_RUTA = ISNULL(R.ActivoMTD, 0),
					TERRITORIO = ISNULL(TT.IDTerritorio, 0),
					NOMBRE_TERRITORIO = ISNULL(T.Descripcion, ''),
					RUTA_TERRITORIO = ISNULL(TR.CodigoRuta, 0),
					DISPONIBLE_TERRITORIO = CASE WHEN ISNULL(TT.IDTerritorio, '0') = '0'
												THEN 0
												ELSE 1
											END, 
					CODIGO_CENTRO_TERRITORIO = ISNULL(TR.CodigoCentro, ''),
					E.IDEspecializacion,
					U.IDTipoTransporte,
					ORDEN = 1
			FROM BITSAT_USUARIO U WITH(NOLOCK) 
				INNER JOIN MTD_EspecializacionTecnico E WITH(NOLOCK) ON 
					E.CodigoTecnico = U.CODIGO
				LEFT JOIN BITSAT_RUTA AS R WITH(NOLOCK) ON 
					R.CODIGO_COMPAÑIA = U.CODIGO_COMPAÑIA AND 
					LEFT(R.CODIGO_CENTRO, 6) = LEFT(U.CODIGO_CENTRO, 6) AND -- SE PONE LOGE_OTIS, PORQUE PUEDE ESTAR COLABORANDO DE OTRA LOGE
					R.IDBitRutas = U.CODIGO
				LEFT JOIN MTD_Territorio_Tecnico TT WITH(NOLOCK) ON 
					TT.CodigoCompañia = U.CODIGO_COMPAÑIA AND 
					--LEFT(TT.CodigoCentro, 6) = LEFT(U.CODIGO_CENTRO, 6) AND -- SE PONE LOGE_OTIS, PORQUE PUEDE ESTAR COLABORANDO DE OTRA LOGE
					TT.CodigoTecnico = U.CODIGO AND 
					TT.DISP = 1
				LEFT JOIN MTD_Territorio T WITH(NOLOCK) ON
					T.IDTerritorio = TT.IDTerritorio AND 
					T.DISP = 1
				LEFT JOIN MTD_Territorio_Ruta TR WITH(NOLOCK) ON
					TR.IDTerritorio = TT.IDTerritorio AND
					TR.DISP = 1
			WHERE LEFT(U.CODIGO_CENTRO, 6) = LEFT(@loge, 6) AND U.CODIGO_COMPAÑIA = @cia AND U.DISP = 1 AND U.GRUPO_USUARIO IN ('TECNICO') AND R.DISP = 1 AND U.ACTIVOMTD = 1
			UNION 
			--TÉCNICOS QUE NO TIENEN UNA RUTA ASIGNADA
			SELECT U.CODIGO_COMPAÑIA, 
					CODIGO_CENTRO = LEFT(U.CODIGO_CENTRO, 6), 
					U.CODIGO, 
					U.NOMBRE, 
					CODIGO_RUTA = '',
					DISPONIBLE_RUTA = 0,
					TERRITORIO = ISNULL(TT.IDTerritorio, 0), 
					NOMBRE_TERRITORIO = ISNULL(T.Descripcion, ''),
					RUTA_TERRITORIO = ISNULL(TR.CodigoRuta, 0),
					DISPONIBLE_TERRITORIO = CASE WHEN ISNULL(TT.IDTerritorio, 0) = 0
												THEN 0
												ELSE 1
											END, 
					CODIGO_CENTRO_TERRITORIO = ISNULL(TR.CodigoCentro, ''),
					E.IDEspecializacion,
					U.IDTipoTransporte,
					ORDEN = 1
			FROM BITSAT_USUARIO U WITH(NOLOCK) 
					INNER JOIN MTD_EspecializacionTecnico E WITH(NOLOCK) ON 
						E.CodigoTecnico = U.CODIGO				
					LEFT JOIN MTD_Territorio_Tecnico TT WITH(NOLOCK) ON 
						TT.CodigoCompañia = U.CODIGO_COMPAÑIA AND 
					--LEFT(TT.CodigoCentro, 6) = LEFT(U.CODIGO_CENTRO, 6) AND -- SE PONE LOGE_OTIS, PORQUE PUEDE ESTAR COLABORANDO DE OTRA LOGE
						TT.CodigoTecnico = U.CODIGO AND 
						TT.DISP = 1
					LEFT JOIN MTD_Territorio T WITH(NOLOCK) ON
						T.IDTerritorio = TT.IDTerritorio AND 
						T.DISP = 1
					LEFT JOIN MTD_Territorio_Ruta TR WITH(NOLOCK) ON
						TR.IDTerritorio = TT.IDTerritorio AND
						TR.DISP = 1
			WHERE U.CODIGO NOT IN (SELECT R.IDBitRutas FROM 
									BITSAT_RUTA AS R WITH(NOLOCK)
									WHERE R.CODIGO_COMPAÑIA = U.CODIGO_COMPAÑIA AND 
										LEFT(R.CODIGO_CENTRO, 6) = LEFT(U.CODIGO_CENTRO, 6) AND R.DISP = 1) -- SE PONE LOGE_OTIS, PORQUE PUEDE ESTAR COLABORANDO DE OTRA LOGE
				AND LEFT(U.CODIGO_CENTRO, 6) = LEFT(@loge, 6) AND U.CODIGO_COMPAÑIA = @cia AND U.DISP = 1 AND U.GRUPO_USUARIO IN ('TECNICO') AND U.ACTIVOMTD = 1
			UNION
			--TÉCNICOS DEL TERRITORIO AL QUE PERTENECE LA RUTA DEL APARATO DEL AVISO
			SELECT U.CODIGO_COMPAÑIA, 
					CODIGO_CENTRO = LEFT(U.CODIGO_CENTRO, 6), 
					U.CODIGO, 
					U.NOMBRE, 
					CODIGO_RUTA = '',
					DISPONIBLE_RUTA = 0,
					TERRITORIO = TT.IDTerritorio, 
					NOMBRE_TERRITORIO = ISNULL(T.Descripcion, ''),
					RUTA_TERRITORIO = ISNULL(TR.CodigoRuta, 0),
					DISPONIBLE_TERRITORIO = 1, 
					CODIGO_CENTRO_TERRITORIO = TR.CodigoCentro,
					E.IDEspecializacion,
					U.IDTipoTransporte,
					ORDEN = 2
			FROM BITSAT_USUARIO U WITH(NOLOCK) 
					INNER JOIN MTD_EspecializacionTecnico E WITH(NOLOCK) ON 
						E.CodigoTecnico = U.CODIGO
					LEFT JOIN MTD_Territorio_Tecnico TT WITH(NOLOCK) ON 
						TT.CodigoCompañia = U.CODIGO_COMPAÑIA AND 
						--LEFT(TT.CodigoCentro, 6) = LEFT(U.CODIGO_CENTRO, 6) AND -- SE PONE LOGE_OTIS, PORQUE PUEDE ESTAR COLABORANDO DE OTRA LOGE
						TT.CodigoTecnico = U.CODIGO AND 
						TT.DISP = 1
					LEFT JOIN MTD_Territorio T WITH(NOLOCK) ON
						T.IDTerritorio = TT.IDTerritorio AND 
						T.DISP = 1
					LEFT JOIN MTD_Territorio_Ruta TR WITH(NOLOCK) ON
						TR.IDTerritorio = TT.IDTerritorio AND
						TR.DISP = 1
			WHERE U.CODIGO_COMPAÑIA = @cia AND TR.CodigoRuta = @ruta AND U.DISP = 1 AND U.GRUPO_USUARIO IN ('TECNICO') AND U.DISP = 1 AND U.ACTIVOMTD = 1
			) AS T LEFT JOIN 
			MTD_Especializacion E ON
				T.CODIGO_COMPAÑIA = E.CodigoCompañia AND 
				T.IDEspecializacion = E.IDEspecializacion
			 LEFT JOIN MTD_TipoTransporte TT ON
				--T.CODIGO_COMPAÑIA = E.CodigoCompañia AND 
				TT.IDTipoTransporte = T.IDTipoTransporte
	ORDER BY ORDEN, CODIGO

	SET NOCOUNT OFF
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicosAvisoDevuelto]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_MTD_TecnicosAvisoDevuelto]
/*
DEVUELVE LOS TÉCNICOS QUE HAYAN DEVUELTO EL AVISO QUE SE PASA COMO PARÁMETRO

*/
(
	@CLAVE_AVISO NVARCHAR(15)
)
AS

BEGIN
	SET NOCOUNT ON

	SELECT DISTINCT CLAVE_AVISO, TECNICO_AVISO, LANZAMIENTO_ACCION
	FROM BITSAT_AVISOS_ESTADOS WITH (NOLOCK)
	WHERE CLAVE_AVISO = @CLAVE_AVISO AND ACCION IN ('DEVUELTO', 'TRANSFERIDO', 'DEVOLUCION', 'TRANSFERENCIA') AND VALIDO = 1

	SET NOCOUNT OFF
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_TecnicoValoresSubjetivos]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_MTD_TecnicoValoresSubjetivos]
/*
DEVUELVE SI LA RUTA ESTÁ ACTIVADA

*/
(
	@CIA NVARCHAR(2),
	@TECNICOS nvarchar(350)
	
)
AS

BEGIN
	SET NOCOUNT ON

	--CREAMOS 1 TABLA TEMPORAL PARA LUEGO HACER JOIN CON ELLA Y FILTRAR LOS TÉCNICOS QUE SE PASAN POR PARÁMETRO.
	--CREAMOS LA TABLA TEMPORAL PARA LOS TÉCNICOS
	DECLARE @ListaTecnicos TABLE (IdTecnico NVARCHAR(15) PRIMARY KEY)
    DECLARE @StartPointer INT, @EndPointer INT
    SELECT @StartPointer = 1, @EndPointer = CHARINDEX(',', @TECNICOS)
    WHILE (@StartPointer < LEN(@TECNICOS) + 1)
    BEGIN
        IF @EndPointer = 0
            SET @EndPointer = LEN(@TECNICOS) + 1
        INSERT INTO @ListaTecnicos (IdTecnico)
        VALUES(LTRIM(RTRIM(SUBSTRING(@TECNICOS, @StartPointer,
                                     @EndPointer - @StartPointer))))
        SET @StartPointer = @EndPointer + 1
        SET @EndPointer = CHARINDEX(',', @TECNICOS, @StartPointer)
    END -- WHILE

	SELECT TVS.CodigoTecnico, VS.IDValorSubjetivo, VS.Descripcion, VS.Peso 
	FROM MTD_Tecnico_ValorSubjetivo TVS WITH (NOLOCK)
			INNER JOIN @ListaTecnicos T ON TVS.CodigoTecnico = T.IdTecnico
			INNER JOIN MTD_ValorSubjetivo VS WITH (NOLOCK) ON
				VS.CodigoCompañia = TVS.CodigoCompañia AND 
				VS.IDValorSubjetivo = TVS.IDValorSubjetivo
	WHERE TVS.CodigoCompañia = @CIA
	ORDER BY TVS.CodigoTecnico, VS.Peso DESC

	SET NOCOUNT OFF
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_TiempoDesplazamiento]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_MTD_TiempoDesplazamiento]
/*
DEVUELVE EL PESO DEL TIEMPO DE DESPALZAMIENTO

*/
AS

BEGIN
	SET NOCOUNT ON

	SELECT CodigoCompañia, IDClasificacionAviso, TiempoDesde, TiempoHasta, Peso
	FROM MTD_TiempoDesplazamiento WITH (NOLOCK)
	WHERE DISP = 1

	SET NOCOUNT OFF
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_TiempoObjetivoAviso_TipoAviso]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_MTD_TiempoObjetivoAviso_TipoAviso]
/*
DEVUELVE LAS VARIABLES DEFINIDAS PARA LA SELECCIÓN DEL MTD

*/
(
	@cia NVARCHAR(2),
	@loge NVARCHAR(8),
	@tipoAviso INT
	
)

AS

BEGIN
	SET NOCOUNT ON

	SELECT C.IDClasificaCionAviso, 
			C.Descripcion, 
			C.TiempoObjetivo, 
			CodigoCentro = ISNULL(T.CodigoCentro, '0'), 
			TiempoObjetivoCentro = ISNULL(T.TiempoObjetivo, 0)
	FROM MTD_ClasificacionAviso C WITH (NOLOCK) 
				LEFT JOIN MTD_TiempoObjetivoAvisoCentro T WITH (NOLOCK) ON
				C.CodigoCompañia = T.CodigoCompañia AND
				C.IDClasificacionAviso = T.IDClasificacionAviso
	WHERE C.DISP = 1 AND (T.DISP = 1 OR T.DISP IS NULL) AND 
			C.CodigoCompañia = @cia AND 
			(LEFT(T.CodigoCentro, 6) = LEFT(@loge, 6) OR T.CodigoCentro = '0') AND
			C.IDClasificacionAviso = @tipoAviso


	SET NOCOUNT OFF
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_UltimaActividadTecnico]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[SP_MTD_UltimaActividadTecnico]
/*
DEVUELVE LA ÚLTIMA ACTIVIDAD DE LOS TECNICOS QUE SE PASAN COMO PARÁMETRO
23/09/2021:	MODIFICO EL WHERE DEL FINAL COMENTANDO  AND FORMAT(A.FECHA_FIN, 'yyyyMMdd') = @fechaActividad, PARA QUE MUESTRE LAS ACTIVIDADES INI
*/
(
	@cia NVARCHAR(2),
	@loge NVARCHAR(100),
	@tecnicos NVARCHAR(500),
	@fechaActividad NVARCHAR(8) --"yyyyMMdd"
)
AS

BEGIN
	SET NOCOUNT ON

	--CREAMOS 2 TABLAS TEMPORALES PARA LUEGO HACER JOIN CON ELLAS Y FILTRAR LAS LOGES Y TÉCNICOS QUE SE PASAN POR PARÁMETRO.
	--CREAMOS LA TABLA TEMPORAL PARA LOS TÉCNICOS
	DECLARE @ListaTecnicos TABLE (IdTecnico NVARCHAR(15) PRIMARY KEY)
    DECLARE @StartPointer INT, @EndPointer INT
    SELECT @StartPointer = 1, @EndPointer = CHARINDEX(',', @tecnicos)
    WHILE (@StartPointer < LEN(@tecnicos) + 1)
    BEGIN
        IF @EndPointer = 0
            SET @EndPointer = LEN(@tecnicos) + 1
        INSERT INTO @ListaTecnicos (IdTecnico)
        VALUES(LTRIM(RTRIM(SUBSTRING(@tecnicos, @StartPointer,
                                     @EndPointer - @StartPointer))))
        SET @StartPointer = @EndPointer + 1
        SET @EndPointer = CHARINDEX(',', @tecnicos, @StartPointer)
    END -- WHILE

	--CREAMOS LA TABLA TEMPORL PARA LAS LOGES
	DECLARE @ListaLoges TABLE (IdLoge NVARCHAR(6) PRIMARY KEY)
    SELECT @StartPointer = 1, @EndPointer = CHARINDEX(',', @loge)
    WHILE (@StartPointer < LEN(@loge) + 1)
    BEGIN
        IF @EndPointer = 0
            SET @EndPointer = LEN(@loge) + 1
        INSERT INTO @ListaLoges (IdLoge)
        VALUES(LTRIM(RTRIM(SUBSTRING(@loge, @StartPointer,
                                     @EndPointer - @StartPointer))))
        SET @StartPointer = @EndPointer + 1
        SET @EndPointer = CHARINDEX(',', @loge, @StartPointer)
    END -- WHILE

	CREATE TABLE #HistoricoTecnico_tmp (ID BIGINT NOT NULL,
										CODIGO_COMPAÑIA NVARCHAR(2) NOT NULL, 
										CODIGO_CENTRO NVARCHAR(8) NOT NULL, 
										DRIVERNR NVARCHAR(15) NOT NULL
										PRIMARY KEY (ID, CODIGO_COMPAÑIA, CODIGO_CENTRO, DRIVERNR)
									 )
	
	INSERT INTO #HistoricoTecnico_tmp (ID, CODIGO_COMPAÑIA, CODIGO_CENTRO, DRIVERNR)
		SELECT DISTINCT  MAX(H1.ID), MAX(H1.CODIGO_COMPAÑIA), MAX(H1.CODIGO_CENTRO), H1.DRIVERNR
		FROM BITSAT_HISTORICO_TECNICO H1 WITH (NOLOCK)
				INNER JOIN @ListaLoges L ON LEFT(H1.CODIGO_CENTRO, 6) = L.IdLoge
				INNER JOIN @ListaTecnicos T ON H1.DRIVERNR = T.IdTecnico
		WHERE H1.CODIGO_COMPAÑIA = @cia AND H1.FECHA = @fechaActividad AND H1.TIPO_MENSAJE = 20
		GROUP BY H1.DRIVERNR
	--FIN CREACIÓN TABLAS TEMPORALES

	SELECT DISTINCT A.CODIGO_PDA
		   , CODIGO_COMPAÑIA = A.CODIGO_COMPAÑIA
		   , CODIGO_CENTRO = A.CODIGO_CENTRO
		   , CODIGO_USUARIO = A.CODIGO_USUARIO
		   , CODIGO_ACTIVIDAD = A.CODIGO_ACTIVIDAD
		   , CODIGO_UNIDAD = A.CODIGO_UNIDAD
		   , COMPAÑIA_ACTIVIDAD = A.COMPAÑIA_ACTIVIDAD
		   , CENTRO_ACTIVIDAD = A.CENTRO_ACTIVIDAD
		   , CODIGO_SUPERVISOR= A.CODIGO_SUPERVISOR
		   , CODIGO_IDENTIFICADOR = A.CODIGO_IDENTIFICADOR
		   , ESTADO = A.ESTADO
		   , AÑOMES = A.AÑOMES
		   , LONGITUD_H = ISNULL(H.LONGITUD, '')
		   , LATITUD_H = ISNULL(H.LATITUD, '')
		   , LONGITUD = A.LONGITUD
		   , LATITUD = A.LATITUD
		   , CODIGO_BARRAS_INICIO = CAST(ISNULL(A.CODIGO_BARRAS_INICIO, 0) AS char(1))
		   , FECHA_INICIO = A.FECHA_INICIO
		   , HORA_INICIO = A.HORA_INICIO
		   , FECHA_FIN_CB = A.FECHA_FIN_CB
		   , CODIGO_BARRAS_FIN = CAST(ISNULL(A.CODIGO_BARRAS_FIN, 0) AS char(1))
		   , FECHA_FIN = A.FECHA_FIN
		   , HORA_FIN = A.HORA_FIN
		   , SERVICIO_FIJO = CAST(ISNULL(A.SERVICIO_FIJO, 0) AS char(1))
		   , COMPENSABLE = CAST(ISNULL(A.COMPENSABLE, 0) AS char(1))
		   , FECHA_AVISO = A.FECHA_AVISO
		   , ID_AVISO = A.ID_AVISO
		   , MOTIVO_PAUSA = A.MOTIVO_PAUSA
		   , MOTIVO_IMPOSIBILIDAD_ACCESO = A.MOTIVO_IMPOSIBILIDAD_ACCESO
		   , ID_ACTIVIDAD_FIRMA = A.ID_ACTIVIDAD_FIRMA
		   , FECHA_HORA_IMPOSIBILIDAD = A.FECHA_HORA_IMPOSIBILIDAD
		   , CoordsVal = CAST(ISNULL(A.CoordsVal, 0) AS char(1))
		   , CODIGO_ORDENX = A.CODIGO_ORDENX
		   , TIPO_JORNADA = A.TIPO_JORNADA
		   , ID_ACTIVIDAD_VISITA = A.ID_ACTIVIDAD_VISITA
		   , FECHA_ENVIO_SEXPERTO = A.FECHA_ENVIO_SEXPERTO
		   , FECHA_ENVIO_PDF = A.FECHA_ENVIO_PDF
		   , TIEMPO_LLEGADA = AV.TIEMPO_LLEGADA
		   , DISTANCIA_UNIDAD = 100000 --VALOR INICIAL. LUEGO SE CALCULA
		   , MINUTOS_A_LA_UNIDAD = 100000 --VALOR INICIAL. LUEGO SE CALCULA
	FROM BITSAT_ACTIVIDAD A WITH (NOLOCK)
			INNER JOIN @ListaLoges L ON LEFT(A.CODIGO_CENTRO, 6) = L.IdLoge
			INNER JOIN @ListaTecnicos T ON A.CODIGO_PDA = T.IdTecnico
			INNER JOIN BITSAT_ACTIVIDAD_MTD AMTD  WITH (NOLOCK) ON 
				AMTD.CODIGO_PDA = A.CODIGO_PDA AND 
				AMTD.ID = A.ID
			LEFT JOIN BITSAT_AVISOS AV WITH (NOLOCK) ON 
				A.ID_AVISO = AV.CLAVE_AVISO												
			LEFT JOIN #HistoricoTecnico_tmp HTMP ON
				HTMP.DRIVERNR = A.CODIGO_PDA AND
				HTMP.CODIGO_COMPAÑIA = A.CODIGO_COMPAÑIA AND
				HTMP.CODIGO_CENTRO = A.CODIGO_CENTRO
			LEFT JOIN BITSAT_HISTORICO_TECNICO H WITH (NOLOCK) ON
				HTMP.ID = H.ID

	WHERE FORMAT(AMTD.FECHA_PROCESO, 'yyyyMMdd') = @fechaActividad AND A.CODIGO_COMPAÑIA = @cia -- AND FORMAT(A.FECHA_FIN, 'yyyyMMdd') = @fechaActividad

	SET NOCOUNT OFF
END

GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_UnidadGeolocalizacion]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_MTD_UnidadGeolocalizacion]
/*
DEVUELVE LOS DATOS DE LA UNIDAD Y SI LA RUTA ASOCIADA ESTÁ ACTIVADA PARA SELECCIÓN DE MTD

*/
(
	@cia NVARCHAR(2),
	@loge NVARCHAR(8),
	@unidad nvarchar(5)
	
)
AS

BEGIN
	SET NOCOUNT ON

	--SELECT CODIGO_UNIDAD, 
	--		LONGITUD = ISNULL(LATITUD, ''), 
	--		LATITUD = ISNULL(LONGITUD, ''),
	--		NIFCliente = Nif
	--FROM [dbo].[BITSAT_UNIDAD] WITH (NOLOCK) 
	--WHERE CODIGO_COMPAÑIA = @cia AND CODIGO_CENTRO = @loge AND CODIGO_UNIDAD = @unidad

	SELECT U.CODIGO_UNIDAD, 
			LONGITUD = ISNULL(U.LATITUD, ''), 
			LATITUD = ISNULL(U.LONGITUD, ''),
			NIFCliente = U.Nif,
			R.CODIGO_RUTA,
			ActivoMTD = CAST(ISNULL(R.ActivoMTD, 0) AS INT)
	FROM BITSAT_UNIDAD U WITH (NOLOCK) INNER JOIN
			BITSAT_RUTA R WITH (NOLOCK) ON 
				U.CODIGO_COMPAÑIA = R.CODIGO_COMPAÑIA AND 
				LEFT(U.CODIGO_CENTRO, 6) = R.CODIGO_CENTRO AND
				U.CODIGO_RUTA = R.CODIGO_RUTA
	WHERE U.CODIGO_COMPAÑIA = @cia AND LEFT(U.CODIGO_CENTRO, 6) = LEFT(@loge, 6) AND U.CODIGO_UNIDAD = @unidad AND R.DISP = 1


	SET NOCOUNT OFF
END


GO
/****** Object:  StoredProcedure [dbo].[SP_MTD_Variables]    Script Date: 28/10/2023 17:17:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_MTD_Variables]
/*
DEVUELVE LAS VARIABLES DEFINIDAS PARA LA SELECCIÓN DEL MTD

*/
(
	@cia NVARCHAR(2)

	
)

AS

BEGIN
	SET NOCOUNT ON

	SELECT V.IDVariable, V.Descripcion, VC.CodigoCompañia, CodigoCentro = LEFT(VC.CodigoCentro, 6), VC.Orden
	FROM MTD_Variables V WITH (NOLOCK)
					INNER JOIN MTD_VariablesPorCompañia VC WITH (NOLOCK) ON
					V.IDVariable = VC.IDVariable
	WHERE VC.DISP = 1 AND VC.CodigoCompañia = @cia
	ORDER BY VC.Orden

	SET NOCOUNT OFF
END

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Compañia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTAS_ENTREGA', @level2type=N'COLUMN',@level2name=N'CODIGO_COMPAÑIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Loge' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTAS_ENTREGA', @level2type=N'COLUMN',@level2name=N'CODIGO_ACTA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción / Titulo del Acta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTAS_ENTREGA', @level2type=N'COLUMN',@level2name=N'DESCRIPCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código Versión Acta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTAS_ENTREGA', @level2type=N'COLUMN',@level2name=N'VERSION_ACTA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción / Titulo del apartado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTAS_ENTREGA_APARTADOS', @level2type=N'COLUMN',@level2name=N'DESCRIPCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Orden de Presentación del apartado dentro del acta' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTAS_ENTREGA_APARTADOS', @level2type=N'COLUMN',@level2name=N'NUMERO_ORDEN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTAS_ENTREGA_VERIFICACIONES', @level2type=N'COLUMN',@level2name=N'CODIGO_VERIFICACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción / Titulo de la verificación' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTAS_ENTREGA_VERIFICACIONES', @level2type=N'COLUMN',@level2name=N'DESCRIPCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Orden de Presentación de la verificación dentro del apartado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTAS_ENTREGA_VERIFICACIONES', @level2type=N'COLUMN',@level2name=N'NUMERO_ORDEN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Texto, Numérico, Decimal, Lógico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTAS_ENTREGA_VERIFICACIONES', @level2type=N'COLUMN',@level2name=N'TIPO_RESPUESTA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicador de Comprobación de valores' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTAS_ENTREGA_VERIFICACIONES', @level2type=N'COLUMN',@level2name=N'COMPROBAR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicador de Respuesta Obligatoria (No permite respuesta "NO APLICA")' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTAS_ENTREGA_VERIFICACIONES', @level2type=N'COLUMN',@level2name=N'OBLIGATORIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de PDA donde se realiza la actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'CODIGO_PDA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'identificador de actividad univoco en la PDA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de Tecnico que realiza la actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'CODIGO_USUARIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de Actividad (Inspeccion, Aviso, Reparacion, Montaje, Absentismo, Pausa, etc.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'CODIGO_ACTIVIDAD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'ESTADO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Longitud (X) capturada al inicio de la actividad (en su defecto la más proxima)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'LONGITUD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Latitud (Y) capturada al inicio de la actividad (en su defecto la más proxima)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'LATITUD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha Inicio Actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'FECHA_INICIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora Inicio Actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'HORA_INICIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha Fin actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'FECHA_FIN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hora fin actividad ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'HORA_FIN'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora de recepción del SMS que desencadena la actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'FECHA_AVISO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID del SMS que desencadena la actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'ID_AVISO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indica que se ha validado el cambio de coordenadas con su unidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD', @level2type=N'COLUMN',@level2name=N'CoordsVal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de PDA donde se realiza la actividad del aviso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_AVISO', @level2type=N'COLUMN',@level2name=N'CODIGO_PDA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID de la actividad en la PDA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_AVISO', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de la Unidad donde se realiza el aviso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_AVISO', @level2type=N'COLUMN',@level2name=N'CODIGO_UNIDAD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código de Cargo Labor del aviso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_AVISO', @level2type=N'COLUMN',@level2name=N'CARGO_LABOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de Aviso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_AVISO', @level2type=N'COLUMN',@level2name=N'TIPO_AVISO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicador de Facturable' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_AVISO', @level2type=N'COLUMN',@level2name=N'FACTURABLE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción de la avería realizada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_AVISO', @level2type=N'COLUMN',@level2name=N'DESCRIPCION_AVERIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sugerencias realizadas al inspector' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_AVISO', @level2type=N'COLUMN',@level2name=N'SUGERENCIAS_INSPECTOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de la PDA ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_FIRMA', @level2type=N'COLUMN',@level2name=N'CODIGO_PDA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_FIRMA', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicador de Imposibilidad firma' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_FIRMA', @level2type=N'COLUMN',@level2name=N'IMPOSIBILIDAD_FIRMA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del Firmante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_FIRMA', @level2type=N'COLUMN',@level2name=N'NOMBRE_FIRMANTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Piso / Complemento dirección del firmante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_FIRMA', @level2type=N'COLUMN',@level2name=N'PISO_FIRMANTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefono firmante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_FIRMA', @level2type=N'COLUMN',@level2name=N'TELEFONO_FIRMANTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo Calidad del Firmante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_FIRMA', @level2type=N'COLUMN',@level2name=N'CALIDAD_FIRMANTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Dirección de correo electronico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_FIRMA', @level2type=N'COLUMN',@level2name=N'DIRECCION_CORREO_ELECTRONICO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Firma Capturada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_FIRMA', @level2type=N'COLUMN',@level2name=N'FIRMA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicador de enviar mail al firmante' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_FIRMA', @level2type=N'COLUMN',@level2name=N'ENVIAR_MAIL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de PDA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_GASTO', @level2type=N'COLUMN',@level2name=N'CODIGO_PDA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de Actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_GASTO', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora de la captura del gasto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_GASTO', @level2type=N'COLUMN',@level2name=N'FECHA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de Gasto' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_GASTO', @level2type=N'COLUMN',@level2name=N'CODIGO_GASTO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Importe Capturado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_GASTO', @level2type=N'COLUMN',@level2name=N'IMPORTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kilometraje asociado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_GASTO', @level2type=N'COLUMN',@level2name=N'KM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de PDA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_INSPECCION', @level2type=N'COLUMN',@level2name=N'CODIGO_PDA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de Actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_INSPECCION', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora Prevista Inspeccion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_INSPECCION', @level2type=N'COLUMN',@level2name=N'FECHA_PREVISTA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de Inspeccion realizada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_INSPECCION', @level2type=N'COLUMN',@level2name=N'TIPO_INSPECCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observaciones Tecnico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_INSPECCION', @level2type=N'COLUMN',@level2name=N'OBSERVACIONES_TECNICO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Otras observaciones' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_INSPECCION', @level2type=N'COLUMN',@level2name=N'OBSERVACIONES_OTROS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de Grado de Satisfacción' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_INSPECCION', @level2type=N'COLUMN',@level2name=N'GRADO_SATISFACCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observaciones Cliente' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_INSPECCION', @level2type=N'COLUMN',@level2name=N'OBSERVACIONES_CLIENTE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora Captura Material' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_MATERIAL', @level2type=N'COLUMN',@level2name=N'FECHA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'CODIGO de Material capturado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_MATERIAL', @level2type=N'COLUMN',@level2name=N'MATERIAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Cantidad Capturada' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_MATERIAL', @level2type=N'COLUMN',@level2name=N'CANTIDAD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Código de PDA' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_TIEMPO', @level2type=N'COLUMN',@level2name=N'CODIGO_PDA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la Actividad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_TIEMPO', @level2type=N'COLUMN',@level2name=N'ID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora Inicio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_TIEMPO', @level2type=N'COLUMN',@level2name=N'TIME_INI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha y Hora de Fin' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_ACTIVIDAD_TIEMPO', @level2type=N'COLUMN',@level2name=N'TIME_END'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo univoco del aviso generado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'CLAVE_AVISO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de la compañia a la que se acsocia el aviso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'CODIGO_COMPAÑIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de  Loge a la que se acsocia el aviso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'CODIGO_CENTRO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tecnico Asignado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'CODIGO_TECNICO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Recepción del AVISO' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'FECHA_RECEPCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del Aviso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'ESTADO_AVISO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contrato' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'CONTRATO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de Servicio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'TIPO_SERVICIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unidad es Elice?' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'ELITE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de Unidad para la que se genera el aviso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'UNIDAD'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de Aparato (ASC, etc.)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'APARATO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Situación del Aparato' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'SITUACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ruta de la Unidad' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'RUTA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo Via (Direccion)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'TIPO_VIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre de la Calle ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'DIRECCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numero de la Calle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'NUMERO1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripción del Edificio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'EDIFICIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Distrito postal (concatenar provincia)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'DISTRITO_POSTAL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ayuda para la ubicación de la dirección' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'DIRECCION_AYUDA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Descripcion de la Averia' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'DESCRIPCION_AVERIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado del Ascensor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'ESTADO_ASCENSOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del interlocutor que genera el aviso.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'LLAMADOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Telefono del interlocutor' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'TELEFONO_LLAMADOR'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Observaciones' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'OBSERVACIONES'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de Asignación al técnico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'FECHA_ASIGNACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Estado Interno del Aviso para  sistema BitSat' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'ESTADO_AVISO_BITSAT'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha Hora Llegada Técnico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'FECHA_HORA_LLEGADA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'FEcha Hora Salida Técncio' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'FECHA_HORA_SALIDA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicador Unidad OTIS' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'UNIDAD_OTIS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unidad Real Cierre del Aviso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'UNIDAD_CIERRE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tecnico Real Cierre del Aviso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'TECNICO_CIERRE'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Codigo de Avería Imputado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'CODIGO_AVERIA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tipo de Aviso Imputado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'TIPO_AVISO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicador de Facturación Seleccionado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'INDICADOR_FACTURACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicadopr de envio realizado a Técnico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'ENVIADO_OP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha Real de Envio a Técnico' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'FECHA_ENVIO_OP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicador de realizar envio a 24h' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'ENVIAR_24h'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha Real de Envio a 24h' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'FECHA_ENVIO_24h'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del Fichero de Envio Generado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS', @level2type=N'COLUMN',@level2name=N'FICHERO_ENVIO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Clave del Aviso ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS_ESTADOS', @level2type=N'COLUMN',@level2name=N'CLAVE_AVISO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Acción que se realiza sobre el aviso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS_ESTADOS', @level2type=N'COLUMN',@level2name=N'ACCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Persona que realizar ela acción' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS_ESTADOS', @level2type=N'COLUMN',@level2name=N'LANZAMIENTO_ACCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha Hora Acción' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS_ESTADOS', @level2type=N'COLUMN',@level2name=N'FECHA_HORA_ACCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Motivo Acción' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS_ESTADOS', @level2type=N'COLUMN',@level2name=N'MOTIVO_ACCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tecnico Transferencia del Aviso' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS_ESTADOS', @level2type=N'COLUMN',@level2name=N'TECNICO_TRANSFER'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicador de Estado modificado por 24h o BitSat' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_AVISOS_ESTADOS', @level2type=N'COLUMN',@level2name=N'ind24h'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Registro de movimientos de las Hojas de Tiempo' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_REGISTRO_HOJA_TIEMPOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relacion entre las cabeceras de las hojas de tiempos y los movimientos
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BITSAT_REGISTRO_HOJA_TIEMPOS', @level2type=N'CONSTRAINT',@level2name=N'FK_BITSAT_REGISTRO_HOJA_TIEMPOS_BITSAT_HOJA_TIEMPOS_CABECERA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[85] 4[4] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -576
         Left = 0
      End
      Begin Tables = 
         Begin Table = "act"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 287
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tec"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tact"
            Begin Extent = 
               Top = 6
               Left = 325
               Bottom = 99
               Right = 476
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "uni"
            Begin Extent = 
               Top = 114
               Left = 257
               Bottom = 222
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pro"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pbl"
            Begin Extent = 
               Top = 222
               Left = 259
               Bottom = 330
               Right = 444
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "test"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 423
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_DETALLE_AVISO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         End
         Begin Table = "com"
            Begin Extent = 
               Top = 330
               Left = 227
               Bottom = 438
               Right = 408
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cen"
            Begin Extent = 
               Top = 426
               Left = 38
               Bottom = 534
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sup"
            Begin Extent = 
               Top = 438
               Left = 257
               Bottom = 546
               Right = 438
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ident"
            Begin Extent = 
               Top = 534
               Left = 38
               Bottom = 627
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "fir"
            Begin Extent = 
               Top = 630
               Left = 38
               Bottom = 738
               Right = 301
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cal"
            Begin Extent = 
               Top = 738
               Left = 38
               Bottom = 831
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "avi"
            Begin Extent = 
               Top = 587
               Left = 562
               Bottom = 1002
               Right = 789
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "mav"
            Begin Extent = 
               Top = 846
               Left = 38
               Bottom = 954
               Right = 255
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "aest"
            Begin Extent = 
               Top = 954
               Left = 38
               Bottom = 1062
               Right = 228
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tavi"
            Begin Extent = 
               Top = 846
               Left = 293
               Bottom = 954
               Right = 444
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "estasc"
            Begin Extent = 
               Top = 954
               Left = 266
               Bottom = 1062
               Right = 433
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_DETALLE_AVISO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_DETALLE_AVISO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[86] 4[4] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -384
         Left = 0
      End
      Begin Tables = 
         Begin Table = "act"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 287
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tec"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tact"
            Begin Extent = 
               Top = 6
               Left = 325
               Bottom = 99
               Right = 476
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "uni"
            Begin Extent = 
               Top = 114
               Left = 257
               Bottom = 222
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pro"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pbl"
            Begin Extent = 
               Top = 222
               Left = 259
               Bottom = 330
               Right = 444
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "test"
            Begin Extent = 
               Top = 330
               Left = 38
               Bottom = 423
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_DETALLE_INSPECCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         End
         Begin Table = "com"
            Begin Extent = 
               Top = 330
               Left = 227
               Bottom = 438
               Right = 408
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cen"
            Begin Extent = 
               Top = 426
               Left = 38
               Bottom = 534
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "sup"
            Begin Extent = 
               Top = 438
               Left = 257
               Bottom = 546
               Right = 438
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ident"
            Begin Extent = 
               Top = 534
               Left = 38
               Bottom = 627
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "fir"
            Begin Extent = 
               Top = 630
               Left = 38
               Bottom = 738
               Right = 301
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "cal"
            Begin Extent = 
               Top = 738
               Left = 38
               Bottom = 831
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ins"
            Begin Extent = 
               Top = 421
               Left = 551
               Bottom = 834
               Right = 778
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "apa"
            Begin Extent = 
               Top = 834
               Left = 38
               Bottom = 927
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tins"
            Begin Extent = 
               Top = 846
               Left = 227
               Bottom = 954
               Right = 444
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "gra"
            Begin Extent = 
               Top = 954
               Left = 38
               Bottom = 1062
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_DETALLE_INSPECCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_DETALLE_INSPECCION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "BITSAT_HISTORICO_TECNICO"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 260
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 14
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_HISTORICO_TECNICO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_HISTORICO_TECNICO'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[85] 4[4] 2[4] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -384
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 287
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "co"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ce"
            Begin Extent = 
               Top = 114
               Left = 257
               Bottom = 222
               Right = 438
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "u"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "av"
            Begin Extent = 
               Top = 324
               Left = 557
               Bottom = 757
               Right = 784
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "un"
            Begin Extent = 
               Top = 222
               Left = 257
               Bottom = 330
               Right = 474
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "f"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 301
            End
            DisplayFlags = 280
            TopColumn = 0
        ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_INFORME_SERVICIO_AVISOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' End
         Begin Table = "cal"
            Begin Extent = 
               Top = 6
               Left = 325
               Bottom = 99
               Right = 476
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pr"
            Begin Extent = 
               Top = 546
               Left = 38
               Bottom = 654
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pbl"
            Begin Extent = 
               Top = 546
               Left = 259
               Bottom = 654
               Right = 444
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "codav"
            Begin Extent = 
               Top = 330
               Left = 303
               Bottom = 423
               Right = 465
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_INFORME_SERVICIO_AVISOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_INFORME_SERVICIO_AVISOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[37] 4[4] 2[52] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -288
         Left = 0
      End
      Begin Tables = 
         Begin Table = "a"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 287
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "co"
            Begin Extent = 
               Top = 114
               Left = 38
               Bottom = 222
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ce"
            Begin Extent = 
               Top = 114
               Left = 257
               Bottom = 222
               Right = 438
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "u"
            Begin Extent = 
               Top = 222
               Left = 38
               Bottom = 330
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "av"
            Begin Extent = 
               Top = 291
               Left = 573
               Bottom = 490
               Right = 800
            End
            DisplayFlags = 280
            TopColumn = 4
         End
         Begin Table = "un"
            Begin Extent = 
               Top = 222
               Left = 257
               Bottom = 330
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "f"
            Begin Extent = 
               Top = 438
               Left = 38
               Bottom = 546
               Right = 301
            End
            DisplayFlags = 280
            TopColumn = 0
       ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_INFORME_SERVICIO_REPARACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  End
         Begin Table = "cal"
            Begin Extent = 
               Top = 6
               Left = 325
               Bottom = 99
               Right = 476
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pr"
            Begin Extent = 
               Top = 546
               Left = 38
               Bottom = 654
               Right = 221
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "pbl"
            Begin Extent = 
               Top = 546
               Left = 259
               Bottom = 654
               Right = 444
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "codav"
            Begin Extent = 
               Top = 330
               Left = 303
               Bottom = 423
               Right = 465
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "g"
            Begin Extent = 
               Top = 654
               Left = 38
               Bottom = 762
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_INFORME_SERVICIO_REPARACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_INFORME_SERVICIO_REPARACION'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[13] 2[27] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "p"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 80
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "d"
            Begin Extent = 
               Top = 6
               Left = 252
               Bottom = 80
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "tec"
            Begin Extent = 
               Top = 84
               Left = 38
               Bottom = 203
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "v"
            Begin Extent = 
               Top = 84
               Left = 252
               Bottom = 203
               Right = 458
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 11
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_UBICACION_TECNICOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'= 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_UBICACION_TECNICOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'V_W_UBICACION_TECNICOS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "V_W_CENTROS"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 210
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vvGlobalBitsatCentros'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vvGlobalBitsatCentros'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "cia"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 219
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vvGlobalBitsatCompanyia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vvGlobalBitsatCompanyia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "V_W_RECORRIDO_TECNICOS"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 200
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vvGlobalRecorridoTecnicos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vvGlobalRecorridoTecnicos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "V_W_DETALLE_INSPECCION"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 260
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vvStrMapsViewDetalleInspeccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vvStrMapsViewDetalleInspeccion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[20] 4[15] 2[33] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 2160
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1995
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vvStrMapsViewUbicacionTecnicos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vvStrMapsViewUbicacionTecnicos'
GO
