USE [DBAVISOS]
GO
/****** Object:  Table [dbo].[LH_ContadorAccesos]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_ContadorAccesos](
	[IdContadorAccesos] [int] IDENTITY(1,1) NOT NULL,
	[Usuario] [nvarchar](100) NOT NULL,
	[FechaHoraAcceso] [datetime] NOT NULL,
	[Observaciones] [nvarchar](250) NULL,
	[EntornoEjecucion] [nvarchar](100) NULL,
 CONSTRAINT [PK_LH_ContadorAccesos] PRIMARY KEY CLUSTERED 
(
	[IdContadorAccesos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsAB_AVGCBsClosedDayPrevWeeks]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsAB_AVGCBsClosedDayPrevWeeks](
	[IdKPIsAB_AVGCBsClosedDayPrevWeeks] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsActionBoardTecnico] [int] NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[Valor] [decimal](9, 2) NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PKPIsAB_AVGInspectionClosedCBsDayPrevWeeks] PRIMARY KEY CLUSTERED 
(
	[IdKPIsAB_AVGCBsClosedDayPrevWeeks] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsAB_AVGInspectionClosedDayPrevWeeks]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsAB_AVGInspectionClosedDayPrevWeeks](
	[IdKPIsAB_AVGInspectionClosedDayPrevWeeks] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsActionBoardTecnico] [int] NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[Valor] [decimal](9, 2) NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsAB_AVGInspectionClosedDayPrevWeeks] PRIMARY KEY CLUSTERED 
(
	[IdKPIsAB_AVGInspectionClosedDayPrevWeeks] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsAB_AVGT2CBPreviousWeeks]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsAB_AVGT2CBPreviousWeeks](
	[IdKPIsAB_AVGT2CBPreviousWeeks] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsActionBoardTecnico] [int] NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[Valor] [decimal](9, 2) NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsAB_AVGT2CBPreviousWeeks] PRIMARY KEY CLUSTERED 
(
	[IdKPIsAB_AVGT2CBPreviousWeeks] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsAB_DispatchingTypeMechanicCurrentWeek]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsAB_DispatchingTypeMechanicCurrentWeek](
	[IdKPIsAB_DispatchingTypeMechanicCurrentWeek] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[CBDispatchingTypeMechanic_Monday] [decimal](9, 2) NULL,
	[CBDispatchingTypeMechanic_Tuesday] [decimal](9, 2) NULL,
	[CBDispatchingTypeMechanic_Wednesday] [decimal](9, 2) NULL,
	[CBDispatchingTypeMechanic_Thrusday] [decimal](9, 2) NULL,
	[CBDispatchingTypeMechanic_Friday] [decimal](9, 2) NULL,
	[CBdoneByCB_Mech_Monday] [decimal](9, 2) NULL,
	[CBdoneByCB_Mech_Tuesday] [decimal](9, 2) NULL,
	[CBdoneByCB_Mech_Wednesday] [decimal](9, 2) NULL,
	[CBdoneByCB_Mech_Thrusday] [decimal](9, 2) NULL,
	[CBdoneByCB_Mech_Friday] [decimal](9, 2) NULL,
	[CBdoneByCB_BackUp_Monday] [decimal](9, 2) NULL,
	[CBdoneByCB_BackUp_Tuesday] [decimal](9, 2) NULL,
	[CBdoneByCB_BackUp_Wednesday] [decimal](9, 2) NULL,
	[CBdoneByCB_BackUp_Thrusday] [decimal](9, 2) NULL,
	[CBdoneByCB_BackUp_Friday] [decimal](9, 2) NULL,
	[CBdoneByCB_Generalist_Monday] [decimal](9, 2) NULL,
	[CBdoneByCB_Generalist_Tuesday] [decimal](9, 2) NULL,
	[CBdoneByCB_Generalist_Wednesday] [decimal](9, 2) NULL,
	[CBdoneByCB_Generalist_Thrusday] [decimal](9, 2) NULL,
	[CBdoneByCB_Generalist_Friday] [decimal](9, 2) NULL,
	[CBdoneByCB_PM_Monday] [decimal](9, 2) NULL,
	[CBdoneByCB_PM_Tuesday] [decimal](9, 2) NULL,
	[CBdoneByCB_PM_Wednesday] [decimal](9, 2) NULL,
	[CBdoneByCB_PM_Thrusday] [decimal](9, 2) NULL,
	[CBdoneByCB_PM_Friday] [decimal](9, 2) NULL,
	[InspectionsCompletionTypeMechanic_Monday] [decimal](9, 2) NULL,
	[InspectionsCompletionTypeMechanic_Tuesday] [decimal](9, 2) NULL,
	[InspectionsCompletionTypeMechanic_Wednesday] [decimal](9, 2) NULL,
	[InspectionsCompletionTypeMechanic_Thrusday] [decimal](9, 2) NULL,
	[InspectionsCompletionTypeMechanic_Friday] [decimal](9, 2) NULL,
	[InspecDoneBy_PM_Monday] [decimal](9, 2) NULL,
	[InspecDoneBy_PM_Tuesday] [decimal](9, 2) NULL,
	[InspecDoneBy_PM_Wednesday] [decimal](9, 2) NULL,
	[InspecDoneBy_PM_Thrusday] [decimal](9, 2) NULL,
	[InspecDoneBy_PM_Friday] [decimal](9, 2) NULL,
	[InspecDoneBy_Generalist_Monday] [decimal](9, 2) NULL,
	[InspecDoneBy_Generalist_Tuesday] [decimal](9, 2) NULL,
	[InspecDoneBy_Generalist_Wednesday] [decimal](9, 2) NULL,
	[InspecDoneBy_Generalist_Thrusday] [decimal](9, 2) NULL,
	[InspecDoneBy_Generalist_Friday] [decimal](9, 2) NULL,
	[InspecDoneBy_BackUp_Monday] [decimal](9, 2) NULL,
	[InspecDoneBy_BackUp_Tuesday] [decimal](9, 2) NULL,
	[InspecDoneBy_BackUp_Wednesday] [decimal](9, 2) NULL,
	[InspecDoneBy_BackUp_Thrusday] [decimal](9, 2) NULL,
	[InspecDoneBy_BackUp_Friday] [decimal](9, 2) NULL,
	[InspecDoneBy_Mech_Monday] [decimal](9, 2) NULL,
	[InspecDoneBy_Mech_Tuesday] [decimal](9, 2) NULL,
	[InspecDoneBy_Mech_Wednesday] [decimal](9, 2) NULL,
	[InspecDoneBy_Mech_Thrusday] [decimal](9, 2) NULL,
	[InspecDoneBy_Mech_Friday] [decimal](9, 2) NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsAB_DispatchingTypeMechanicCurrentWeek] PRIMARY KEY CLUSTERED 
(
	[IdKPIsAB_DispatchingTypeMechanicCurrentWeek] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsAB_DispatchingTypeMechanicPrevWeeks]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsAB_DispatchingTypeMechanicPrevWeeks](
	[IdKPIsAB_DispatchingTypeMechanicPrevWeeks] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[CBDistPatchingTypeMechanic_CW_Monday] [decimal](9, 2) NULL,
	[CBDistPatchingTypeMechanic_CW_Tuesday] [decimal](9, 2) NULL,
	[CBDistPatchingTypeMechanic_CW_Wednesday] [decimal](9, 2) NULL,
	[CBDistPatchingTypeMechanic_CW_Thrusday] [decimal](9, 2) NULL,
	[CBDistPatchingTypeMechanic_CW_Friday] [decimal](9, 2) NULL,
	[CBdoneByCB_Mech_Monday] [decimal](9, 2) NULL,
	[CBdoneByCB_Mech_Tuesday] [decimal](9, 2) NULL,
	[CBdoneByCB_Mech_Wednesday] [decimal](9, 2) NULL,
	[CBdoneByCB_Mech_Thrusday] [decimal](9, 2) NULL,
	[CBdoneByCB_Mech_Friday] [decimal](9, 2) NULL,
	[CBdoneByCB_BackUp_Monday] [decimal](9, 2) NULL,
	[CBdoneByCB_BackUp_Tuesday] [decimal](9, 2) NULL,
	[CBdoneByCB_BackUp_Wednesday] [decimal](9, 2) NULL,
	[CBdoneByCB_BackUp_Thrusday] [decimal](9, 2) NULL,
	[CBdoneByCB_BackUp_Friday] [decimal](9, 2) NULL,
	[CBdoneByCB_Generalist_Monday] [decimal](9, 2) NULL,
	[CBdoneByCB_Generalist_Tuesday] [decimal](9, 2) NULL,
	[CBdoneByCB_Generalist_Wednesday] [decimal](9, 2) NULL,
	[CBdoneByCB_Generalist_Thrusday] [decimal](9, 2) NULL,
	[CBdoneByCB_Generalist_Friday] [decimal](9, 2) NULL,
	[CBdoneByCB_PM_Monday] [decimal](9, 2) NULL,
	[CBdoneByCB_PM_Tuesday] [decimal](9, 2) NULL,
	[CBdoneByCB_PM_Wednesday] [decimal](9, 2) NULL,
	[CBdoneByCB_PM_Thrusday] [decimal](9, 2) NULL,
	[CBdoneByCB_PM_Friday] [decimal](9, 2) NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsAB_DispatchingTypeMechanicPrevWeeks] PRIMARY KEY CLUSTERED 
(
	[IdKPIsAB_DispatchingTypeMechanicPrevWeeks] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsAB_PromedioDispatchingTypeMechanicPrevWeeks]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsAB_PromedioDispatchingTypeMechanicPrevWeeks](
	[IdKPIsAB_PromedioDispatchingTypeMechanicPrevWeeks] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[PromedioCBDistPatchingTypeMechanic_Monday] [decimal](9, 2) NULL,
	[PromedioCBDistPatchingTypeMechanic_Tuesday] [decimal](9, 2) NULL,
	[PromedioCBDistPatchingTypeMechanic_Wednesday] [decimal](9, 2) NULL,
	[PromedioCBDistPatchingTypeMechanic_Thrusday] [decimal](9, 2) NULL,
	[PromedioCBDistPatchingTypeMechanic_Friday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_Mech_PW_Monday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_Mech_PW_Tuesday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_Mech_PW_Wednesday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_Mech_PW_Thrusday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_Mech_PW_Friday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_BackUp_PW_Monday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_BackUp_PW_Tuesday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_BackUp_PW_Wednesday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_BackUp_PW_Thrusday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_BackUp_PW_Friday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_Generalist_PW_Monday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_Generalist_PW_Tuesday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_Generalist_PW_Wednesday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_Generalist_PW_Thrusday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_Generalist_PW_Friday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_PM_PW_Monday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_PM_PW_Tuesday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_PM_PW_Wednesday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_PM_PW_Thrusday] [decimal](9, 2) NULL,
	[PromedioCBdoneByCB_PM_PW_Friday] [decimal](9, 2) NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsAB_PromedioDispatchingTypeMechanicPrevWeeks] PRIMARY KEY CLUSTERED 
(
	[IdKPIsAB_PromedioDispatchingTypeMechanicPrevWeeks] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsActionBoardTecnico]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsActionBoardTecnico](
	[IdKPIsActionBoardTecnico] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[IdTecnico] [nvarchar](10) NOT NULL,
	[Funcion] [nvarchar](15) NULL,
	[Horas_O_Semana] [decimal](9, 2) NULL,
	[Horas_T_Semana] [decimal](9, 2) NULL,
	[Horas_No_OT_Semana] [decimal](9, 2) NULL,
	[Horas_Improductivas_Semana] [decimal](9, 2) NULL,
	[Horas_Conpensadas_Semana] [decimal](9, 2) NULL,
	[Horas_Vacaciones_Semana] [decimal](9, 2) NULL,
	[Horas_Totales_Semana] [decimal](9, 2) NULL,
	[NumSemanasPrevias] [int] NOT NULL,
	[AverageInspectionsClosed_CurrentWeek_Temporal] [decimal](9, 2) NULL,
	[PromedioAverageInspectionsClosed_CurrentWeek] [decimal](9, 2) NULL,
	[PromedioAverageInspectionsClosed_PreviousWeek] [decimal](9, 2) NULL,
	[PromedioAverageCBsClosed_CurrentWeek] [decimal](9, 2) NULL,
	[PromedioAverageCBsClosed_PreviousWeeks] [decimal](9, 2) NULL,
	[PromedioAverageT2CB_CurrentWeek] [decimal](9, 2) NULL,
	[PromedioAverageT2CB_PreviousWeeks] [decimal](9, 2) NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsActionBoardTecnico] PRIMARY KEY CLUSTERED 
(
	[IdKPIsActionBoardTecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsBaseLineManual]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsBaseLineManual](
	[IdKPIsBaseLineManual] [int] IDENTITY(1,1) NOT NULL,
	[CIA] [int] NOT NULL,
	[Loge] [nvarchar](8) NOT NULL,
	[Semana] [int] NOT NULL,
	[Año] [int] NOT NULL,
	[InspeccionesCompletadasSemana] [decimal](9, 2) NULL,
	[InspeccionesCompletadasMesesAnteriores] [decimal](9, 2) NULL,
	[HorasTPlaneadas] [decimal](9, 2) NULL,
	[TBacklog] [decimal](9, 2) NULL,
	[InteraccionesCompletadas] [decimal](9, 2) NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsBaseLineManual] PRIMARY KEY CLUSTERED 
(
	[IdKPIsBaseLineManual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsDashBoardSemanas]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsDashBoardSemanas](
	[IdKPIsDashBoardSemanas] [int] IDENTITY(1,1) NOT NULL,
	[CIA] [int] NOT NULL,
	[Loge] [nvarchar](8) NOT NULL,
	[Año] [int] NOT NULL,
	[Mes] [int] NOT NULL,
	[Semana] [int] NOT NULL,
	[SoyBaseLine] [bit] NOT NULL,
	[SoyTotalMes] [int] NOT NULL,
	[SoyTotalBaseLine] [int] NOT NULL,
	[Visualizar] [bit] NOT NULL,
	[OrdenVisualizacion] [int] NOT NULL,
	[InspeccionesHora_O] [decimal](9, 2) NULL,
	[TiempoMedioInspeccion] [decimal](9, 2) NULL,
	[InspeccionesRealizadasSemanaIncluyePteFirma] [decimal](9, 2) NULL,
	[InspeccionesCompletadasEnSemana] [decimal](9, 2) NULL,
	[Horas_O_DedicadasSemana] [decimal](9, 2) NULL,
	[Utilizacion] [decimal](9, 2) NULL,
	[TotalHorasProductivas] [decimal](9, 2) NULL,
	[HorasNo_T_ni_O] [decimal](9, 2) NULL,
	[PorcentajeHoras_S_SobreTotalHorasProductivas] [decimal](9, 2) NULL,
	[Horas_T] [decimal](9, 2) NULL,
	[PorcentajeHoras_T_SobreTotalHorasProductivas] [decimal](9, 2) NULL,
	[HorasAvisos] [decimal](9, 2) NULL,
	[PorcentajeHorasAvisosSobreTotalHorasProductivas] [decimal](9, 2) NULL,
	[HorasInspecciones] [decimal](9, 2) NULL,
	[PorcentajeHorasInspeccionesSobreTotalHorasProductivas] [decimal](9, 2) NULL,
	[HorasReparaciones] [decimal](9, 2) NULL,
	[PorcentajeHorasReparacionesSobreTotalHorasProductivas] [decimal](9, 2) NULL,
	[HorasImproductivas] [decimal](9, 2) NULL,
	[HorasDisponiles] [decimal](9, 2) NULL,
	[HorasDisponilesFTE] [decimal](9, 2) NULL,
	[TecnicosTrabajandoEnSemana] [decimal](9, 2) NULL,
	[PorcentajeInspeccionesRealizadasVsPlanificadas] [decimal](9, 2) NULL,
	[PorcentajeInspeccionesRealizadasVsPlanificadasMesActual] [decimal](9, 2) NULL,
	[PorcentajeInspeccionesRealizadasVsPlanificadasMesesAnteriores] [decimal](9, 2) NULL,
	[ObjetivoInspecciones] [decimal](9, 2) NULL,
	[ObjetivoInspeccionesCompletadasSemanaMesActual] [decimal](9, 2) NULL,
	[ObjetivoInspeccionesCompletadasSemanaMesesAnteriores] [decimal](9, 2) NULL,
	[ObjetivoInspeccionesCompletadasEnSemana] [decimal](9, 2) NULL,
	[PorcentajeCoachingCompletadas] [decimal](9, 2) NULL,
	[CoachingHorasCompletadas] [decimal](9, 2) NULL,
	[CoachingHorasPlanificadas] [decimal](9, 2) NULL,
	[PorcentajeCBsCerradasSobreRecibidasDia] [decimal](9, 2) NULL,
	[CBsCerradasPorDia] [decimal](9, 2) NULL,
	[AvisosRecibidosSemana] [decimal](9, 2) NULL,
	[CallBacksAtendidosPorTipoAveria] [decimal](9, 2) NULL,
	[AvisosRealizadosTecnicoCB] [decimal](9, 2) NULL,
	[AvisosRealizadosTecnicoBackUp] [decimal](9, 2) NULL,
	[AvisosRealizadosTecnicoPM] [decimal](9, 2) NULL,
	[AvisosRealizadosTecnicoGeneralist] [decimal](9, 2) NULL,
	[PorcentajeTasaCorreccionPrimeraVez] [decimal](9, 2) NULL,
	[PorcentajeTasaCorreccionRestrictiva] [decimal](9, 2) NULL,
	[PromedioT1] [decimal](9, 2) NULL,
	[T1AtrapadosEmergencias] [decimal](9, 2) NULL,
	[T1ParapadosCM] [decimal](9, 2) NULL,
	[T1AvisosMenores] [decimal](9, 2) NULL,
	[PromedioT2] [decimal](9, 2) NULL,
	[T2AtrapadosEmergencias] [decimal](9, 2) NULL,
	[T2ParapadosCM] [decimal](9, 2) NULL,
	[T2AvisosMenores] [decimal](9, 2) NULL,
	[PromedioT3] [decimal](9, 2) NULL,
	[T3AtrapadosEmergencias] [decimal](9, 2) NULL,
	[T3ParapadosCM] [decimal](9, 2) NULL,
	[T3AvisosMenores] [decimal](9, 2) NULL,
	[PorcentajeExitoT1ObjetivoAtrapadosEmergencias] [decimal](9, 2) NULL,
	[TotalAvisosAtrapadosEmergenciasT1] [decimal](9, 2) NULL,
	[AvisosAtrapadosEmergenciasRespetandoT1Objetivo] [decimal](9, 2) NULL,
	[PorcentajeExitoT1ObjetivoCMyParados] [decimal](9, 2) NULL,
	[TotalAvisosCMyParadosT1] [decimal](9, 2) NULL,
	[AvisosCMyParadosRespetandoT1Objetivo] [decimal](9, 2) NULL,
	[PorcentajeExitoT1ObjetivoMenores] [decimal](9, 2) NULL,
	[TotalAvisosMenores] [decimal](9, 2) NULL,
	[AvisosMenoresRespetandoT1Objetivo] [decimal](9, 2) NULL,
	[PorcentajeHorasTvsHorasPlanificadasT] [decimal](9, 2) NULL,
	[HorasTExcluyendoAvisosFacturables] [decimal](9, 2) NULL,
	[HorasAvisosFacturables] [decimal](9, 2) NULL,
	[HorasTPlaneadas] [decimal](9, 2) NULL,
	[TbacklogImporte] [decimal](9, 2) NULL,
	[InteraccionesGeneradasUpgrade] [decimal](9, 2) NULL,
	[InteraccionesObjetivo] [decimal](9, 2) NULL,
	[InteraccionesCompletadasSemana] [decimal](9, 2) NULL,
	[PorcentajeSWorkVsSPlaned] [decimal](9, 2) NULL,
	[HorasNo_O_Ni_T] [decimal](9, 2) NULL,
	[HorasNo_O_Ni_T_Planeadas] [decimal](9, 2) NULL,
	[TecnicosEquivalentesHoras_O] [decimal](9, 2) NULL,
	[TecnicosEquivalentesHoras_T] [decimal](9, 2) NULL,
	[TecnicosEquivalentesHorasNo_O_Ni_T] [decimal](9, 2) NULL,
	[TecnicosEquivalentesHorasNoProductivas] [decimal](9, 2) NULL,
	[HorasEstandarPorTecnicosEquivalentes] [decimal](9, 2) NULL,
	[PromedioSemanasPrevias] [decimal](9, 2) NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsDashBoardSemanas] PRIMARY KEY CLUSTERED 
(
	[IdKPIsDashBoardSemanas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsExcel]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsExcel](
	[IdKPIsExcel] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
	[NombreArchivo] [nvarchar](100) NULL,
 CONSTRAINT [PK_LH_KPIsExcel] PRIMARY KEY CLUSTERED 
(
	[IdKPIsExcel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsExcelFOTO]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsExcelFOTO](
	[IdKPIsExcel] [int] NOT NULL,
	[ArchivoExcel] [varbinary](max) NOT NULL,
 CONSTRAINT [PK_LH_KPIsExcelFOTO] PRIMARY KEY CLUSTERED 
(
	[IdKPIsExcel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsFuncionesTecnico]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsFuncionesTecnico](
	[IdKPIsFuncionesTecnico] [int] IDENTITY(1,1) NOT NULL,
	[Funcion] [nvarchar](15) NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsFuncionesTecnico] PRIMARY KEY CLUSTERED 
(
	[IdKPIsFuncionesTecnico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsFuncionTecnicoSemanaManual]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsFuncionTecnicoSemanaManual](
	[IdKPIsFuncionTecnicoSemanaManual] [int] IDENTITY(1,1) NOT NULL,
	[CIA] [int] NOT NULL,
	[Loge] [nvarchar](8) NOT NULL,
	[Año] [int] NOT NULL,
	[Semana] [int] NOT NULL,
	[IdTecnico] [nvarchar](20) NOT NULL,
	[Funcion] [nvarchar](15) NULL,
	[NombreTecnico] [nvarchar](100) NULL,
	[AverageInspectionsClosed_CurrentWeek_Temporal] [decimal](9, 2) NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsFuncionTecnicoSemanaManual] PRIMARY KEY CLUSTERED 
(
	[IdKPIsFuncionTecnicoSemanaManual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsGraficosActionBoard]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsGraficosActionBoard](
	[IdKPIsGraficosActionBoard] [int] IDENTITY(1,1) NOT NULL,
	[Chart] [int] NOT NULL,
	[NombreGrafico] [nvarchar](100) NOT NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsGraficosActionBoard] PRIMARY KEY CLUSTERED 
(
	[IdKPIsGraficosActionBoard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsGraficosActionBoardActividadTecnicos]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsGraficosActionBoardActividadTecnicos](
	[IdKPIsGraficosActionBoardActividadTecnicos] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsGraficosActionBoard] [int] NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsGraficosActionBoardActividadTecnicos] PRIMARY KEY CLUSTERED 
(
	[IdKPIsGraficosActionBoardActividadTecnicos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsGraficosActionBoardCuadroTecnicos]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsGraficosActionBoardCuadroTecnicos](
	[IdKPIsGraficosActionBoardCuadroTecnicos] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsGraficosActionBoard] [int] NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsGraficosActionBoardCuadroTecnicos] PRIMARY KEY CLUSTERED 
(
	[IdKPIsGraficosActionBoardCuadroTecnicos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsGraficosActionBoardInspeccionesSemana]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsGraficosActionBoardInspeccionesSemana](
	[IdKPIsGraficosActionBoardInspeccionesSemana] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsGraficosActionBoard] [int] NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsGraficosActionBoardInspeccionesSemana] PRIMARY KEY CLUSTERED 
(
	[IdKPIsGraficosActionBoardInspeccionesSemana] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsGraficosActionBoardRepartoAvisos]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsGraficosActionBoardRepartoAvisos](
	[IdKPIsGraficosActionBoardRepartoAvisos] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsGraficosActionBoard] [int] NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsGraficosActionBoardRepartoAvisos] PRIMARY KEY CLUSTERED 
(
	[IdKPIsGraficosActionBoardRepartoAvisos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsGraficosDashBoard]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsGraficosDashBoard](
	[IdKPIsGraficosDashBoard] [int] IDENTITY(1,1) NOT NULL,
	[Chart] [int] NOT NULL,
	[NombreGrafico] [nvarchar](100) NOT NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsGraficosDashBoard] PRIMARY KEY CLUSTERED 
(
	[IdKPIsGraficosDashBoard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsGraficosDashBoardKPIValores]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsGraficosDashBoardKPIValores](
	[IdKPIsGraficosDashBoardKPIValores] [int] IDENTITY(1,1) NOT NULL,
	[IdKPIsGraficosDashBoard] [int] NOT NULL,
	[IdKPIsDashBoardSemanaEvaluada] [int] NOT NULL,
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[OrdenEnGrafico] [int] NOT NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsGraficosDashBoardKPIValores] PRIMARY KEY CLUSTERED 
(
	[IdKPIsGraficosDashBoardKPIValores] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsSemanasPreviasFoto]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsSemanasPreviasFoto](
	[IdKPIsDashBoardSemanas] [int] NOT NULL,
	[IdKPIsDashBoardSemanaPrevia] [int] NOT NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
 CONSTRAINT [PK_LH_KPIsSemanasPreviasFoto] PRIMARY KEY CLUSTERED 
(
	[IdKPIsDashBoardSemanas] ASC,
	[IdKPIsDashBoardSemanaPrevia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LH_KPIsWeeklyManual]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LH_KPIsWeeklyManual](
	[IdKPIDashboardWeeklyManual] [int] IDENTITY(1,1) NOT NULL,
	[CIA] [int] NOT NULL,
	[Loge] [nvarchar](8) NOT NULL,
	[Año] [int] NOT NULL,
	[Semana] [int] NOT NULL,
	[HorasDisponiblesFTE] [decimal](9, 2) NULL,
	[TecnicosTrabajandoEnSemana] [decimal](9, 2) NULL,
	[TarjetInspections] [decimal](9, 2) NULL,
	[InspeccionesCompletadasSemanaMesActual] [decimal](9, 2) NULL,
	[InspeccionesCompletadasMesesAnteriores] [decimal](9, 2) NULL,
	[CoachingHoursCompleted] [decimal](9, 2) NULL,
	[CoachingHoursPlanned] [decimal](9, 2) NULL,
	[HorasTPlaneadas] [decimal](9, 2) NULL,
	[TBackLog] [decimal](9, 2) NULL,
	[InteraccionesCompletadasSemana] [int] NULL,
	[HorasNo_O_No_T_Planeadas] [decimal](9, 2) NULL,
	[FechaAlta] [date] NOT NULL,
	[FechaModificacion] [date] NOT NULL,
	[FechaBaja] [date] NULL,
	[Baja] [bit] NOT NULL,
	[SoyBaseLine] [bit] NULL,
	[OrdenVisualizacion] [int] NULL,
	[Visualizar] [bit] NULL,
 CONSTRAINT [PK_LH_KPIsWeeklyManual] PRIMARY KEY CLUSTERED 
(
	[IdKPIDashboardWeeklyManual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_Check_HorarioTecnicos]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_Check_HorarioTecnicos](
	[idHorarioTecnicos] [int] IDENTITY(1,1) NOT NULL,
	[GBO] [nvarchar](6) NOT NULL,
	[Emp_Number] [nvarchar](15) NOT NULL,
	[Mechanic_Full_Name] [nvarchar](100) NULL,
	[Year] [int] NULL,
	[Month] [int] NULL,
	[MonthDay] [int] NULL,
	[Week] [int] NULL,
	[WeekDay] [int] NULL,
	[Hours] [decimal](3, 1) NULL,
 CONSTRAINT [PK_LHG_BATCH_Check_HorarioTecnicos] PRIMARY KEY CLUSTERED 
(
	[idHorarioTecnicos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_Check_Loges]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_Check_Loges](
	[CompanyCode] [nvarchar](2) NOT NULL,
	[OfficeCode] [nvarchar](6) NOT NULL,
	[OfficeName] [nvarchar](100) NULL,
 CONSTRAINT [PK_LHG_BATCH_Check_Loges] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[OfficeCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_Check_Supervisores]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_Check_Supervisores](
	[CompanyCode] [nvarchar](2) NOT NULL,
	[OfficeCode] [nvarchar](6) NOT NULL,
	[EmployeeIDNumber] [nvarchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
 CONSTRAINT [PK_LHG_BATCH_Check_Supervisores] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[OfficeCode] ASC,
	[EmployeeIDNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_Check_Tecnicos]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_Check_Tecnicos](
	[CompanyCode] [nvarchar](2) NOT NULL,
	[OfficeCode] [nvarchar](6) NOT NULL,
	[MechanicID] [nvarchar](15) NOT NULL,
	[TechnicianName] [nvarchar](50) NULL,
 CONSTRAINT [PK_LHG_BATCH_Check_Tecnicos] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[OfficeCode] ASC,
	[MechanicID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_Check_TemplateCallbackMechanicsPerDay]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_Check_TemplateCallbackMechanicsPerDay](
	[GBO] [nvarchar](6) NOT NULL,
	[Week] [int] NOT NULL,
	[MechanicCount] [int] NOT NULL,
 CONSTRAINT [PK_LHG_BATCH_Check_TemplateCallbackMechanicsPerDay] PRIMARY KEY CLUSTERED 
(
	[GBO] ASC,
	[Week] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_Check_TemplateMechanicMaster]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_Check_TemplateMechanicMaster](
	[GBO] [nvarchar](6) NOT NULL,
	[Emp_Number] [nvarchar](15) NOT NULL,
	[Mechanic_Full_Name] [nvarchar](100) NULL,
	[Mech_Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_LHG_BATCH_Check_TemplateMechanicMaster] PRIMARY KEY CLUSTERED 
(
	[GBO] ASC,
	[Emp_Number] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_Check_TemplateOrganizationalHierarchy]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_Check_TemplateOrganizationalHierarchy](
	[RegionCode] [nvarchar](2) NOT NULL,
	[RegionName] [nvarchar](50) NOT NULL,
	[SubRegionCode] [nvarchar](2) NOT NULL,
	[SubRegionName] [nvarchar](50) NOT NULL,
	[GBOCode] [nvarchar](6) NOT NULL,
	[SubRegion] [nvarchar](50) NULL,
	[GBOName] [nvarchar](50) NULL,
 CONSTRAINT [PK_LHG_BATCH_Check_TemplateOrganizationalHierarchy] PRIMARY KEY CLUSTERED 
(
	[RegionCode] ASC,
	[SubRegionCode] ASC,
	[GBOCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_Check_TemplateRouterMaster]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_Check_TemplateRouterMaster](
	[GBO] [nvarchar](6) NOT NULL,
	[Week] [int] NOT NULL,
	[Year] [int] NOT NULL,
	[Route] [nvarchar](4) NOT NULL,
	[LightHouse] [bit] NOT NULL,
 CONSTRAINT [PK_LHG_BATCH_Check_TemplateRouterMaster] PRIMARY KEY CLUSTERED 
(
	[GBO] ASC,
	[Week] ASC,
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_Check_TipoActividad]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_Check_TipoActividad](
	[Code] [nvarchar](10) NOT NULL,
	[Description] [nvarchar](50) NULL,
 CONSTRAINT [PK_LHG_BATCH_Check_TipoActividad] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_Check_Unidades]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_Check_Unidades](
	[CompanyCode] [nvarchar](2) NOT NULL,
	[OfficeCode] [nvarchar](6) NOT NULL,
	[Unit] [nvarchar](5) NOT NULL,
	[Route] [nvarchar](4) NOT NULL,
 CONSTRAINT [PK_LHG_BATCH_Check_Unidades] PRIMARY KEY CLUSTERED 
(
	[Unit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_Check_Usuarios]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_Check_Usuarios](
	[CompanyCode] [nvarchar](2) NOT NULL,
	[OfficeCode] [nvarchar](6) NOT NULL,
	[EmployeeIDNumber] [nvarchar](15) NOT NULL,
	[EmployeeName] [nvarchar](100) NULL,
	[OfficeAccess] [nvarchar](6) NOT NULL,
 CONSTRAINT [PK_LHG_BATCH_Check_Usuarios] PRIMARY KEY CLUSTERED 
(
	[CompanyCode] ASC,
	[OfficeCode] ASC,
	[EmployeeIDNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_FechaUltimoEnvio]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_FechaUltimoEnvio](
	[Proceso] [nvarchar](50) NOT NULL,
	[FechaUltimoEnvio] [nvarchar](10) NULL,
	[AñoUltimoEnvio] [nvarchar](4) NULL,
	[MesUltimoEnvio] [nvarchar](4) NULL,
	[SemanaUltimoEnvio] [nvarchar](2) NULL,
 CONSTRAINT [PK_LHG_BATCH_FechaUltimoEnvio] PRIMARY KEY CLUSTERED 
(
	[Proceso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_BATCH_TestActivity]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_BATCH_TestActivity](
	[cargo_codigo_actividad] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_LHG_BATCH_TestActivity] PRIMARY KEY CLUSTERED 
(
	[cargo_codigo_actividad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_Loges]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_Loges](
	[CIA] [nvarchar](2) NOT NULL,
	[Loge] [nvarchar](6) NOT NULL,
	[Año] [int] NOT NULL,
	[Descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_LHG_LHG_Loges] PRIMARY KEY CLUSTERED 
(
	[CIA] ASC,
	[Loge] ASC,
	[Año] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_LogesACTIVIDAD]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_LogesACTIVIDAD](
	[CIA] [nvarchar](2) NOT NULL,
	[Loge] [nvarchar](6) NOT NULL,
	[Año] [int] NOT NULL,
 CONSTRAINT [PK_LHG_LogesACTIVIDAD] PRIMARY KEY CLUSTERED 
(
	[CIA] ASC,
	[Loge] ASC,
	[Año] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_LogesCALLBACK]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_LogesCALLBACK](
	[CIA] [nvarchar](2) NOT NULL,
	[Loge] [nvarchar](6) NOT NULL,
	[Año] [int] NOT NULL,
 CONSTRAINT [PK_LHG_LogesCALLBACK] PRIMARY KEY CLUSTERED 
(
	[CIA] ASC,
	[Loge] ASC,
	[Año] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_LogesHORARIO]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_LogesHORARIO](
	[CIA] [nvarchar](2) NOT NULL,
	[Loge] [nvarchar](6) NOT NULL,
	[Año] [int] NOT NULL,
 CONSTRAINT [PK_LHG_LogesHORARIO] PRIMARY KEY CLUSTERED 
(
	[CIA] ASC,
	[Loge] ASC,
	[Año] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_LogesINSPECTION]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_LogesINSPECTION](
	[CIA] [nvarchar](2) NOT NULL,
	[Loge] [nvarchar](6) NOT NULL,
	[Año] [int] NOT NULL,
 CONSTRAINT [PK_LHG_LogesINSPECTION] PRIMARY KEY CLUSTERED 
(
	[CIA] ASC,
	[Loge] ASC,
	[Año] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_LogesINTERACTIONS]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_LogesINTERACTIONS](
	[CIA] [nvarchar](2) NOT NULL,
	[Loge] [nvarchar](6) NOT NULL,
	[Año] [int] NOT NULL,
 CONSTRAINT [PK_LHG_LogesINTERACTIONS] PRIMARY KEY CLUSTERED 
(
	[CIA] ASC,
	[Loge] ASC,
	[Año] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_LogesMPB]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_LogesMPB](
	[CIA] [nvarchar](2) NOT NULL,
	[Loge] [nvarchar](6) NOT NULL,
	[Año] [int] NOT NULL,
 CONSTRAINT [PK_LHG_LogesMPB] PRIMARY KEY CLUSTERED 
(
	[CIA] ASC,
	[Loge] ASC,
	[Año] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LHG_ProgramacionTareas]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LHG_ProgramacionTareas](
	[IdTarea] [int] NOT NULL,
	[NombreTarea] [nvarchar](100) NOT NULL,
	[MetodoTarea] [nvarchar](100) NULL,
	[IndActivo] [bit] NOT NULL,
	[TipoPeriodicidad] [varchar](1) NOT NULL,
	[MesPeriodicidad] [int] NULL,
	[DiaPeriodicidad] [int] NULL,
	[HoraPeriodicidad] [int] NULL,
	[MinutoPeriodicidad] [int] NULL,
	[DiasDeLaSemanaPeriodicidad] [varchar](7) NULL,
	[IndEnEjecucion] [bit] NOT NULL,
	[FechaUltimaEjecucion] [datetime] NULL,
	[IndResultadoUltimaEjecucion] [bit] NOT NULL,
	[DescrResultadoUltimaEjecucion] [varchar](1000) NULL,
	[FechaProximaEjecucion] [datetime] NULL,
 CONSTRAINT [PK_LHG_ProgramacionTareas] PRIMARY KEY CLUSTERED 
(
	[IdTarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEG_Funcion]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEG_Funcion](
	[Id] [int] NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SEG_Funcion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEG_Menu]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEG_Menu](
	[Id] [int] NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[ParentId] [int] NULL,
	[IsParent] [bit] NOT NULL,
	[TipoMenu] [char](1) NOT NULL,
	[Url] [varchar](200) NULL,
	[Controlador] [varchar](100) NULL,
	[Accion] [varchar](100) NULL,
	[Orden] [int] NOT NULL,
	[Visible] [bit] NOT NULL,
	[IdFuncion] [int] NULL,
	[Nivel] [int] NULL,
 CONSTRAINT [PK_SEG_Menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEG_Perfil]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEG_Perfil](
	[Id] [int] NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_SEG_Perfil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEG_Perfil_Funcion]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEG_Perfil_Funcion](
	[IdSegPerfil] [int] NOT NULL,
	[IdSegFuncion] [int] NOT NULL,
 CONSTRAINT [PK_SEG_Perfil_Rol] PRIMARY KEY CLUSTERED 
(
	[IdSegPerfil] ASC,
	[IdSegFuncion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEG_Usuario]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEG_Usuario](
	[Id] [varchar](20) NOT NULL,
	[NombreCompleto] [nvarchar](200) NOT NULL,
	[Email] [varchar](100) NULL,
	[Culture] [varchar](10) NOT NULL,
	[CIAMeta4] [varchar](2) NULL,
	[LOGEMeta4] [varchar](8) NULL,
	[IndMeta4] [bit] NOT NULL,
 CONSTRAINT [PK_SEG_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEG_Usuario_Perfil]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEG_Usuario_Perfil](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [varchar](20) NOT NULL,
	[IdPerfil] [int] NOT NULL,
	[IdCia] [int] NULL,
	[Loge] [varchar](100) NULL,
	[Activo] [bit] NOT NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[IdUsuarioCedente] [int] NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaBaja] [datetime] NULL,
	[IndPerfilDefault] [int] NULL,
	[IndMeta4] [int] NULL,
 CONSTRAINT [PK_SEG_Usuario_Perfil] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEG_Usuario_Perfil_20221228]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEG_Usuario_Perfil_20221228](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdUsuario] [varchar](20) NOT NULL,
	[IdPerfil] [int] NOT NULL,
	[IdCia] [int] NULL,
	[Loge] [varchar](100) NULL,
	[Activo] [bit] NOT NULL,
	[FechaInicio] [date] NULL,
	[FechaFin] [date] NULL,
	[IdUsuarioCedente] [int] NULL,
	[FechaAlta] [datetime] NOT NULL,
	[FechaBaja] [datetime] NULL,
	[IndPerfilDefault] [int] NULL,
	[IndMeta4] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEG_Usuario_Perfil_Cia]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEG_Usuario_Perfil_Cia](
	[IdPerfil] [varchar](20) NOT NULL,
	[IdCia] [int] NOT NULL,
 CONSTRAINT [PK_SEG_Usuario_Perfil_Cia] PRIMARY KEY CLUSTERED 
(
	[IdPerfil] ASC,
	[IdCia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBC_Aviso]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBC_Aviso](
	[IndicadorAviso] [varchar](1) NULL,
	[IDCIA] [varchar](2) NULL,
	[IDLoge] [int] NULL,
	[EstadoLlamada] [varchar](2) NULL,
	[RecepFechaHora] [varchar](16) NOT NULL,
	[FCRecepcion] [datetime] NULL,
	[IndicadorEmergencia] [bit] NULL,
	[CodLoge] [varchar](8) NULL,
	[CodRuta] [varchar](4) NULL,
	[IndREM] [bit] NULL,
	[IDUnidad] [varchar](5) NULL,
	[IDContrato] [varchar](5) NULL,
	[IndUnidadSinContrato] [bit] NULL,
	[Llamador] [varchar](40) NULL,
	[TfnoLlamador] [varchar](50) NULL,
	[CodConflicto] [varchar](2) NULL,
	[CodINOP] [varchar](3) NULL,
	[CodMaster] [varchar](5) NULL,
	[CodSlave] [varchar](5) NULL,
	[Piso] [varchar](2) NULL,
	[IndSubBaj] [varchar](1) NULL,
	[OrigenLlamada] [varchar](1) NULL,
	[MedioComunicaciónLlamador] [varchar](1) NULL,
	[CodigoEstadoAscensor] [varchar](1) NULL,
	[TextoAveria] [varchar](40) NULL,
	[FCCliente] [smalldatetime] NULL,
	[Operario] [varchar](6) NULL,
	[OperarioDev] [varchar](6) NULL,
	[NumIntento] [int] NULL,
	[IndMedio] [varchar](1) NULL,
	[FCLanzamiento] [datetime] NULL,
	[FCDevolucion] [datetime] NULL,
	[FCLlegada] [datetime] NULL,
	[FCSalida] [datetime] NULL,
	[OperarioCierre] [varchar](6) NULL,
	[Cierre24H] [varchar](6) NULL,
	[InformeServicio] [varchar](8) NULL,
	[IndOtis] [varchar](1) NULL,
	[CodigoProvincia] [varchar](2) NULL,
	[CodigoPoblación] [varchar](4) NULL,
	[SiglaVia] [varchar](2) NULL,
	[NombreVia] [varchar](40) NULL,
	[Num1Via] [varchar](5) NULL,
	[Num2Via] [varchar](5) NULL,
	[DistritoPostal] [varchar](3) NULL,
	[Edificio] [varchar](40) NULL,
	[Segmento] [varchar](2) NULL,
	[TipoObservacion] [varchar](1) NULL,
	[Observaciones] [varchar](150) NULL,
	[NumIntentoSMS] [int] NULL,
	[CodigoAveria1] [varchar](5) NULL,
	[CodigoAveria2] [varchar](5) NULL,
	[CodigoAveria3] [varchar](5) NULL,
	[IndicadorConflictividad] [varchar](1) NULL,
	[blnFacturable] [bit] NULL,
	[CodCierreTipoAviso] [varchar](1) NULL,
	[AñoMesRecep] [int] NULL,
	[Supervisor] [varchar](6) NULL,
	[TipoServicio] [varchar](5) NULL,
	[bln24H] [bit] NULL,
	[blnREM] [bit] NULL,
	[FechaEntrega] [int] NULL,
	[TipoAparato] [varchar](9) NULL,
	[FechaMontaje] [int] NULL,
	[FCModernizacion] [smalldatetime] NULL,
	[FCContrato] [smalldatetime] NULL,
	[AñoMesDiaRecep] [int] NULL,
	[AñoMesCierre] [int] NULL,
	[AñoMesLanzamiento] [int] NULL,
	[Loge] [varchar](8) NULL,
	[idGrupo] [int] NULL,
	[RecepcionElite] [varchar](1) NULL,
	[EliteFaseIntervencion] [varchar](1) NULL,
	[CierreEliteIRemota] [varchar](1) NULL,
	[ClaveOTL] [varchar](30) NULL,
	[RecibidoEn24H] [varchar](1) NULL,
	[FCTransferencia] [smalldatetime] NULL,
	[T1Horas] [int] NULL,
	[T1Minutos] [int] NULL,
	[CodMotivoParada] [varchar](2) NULL,
	[IndUnidadParada] [varchar](1) NULL,
	[CodMotivoAnula] [varchar](2) NULL,
	[NroEmpresaAnula] [varchar](15) NULL,
	[FechaAnula] [varchar](8) NULL,
	[LugarAnula] [varchar](4) NULL,
	[FCAnula] [datetime] NULL,
	[IndicadorAtrapados] [varchar](1) NULL,
	[RescateFecha] [datetime] NULL,
	[RescateQuien] [varchar](2) NULL,
	[LlamadorCargo] [varchar](4) NULL,
	[LlamadorTelfRGPDInd] [varchar](1) NULL,
	[FCLlegadaPrevista] [datetime] NULL,
	[BitsatMotivoRetardo] [varchar](2) NULL,
	[FCComunicacionCliente] [datetime] NULL,
 CONSTRAINT [PK_TBC_Aviso] PRIMARY KEY CLUSTERED 
(
	[RecepFechaHora] ASC
)WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Cia]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Cia](
	[Id] [int] NOT NULL,
	[IdCiaPais] [nvarchar](2) NULL,
	[Nombre] [nvarchar](30) NOT NULL,
	[NombreCompleto] [nvarchar](100) NOT NULL,
	[Activa] [bit] NOT NULL,
 CONSTRAINT [PK_TBL_Cia] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_Loge]    Script Date: 28/10/2023 17:13:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_Loge](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdCia] [int] NOT NULL,
	[CodLoge] [nvarchar](8) NULL,
	[Descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_TBL_Loge] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 80) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[LH_ContadorAccesos] ADD  CONSTRAINT [DF_LH_ContadorAccesos_FechaAcceso]  DEFAULT (getdate()) FOR [FechaHoraAcceso]
GO
ALTER TABLE [dbo].[LH_KPIsAB_AVGCBsClosedDayPrevWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_AVGCBsClosedDayPrevWeeks_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsAB_AVGCBsClosedDayPrevWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_AVGCBsClosedDayPrevWeeks_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsAB_AVGCBsClosedDayPrevWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_AVGCBsClosedDayPrevWeeks_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsAB_AVGInspectionClosedDayPrevWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_AVGInspectionClosedDayPrevWeeks_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsAB_AVGInspectionClosedDayPrevWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_AVGInspectionClosedDayPrevWeeks_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsAB_AVGInspectionClosedDayPrevWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_AVGInspectionClosedDayPrevWeeks_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsAB_AVGT2CBPreviousWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_AVGT2CBPreviousWeeks_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsAB_AVGT2CBPreviousWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_AVGT2CBPreviousWeeks_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsAB_AVGT2CBPreviousWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_AVGT2CBPreviousWeeks_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsAB_DispatchingTypeMechanicCurrentWeek] ADD  CONSTRAINT [DF_LH_KPIsAB_DispatchingTypeMechanicCurrentWeek_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsAB_DispatchingTypeMechanicCurrentWeek] ADD  CONSTRAINT [DF_LH_KPIsAB_DispatchingTypeMechanicCurrentWeek_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsAB_DispatchingTypeMechanicCurrentWeek] ADD  CONSTRAINT [DF_LH_KPIsAB_DispatchingTypeMechanicCurrentWeek_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsAB_DispatchingTypeMechanicPrevWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_DispatchingTypeMechanicPrevWeeks_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsAB_DispatchingTypeMechanicPrevWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_DispatchingTypeMechanicPrevWeeks_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsAB_DispatchingTypeMechanicPrevWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_DispatchingTypeMechanicPrevWeeks_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsAB_PromedioDispatchingTypeMechanicPrevWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_PromedioDispatchingTypeMechanicPrevWeeks_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsAB_PromedioDispatchingTypeMechanicPrevWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_PromedioDispatchingTypeMechanicPrevWeeks_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsAB_PromedioDispatchingTypeMechanicPrevWeeks] ADD  CONSTRAINT [DF_LH_KPIsAB_PromedioDispatchingTypeMechanicPrevWeeks_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsActionBoardTecnico] ADD  CONSTRAINT [DF_LH_KPIsActionBoardTecnico_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsActionBoardTecnico] ADD  CONSTRAINT [DF_LH_KPIsActionBoardTecnico_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsActionBoardTecnico] ADD  CONSTRAINT [DF_LH_KPIsActionBoardTecnico_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsBaseLineManual] ADD  CONSTRAINT [DF_LH_KPIsBaseLineManual_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsBaseLineManual] ADD  CONSTRAINT [DF_LH_KPIsBaseLineManual_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsBaseLineManual] ADD  CONSTRAINT [DF_LH_KPIsBaseLineManual_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsDashBoardSemanas] ADD  CONSTRAINT [DF_LH_KPIsDashBoardSemanas_SoyBaseLine]  DEFAULT ((1)) FOR [SoyBaseLine]
GO
ALTER TABLE [dbo].[LH_KPIsDashBoardSemanas] ADD  CONSTRAINT [DF_LH_KPIsDashBoardSemanas_SoyTotalMes]  DEFAULT ((0)) FOR [SoyTotalMes]
GO
ALTER TABLE [dbo].[LH_KPIsDashBoardSemanas] ADD  CONSTRAINT [DF_LH_LH_KPIsDashBoardSemanas_SoyTotalBaseLine]  DEFAULT ((0)) FOR [SoyTotalBaseLine]
GO
ALTER TABLE [dbo].[LH_KPIsDashBoardSemanas] ADD  CONSTRAINT [DF_LH_KPIsDashBoardSemanas_Visualizar]  DEFAULT ((1)) FOR [Visualizar]
GO
ALTER TABLE [dbo].[LH_KPIsDashBoardSemanas] ADD  CONSTRAINT [DF_LH_KPIsDashBoardSemanas_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsDashBoardSemanas] ADD  CONSTRAINT [DF_LH_KPIsDashBoardSemanas_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsDashBoardSemanas] ADD  CONSTRAINT [DF_LH_KPIsDashBoardSemanas_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsExcel] ADD  CONSTRAINT [DF_LH_KPIsExcel_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsExcel] ADD  CONSTRAINT [DF_LH_KPIsExcel_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsExcel] ADD  CONSTRAINT [DF_LH_KPIsExcel_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoard] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoard_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoard] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoard_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoard] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoard_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoardActividadTecnicos] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoardActividadTecnicos_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoardActividadTecnicos] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoardActividadTecnicos_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoardActividadTecnicos] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoardActividadTecnicos_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoardCuadroTecnicos] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoardCuadroTecnicos_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoardCuadroTecnicos] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoardCuadroTecnicos_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoardCuadroTecnicos] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoardCuadroTecnicos_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoardInspeccionesSemana] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoardInspeccionesSemana_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoardInspeccionesSemana] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoardInspeccionesSemana_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoardInspeccionesSemana] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoardInspeccionesSemana_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoardRepartoAvisos] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoardRepartoAvisos_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoardRepartoAvisos] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoardRepartoAvisos_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosActionBoardRepartoAvisos] ADD  CONSTRAINT [DF_LH_KPIsGraficosActionBoardRepartoAvisos_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosDashBoard] ADD  CONSTRAINT [DF_LH_KPIsGraficosDashBoard_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosDashBoard] ADD  CONSTRAINT [DF_LH_KPIsGraficosDashBoard_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosDashBoard] ADD  CONSTRAINT [DF_LH_KPIsGraficosDashBoard_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosDashBoardKPIValores] ADD  CONSTRAINT [DF_LH_KPIsGraficosDashBoardKPIValores_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosDashBoardKPIValores] ADD  CONSTRAINT [DF_LH_KPIsGraficosDashBoardKPIValores_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsGraficosDashBoardKPIValores] ADD  CONSTRAINT [DF_LH_KPIsGraficosDashBoardKPIValores_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsSemanasPreviasFoto] ADD  CONSTRAINT [DF_LH_KPIsSemanasPreviasFoto_FechaAlta]  DEFAULT (getdate()) FOR [FechaAlta]
GO
ALTER TABLE [dbo].[LH_KPIsSemanasPreviasFoto] ADD  CONSTRAINT [DF_LH_KPIsSemanasPreviasFoto_FechaModificacion]  DEFAULT (getdate()) FOR [FechaModificacion]
GO
ALTER TABLE [dbo].[LH_KPIsSemanasPreviasFoto] ADD  CONSTRAINT [DF_LH_KPIsSemanasPreviasFoto_Baja]  DEFAULT ((0)) FOR [Baja]
GO
ALTER TABLE [dbo].[LH_KPIsWeeklyManual] ADD  CONSTRAINT [DF_LH_KPIsWeeklyManual_SoyBaseLine]  DEFAULT ((0)) FOR [SoyBaseLine]
GO
ALTER TABLE [dbo].[LH_KPIsWeeklyManual] ADD  CONSTRAINT [DF_LH_KPIsWeeklyManual_OrdenVisualizacion]  DEFAULT ((0)) FOR [OrdenVisualizacion]
GO
ALTER TABLE [dbo].[LH_KPIsWeeklyManual] ADD  CONSTRAINT [DF_LH_KPIsWeeklyManual_Visualizar]  DEFAULT ((1)) FOR [Visualizar]
GO
ALTER TABLE [dbo].[SEG_Usuario] ADD  CONSTRAINT [DF_SEG_Usuario_NombreCompleto_1]  DEFAULT ('') FOR [NombreCompleto]
GO
ALTER TABLE [dbo].[SEG_Usuario] ADD  CONSTRAINT [DF_SEG_Usuario_IndMeta4]  DEFAULT ((0)) FOR [IndMeta4]
GO
ALTER TABLE [dbo].[TBC_Aviso] ADD  CONSTRAINT [DF_TBC_Aviso_btnFacturable]  DEFAULT (0) FOR [blnFacturable]
GO
ALTER TABLE [dbo].[TBC_Aviso] ADD  CONSTRAINT [DF_TBC_Aviso_bln24H]  DEFAULT (0) FOR [bln24H]
GO
ALTER TABLE [dbo].[TBC_Aviso] ADD  CONSTRAINT [DF_TBC_Aviso_blnREM]  DEFAULT (0) FOR [blnREM]
GO
ALTER TABLE [dbo].[TBC_Aviso] ADD  CONSTRAINT [DF_TBC_Aviso_AñoMesCierre]  DEFAULT (0) FOR [AñoMesCierre]
GO
ALTER TABLE [dbo].[TBC_Aviso] ADD  CONSTRAINT [DF_TBC_Aviso_idGrupo]  DEFAULT (999) FOR [idGrupo]
GO
ALTER TABLE [dbo].[TBC_Aviso] ADD  CONSTRAINT [DF_TBC_Aviso_T1Horas]  DEFAULT ((0)) FOR [T1Horas]
GO
ALTER TABLE [dbo].[TBC_Aviso] ADD  CONSTRAINT [DF_TBC_Aviso_T1Minutos]  DEFAULT ((0)) FOR [T1Minutos]
GO
ALTER TABLE [dbo].[LHG_ProgramacionTareas]  WITH CHECK ADD  CONSTRAINT [FK_LHG_ProgramacionTareas_ADM_TipoPeriodicidad] FOREIGN KEY([TipoPeriodicidad])
REFERENCES [dbo].[ADM_TipoPeriodicidad] ([Abreviatura])
GO
ALTER TABLE [dbo].[LHG_ProgramacionTareas] CHECK CONSTRAINT [FK_LHG_ProgramacionTareas_ADM_TipoPeriodicidad]
GO
ALTER TABLE [dbo].[SEG_Menu]  WITH CHECK ADD  CONSTRAINT [FK_SEG_Menu_SEG_Funcion] FOREIGN KEY([IdFuncion])
REFERENCES [dbo].[SEG_Funcion] ([Id])
GO
ALTER TABLE [dbo].[SEG_Menu] CHECK CONSTRAINT [FK_SEG_Menu_SEG_Funcion]
GO
ALTER TABLE [dbo].[SEG_Perfil_Funcion]  WITH CHECK ADD  CONSTRAINT [FK_SEG_Perfil_Rol_SEG_Perfil] FOREIGN KEY([IdSegPerfil])
REFERENCES [dbo].[SEG_Perfil] ([Id])
GO
ALTER TABLE [dbo].[SEG_Perfil_Funcion] CHECK CONSTRAINT [FK_SEG_Perfil_Rol_SEG_Perfil]
GO
ALTER TABLE [dbo].[SEG_Perfil_Funcion]  WITH CHECK ADD  CONSTRAINT [FK_SEG_Perfil_Rol_SEG_Rol] FOREIGN KEY([IdSegFuncion])
REFERENCES [dbo].[SEG_Funcion] ([Id])
GO
ALTER TABLE [dbo].[SEG_Perfil_Funcion] CHECK CONSTRAINT [FK_SEG_Perfil_Rol_SEG_Rol]
GO
ALTER TABLE [dbo].[TBL_Loge]  WITH CHECK ADD  CONSTRAINT [FK_TBL_Loge_TBL_Cia] FOREIGN KEY([IdCia])
REFERENCES [dbo].[TBL_Cia] ([Id])
GO
ALTER TABLE [dbo].[TBL_Loge] CHECK CONSTRAINT [FK_TBL_Loge_TBL_Cia]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Valores A-Anual, M-Mensual, D-Diario, U-Única' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LHG_ProgramacionTareas', @level2type=N'COLUMN',@level2name=N'TipoPeriodicidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Para TipoPeriodicidad=A, mes de ejecución, para resto NULL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LHG_ProgramacionTareas', @level2type=N'COLUMN',@level2name=N'MesPeriodicidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Para TipoPeriodicidad=A,M, día de ejecución, para resto NULL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LHG_ProgramacionTareas', @level2type=N'COLUMN',@level2name=N'DiaPeriodicidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Para TipoPeriodicidad=A,M,D, hora de ejecución, para resto NULL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LHG_ProgramacionTareas', @level2type=N'COLUMN',@level2name=N'HoraPeriodicidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Para TipoPeriodicidad=A,M,D, minuto de ejecución, para resto NULL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LHG_ProgramacionTareas', @level2type=N'COLUMN',@level2name=N'MinutoPeriodicidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Para TipoPeriodicidad=D, lista de días de ejecución (normalmente LMXJV), para resto NULL' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LHG_ProgramacionTareas', @level2type=N'COLUMN',@level2name=N'DiasDeLaSemanaPeriodicidad'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'C= Enlace a Accion Controller U=Enlace a url P=Personalizado' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SEG_Menu', @level2type=N'COLUMN',@level2name=N'TipoMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TBC_Aviso', @level2type=N'COLUMN',@level2name=N'CodLoge'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tiene REM' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TBC_Aviso', @level2type=N'COLUMN',@level2name=N'IndREM'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'01 –  TECNICO ASIGNADO EN AVISO
02 – OTRO TECNICO
03 – EL ATRAPADO
04 – SERVICIOS DE EMERGENCIA
05 – OTROS
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TBC_Aviso', @level2type=N'COLUMN',@level2name=N'RescateQuien'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ADM    –  ADMINISTRADOR
CLIE     –  CLIENTE
CONS  – CONSERJE
DIRE    –  DIRECTOR HOTEL/EMPRESA
EMP    –  EMPLEADO EMPRESA
MTTO  – MANTENIMIENTO
OTRO  –  INDEFINIDO
PRES   –  PRESIDENTE
PROP  –  DUEÑO NEGOCIO
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TBC_Aviso', @level2type=N'COLUMN',@level2name=N'LlamadorCargo'
GO
