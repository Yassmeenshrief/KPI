USE [master]
GO
/****** Object:  Database [KPIDB]    Script Date: 3/23/2021 5:58:38 PM ******/
CREATE DATABASE [KPIDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'KPIDB', FILENAME = N'C:\Users\momor\KPIDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'KPIDB_log', FILENAME = N'C:\Users\momor\KPIDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [KPIDB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [KPIDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [KPIDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [KPIDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [KPIDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [KPIDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [KPIDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [KPIDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [KPIDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [KPIDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [KPIDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [KPIDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [KPIDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [KPIDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [KPIDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [KPIDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [KPIDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [KPIDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [KPIDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [KPIDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [KPIDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [KPIDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [KPIDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [KPIDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [KPIDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [KPIDB] SET  MULTI_USER 
GO
ALTER DATABASE [KPIDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [KPIDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [KPIDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [KPIDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [KPIDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [KPIDB] SET QUERY_STORE = OFF
GO
USE [KPIDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [KPIDB]
GO
/****** Object:  DatabaseRole [aspnet_WebEvent_FullAccess]    Script Date: 3/23/2021 5:58:39 PM ******/
CREATE ROLE [aspnet_WebEvent_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_ReportingAccess]    Script Date: 3/23/2021 5:58:39 PM ******/
CREATE ROLE [aspnet_Roles_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_FullAccess]    Script Date: 3/23/2021 5:58:39 PM ******/
CREATE ROLE [aspnet_Roles_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Roles_BasicAccess]    Script Date: 3/23/2021 5:58:39 PM ******/
CREATE ROLE [aspnet_Roles_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_ReportingAccess]    Script Date: 3/23/2021 5:58:39 PM ******/
CREATE ROLE [aspnet_Profile_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_FullAccess]    Script Date: 3/23/2021 5:58:39 PM ******/
CREATE ROLE [aspnet_Profile_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Profile_BasicAccess]    Script Date: 3/23/2021 5:58:39 PM ******/
CREATE ROLE [aspnet_Profile_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_ReportingAccess]    Script Date: 3/23/2021 5:58:39 PM ******/
CREATE ROLE [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_FullAccess]    Script Date: 3/23/2021 5:58:39 PM ******/
CREATE ROLE [aspnet_Personalization_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Personalization_BasicAccess]    Script Date: 3/23/2021 5:58:39 PM ******/
CREATE ROLE [aspnet_Personalization_BasicAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_ReportingAccess]    Script Date: 3/23/2021 5:58:39 PM ******/
CREATE ROLE [aspnet_Membership_ReportingAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_FullAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE ROLE [aspnet_Membership_FullAccess]
GO
/****** Object:  DatabaseRole [aspnet_Membership_BasicAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE ROLE [aspnet_Membership_BasicAccess]
GO
ALTER ROLE [aspnet_Roles_ReportingAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Roles_BasicAccess] ADD MEMBER [aspnet_Roles_FullAccess]
GO
ALTER ROLE [aspnet_Profile_ReportingAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Profile_BasicAccess] ADD MEMBER [aspnet_Profile_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_ReportingAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Personalization_BasicAccess] ADD MEMBER [aspnet_Personalization_FullAccess]
GO
ALTER ROLE [aspnet_Membership_ReportingAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
ALTER ROLE [aspnet_Membership_BasicAccess] ADD MEMBER [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_BasicAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_Membership_BasicAccess]
GO
/****** Object:  Schema [aspnet_Membership_FullAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_Membership_FullAccess]
GO
/****** Object:  Schema [aspnet_Membership_ReportingAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_Membership_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Personalization_BasicAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_Personalization_BasicAccess]
GO
/****** Object:  Schema [aspnet_Personalization_FullAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_Personalization_FullAccess]
GO
/****** Object:  Schema [aspnet_Personalization_ReportingAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_Personalization_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Profile_BasicAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_Profile_BasicAccess]
GO
/****** Object:  Schema [aspnet_Profile_FullAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_Profile_FullAccess]
GO
/****** Object:  Schema [aspnet_Profile_ReportingAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_Profile_ReportingAccess]
GO
/****** Object:  Schema [aspnet_Roles_BasicAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_Roles_BasicAccess]
GO
/****** Object:  Schema [aspnet_Roles_FullAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_Roles_FullAccess]
GO
/****** Object:  Schema [aspnet_Roles_ReportingAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_Roles_ReportingAccess]
GO
/****** Object:  Schema [aspnet_WebEvent_FullAccess]    Script Date: 3/23/2021 5:58:40 PM ******/
CREATE SCHEMA [aspnet_WebEvent_FullAccess]
GO
/****** Object:  UserDefinedFunction [dbo].[svf_DateOnly]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE FUNCTION [dbo].[svf_DateOnly](@DateTime DateTime)
-- Strips out the time portion of any dateTime value.
RETURNS DATETIME
-- ENCRYPT_ME
AS BEGIN
    RETURN dateadd(dd,0, datediff(dd,0,@DateTime))
END


GO
/****** Object:  UserDefinedFunction [dbo].[svf_GetKpiProgess]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:  Jose Carlos Gutierrez
-- Create date: 2016/05/19
-- Description: Get KPI Progress
-- =============================================
CREATE FUNCTION [dbo].[svf_GetKpiProgess]
(
	@intKpiId INT,
	@varCategoryId	VARCHAR(20),
	@varCategoryItemId	VARCHAR(20)
)
RETURNS DECIMAL(9,2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @dcProgress DECIMAL(25,3)
	
	DECLARE @intParameterBase AS INT
	DECLARE @intParameterActual AS INT
	SELECT @intParameterBase = [value] FROM [dbo].[tbl_PAR_Parameter] WHERE [parameterID] = 1
	SELECT @intParameterActual = [value] FROM [dbo].[tbl_PAR_Parameter] WHERE [parameterID] = 2
	IF(@intParameterBase IS NULL)
		SET @intParameterBase = 0
	IF(@intParameterActual IS NULL)
		SET @intParameterActual = 0	
		
	DECLARE @dcTarget AS DECIMAL(25,3)
	
	DECLARE @varDirectionId AS CHAR(3)
	DECLARE @varStrategyId AS CHAR(3)
	DECLARE @dtStartDate AS DATE
	DECLARE @varReportingUnitId AS CHAR(5)
	DECLARE @dcMeasurement AS DECIMAL(25,3)	
	
	SELECT @varDirectionId = [directionID],
		   @varStrategyId = [strategyID],
		   @varReportingUnitId = [reportingUnitID],
		   @dtStartDate = [startDate]
	FROM [dbo].[tbl_KPI] 
	WHERE [kpiID] = @intKpiId
	
	-- verify if exists a target
	IF ISNULL(@varCategoryId,'') = ''
		BEGIN
			IF(@varStrategyId = 'SUM')
				SELECT @dcTarget = SUM([target]) 
				FROM [dbo].[tbl_KPITarget] 
				WHERE [kpiID] = @intKpiId
				GROUP BY [kpiID]
			ELSE IF @varStrategyId = 'AVG'
				SELECT @dcTarget = AVG([target]) 
				FROM [dbo].[tbl_KPITarget] 
				WHERE [kpiID] = @intKpiId
				GROUP BY [kpiID]
		END
	ELSE
	BEGIN
		IF(@varStrategyId = 'SUM')
			SELECT @dcTarget = SUM([target]) 
			FROM [dbo].[tbl_KPITarget]
			WHERE [kpiID] = @intKpiId
			AND [targetID] IN (SELECT [targetID] FROM [dbo].[tbl_KPITargetCategories] 
								   WHERE [kpiID] = @intKpiId 
								   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId)
			GROUP BY [kpiID]
		ELSE IF @varStrategyId = 'AVG'
			SELECT @dcTarget = AVG([target]) 
			FROM [dbo].[tbl_KPITarget]
			WHERE [kpiID] = @intKpiId
			AND [targetID] IN (SELECT [targetID] FROM [dbo].[tbl_KPITargetCategories] 
							   WHERE  [kpiID] = @intKpiId 
							   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId)
			GROUP BY [kpiID]
	END
	
	
	IF(ISNULL(@dcTarget,0) > 0)
		BEGIN
			-- SUM Measurements registered since startDate
			IF(@varStrategyId = 'SUM')
				BEGIN
					IF ISNULL(@varCategoryId,'') = ''
						SELECT @dcMeasurement = SUM(CONVERT(DECIMAL(25,3),[measurement])) 
						FROM [dbo].[tbl_KPIMeasurements] 
						WHERE [kpiID] = @intKpiId 
						AND CASE WHEN @dtStartDate IS NULL THEN 1 ELSE 
								 CASE WHEN [date] >= @dtStartDate THEN 1 ELSE 0 END 
							END = 1
						GROUP BY [kpiID]
					ELSE
						SELECT @dcMeasurement = SUM(CONVERT(DECIMAL(25,3),[measurement])) 
						FROM [dbo].[tbl_KPIMeasurements] 
						WHERE [kpiID] = @intKpiId 
						AND CASE WHEN @dtStartDate IS NULL THEN 1 ELSE 
								 CASE WHEN [date] >= @dtStartDate THEN 1 ELSE 0 END 
							END = 1
						AND [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
											   WHERE [kpiID] = @intKpiId 
											   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId)
						GROUP BY [kpiID]
					
					-- calculate progress
					IF(@dcMeasurement > @dcTarget)
						SET @dcProgress = 100
					ELSE
						SET @dcProgress = (CASE WHEN ISNULL(@dcMeasurement,0) = 0 THEN 0 ELSE ((CONVERT(DECIMAL(25,3),@dcMeasurement) * 100)/@dcTarget) END)
				END
				
			ELSE IF(@varStrategyId = 'AVG')
				BEGIN
					
					DECLARE @dcPromedioBase AS DECIMAL(25,3)
					DECLARE @dcMeasurementActual AS DECIMAL(25,3)
					
					-- Promedio Base de los X valores mas altos
					DECLARE @tbl_Measurements AS TABLE([date] DATE, [measurement] DECIMAL(25,3))
					IF ISNULL(@varCategoryId,'') = ''
						INSERT INTO @tbl_Measurements 
							SELECT [date],
								   [measurement]
							FROM [dbo].[tbl_KPIMeasurements] 
							WHERE [kpiID] = @intKpiId 
							AND CASE WHEN @dtStartDate IS NULL THEN 1 ELSE 
									 CASE WHEN [date] >= @dtStartDate THEN 1 ELSE 0 END 
								END = 1
					ELSE
						INSERT INTO @tbl_Measurements 
							SELECT [date],
								   [measurement]
							FROM [dbo].[tbl_KPIMeasurements] 
							WHERE [kpiID] = @intKpiId 
							AND CASE WHEN @dtStartDate IS NULL THEN 1 ELSE 
									 CASE WHEN [date] >= @dtStartDate THEN 1 ELSE 0 END 
								END = 1
							AND [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
												   WHERE [kpiID] = @intKpiId 
												   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId)
					
					IF((SELECT COUNT(*) FROM @tbl_Measurements) <= @intParameterBase)
						BEGIN
							
							SELECT @dcMeasurementActual = AVG([measurement])
							FROM @tbl_Measurements
							
							SET @dcProgress = ((CONVERT(DECIMAL(25,3),@dcMeasurementActual) * 100)/@dcTarget)
							
						END
					ELSE
						BEGIN
							SELECT @dcPromedioBase = AVG([m].[measurement]) 
							FROM (SELECT TOP (@intParameterBase) 
										[measurement]
								  FROM [dbo].[tbl_KPIMeasurements] 
								  WHERE [kpiID] = @intKpiId 
								  ORDER BY [measurement] DESC) [m] 
							
							-- Measurements por reportingUnit
							DECLARE @dtFechaUltima AS DATE
							
							SELECT TOP 1 @dtFechaUltima = [date] 
							FROM @tbl_Measurements 
							ORDER BY [date] DESC
							
							IF(@varReportingUnitId = 'DAY')
								SELECT @dcMeasurementActual = AVG([measurement]) 
								FROM @tbl_Measurements 
								WHERE [date] = @dtFechaUltima
								
							IF(@varReportingUnitId = 'MONTH')
								SELECT @dcMeasurementActual = AVG([measurement]) 
								FROM @tbl_Measurements 
								WHERE MONTH([date]) = MONTH(@dtFechaUltima) 
							
							IF(@varReportingUnitId = 'QUART')
								SELECT @dcMeasurementActual = AVG([measurement]) 
								FROM @tbl_Measurements 
								WHERE DATEPART(QUARTER, [date]) = DATEPART(QUARTER, @dtFechaUltima) 
							
							IF(@varReportingUnitId = 'WEEK')
								SELECT @dcMeasurementActual = AVG([measurement]) 
								FROM @tbl_Measurements 
								WHERE DATEPART(WEEK, [date]) = DATEPART(WEEK, @dtFechaUltima) 
							
							IF(@varReportingUnitId = 'YEAR')
								SELECT @dcMeasurementActual = AVG([measurement]) 
								FROM @tbl_Measurements 
								WHERE YEAR([date]) = YEAR(@dtFechaUltima) 
							
							IF(@varDirectionId = 'MIN')
								SET @dcProgress = ABS(100 - (((@dcMeasurementActual - @dcTarget) *100) / (@dcPromedioBase - @dcTarget)))
							ELSE
								SET @dcProgress = ABS(100 - (((@dcPromedioBase - @dcTarget)  *100) / (@dcMeasurementActual - @dcTarget)))
								
						END
					
				END
			ELSE
				BEGIN
					SET @dcProgress = 0
				END
		END
	ELSE 
		SET @dcProgress = 0
	
	IF(@dcProgress < 0)
		SET @dcProgress = 0
	
	IF(@dcProgress > 100)
		SET @dcProgress = 100
	
	
	-- Return the result of the function
	RETURN CONVERT(DECIMAL(9,2), ISNULL(@dcProgress,0))
END






GO
/****** Object:  UserDefinedFunction [dbo].[svf_GetKpiTrend]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Marcela Martinez
-- Create date: 23/05/2016
-- Description:	Get KPI Trend
-- =============================================
CREATE FUNCTION [dbo].[svf_GetKpiTrend]
(
	@intKpiId INT,
	@varCategoryId	VARCHAR(20),
	@varCategoryItemId	VARCHAR(20)
)
RETURNS DECIMAL(9,2)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @dcTrend DECIMAL(25,3)
	
	DECLARE @varDirectionId AS CHAR(3)
	DECLARE @varStrategyId AS CHAR(3)
	DECLARE @varReportingUnitId AS CHAR(5)
	DECLARE @dcMeasurement AS DECIMAL(25,3)
	
	SELECT @varDirectionId = [directionID],
		   @varStrategyId = [strategyID],
		   @varReportingUnitId = [reportingUnitID]
	FROM [dbo].[tbl_KPI] 
	WHERE [kpiID] = @intKpiId
	
	DECLARE @dtToday AS DATE = GETDATE()
	DECLARE @dtYesterday AS DATE = DATEADD(DAY, -1, @dtToday)
	DECLARE @intActualData AS INT
	DECLARE @intPreviousData AS INT
	DECLARE @intActualYear AS INT = YEAR(GETDATE())
	DECLARE @intPreviousYear AS INT = @intActualYear -1
	
	DECLARE @dcMeasurementActual AS DECIMAL(25,3)
	DECLARE @dcMeasurementPrevious AS DECIMAL(25,3)
	
	IF(@varStrategyId = 'SUM')
		BEGIN
			IF(@varReportingUnitId = 'DAY')
				BEGIN
					-- calculate for today
					SELECT @dcMeasurementActual = SUM(CONVERT(DECIMAL(25,3),[measurement]))
					FROM [dbo].[tbl_KPIMeasurements] 
					WHERE [date] = @dtToday 
					AND [kpiID] = @intKpiId 
					AND CASE WHEN ISNULL(@varCategoryId,'') = '' THEN 1 
					ELSE (CASE WHEN [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
										   WHERE [kpiID] = @intKpiId 
										   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId) THEN 1 ELSE 0 END) 
					END = 1
						
					
					-- calculate for yesterday
					SELECT @dcMeasurementPrevious = SUM(CONVERT(DECIMAL(25,3),[measurement]))
					FROM [dbo].[tbl_KPIMeasurements] 
					WHERE [date] = @dtYesterday 
					AND [kpiID] = @intKpiId 
					AND CASE WHEN ISNULL(@varCategoryId,'') = '' THEN 1 
					ELSE (CASE WHEN [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
										   WHERE [kpiID] = @intKpiId 
										   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId) THEN 1 ELSE 0 END) 
					END = 1
						
				END
			
			IF(@varReportingUnitId = 'MONTH')
				BEGIN
					SET @intActualData = MONTH(GETDATE())
					SET @intPreviousData = MONTH(DATEADD(MONTH, -1, GETDATE()))
					SET @intPreviousYear = YEAR(DATEADD(MONTH, -1, GETDATE()))
					
					-- calculate for actual month
					SELECT @dcMeasurementActual = SUM(CONVERT(DECIMAL(25,3),[measurement]))
					FROM [dbo].[tbl_KPIMeasurements]  
					WHERE MONTH([date]) = @intActualData 
					AND YEAR([date]) = @intActualYear 
					AND [kpiID] = @intKpiId 
					AND CASE WHEN ISNULL(@varCategoryId,'') = '' THEN 1 
					ELSE (CASE WHEN [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
										   WHERE [kpiID] = @intKpiId 
										   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId) THEN 1 ELSE 0 END) 
					END = 1
						
					
					-- calculate for previous month
					SELECT @dcMeasurementPrevious = SUM(CONVERT(DECIMAL(25,3),[measurement]))
					FROM [dbo].[tbl_KPIMeasurements]  
					WHERE MONTH([date]) = @intPreviousData 
					AND YEAR([date]) = @intPreviousYear 
					AND [kpiID] = @intKpiId 
					AND CASE WHEN ISNULL(@varCategoryId,'') = '' THEN 1 
					ELSE (CASE WHEN [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
										   WHERE [kpiID] = @intKpiId 
										   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId) THEN 1 ELSE 0 END) 
					END = 1
						
				END
			
			IF(@varReportingUnitId = 'QUART')
				BEGIN
					SET @intActualData = DATEPART(QUARTER, GETDATE())
					SET @intPreviousData = CASE WHEN @intActualData = 4 THEN 1 ELSE @intActualData - 1 END
					SET @intPreviousYear = CASE WHEN @intActualData = 4 THEN @intActualYear - 1 ELSE @intActualYear END
					
					-- calculate for actual quart
					SELECT @dcMeasurementActual = SUM(CONVERT(DECIMAL(25,3),[measurement]))
					FROM [dbo].[tbl_KPIMeasurements]  
					WHERE DATEPART(QUARTER, [date]) = @intActualData 
					AND YEAR([date]) = @intActualYear 
					AND [kpiID] = @intKpiId 
					AND CASE WHEN ISNULL(@varCategoryId,'') = '' THEN 1 
					ELSE (CASE WHEN [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
										   WHERE [kpiID] = @intKpiId 
										   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId) THEN 1 ELSE 0 END) 
					END = 1
					
					-- calculate for previous quart
					SELECT @dcMeasurementPrevious = SUM(CONVERT(DECIMAL(25,3),[measurement]))
					FROM [dbo].[tbl_KPIMeasurements]  
					WHERE DATEPART(QUARTER, [date]) = @intPreviousData 
					AND YEAR([date]) = @intPreviousYear 
					AND [kpiID] = @intKpiId 
					AND CASE WHEN ISNULL(@varCategoryId,'') = '' THEN 1 
					ELSE (CASE WHEN [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
										   WHERE [kpiID] = @intKpiId 
										   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId) THEN 1 ELSE 0 END) 
					END = 1
				END
			
			IF(@varReportingUnitId = 'WEEK')
				BEGIN
					SET @intActualData = DATEPART(WEEK, GETDATE())
					SET @intPreviousData = DATEPART(WEEK,DATEADD(DAY,-7,GETDATE()))
					SET @intPreviousYear = YEAR(DATEADD(DAY,-7,GETDATE()))
					
					-- calculate for actual week
					SELECT @dcMeasurementActual = SUM(CONVERT(DECIMAL(25,3),[measurement]))
					FROM [dbo].[tbl_KPIMeasurements]  
					WHERE DATEPART(WEEK, [date]) = @intActualData 
					AND YEAR([date]) = @intActualYear 
					AND [kpiID] = @intKpiId 
					AND CASE WHEN ISNULL(@varCategoryId,'') = '' THEN 1 
					ELSE (CASE WHEN [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
										   WHERE [kpiID] = @intKpiId 
										   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId) THEN 1 ELSE 0 END) 
					END = 1
					
					-- calculate for previous week
					SELECT @dcMeasurementPrevious = SUM(CONVERT(DECIMAL(25,3),[measurement]))
					FROM [dbo].[tbl_KPIMeasurements]  
					WHERE DATEPART(WEEK, [date]) = @intPreviousData 
					AND YEAR([date]) = @intPreviousYear 
					AND [kpiID] = @intKpiId 
					AND CASE WHEN ISNULL(@varCategoryId,'') = '' THEN 1 
					ELSE (CASE WHEN [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
										   WHERE [kpiID] = @intKpiId 
										   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId) THEN 1 ELSE 0 END) 
					END = 1
				END
			
			IF(@varReportingUnitId = 'YEAR')
				BEGIN
					-- calculate for actual year
					SELECT @dcMeasurementActual = SUM(CONVERT(DECIMAL(25,3),[measurement]))
					FROM [dbo].[tbl_KPIMeasurements]  
					WHERE YEAR([date]) = @intActualYear 
					AND [kpiID] = @intKpiId 
					AND CASE WHEN ISNULL(@varCategoryId,'') = '' THEN 1 
					ELSE (CASE WHEN [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
										   WHERE [kpiID] = @intKpiId 
										   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId) THEN 1 ELSE 0 END) 
					END = 1
					
					-- calculate for previous year
					SELECT @dcMeasurementPrevious = SUM(CONVERT(DECIMAL(25,3),[measurement]))
					FROM [dbo].[tbl_KPIMeasurements]  
					WHERE YEAR([date]) = @intPreviousYear 
					AND [kpiID] = @intKpiId 
					AND CASE WHEN ISNULL(@varCategoryId,'') = '' THEN 1 
					ELSE (CASE WHEN [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
										   WHERE [kpiID] = @intKpiId 
										   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId) THEN 1 ELSE 0 END) 
					END = 1
				END
			
			IF(ISNULL(@dcMeasurementPrevious,0) = 0)
				SET @dcTrend = 0
			ELSE
				SET @dcTrend = ((ISNULL(@dcMeasurementPrevious,0) - ISNULL(@dcMeasurementActual,0)) * 100)/ISNULL(@dcMeasurementPrevious,0)
			
			IF(@varDirectionId = 'MIN')
				SET @dcTrend = @dcTrend * -1
			
		END
	
	ELSE IF(@varStrategyId = 'AVG')
		BEGIN
			DECLARE @tbl_Measurements AS TABLE([date] DATE, [measurement] DECIMAL(25,3))
			INSERT INTO @tbl_Measurements 
				SELECT [date],
					   [measurement]
				FROM [dbo].[tbl_KPIMeasurements] 
				WHERE [kpiID] = @intKpiId 
				AND CASE WHEN ISNULL(@varCategoryId,'') = '' THEN 1 
				ELSE (CASE WHEN [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
									   WHERE [kpiID] = @intKpiId 
									   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId) THEN 1 ELSE 0 END) 
				END = 1
			
			DECLARE @tbl_MeasurementActual AS TABLE([measurement] DECIMAL(21,3)) 
			DECLARE @tbl_MeasurementPrevious AS TABLE([measurement] DECIMAL(21,3)) 
			
			IF(@varReportingUnitId = 'DAY')
				BEGIN
					SET @dtToday  = GETDATE()
					SET @dtYesterday = DATEADD(DAY, -1, @dtToday)
					
					-- calculate for today
					INSERT INTO @tbl_MeasurementActual
						SELECT [measurement]
						FROM @tbl_Measurements 
						WHERE [date] = @dtToday 
						ORDER BY [date] DESC
					
					-- calculate for yesterday
					INSERT INTO @tbl_MeasurementPrevious
						SELECT [measurement]
						FROM @tbl_Measurements 
						WHERE [date] = @dtYesterday
						ORDER BY [date] DESC
				END
				
			IF(@varReportingUnitId = 'MONTH')
				BEGIN
					SET @intActualData = MONTH(GETDATE())
					SET @intPreviousData = MONTH(DATEADD(MONTH, -1, GETDATE()))
					SET @intPreviousYear = YEAR(DATEADD(MONTH, -1, GETDATE()))
					
					-- calculate for actual month
					INSERT INTO @tbl_MeasurementActual
						SELECT [measurement]
						FROM @tbl_Measurements 
						WHERE MONTH([date]) = @intActualData 
						AND YEAR([date]) = @intActualYear 
						ORDER BY [date] DESC
					
					-- calculate for previous month
					INSERT INTO @tbl_MeasurementPrevious
						SELECT [measurement]
						FROM @tbl_Measurements 
						WHERE MONTH([date]) = @intPreviousData 
						AND YEAR([date]) = @intPreviousYear 
						ORDER BY [date] DESC
				END
			
			IF(@varReportingUnitId = 'QUART')
				BEGIN
					SET @intActualData = DATEPART(QUARTER, GETDATE())
					SET @intPreviousData = CASE WHEN @intActualData = 4 THEN 1 ELSE @intActualData - 1 END
					SET @intPreviousYear = CASE WHEN @intActualData = 4 THEN @intActualYear - 1 ELSE @intActualYear END
					
					-- calculate for actual quart
					INSERT INTO @tbl_MeasurementActual
						SELECT [measurement]
						FROM @tbl_Measurements 
						WHERE DATEPART(QUARTER, [date]) = @intActualData 
						AND YEAR([date]) = @intActualYear 
						ORDER BY [date] DESC
						
					-- calculate for previous quart
					INSERT INTO @tbl_MeasurementPrevious
						SELECT [measurement]
						FROM @tbl_Measurements 
						WHERE DATEPART(QUARTER, [date]) = @intPreviousData 
						AND YEAR([date]) = @intPreviousYear 
						ORDER BY [date] DESC
				END
			
			IF(@varReportingUnitId = 'WEEK')
				BEGIN
					SET @intActualData = DATEPART(WEEK, GETDATE())
					SET @intPreviousData = DATEPART(WEEK,DATEADD(DAY,-7,GETDATE()))
					SET @intPreviousYear = YEAR(DATEADD(DAY,-7,GETDATE()))
					
					-- calculate for actual week
					INSERT INTO @tbl_MeasurementActual
						SELECT [measurement]
						FROM @tbl_Measurements 
						WHERE DATEPART(WEEK, [date]) = @intActualData 
						AND YEAR([date]) = @intActualYear 
						ORDER BY [date] DESC
					
					-- calculate for previous week
					INSERT INTO @tbl_MeasurementPrevious
						SELECT [measurement]
						FROM @tbl_Measurements 
						WHERE DATEPART(WEEK, [date]) = @intPreviousData 
						AND YEAR([date]) = @intPreviousYear 
						ORDER BY [date] DESC
				END
			
			IF(@varReportingUnitId = 'YEAR')
				BEGIN
					SET @intActualYear = YEAR(GETDATE())
					SET @intPreviousYear = @intActualYear -1
					
					-- calculate for actual year
					INSERT INTO @tbl_MeasurementActual
						SELECT [measurement]
						FROM @tbl_Measurements 
						WHERE YEAR([date]) = @intActualYear 
						ORDER BY [date] DESC
					
					-- calculate for previous year
					INSERT INTO @tbl_MeasurementPrevious
						SELECT [measurement]
						FROM @tbl_Measurements 
						WHERE YEAR([date]) = @intPreviousYear 
						ORDER BY [date] DESC
				END
			
			-- calculate for actual data
			SELECT @dcMeasurementActual = AVG(CONVERT(DECIMAL(25,3),[measurement]))
			FROM @tbl_MeasurementActual
			
			-- calculate for previous data
			SELECT @dcMeasurementPrevious = AVG(CONVERT(DECIMAL(25,3),[measurement]))
			FROM @tbl_MeasurementPrevious
			
			IF(ISNULL(@dcMeasurementPrevious,0) = 0)
				SET @dcTrend = 0
			ELSE
				SET @dcTrend = ((ISNULL(@dcMeasurementPrevious,0) - ISNULL(@dcMeasurementActual,0)) * 100)/ISNULL(@dcMeasurementPrevious,0)
			
			IF(@varDirectionId = 'MIN')
				SET @dcTrend = @dcTrend * -1
		END
	
	ELSE
		SET @dcTrend = 0

	-- Return the result of the function
	RETURN CONVERT(DECIMAL(9,2), ISNULL(@dcTrend,0))

END




GO
/****** Object:  UserDefinedFunction [dbo].[svf_GetReportingName]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016/05/18
-- Description:	Get reporting period name from date
-- =============================================
CREATE FUNCTION [dbo].[svf_GetReportingName] 
(
	@reportingUnitId CHAR(5),
	@date	DATE
)
RETURNS VARCHAR(25)
AS
BEGIN
	-- Declare the return variable here
	DECLARE @varResult VARCHAR(25)

	DECLARE @DAY INT 
	DECLARE @MONTH INT
	DECLARE @YEAR INT
	
	SELECT @DAY = DATEPART(DAY,@DATE)
	SELECT @MONTH = DATEPART(MONTH,@DATE)
	SELECT @YEAR = DATEPART(YEAR,@DATE)

	IF @reportingUnitId = 'YEAR'
		SET @varResult = CAST(@YEAR AS VARCHAR)
		
	IF @reportingUnitId = 'MONTH'
		SET @varResult = CAST(@MONTH AS VARCHAR) + '-' + CAST(@YEAR AS VARCHAR)
		
	IF @reportingUnitId = 'DAY'
		SET @varResult = CAST(@YEAR AS VARCHAR) + '-' + CAST(@MONTH AS VARCHAR) + '-' + CAST(@DAY AS VARCHAR)
		
	IF @reportingUnitId = 'WEEK'
		SET @varResult = CAST(DATEPART(WEEK,@date) AS VARCHAR) + '-' + CAST(@YEAR AS VARCHAR)
		
	IF @reportingUnitId = 'QUART'
		SET @varResult = 'Q' + CAST(DATEPART(QUARTER, @date) AS VARCHAR) + '-' + CAST(@YEAR AS VARCHAR)


	-- Return the result of the function
	RETURN @varResult

END




GO
/****** Object:  UserDefinedFunction [dbo].[tvf_GetDatesForKpiReportingForDays]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016-07-22
-- Description:	Gets a table with dates for KPI Chart
-- =============================================
CREATE FUNCTION [dbo].[tvf_GetDatesForKpiReportingForDays]
(
	@intAmountOfPeriods INT
)
RETURNS 
@tblDates TABLE 
(
	[from] DATE,
	[to] DATE
)
AS
BEGIN

	DECLARE @date DATE = GETDATE()

	WHILE @intAmountOfPeriods > 0
	BEGIN
		
		INSERT INTO @tblDates VALUES (@date, @date)		
		
		SET @date = DATEADD(day, -1, @date)
		SET @intAmountOfPeriods = @intAmountOfPeriods - 1

	END
	
	RETURN
END


GO
/****** Object:  UserDefinedFunction [dbo].[tvf_GetDatesForKpiReportingForMonths]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016-07-22
-- Description:	Gets a table with dates for KPI Chart
-- =============================================
CREATE FUNCTION [dbo].[tvf_GetDatesForKpiReportingForMonths]
(
	@intAmountOfPeriods INT
)
RETURNS 
@tblDates TABLE 
(
	[from] DATE,
	[to] DATE
)
AS
BEGIN
	DECLARE @today DATE = GETDATE()

	DECLARE @from DATE = CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(@today)-1),@today),101)
	DECLARE @to DATE = CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(DATEADD(mm,1,@today))),DATEADD(mm,1,@today)),101)

	WHILE @intAmountOfPeriods > 0
	BEGIN
		
		INSERT INTO @tblDates VALUES (@from, @to)		
		
		SET @to = DATEADD(day, -1, @from)
		SET @from = CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(@to)-1),@to),101)
		SET @intAmountOfPeriods = @intAmountOfPeriods - 1

	END
	
	RETURN
END


GO
/****** Object:  UserDefinedFunction [dbo].[tvf_GetDatesForKpiReportingForQuarter]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016-07-22
-- Description:	Gets a table with dates for KPI Chart
-- =============================================
CREATE FUNCTION [dbo].[tvf_GetDatesForKpiReportingForQuarter]
(
	@intAmountOfPeriods INT
)
RETURNS 
@tblDates TABLE 
(
	[from] DATE,
	[to] DATE
)
AS
BEGIN
	DECLARE @today DATE = GETDATE()

	DECLARE @from DATE = DATEADD(q, DATEDIFF(q, 0, @today), 0) 
	DECLARE @to DATE = DATEADD(d, -1, DATEADD(q, DATEDIFF(q, 0, @today) + 1, 0))

	WHILE @intAmountOfPeriods > 0
	BEGIN
		
		INSERT INTO @tblDates VALUES (@from, @to)		
		
		SET @to = DATEADD(day, -1, @from)
		SET @from = DATEADD(q, DATEDIFF(q, 0, @to), 0) 
		SET @intAmountOfPeriods = @intAmountOfPeriods - 1

	END
	
	RETURN
END


GO
/****** Object:  UserDefinedFunction [dbo].[tvf_GetDatesForKpiReportingForWeeks]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016-07-22
-- Description:	Gets a table with dates for KPI Chart
-- =============================================
CREATE FUNCTION [dbo].[tvf_GetDatesForKpiReportingForWeeks]
(
	@intAmountOfPeriods INT
)
RETURNS 
@tblDates TABLE 
(
	[from] DATE,
	[to] DATE
)
AS
BEGIN
	DECLARE @today DATE = GETDATE()

	DECLARE @from DATE = DATEADD(dd, -(DATEPART(dw, @today)-1), @today)
	DECLARE @to DATE = DATEADD(dd, 7-(DATEPART(dw, @today)), @today)

	WHILE @intAmountOfPeriods > 0
	BEGIN
		
		INSERT INTO @tblDates VALUES (@from, @to)		
		
		SET @to = DATEADD(day, -1, @from)
		SET @from = DATEADD(dd, -(DATEPART(dw, @to)-1), @to)
		SET @intAmountOfPeriods = @intAmountOfPeriods - 1

	END
	
	RETURN
END


GO
/****** Object:  UserDefinedFunction [dbo].[tvf_GetDatesForKpiReportingForYears]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016-07-22
-- Description:	Gets a table with dates for KPI Chart
-- =============================================
CREATE FUNCTION [dbo].[tvf_GetDatesForKpiReportingForYears]
(
	@intAmountOfPeriods INT
)
RETURNS 
@tblDates TABLE 
(
	[from] DATE,
	[to] DATE
)
AS
BEGIN
	DECLARE @today DATE = GETDATE()

	DECLARE @from DATE = DATEADD(yy, DATEDIFF(yy,0,@today), 0)
	DECLARE @to DATE = DATEADD(yy, DATEDIFF(yy,0,getdate()) + 1, -1)

	WHILE @intAmountOfPeriods > 0
	BEGIN
		
		INSERT INTO @tblDates VALUES (@from, @to)		
		
		SET @to = DATEADD(day, -1, @from)
		SET @from = DATEADD(yy, DATEDIFF(yy,0,@to), 0)
		SET @intAmountOfPeriods = @intAmountOfPeriods - 1

	END
	
	RETURN
END


GO
/****** Object:  UserDefinedFunction [dbo].[tvf_GetKpiMeasurements]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016/08/05
-- Description:	Gets measurements for KPI
-- =============================================
CREATE FUNCTION [dbo].[tvf_GetKpiMeasurements]
(	
	@intKpiId			INT,
	@varCategoryItems	VARCHAR(50)
)
RETURNS  
@tblMeasurements TABLE(
	[measurmentID] INT,
	[kpiId] INT,
	[date] DATE, 
	[measurement] DECIMAL(21,3), 
	[detalle] VARCHAR(MAX), 
	[categories] VARCHAR(MAX)
)
AS
BEGIN

	IF @varCategoryItems IS NULL
	BEGIN
	
		INSERT INTO @tblMeasurements  
		SELECT m.[measurmentID],
			@intKpiId,
			[date],
			[measurement],
			null,
			null
		FROM [dbo].[tbl_KPIMeasurements] m
		WHERE [kpiID] = @intKpiId
		
	END
	ELSE
	BEGIN
	
		DECLARE @intMeasurementId AS INT
		DECLARE @dtDate AS DATE
		DECLARE @dcMeasurement AS DECIMAL(21,3)
		DECLARE @varDetalle AS VARCHAR(MAX)
		DECLARE @varCategories AS VARCHAR(MAX)
	    
		DECLARE MEASUREMENT_CURSOR CURSOR FOR
			SELECT [measurmentID]
			FROM [dbo].[tbl_KPIMeasurements] 
			WHERE [kpiID] = @intKpiID
			ORDER BY [date] DESC
		
		OPEN MEASUREMENT_CURSOR
		
		FETCH NEXT FROM MEASUREMENT_CURSOR INTO @intMeasurementId
		
		WHILE @@FETCH_STATUS = 0
			BEGIN
				SELECT @varDetalle = COALESCE(COALESCE(CASE WHEN @varDetalle = '' THEN '' ELSE @varDetalle + ', ' END, '') + [i].[categoryItemID], @varDetalle),
					   @varCategories = COALESCE(COALESCE(CASE WHEN @varCategories = '' THEN '' ELSE @varCategories + ', ' END, '') + [i].[categoryID], @varCategories),
					   @dtDate = [m].[date],
					   @dcMeasurement = [m].[measurement]
				FROM [dbo].[tbl_KPIMeasurements] [m]  
				LEFT OUTER JOIN [dbo].[tbl_KPIMeasurementCategories] [c] ON [m].[measurmentID] = [c].[measurementID] 
				LEFT OUTER JOIN [dbo].[tbl_CategoryItem] [i] ON [c].[categoryItemID] = [i].[categoryItemID] 
					AND [c].[categoryID] = [i].[categoryID]
				WHERE [m].[measurmentID] = @intMeasurementId 
				ORDER BY [i].[categoryID]
				
				INSERT INTO @tblMeasurements VALUES(@intMeasurementId, @intKpiId, @dtDate, @dcMeasurement, @varDetalle, @varCategories)
				
				SET @varDetalle = ''
				SET @varCategories = ''
				SET @dtDate = NULL
				SET @dcMeasurement = NULL
				
				FETCH NEXT FROM MEASUREMENT_CURSOR INTO @intMeasurementId
			END
		
		CLOSE MEASUREMENT_CURSOR;
		DEALLOCATE MEASUREMENT_CURSOR;
	    
	END		

	RETURN
END


GO
/****** Object:  UserDefinedFunction [dbo].[tvf_GetKpiTargetForCategories]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016/08/05
-- Description:	Gets measurements for KPI
-- =============================================
CREATE FUNCTION [dbo].[tvf_GetKpiTargetForCategories]
(	
	@intKpiId			INT
)
RETURNS  
@tblTargets TABLE(
	[targetID] INT,
	[kpiId] INT,
	[detalle] VARCHAR(1000),
	[categories] VARCHAR(1000),
	[target] DECIMAL(21,9)
)
AS
BEGIN

	DECLARE @targetID INT
	DECLARE @detalle VARCHAR(1000)
	DECLARE @categories VARCHAR(1000)
	DECLARE @valor DECIMAL(21,9)

	DECLARE target_cursor CURSOR FOR 
		SELECT DISTINCT [t].[targetID], [t].[target]
		FROM [dbo].[tbl_KPITarget] [t]
		INNER JOIN [dbo].[tbl_KPITargetCategories] [c] ON [t].[targetID] = [c].[targetID]
		WHERE [kpiID] = @intKpiId
	OPEN target_cursor

	FETCH NEXT FROM target_cursor
	INTO @targetID, @valor

	WHILE @@FETCH_STATUS = 0
	BEGIN
		
		SELECT @detalle = COALESCE(COALESCE(CASE WHEN @detalle = '' THEN '' ELSE @detalle + ', ' END, '') + [i].[categoryItemID], @detalle),
		       @categories = COALESCE(COALESCE(CASE WHEN @categories = '' THEN '' ELSE @categories + ', ' END, '') + [i].[categoryID], @categories)
		FROM [dbo].[tbl_KPITargetCategories] [c]
		INNER JOIN [dbo].[tbl_CategoryItem] [i] ON [c].[categoryItemID] = [i].[categoryItemID] 
		AND [c].[categoryID] = [i].[categoryID] 
		WHERE [targetID] = @targetID 
		ORDER BY [i].[categoryItemID]

		INSERT @tblTargets VALUES (@targetID, @intKpiId, @detalle, @categories, @valor)
		
		SET @detalle = ''
		
		FETCH NEXT FROM target_cursor
		INTO @targetID, @valor
	END

	CLOSE target_cursor;
	DEALLOCATE target_cursor;

	RETURN
END


GO
/****** Object:  UserDefinedFunction [dbo].[tvf_SplitStringInDecimalTable]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[tvf_SplitStringInDecimalTable]
(
	@varString VARCHAR(MAX),
    @varDelimiter VARCHAR(5)
)
RETURNS @tblSplittedValues TABLE
(
  splitvalue VARCHAR(8000)
)
AS
BEGIN
 DECLARE @intSplitLength INT

 WHILE LEN(@varString) > 0
  BEGIN
    SELECT @intSplitLength = 
     (CASE CHARINDEX(@varDelimiter,@varString) 
     WHEN 0 THEN
      LEN(@varString) 
     ELSE CHARINDEX(@varDelimiter,@varString) -1  
     END)

    INSERT INTO @tblSplittedValues
    SELECT CONVERT(decimal(21,3), SUBSTRING(@varString,1,@intSplitLength))

    SELECT @varString = 
     (CASE (LEN(@varString) - @intSplitLength) 
      WHEN 0 THEN ''
      ELSE 
       RIGHT(@varString, LEN(@varString) - @intSplitLength - 1) 
     END)
  END
 RETURN
END 

GO
/****** Object:  UserDefinedFunction [dbo].[tvf_SplitStringInIntTable]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[tvf_SplitStringInIntTable]
(
	@varString VARCHAR(MAX),
    @varDelimiter VARCHAR(5)
)
RETURNS @tblSplittedValues TABLE
(
  splitvalue VARCHAR(8000)
)
AS
BEGIN
 DECLARE @intSplitLength INT

 WHILE LEN(@varString) > 0
  BEGIN
    SELECT @intSplitLength = 
     (CASE CHARINDEX(@varDelimiter,@varString) 
     WHEN 0 THEN
      LEN(@varString) 
     ELSE CHARINDEX(@varDelimiter,@varString) -1  
     END)

    INSERT INTO @tblSplittedValues
    SELECT CONVERT(int, SUBSTRING(@varString,1,@intSplitLength))

    SELECT @varString = 
     (CASE (LEN(@varString) - @intSplitLength) 
      WHEN 0 THEN ''
      ELSE 
       RIGHT(@varString, LEN(@varString) - @intSplitLength - 1) 
     END)
  END
 RETURN
END 

GO
/****** Object:  UserDefinedFunction [dbo].[tvf_SplitStringInTable]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--===========================================================================================================
-- Modified on May 28 2007
-- Modified by Ivan Krsul
-- Modification Description:  Made the string to split longer... from 500 to 1000 characters
CREATE FUNCTION [dbo].[tvf_SplitStringInTable]
(
    @varString VARCHAR(8000),
    @varDelimiter VARCHAR(5)
)
RETURNS @tblSplittedValues TABLE
(
  --OccurenceId SMALLINT IDENTITY(1,1),
  splitvalue VARCHAR(8000)
)
AS
BEGIN
	DECLARE @intSplitLength INT

	WHILE LEN(@varString) > 0
		BEGIN
			SELECT @intSplitLength = 
				(CASE CHARINDEX(@varDelimiter,@varString) 
				WHEN 0 THEN
					LEN(@varString) 
				ELSE CHARINDEX(@varDelimiter,@varString) -1  
				END)

			INSERT INTO @tblSplittedValues
			SELECT SUBSTRING(@varString,1,@intSplitLength)

			SELECT @varString = 
				(CASE (LEN(@varString) - @intSplitLength) 
					WHEN 0 THEN ''
					ELSE	
						RIGHT(@varString, LEN(@varString) - @intSplitLength - 1) 
				END)
		END
	RETURN
END



GO
/****** Object:  UserDefinedFunction [dbo].[tvf_SplitStringInVarCharTable]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[tvf_SplitStringInVarCharTable]
(
	@varString VARCHAR(MAX),
    @varDelimiter VARCHAR(5)
)
RETURNS @tblSplittedValues TABLE
(
  splitvalue VARCHAR(8000)
)
AS
BEGIN
 DECLARE @intSplitLength INT

 WHILE LEN(@varString) > 0
  BEGIN
    SELECT @intSplitLength = 
     (CASE CHARINDEX(@varDelimiter,@varString) 
     WHEN 0 THEN
      LEN(@varString) 
     ELSE CHARINDEX(@varDelimiter,@varString) -1  
     END)

    INSERT INTO @tblSplittedValues
    SELECT CONVERT(varchar, SUBSTRING(@varString,1,@intSplitLength))

    SELECT @varString = 
     (CASE (LEN(@varString) - @intSplitLength) 
      WHEN 0 THEN ''
      ELSE 
       RIGHT(@varString, LEN(@varString) - @intSplitLength - 1) 
     END)
  END
 RETURN
END 

GO
/****** Object:  Table [dbo].[aspnet_Applications]    Script Date: 3/23/2021 5:58:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Applications](
	[ApplicationName] [nvarchar](256) NOT NULL,
	[LoweredApplicationName] [nvarchar](256) NOT NULL,
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[ApplicationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[ApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Applications_Index]    Script Date: 3/23/2021 5:58:41 PM ******/
CREATE CLUSTERED INDEX [aspnet_Applications_Index] ON [dbo].[aspnet_Applications]
(
	[LoweredApplicationName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Applications]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Applications]
  AS SELECT [dbo].[aspnet_Applications].[ApplicationName], [dbo].[aspnet_Applications].[LoweredApplicationName], [dbo].[aspnet_Applications].[ApplicationId], [dbo].[aspnet_Applications].[Description]
  FROM [dbo].[aspnet_Applications]
  
GO
/****** Object:  Table [dbo].[aspnet_Membership]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Membership](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[Password] [nvarchar](128) NOT NULL,
	[PasswordFormat] [int] NOT NULL,
	[PasswordSalt] [nvarchar](128) NOT NULL,
	[MobilePIN] [nvarchar](16) NULL,
	[Email] [nvarchar](256) NULL,
	[LoweredEmail] [nvarchar](256) NULL,
	[PasswordQuestion] [nvarchar](256) NULL,
	[PasswordAnswer] [nvarchar](128) NULL,
	[IsApproved] [bit] NOT NULL,
	[IsLockedOut] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastLoginDate] [datetime] NOT NULL,
	[LastPasswordChangedDate] [datetime] NOT NULL,
	[LastLockoutDate] [datetime] NOT NULL,
	[FailedPasswordAttemptCount] [int] NOT NULL,
	[FailedPasswordAttemptWindowStart] [datetime] NOT NULL,
	[FailedPasswordAnswerAttemptCount] [int] NOT NULL,
	[FailedPasswordAnswerAttemptWindowStart] [datetime] NOT NULL,
	[Comment] [ntext] NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Membership_index]    Script Date: 3/23/2021 5:58:41 PM ******/
CREATE CLUSTERED INDEX [aspnet_Membership_index] ON [dbo].[aspnet_Membership]
(
	[ApplicationId] ASC,
	[LoweredEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_Users]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Users](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[LoweredUserName] [nvarchar](256) NOT NULL,
	[MobileAlias] [nvarchar](16) NULL,
	[IsAnonymous] [bit] NOT NULL,
	[LastActivityDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Users_Index]    Script Date: 3/23/2021 5:58:41 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Users_Index] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LoweredUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_MembershipUsers]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_MembershipUsers]
  AS SELECT [dbo].[aspnet_Membership].[UserId],
            [dbo].[aspnet_Membership].[PasswordFormat],
            [dbo].[aspnet_Membership].[MobilePIN],
            [dbo].[aspnet_Membership].[Email],
            [dbo].[aspnet_Membership].[LoweredEmail],
            [dbo].[aspnet_Membership].[PasswordQuestion],
            [dbo].[aspnet_Membership].[PasswordAnswer],
            [dbo].[aspnet_Membership].[IsApproved],
            [dbo].[aspnet_Membership].[IsLockedOut],
            [dbo].[aspnet_Membership].[CreateDate],
            [dbo].[aspnet_Membership].[LastLoginDate],
            [dbo].[aspnet_Membership].[LastPasswordChangedDate],
            [dbo].[aspnet_Membership].[LastLockoutDate],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAttemptWindowStart],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptCount],
            [dbo].[aspnet_Membership].[FailedPasswordAnswerAttemptWindowStart],
            [dbo].[aspnet_Membership].[Comment],
            [dbo].[aspnet_Users].[ApplicationId],
            [dbo].[aspnet_Users].[UserName],
            [dbo].[aspnet_Users].[MobileAlias],
            [dbo].[aspnet_Users].[IsAnonymous],
            [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Membership] INNER JOIN [dbo].[aspnet_Users]
      ON [dbo].[aspnet_Membership].[UserId] = [dbo].[aspnet_Users].[UserId]
  
GO
/****** Object:  Table [dbo].[aspnet_Profile]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Profile](
	[UserId] [uniqueidentifier] NOT NULL,
	[PropertyNames] [ntext] NOT NULL,
	[PropertyValuesString] [ntext] NOT NULL,
	[PropertyValuesBinary] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Profiles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Profiles]
  AS SELECT [dbo].[aspnet_Profile].[UserId], [dbo].[aspnet_Profile].[LastUpdatedDate],
      [DataSize]=  DATALENGTH([dbo].[aspnet_Profile].[PropertyNames])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesString])
                 + DATALENGTH([dbo].[aspnet_Profile].[PropertyValuesBinary])
  FROM [dbo].[aspnet_Profile]
  
GO
/****** Object:  Table [dbo].[aspnet_Roles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Roles](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[RoleName] [nvarchar](256) NOT NULL,
	[LoweredRoleName] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](256) NULL,
PRIMARY KEY NONCLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Roles_index1]    Script Date: 3/23/2021 5:58:41 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Roles_index1] ON [dbo].[aspnet_Roles]
(
	[ApplicationId] ASC,
	[LoweredRoleName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_Roles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Roles]
  AS SELECT [dbo].[aspnet_Roles].[ApplicationId], [dbo].[aspnet_Roles].[RoleId], [dbo].[aspnet_Roles].[RoleName], [dbo].[aspnet_Roles].[LoweredRoleName], [dbo].[aspnet_Roles].[Description]
  FROM [dbo].[aspnet_Roles]
  
GO
/****** Object:  View [dbo].[vw_aspnet_Users]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_Users]
  AS SELECT [dbo].[aspnet_Users].[ApplicationId], [dbo].[aspnet_Users].[UserId], [dbo].[aspnet_Users].[UserName], [dbo].[aspnet_Users].[LoweredUserName], [dbo].[aspnet_Users].[MobileAlias], [dbo].[aspnet_Users].[IsAnonymous], [dbo].[aspnet_Users].[LastActivityDate]
  FROM [dbo].[aspnet_Users]
  
GO
/****** Object:  Table [dbo].[aspnet_UsersInRoles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_UsersInRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_UsersInRoles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_UsersInRoles]
  AS SELECT [dbo].[aspnet_UsersInRoles].[UserId], [dbo].[aspnet_UsersInRoles].[RoleId]
  FROM [dbo].[aspnet_UsersInRoles]
  
GO
/****** Object:  Table [dbo].[aspnet_Paths]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_Paths](
	[ApplicationId] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NOT NULL,
	[Path] [nvarchar](256) NOT NULL,
	[LoweredPath] [nvarchar](256) NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [aspnet_Paths_index]    Script Date: 3/23/2021 5:58:41 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_Paths_index] ON [dbo].[aspnet_Paths]
(
	[ApplicationId] ASC,
	[LoweredPath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Paths]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Paths]
  AS SELECT [dbo].[aspnet_Paths].[ApplicationId], [dbo].[aspnet_Paths].[PathId], [dbo].[aspnet_Paths].[Path], [dbo].[aspnet_Paths].[LoweredPath]
  FROM [dbo].[aspnet_Paths]
  
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationAllUsers]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationAllUsers](
	[PathId] [uniqueidentifier] NOT NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_Shared]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_Shared]
  AS SELECT [dbo].[aspnet_PersonalizationAllUsers].[PathId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationAllUsers].[PageSettings]), [dbo].[aspnet_PersonalizationAllUsers].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationAllUsers]
  
GO
/****** Object:  Table [dbo].[aspnet_PersonalizationPerUser]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_PersonalizationPerUser](
	[Id] [uniqueidentifier] NOT NULL,
	[PathId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[PageSettings] [image] NOT NULL,
	[LastUpdatedDate] [datetime] NOT NULL,
PRIMARY KEY NONCLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_index1]    Script Date: 3/23/2021 5:58:41 PM ******/
CREATE UNIQUE CLUSTERED INDEX [aspnet_PersonalizationPerUser_index1] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[PathId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vw_aspnet_WebPartState_User]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

  CREATE VIEW [dbo].[vw_aspnet_WebPartState_User]
  AS SELECT [dbo].[aspnet_PersonalizationPerUser].[PathId], [dbo].[aspnet_PersonalizationPerUser].[UserId], [DataSize]=DATALENGTH([dbo].[aspnet_PersonalizationPerUser].[PageSettings]), [dbo].[aspnet_PersonalizationPerUser].[LastUpdatedDate]
  FROM [dbo].[aspnet_PersonalizationPerUser]
  
GO
/****** Object:  Table [dbo].[aspnet_SchemaVersions]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_SchemaVersions](
	[Feature] [nvarchar](128) NOT NULL,
	[CompatibleSchemaVersion] [nvarchar](128) NOT NULL,
	[IsCurrentVersion] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Feature] ASC,
	[CompatibleSchemaVersion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[aspnet_WebEvent_Events]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[aspnet_WebEvent_Events](
	[EventId] [char](32) NOT NULL,
	[EventTimeUtc] [datetime] NOT NULL,
	[EventTime] [datetime] NOT NULL,
	[EventType] [nvarchar](256) NOT NULL,
	[EventSequence] [decimal](19, 0) NOT NULL,
	[EventOccurrence] [decimal](19, 0) NOT NULL,
	[EventCode] [int] NOT NULL,
	[EventDetailCode] [int] NOT NULL,
	[Message] [nvarchar](1024) NULL,
	[ApplicationPath] [nvarchar](256) NULL,
	[ApplicationVirtualPath] [nvarchar](256) NULL,
	[MachineName] [nvarchar](256) NOT NULL,
	[RequestUrl] [nvarchar](1024) NULL,
	[ExceptionType] [nvarchar](256) NULL,
	[Details] [ntext] NULL,
PRIMARY KEY CLUSTERED 
(
	[EventId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Activity]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Activity](
	[activityID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[organizationID] [int] NOT NULL,
	[areaID] [int] NULL,
	[projectID] [int] NULL,
	[deleted] [bit] NOT NULL,
	[dateDeleted] [datetime] NULL,
	[usernameDeleted] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Activity] PRIMARY KEY CLUSTERED 
(
	[activityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Area]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Area](
	[areaID] [int] IDENTITY(1,1) NOT NULL,
	[organizationID] [int] NOT NULL,
	[name] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_Area] PRIMARY KEY CLUSTERED 
(
	[areaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Category]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Category](
	[categoryID] [varchar](20) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_Category] PRIMARY KEY CLUSTERED 
(
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CategoryItem]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CategoryItem](
	[categoryItemID] [varchar](20) NOT NULL,
	[categoryID] [varchar](20) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_CategoryItem] PRIMARY KEY CLUSTERED 
(
	[categoryItemID] ASC,
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Currency]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Currency](
	[currencyID] [char](3) NOT NULL,
 CONSTRAINT [PK_tbl_Currency] PRIMARY KEY CLUSTERED 
(
	[currencyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CurrencyLabels]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CurrencyLabels](
	[currencyID] [char](3) NOT NULL,
	[language] [char](2) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_CurencyLabels] PRIMARY KEY CLUSTERED 
(
	[currencyID] ASC,
	[language] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CurrencyUnits]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CurrencyUnits](
	[currencyUnitID] [char](3) NOT NULL,
 CONSTRAINT [PK_tbl_CurrencyUnits_1] PRIMARY KEY CLUSTERED 
(
	[currencyUnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CurrencyUnitsLabels]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CurrencyUnitsLabels](
	[currencyUnitID] [char](3) NOT NULL,
	[language] [char](2) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_CurrencyUnitsLabels] PRIMARY KEY CLUSTERED 
(
	[currencyUnitID] ASC,
	[language] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DatabaseInfo]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DatabaseInfo](
	[majorversion] [smallint] NOT NULL,
	[minorversion] [smallint] NOT NULL,
	[releaseversion] [smallint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Direction]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Direction](
	[directionID] [char](3) NOT NULL,
 CONSTRAINT [PK_tbl_Direction] PRIMARY KEY CLUSTERED 
(
	[directionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_DirectionLabels]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_DirectionLabels](
	[directionID] [char](3) NOT NULL,
	[language] [char](2) NOT NULL,
	[name] [nvarchar](250) NULL,
 CONSTRAINT [PK_tbl_DirectionLabels] PRIMARY KEY CLUSTERED 
(
	[directionID] ASC,
	[language] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KPI]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KPI](
	[kpiID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[organizationID] [int] NULL,
	[areaID] [int] NULL,
	[projectID] [int] NULL,
	[activityID] [int] NULL,
	[personID] [int] NULL,
	[unitID] [varchar](10) NOT NULL,
	[directionID] [char](3) NOT NULL,
	[strategyID] [char](3) NOT NULL,
	[startDate] [date] NULL,
	[reportingUnitID] [char](5) NOT NULL,
	[targetPeriod] [int] NULL,
	[allowsCategories] [bit] NOT NULL,
	[currency] [char](3) NULL,
	[currencyUnitID] [char](3) NULL,
	[kpiTypeID] [varchar](10) NOT NULL,
	[deleted] [bit] NOT NULL,
	[dateDeleted] [datetime] NULL,
	[usernameDeleted] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_KPI] PRIMARY KEY CLUSTERED 
(
	[kpiID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KPICategories]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KPICategories](
	[kpiID] [int] NOT NULL,
	[categoryID] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tbl_KPICategories_1] PRIMARY KEY CLUSTERED 
(
	[kpiID] ASC,
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KPIDashboard]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KPIDashboard](
	[kpiDashboardId] [int] IDENTITY(1,1) NOT NULL,
	[dashboardId] [int] NULL,
	[kpiId] [int] NOT NULL,
	[ownerUserId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_KPI_KPIDashboard] PRIMARY KEY CLUSTERED 
(
	[kpiDashboardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KPIMeasurementCategories]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KPIMeasurementCategories](
	[measurementID] [int] NOT NULL,
	[categoryItemID] [varchar](20) NOT NULL,
	[categoryID] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tbl_KPIMeasurementCategories] PRIMARY KEY CLUSTERED 
(
	[measurementID] ASC,
	[categoryItemID] ASC,
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KPIMeasurements]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KPIMeasurements](
	[measurmentID] [int] IDENTITY(1,1) NOT NULL,
	[kpiID] [int] NOT NULL,
	[date] [date] NOT NULL,
	[measurement] [decimal](21, 3) NOT NULL,
 CONSTRAINT [PK_tbl_KPICategoryMeasurements] PRIMARY KEY CLUSTERED 
(
	[measurmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KpiReportingPeriod]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KpiReportingPeriod](
	[reportingUnitId] [char](5) NOT NULL,
	[periodsToReport] [int] NOT NULL,
	[days] [int] NOT NULL,
 CONSTRAINT [PK_tbl_KpiReportingPeriod] PRIMARY KEY CLUSTERED 
(
	[reportingUnitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KPITarget]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KPITarget](
	[targetID] [int] IDENTITY(1,1) NOT NULL,
	[kpiID] [int] NOT NULL,
	[target] [decimal](21, 9) NOT NULL,
 CONSTRAINT [PK_tbl_KPITargets] PRIMARY KEY CLUSTERED 
(
	[targetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KPITargetCategories]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KPITargetCategories](
	[targetID] [int] NOT NULL,
	[categoryItemID] [varchar](20) NOT NULL,
	[categoryID] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tbl_KPICategoryTargets] PRIMARY KEY CLUSTERED 
(
	[targetID] ASC,
	[categoryItemID] ASC,
	[categoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KPITypes]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KPITypes](
	[kpiTypeID] [varchar](10) NOT NULL,
	[directionID] [char](3) NOT NULL,
	[strategyID] [char](3) NOT NULL,
	[unitID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tbl_kpiTypes] PRIMARY KEY CLUSTERED 
(
	[kpiTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_KPITypesLabels]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_KPITypesLabels](
	[kpiTypeID] [varchar](10) NOT NULL,
	[language] [char](2) NOT NULL,
	[typeName] [nvarchar](250) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_tbl_KPITypesLabels] PRIMARY KEY CLUSTERED 
(
	[kpiTypeID] ASC,
	[language] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Language]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Language](
	[languageID] [char](2) NOT NULL,
	[languageName] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_Language] PRIMARY KEY CLUSTERED 
(
	[languageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Organization]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Organization](
	[organizationID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[deleted] [bit] NOT NULL,
	[dateDeleted] [datetime] NULL,
	[usernameDeleted] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Organization] PRIMARY KEY CLUSTERED 
(
	[organizationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_PAR_Parameter]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_PAR_Parameter](
	[parameterID] [int] NOT NULL,
	[description] [varchar](250) NOT NULL,
	[value] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tbl_PAR_Parameter] PRIMARY KEY CLUSTERED 
(
	[parameterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_People]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_People](
	[personID] [int] IDENTITY(1,1) NOT NULL,
	[id] [nvarchar](50) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[organizationID] [int] NOT NULL,
	[areaID] [int] NULL,
	[deleted] [bit] NOT NULL,
	[dateDeleted] [datetime] NULL,
	[usernameDeleted] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_People] PRIMARY KEY CLUSTERED 
(
	[personID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Project]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Project](
	[projectID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[organizationID] [int] NOT NULL,
	[areaID] [int] NULL,
	[deleted] [bit] NOT NULL,
	[dateDeleted] [datetime] NULL,
	[usernameDeleted] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Project] PRIMARY KEY CLUSTERED 
(
	[projectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ReportingUnit]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ReportingUnit](
	[reportingUnitID] [char](5) NOT NULL,
 CONSTRAINT [PK_tbl_ReportingUnit] PRIMARY KEY CLUSTERED 
(
	[reportingUnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ReportingUnitLabels]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ReportingUnitLabels](
	[reportingUnitID] [char](5) NOT NULL,
	[language] [char](2) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_ReportingUnitLabels] PRIMARY KEY CLUSTERED 
(
	[reportingUnitID] ASC,
	[language] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SavedSearch]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SavedSearch](
	[searchId] [varchar](50) NOT NULL,
	[userId] [int] NOT NULL,
	[name] [varchar](50) NOT NULL,
	[searchExpression] [varchar](1000) NULL,
	[dateCreated] [datetime] NULL,
 CONSTRAINT [PK_tbl_SavedSearch_1] PRIMARY KEY CLUSTERED 
(
	[searchId] ASC,
	[userId] ASC,
	[name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SEG_AccessRole]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_AccessRole](
	[permissionID] [int] NOT NULL,
	[role] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tbl_SEG_AccessRole] PRIMARY KEY CLUSTERED 
(
	[permissionID] ASC,
	[role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SEG_AccessUser]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_AccessUser](
	[permissionID] [int] NOT NULL,
	[userID] [int] NOT NULL,
 CONSTRAINT [PK_tbl_SEG_AccessUser] PRIMARY KEY CLUSTERED 
(
	[permissionID] ASC,
	[userID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SEG_ObjectActions]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_ObjectActions](
	[objectActionID] [varchar](20) NOT NULL,
	[order] [int] NULL,
 CONSTRAINT [PK_tbl_SEG_ObjectActions] PRIMARY KEY CLUSTERED 
(
	[objectActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SEG_ObjectPermissions]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_ObjectPermissions](
	[objectTypeID] [varchar](20) NOT NULL,
	[objectID] [int] NOT NULL,
	[username] [varchar](50) NOT NULL,
	[objectActionID] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tbl_SEG_ObjectPermissions] PRIMARY KEY CLUSTERED 
(
	[objectTypeID] ASC,
	[objectID] ASC,
	[username] ASC,
	[objectActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SEG_ObjectPublic]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_ObjectPublic](
	[objectTypeID] [varchar](20) NOT NULL,
	[objectID] [int] NOT NULL,
	[objectActionID] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tbl_SEG_ObjectPublic] PRIMARY KEY CLUSTERED 
(
	[objectTypeID] ASC,
	[objectID] ASC,
	[objectActionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SEG_ObjectTypes]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_ObjectTypes](
	[objectTypeID] [varchar](20) NOT NULL,
 CONSTRAINT [PK_tbl_SEG_ObjectTypes] PRIMARY KEY CLUSTERED 
(
	[objectTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SEG_Permission]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_Permission](
	[permissionID] [int] NOT NULL,
	[mnemonic] [varchar](100) NOT NULL,
	[description] [varchar](250) NULL,
 CONSTRAINT [PK_tbl_SEG_Permissions] PRIMARY KEY CLUSTERED 
(
	[permissionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_SEG_User]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SEG_User](
	[userId] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [varchar](500) NOT NULL,
	[cellphone] [varchar](50) NULL,
	[address] [varchar](250) NULL,
	[phonenumber] [varchar](25) NULL,
	[username] [varchar](50) NOT NULL,
	[email] [varchar](100) NOT NULL,
	[phonearea] [int] NULL,
	[phonecode] [int] NULL,
 CONSTRAINT [PK_tbl_SEG_User] PRIMARY KEY CLUSTERED 
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Strategy]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Strategy](
	[strategyID] [char](3) NOT NULL,
 CONSTRAINT [PK_tbl_Strategy] PRIMARY KEY CLUSTERED 
(
	[strategyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_StrategyLabels]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_StrategyLabels](
	[strategyID] [char](3) NOT NULL,
	[language] [char](2) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_StrategyLabels] PRIMARY KEY CLUSTERED 
(
	[strategyID] ASC,
	[language] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TSK_Manager]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TSK_Manager](
	[ManagerId] [int] IDENTITY(1,1) NOT NULL,
	[Status] [bit] NOT NULL,
	[SleepTimeSeconds] [bigint] NOT NULL,
	[NumberOfOverlapsAllowed] [int] NOT NULL,
 CONSTRAINT [PK_tbl_TSK_Manager] PRIMARY KEY CLUSTERED 
(
	[ManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_TSK_Task]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TSK_Task](
	[TaskId] [varchar](50) NOT NULL,
	[TaskName] [varchar](50) NOT NULL,
	[TaskDescription] [varchar](200) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[PeriodLengthSeconds] [bigint] NOT NULL,
	[Iterations] [int] NOT NULL,
	[Enabled] [bit] NOT NULL,
	[IterationsExecuted] [int] NOT NULL,
	[LastExecutionDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_TSK_Task] PRIMARY KEY CLUSTERED 
(
	[TaskId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Unit]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Unit](
	[unitID] [varchar](10) NOT NULL,
 CONSTRAINT [PK_tbl_Unit] PRIMARY KEY CLUSTERED 
(
	[unitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UnitLabels]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UnitLabels](
	[unitID] [varchar](10) NOT NULL,
	[language] [char](2) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_tbl_UnitLabels] PRIMARY KEY CLUSTERED 
(
	[unitID] ASC,
	[language] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UnitsAllowedForCurrency]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UnitsAllowedForCurrency](
	[currencyID] [char](3) NOT NULL,
	[currencyUnitID] [char](3) NOT NULL,
	[orden] [int] NULL,
	[hasMeasure] [bit] NULL,
 CONSTRAINT [PK_tbl_UnitsAllowedForCurrency] PRIMARY KEY CLUSTERED 
(
	[currencyID] ASC,
	[currencyUnitID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserDashboard]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserDashboard](
	[dashboardId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](250) NOT NULL,
	[ownerUserId] [int] NOT NULL,
 CONSTRAINT [PK_tbl_KPI_UserDashboard] PRIMARY KEY CLUSTERED 
(
	[dashboardId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserTour]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserTour](
	[userId] [int] NOT NULL,
	[tourId] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_ViewState]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_ViewState](
	[ViewStateId] [uniqueidentifier] NOT NULL,
	[Value] [image] NOT NULL,
	[LastAccessed] [datetime] NOT NULL,
	[Timeout] [int] NOT NULL,
 CONSTRAINT [PK_ViewState] PRIMARY KEY CLUSTERED 
(
	[ViewStateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [aspnet_PersonalizationPerUser_ncindex2]    Script Date: 3/23/2021 5:58:41 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [aspnet_PersonalizationPerUser_ncindex2] ON [dbo].[aspnet_PersonalizationPerUser]
(
	[UserId] ASC,
	[PathId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_Users_Index2]    Script Date: 3/23/2021 5:58:41 PM ******/
CREATE NONCLUSTERED INDEX [aspnet_Users_Index2] ON [dbo].[aspnet_Users]
(
	[ApplicationId] ASC,
	[LastActivityDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [aspnet_UsersInRoles_index]    Script Date: 3/23/2021 5:58:41 PM ******/
CREATE NONCLUSTERED INDEX [aspnet_UsersInRoles_index] ON [dbo].[aspnet_UsersInRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[aspnet_Applications] ADD  DEFAULT (newid()) FOR [ApplicationId]
GO
ALTER TABLE [dbo].[aspnet_Membership] ADD  DEFAULT ((0)) FOR [PasswordFormat]
GO
ALTER TABLE [dbo].[aspnet_Paths] ADD  DEFAULT (newid()) FOR [PathId]
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser] ADD  DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [dbo].[aspnet_Roles] ADD  DEFAULT (newid()) FOR [RoleId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (newid()) FOR [UserId]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT (NULL) FOR [MobileAlias]
GO
ALTER TABLE [dbo].[aspnet_Users] ADD  DEFAULT ((0)) FOR [IsAnonymous]
GO
ALTER TABLE [dbo].[tbl_Activity] ADD  CONSTRAINT [DF_tbl_Activity_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[tbl_KPI] ADD  CONSTRAINT [DF_tbl_Kpi_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[tbl_KPITarget] ADD  DEFAULT ((0)) FOR [target]
GO
ALTER TABLE [dbo].[tbl_Organization] ADD  CONSTRAINT [DF_tbl_Organization_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[tbl_People] ADD  CONSTRAINT [DF_tbl_People_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[tbl_Project] ADD  CONSTRAINT [DF_tbl_Project_deleted]  DEFAULT ((0)) FOR [deleted]
GO
ALTER TABLE [dbo].[tbl_UnitsAllowedForCurrency] ADD  DEFAULT ((0)) FOR [orden]
GO
ALTER TABLE [dbo].[tbl_UnitsAllowedForCurrency] ADD  DEFAULT ((0)) FOR [hasMeasure]
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Membership]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Paths]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationAllUsers]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([PathId])
REFERENCES [dbo].[aspnet_Paths] ([PathId])
GO
ALTER TABLE [dbo].[aspnet_PersonalizationPerUser]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Profile]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[aspnet_Roles]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_Users]  WITH CHECK ADD FOREIGN KEY([ApplicationId])
REFERENCES [dbo].[aspnet_Applications] ([ApplicationId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([RoleId])
REFERENCES [dbo].[aspnet_Roles] ([RoleId])
GO
ALTER TABLE [dbo].[aspnet_UsersInRoles]  WITH CHECK ADD FOREIGN KEY([UserId])
REFERENCES [dbo].[aspnet_Users] ([UserId])
GO
ALTER TABLE [dbo].[tbl_Activity]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Activity_tbl_Area] FOREIGN KEY([areaID])
REFERENCES [dbo].[tbl_Area] ([areaID])
GO
ALTER TABLE [dbo].[tbl_Activity] CHECK CONSTRAINT [FK_tbl_Activity_tbl_Area]
GO
ALTER TABLE [dbo].[tbl_Activity]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Activity_tbl_Organization] FOREIGN KEY([organizationID])
REFERENCES [dbo].[tbl_Organization] ([organizationID])
GO
ALTER TABLE [dbo].[tbl_Activity] CHECK CONSTRAINT [FK_tbl_Activity_tbl_Organization]
GO
ALTER TABLE [dbo].[tbl_Activity]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Activity_tbl_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[tbl_Project] ([projectID])
GO
ALTER TABLE [dbo].[tbl_Activity] CHECK CONSTRAINT [FK_tbl_Activity_tbl_Project]
GO
ALTER TABLE [dbo].[tbl_Area]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Area_tbl_Organization] FOREIGN KEY([organizationID])
REFERENCES [dbo].[tbl_Organization] ([organizationID])
GO
ALTER TABLE [dbo].[tbl_Area] CHECK CONSTRAINT [FK_tbl_Area_tbl_Organization]
GO
ALTER TABLE [dbo].[tbl_CategoryItem]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CategoryItem_tbl_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[tbl_Category] ([categoryID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_CategoryItem] CHECK CONSTRAINT [FK_tbl_CategoryItem_tbl_Category]
GO
ALTER TABLE [dbo].[tbl_CurrencyLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CurencyLabels_tbl_Language] FOREIGN KEY([language])
REFERENCES [dbo].[tbl_Language] ([languageID])
GO
ALTER TABLE [dbo].[tbl_CurrencyLabels] CHECK CONSTRAINT [FK_tbl_CurencyLabels_tbl_Language]
GO
ALTER TABLE [dbo].[tbl_CurrencyLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CurrencyLabels_tbl_Currency] FOREIGN KEY([currencyID])
REFERENCES [dbo].[tbl_Currency] ([currencyID])
GO
ALTER TABLE [dbo].[tbl_CurrencyLabels] CHECK CONSTRAINT [FK_tbl_CurrencyLabels_tbl_Currency]
GO
ALTER TABLE [dbo].[tbl_CurrencyUnitsLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CurrencyUnitsLabels_tbl_CurrencyUnits] FOREIGN KEY([currencyUnitID])
REFERENCES [dbo].[tbl_CurrencyUnits] ([currencyUnitID])
GO
ALTER TABLE [dbo].[tbl_CurrencyUnitsLabels] CHECK CONSTRAINT [FK_tbl_CurrencyUnitsLabels_tbl_CurrencyUnits]
GO
ALTER TABLE [dbo].[tbl_CurrencyUnitsLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_CurrencyUnitsLabels_tbl_Language] FOREIGN KEY([language])
REFERENCES [dbo].[tbl_Language] ([languageID])
GO
ALTER TABLE [dbo].[tbl_CurrencyUnitsLabels] CHECK CONSTRAINT [FK_tbl_CurrencyUnitsLabels_tbl_Language]
GO
ALTER TABLE [dbo].[tbl_DirectionLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DirectionLabels_tbl_Direction] FOREIGN KEY([directionID])
REFERENCES [dbo].[tbl_Direction] ([directionID])
GO
ALTER TABLE [dbo].[tbl_DirectionLabels] CHECK CONSTRAINT [FK_tbl_DirectionLabels_tbl_Direction]
GO
ALTER TABLE [dbo].[tbl_DirectionLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_DirectionLabels_tbl_Language] FOREIGN KEY([language])
REFERENCES [dbo].[tbl_Language] ([languageID])
GO
ALTER TABLE [dbo].[tbl_DirectionLabels] CHECK CONSTRAINT [FK_tbl_DirectionLabels_tbl_Language]
GO
ALTER TABLE [dbo].[tbl_KPI]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_tbl_Activity] FOREIGN KEY([activityID])
REFERENCES [dbo].[tbl_Activity] ([activityID])
GO
ALTER TABLE [dbo].[tbl_KPI] CHECK CONSTRAINT [FK_tbl_KPI_tbl_Activity]
GO
ALTER TABLE [dbo].[tbl_KPI]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_tbl_Area] FOREIGN KEY([areaID])
REFERENCES [dbo].[tbl_Area] ([areaID])
GO
ALTER TABLE [dbo].[tbl_KPI] CHECK CONSTRAINT [FK_tbl_KPI_tbl_Area]
GO
ALTER TABLE [dbo].[tbl_KPI]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_tbl_Currency] FOREIGN KEY([currency])
REFERENCES [dbo].[tbl_Currency] ([currencyID])
GO
ALTER TABLE [dbo].[tbl_KPI] CHECK CONSTRAINT [FK_tbl_KPI_tbl_Currency]
GO
ALTER TABLE [dbo].[tbl_KPI]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_tbl_CurrencyUnits] FOREIGN KEY([currencyUnitID])
REFERENCES [dbo].[tbl_CurrencyUnits] ([currencyUnitID])
GO
ALTER TABLE [dbo].[tbl_KPI] CHECK CONSTRAINT [FK_tbl_KPI_tbl_CurrencyUnits]
GO
ALTER TABLE [dbo].[tbl_KPI]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_tbl_Direction] FOREIGN KEY([directionID])
REFERENCES [dbo].[tbl_Direction] ([directionID])
GO
ALTER TABLE [dbo].[tbl_KPI] CHECK CONSTRAINT [FK_tbl_KPI_tbl_Direction]
GO
ALTER TABLE [dbo].[tbl_KPI]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_tbl_KPITypes] FOREIGN KEY([kpiTypeID])
REFERENCES [dbo].[tbl_KPITypes] ([kpiTypeID])
GO
ALTER TABLE [dbo].[tbl_KPI] CHECK CONSTRAINT [FK_tbl_KPI_tbl_KPITypes]
GO
ALTER TABLE [dbo].[tbl_KPI]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_tbl_Organization] FOREIGN KEY([organizationID])
REFERENCES [dbo].[tbl_Organization] ([organizationID])
GO
ALTER TABLE [dbo].[tbl_KPI] CHECK CONSTRAINT [FK_tbl_KPI_tbl_Organization]
GO
ALTER TABLE [dbo].[tbl_KPI]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_tbl_People] FOREIGN KEY([personID])
REFERENCES [dbo].[tbl_People] ([personID])
GO
ALTER TABLE [dbo].[tbl_KPI] CHECK CONSTRAINT [FK_tbl_KPI_tbl_People]
GO
ALTER TABLE [dbo].[tbl_KPI]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_tbl_Project] FOREIGN KEY([projectID])
REFERENCES [dbo].[tbl_Project] ([projectID])
GO
ALTER TABLE [dbo].[tbl_KPI] CHECK CONSTRAINT [FK_tbl_KPI_tbl_Project]
GO
ALTER TABLE [dbo].[tbl_KPI]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_tbl_ReportingUnit] FOREIGN KEY([reportingUnitID])
REFERENCES [dbo].[tbl_ReportingUnit] ([reportingUnitID])
GO
ALTER TABLE [dbo].[tbl_KPI] CHECK CONSTRAINT [FK_tbl_KPI_tbl_ReportingUnit]
GO
ALTER TABLE [dbo].[tbl_KPI]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_tbl_Strategy] FOREIGN KEY([strategyID])
REFERENCES [dbo].[tbl_Strategy] ([strategyID])
GO
ALTER TABLE [dbo].[tbl_KPI] CHECK CONSTRAINT [FK_tbl_KPI_tbl_Strategy]
GO
ALTER TABLE [dbo].[tbl_KPI]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_tbl_Unit] FOREIGN KEY([unitID])
REFERENCES [dbo].[tbl_Unit] ([unitID])
GO
ALTER TABLE [dbo].[tbl_KPI] CHECK CONSTRAINT [FK_tbl_KPI_tbl_Unit]
GO
ALTER TABLE [dbo].[tbl_KPICategories]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPICategories_tbl_Category] FOREIGN KEY([categoryID])
REFERENCES [dbo].[tbl_Category] ([categoryID])
GO
ALTER TABLE [dbo].[tbl_KPICategories] CHECK CONSTRAINT [FK_tbl_KPICategories_tbl_Category]
GO
ALTER TABLE [dbo].[tbl_KPIDashboard]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_KPIDashboard_tbl_KPI_KPIDashboard] FOREIGN KEY([dashboardId])
REFERENCES [dbo].[tbl_UserDashboard] ([dashboardId])
GO
ALTER TABLE [dbo].[tbl_KPIDashboard] CHECK CONSTRAINT [FK_tbl_KPI_KPIDashboard_tbl_KPI_KPIDashboard]
GO
ALTER TABLE [dbo].[tbl_KPIDashboard]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_KPIDashboard_tbl_SEG_User] FOREIGN KEY([ownerUserId])
REFERENCES [dbo].[tbl_SEG_User] ([userId])
GO
ALTER TABLE [dbo].[tbl_KPIDashboard] CHECK CONSTRAINT [FK_tbl_KPI_KPIDashboard_tbl_SEG_User]
GO
ALTER TABLE [dbo].[tbl_KPIDashboard]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPIDashboard_tbl_KPI] FOREIGN KEY([kpiId])
REFERENCES [dbo].[tbl_KPI] ([kpiID])
GO
ALTER TABLE [dbo].[tbl_KPIDashboard] CHECK CONSTRAINT [FK_tbl_KPIDashboard_tbl_KPI]
GO
ALTER TABLE [dbo].[tbl_KPIMeasurementCategories]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPIMeasurementCategories_tbl_CategoryItem] FOREIGN KEY([categoryItemID], [categoryID])
REFERENCES [dbo].[tbl_CategoryItem] ([categoryItemID], [categoryID])
GO
ALTER TABLE [dbo].[tbl_KPIMeasurementCategories] CHECK CONSTRAINT [FK_tbl_KPIMeasurementCategories_tbl_CategoryItem]
GO
ALTER TABLE [dbo].[tbl_KPIMeasurementCategories]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPIMeasurementCategories_tbl_KPIMeasurements] FOREIGN KEY([measurementID])
REFERENCES [dbo].[tbl_KPIMeasurements] ([measurmentID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_KPIMeasurementCategories] CHECK CONSTRAINT [FK_tbl_KPIMeasurementCategories_tbl_KPIMeasurements]
GO
ALTER TABLE [dbo].[tbl_KPIMeasurements]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPIMeasurements_tbl_KPI] FOREIGN KEY([kpiID])
REFERENCES [dbo].[tbl_KPI] ([kpiID])
GO
ALTER TABLE [dbo].[tbl_KPIMeasurements] CHECK CONSTRAINT [FK_tbl_KPIMeasurements_tbl_KPI]
GO
ALTER TABLE [dbo].[tbl_KPITarget]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPITargets_tbl_KPI] FOREIGN KEY([kpiID])
REFERENCES [dbo].[tbl_KPI] ([kpiID])
GO
ALTER TABLE [dbo].[tbl_KPITarget] CHECK CONSTRAINT [FK_tbl_KPITargets_tbl_KPI]
GO
ALTER TABLE [dbo].[tbl_KPITargetCategories]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPITargetCategories_tbl_KPITargetCategories] FOREIGN KEY([categoryItemID], [categoryID])
REFERENCES [dbo].[tbl_CategoryItem] ([categoryItemID], [categoryID])
GO
ALTER TABLE [dbo].[tbl_KPITargetCategories] CHECK CONSTRAINT [FK_tbl_KPITargetCategories_tbl_KPITargetCategories]
GO
ALTER TABLE [dbo].[tbl_KPITargetCategories]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPITargetCategories_tbl_KPITargets] FOREIGN KEY([targetID])
REFERENCES [dbo].[tbl_KPITarget] ([targetID])
GO
ALTER TABLE [dbo].[tbl_KPITargetCategories] CHECK CONSTRAINT [FK_tbl_KPITargetCategories_tbl_KPITargets]
GO
ALTER TABLE [dbo].[tbl_KPITypes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPITypes_tbl_Direction] FOREIGN KEY([directionID])
REFERENCES [dbo].[tbl_Direction] ([directionID])
GO
ALTER TABLE [dbo].[tbl_KPITypes] CHECK CONSTRAINT [FK_tbl_KPITypes_tbl_Direction]
GO
ALTER TABLE [dbo].[tbl_KPITypes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPITypes_tbl_Strategy] FOREIGN KEY([strategyID])
REFERENCES [dbo].[tbl_Strategy] ([strategyID])
GO
ALTER TABLE [dbo].[tbl_KPITypes] CHECK CONSTRAINT [FK_tbl_KPITypes_tbl_Strategy]
GO
ALTER TABLE [dbo].[tbl_KPITypes]  WITH CHECK ADD  CONSTRAINT [FK_tbl_kpiTypes_tbl_Unit] FOREIGN KEY([unitID])
REFERENCES [dbo].[tbl_Unit] ([unitID])
ON UPDATE CASCADE
GO
ALTER TABLE [dbo].[tbl_KPITypes] CHECK CONSTRAINT [FK_tbl_kpiTypes_tbl_Unit]
GO
ALTER TABLE [dbo].[tbl_KPITypesLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPITypesLabels_tbl_KPITypes] FOREIGN KEY([kpiTypeID])
REFERENCES [dbo].[tbl_KPITypes] ([kpiTypeID])
GO
ALTER TABLE [dbo].[tbl_KPITypesLabels] CHECK CONSTRAINT [FK_tbl_KPITypesLabels_tbl_KPITypes]
GO
ALTER TABLE [dbo].[tbl_KPITypesLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPITypesLabels_tbl_Language] FOREIGN KEY([language])
REFERENCES [dbo].[tbl_Language] ([languageID])
GO
ALTER TABLE [dbo].[tbl_KPITypesLabels] CHECK CONSTRAINT [FK_tbl_KPITypesLabels_tbl_Language]
GO
ALTER TABLE [dbo].[tbl_People]  WITH CHECK ADD  CONSTRAINT [FK_tbl_People_tbl_Area] FOREIGN KEY([areaID])
REFERENCES [dbo].[tbl_Area] ([areaID])
GO
ALTER TABLE [dbo].[tbl_People] CHECK CONSTRAINT [FK_tbl_People_tbl_Area]
GO
ALTER TABLE [dbo].[tbl_People]  WITH CHECK ADD  CONSTRAINT [FK_tbl_People_tbl_Organization] FOREIGN KEY([organizationID])
REFERENCES [dbo].[tbl_Organization] ([organizationID])
GO
ALTER TABLE [dbo].[tbl_People] CHECK CONSTRAINT [FK_tbl_People_tbl_Organization]
GO
ALTER TABLE [dbo].[tbl_Project]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Project_tbl_Area] FOREIGN KEY([areaID])
REFERENCES [dbo].[tbl_Area] ([areaID])
GO
ALTER TABLE [dbo].[tbl_Project] CHECK CONSTRAINT [FK_tbl_Project_tbl_Area]
GO
ALTER TABLE [dbo].[tbl_Project]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Project_tbl_Organization] FOREIGN KEY([organizationID])
REFERENCES [dbo].[tbl_Organization] ([organizationID])
GO
ALTER TABLE [dbo].[tbl_Project] CHECK CONSTRAINT [FK_tbl_Project_tbl_Organization]
GO
ALTER TABLE [dbo].[tbl_ReportingUnitLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ReportingUnitLabels_tbl_Language] FOREIGN KEY([language])
REFERENCES [dbo].[tbl_Language] ([languageID])
GO
ALTER TABLE [dbo].[tbl_ReportingUnitLabels] CHECK CONSTRAINT [FK_tbl_ReportingUnitLabels_tbl_Language]
GO
ALTER TABLE [dbo].[tbl_ReportingUnitLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ReportingUnitLabels_tbl_ReportingUnit] FOREIGN KEY([reportingUnitID])
REFERENCES [dbo].[tbl_ReportingUnit] ([reportingUnitID])
GO
ALTER TABLE [dbo].[tbl_ReportingUnitLabels] CHECK CONSTRAINT [FK_tbl_ReportingUnitLabels_tbl_ReportingUnit]
GO
ALTER TABLE [dbo].[tbl_SEG_ObjectPermissions]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SEG_ObjectPermissions_tbl_SEG_ObjectActions] FOREIGN KEY([objectActionID])
REFERENCES [dbo].[tbl_SEG_ObjectActions] ([objectActionID])
GO
ALTER TABLE [dbo].[tbl_SEG_ObjectPermissions] CHECK CONSTRAINT [FK_tbl_SEG_ObjectPermissions_tbl_SEG_ObjectActions]
GO
ALTER TABLE [dbo].[tbl_SEG_ObjectPermissions]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SEG_ObjectPermissions_tbl_SEG_ObjectTypes] FOREIGN KEY([objectTypeID])
REFERENCES [dbo].[tbl_SEG_ObjectTypes] ([objectTypeID])
GO
ALTER TABLE [dbo].[tbl_SEG_ObjectPermissions] CHECK CONSTRAINT [FK_tbl_SEG_ObjectPermissions_tbl_SEG_ObjectTypes]
GO
ALTER TABLE [dbo].[tbl_SEG_ObjectPublic]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SEG_ObjectPublic_tbl_SEG_ObjectActions] FOREIGN KEY([objectActionID])
REFERENCES [dbo].[tbl_SEG_ObjectActions] ([objectActionID])
GO
ALTER TABLE [dbo].[tbl_SEG_ObjectPublic] CHECK CONSTRAINT [FK_tbl_SEG_ObjectPublic_tbl_SEG_ObjectActions]
GO
ALTER TABLE [dbo].[tbl_SEG_ObjectPublic]  WITH CHECK ADD  CONSTRAINT [FK_tbl_SEG_ObjectPublic_tbl_SEG_ObjectTypes] FOREIGN KEY([objectTypeID])
REFERENCES [dbo].[tbl_SEG_ObjectTypes] ([objectTypeID])
GO
ALTER TABLE [dbo].[tbl_SEG_ObjectPublic] CHECK CONSTRAINT [FK_tbl_SEG_ObjectPublic_tbl_SEG_ObjectTypes]
GO
ALTER TABLE [dbo].[tbl_StrategyLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_StrategyLabels_tbl_Language] FOREIGN KEY([language])
REFERENCES [dbo].[tbl_Language] ([languageID])
GO
ALTER TABLE [dbo].[tbl_StrategyLabels] CHECK CONSTRAINT [FK_tbl_StrategyLabels_tbl_Language]
GO
ALTER TABLE [dbo].[tbl_StrategyLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_StrategyLabels_tbl_Strategy] FOREIGN KEY([strategyID])
REFERENCES [dbo].[tbl_Strategy] ([strategyID])
GO
ALTER TABLE [dbo].[tbl_StrategyLabels] CHECK CONSTRAINT [FK_tbl_StrategyLabels_tbl_Strategy]
GO
ALTER TABLE [dbo].[tbl_UnitLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UnitLabels_tbl_Language] FOREIGN KEY([language])
REFERENCES [dbo].[tbl_Language] ([languageID])
GO
ALTER TABLE [dbo].[tbl_UnitLabels] CHECK CONSTRAINT [FK_tbl_UnitLabels_tbl_Language]
GO
ALTER TABLE [dbo].[tbl_UnitLabels]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UnitLabels_tbl_Unit] FOREIGN KEY([unitID])
REFERENCES [dbo].[tbl_Unit] ([unitID])
GO
ALTER TABLE [dbo].[tbl_UnitLabels] CHECK CONSTRAINT [FK_tbl_UnitLabels_tbl_Unit]
GO
ALTER TABLE [dbo].[tbl_UnitsAllowedForCurrency]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UnitsAllowedForCurrency_tbl_Currency] FOREIGN KEY([currencyID])
REFERENCES [dbo].[tbl_Currency] ([currencyID])
GO
ALTER TABLE [dbo].[tbl_UnitsAllowedForCurrency] CHECK CONSTRAINT [FK_tbl_UnitsAllowedForCurrency_tbl_Currency]
GO
ALTER TABLE [dbo].[tbl_UnitsAllowedForCurrency]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UnitsAllowedForCurrency_tbl_CurrencyUnits] FOREIGN KEY([currencyUnitID])
REFERENCES [dbo].[tbl_CurrencyUnits] ([currencyUnitID])
GO
ALTER TABLE [dbo].[tbl_UnitsAllowedForCurrency] CHECK CONSTRAINT [FK_tbl_UnitsAllowedForCurrency_tbl_CurrencyUnits]
GO
ALTER TABLE [dbo].[tbl_UserDashboard]  WITH CHECK ADD  CONSTRAINT [FK_tbl_KPI_UserDashboard_tbl_SEG_User] FOREIGN KEY([ownerUserId])
REFERENCES [dbo].[tbl_SEG_User] ([userId])
GO
ALTER TABLE [dbo].[tbl_UserDashboard] CHECK CONSTRAINT [FK_tbl_KPI_UserDashboard_tbl_SEG_User]
GO
ALTER TABLE [dbo].[tbl_UserTour]  WITH CHECK ADD  CONSTRAINT [FK_tbl_UserTour_tbl_SEG_User] FOREIGN KEY([userId])
REFERENCES [dbo].[tbl_SEG_User] ([userId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_UserTour] CHECK CONSTRAINT [FK_tbl_UserTour_tbl_SEG_User]
GO
/****** Object:  StoredProcedure [dbo].[aspnet_AnyDataInTables]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_AnyDataInTables]
    @TablesToCheck int
AS
BEGIN
    -- Check Membership table if (@TablesToCheck & 1) is set
    IF ((@TablesToCheck & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Membership))
        BEGIN
            SELECT N'aspnet_Membership'
            RETURN
        END
    END

    -- Check aspnet_Roles table if (@TablesToCheck & 2) is set
    IF ((@TablesToCheck & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Roles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 RoleId FROM dbo.aspnet_Roles))
        BEGIN
            SELECT N'aspnet_Roles'
            RETURN
        END
    END

    -- Check aspnet_Profile table if (@TablesToCheck & 4) is set
    IF ((@TablesToCheck & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Profile))
        BEGIN
            SELECT N'aspnet_Profile'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 8) is set
    IF ((@TablesToCheck & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_PersonalizationPerUser))
        BEGIN
            SELECT N'aspnet_PersonalizationPerUser'
            RETURN
        END
    END

    -- Check aspnet_PersonalizationPerUser table if (@TablesToCheck & 16) is set
    IF ((@TablesToCheck & 16) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'aspnet_WebEvent_LogEvent') AND (type = 'P'))) )
    BEGIN
        IF (EXISTS(SELECT TOP 1 * FROM dbo.aspnet_WebEvent_Events))
        BEGIN
            SELECT N'aspnet_WebEvent_Events'
            RETURN
        END
    END

    -- Check aspnet_Users table if (@TablesToCheck & 1,2,4 & 8) are all set
    IF ((@TablesToCheck & 1) <> 0 AND
        (@TablesToCheck & 2) <> 0 AND
        (@TablesToCheck & 4) <> 0 AND
        (@TablesToCheck & 8) <> 0 AND
        (@TablesToCheck & 32) <> 0 AND
        (@TablesToCheck & 128) <> 0 AND
        (@TablesToCheck & 256) <> 0 AND
        (@TablesToCheck & 512) <> 0 AND
        (@TablesToCheck & 1024) <> 0)
    BEGIN
        IF (EXISTS(SELECT TOP 1 UserId FROM dbo.aspnet_Users))
        BEGIN
            SELECT N'aspnet_Users'
            RETURN
        END
        IF (EXISTS(SELECT TOP 1 ApplicationId FROM dbo.aspnet_Applications))
        BEGIN
            SELECT N'aspnet_Applications'
            RETURN
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Applications_CreateApplication]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Applications_CreateApplication]
    @ApplicationName      nvarchar(256),
    @ApplicationId        uniqueidentifier OUTPUT
AS
BEGIN
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName

    IF(@ApplicationId IS NULL)
    BEGIN
        DECLARE @TranStarted   bit
        SET @TranStarted = 0

        IF( @@TRANCOUNT = 0 )
        BEGIN
	        BEGIN TRANSACTION
	        SET @TranStarted = 1
        END
        ELSE
    	    SET @TranStarted = 0

        SELECT  @ApplicationId = ApplicationId
        FROM dbo.aspnet_Applications WITH (UPDLOCK, HOLDLOCK)
        WHERE LOWER(@ApplicationName) = LoweredApplicationName

        IF(@ApplicationId IS NULL)
        BEGIN
            SELECT  @ApplicationId = NEWID()
            INSERT  dbo.aspnet_Applications (ApplicationId, ApplicationName, LoweredApplicationName)
            VALUES  (@ApplicationId, @ApplicationName, LOWER(@ApplicationName))
        END


        IF( @TranStarted = 1 )
        BEGIN
            IF(@@ERROR = 0)
            BEGIN
	        SET @TranStarted = 0
	        COMMIT TRANSACTION
            END
            ELSE
            BEGIN
                SET @TranStarted = 0
                ROLLBACK TRANSACTION
            END
        END
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_CheckSchemaVersion]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_CheckSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    IF (EXISTS( SELECT  *
                FROM    dbo.aspnet_SchemaVersions
                WHERE   Feature = LOWER( @Feature ) AND
                        CompatibleSchemaVersion = @CompatibleSchemaVersion ))
        RETURN 0

    RETURN 1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ChangePasswordQuestionAndAnswer]
    @ApplicationName       nvarchar(256),
    @UserName              nvarchar(256),
    @NewPasswordQuestion   nvarchar(256),
    @NewPasswordAnswer     nvarchar(128)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Membership m, dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId
    IF (@UserId IS NULL)
    BEGIN
        RETURN(1)
    END

    UPDATE dbo.aspnet_Membership
    SET    PasswordQuestion = @NewPasswordQuestion, PasswordAnswer = @NewPasswordAnswer
    WHERE  UserId=@UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_CreateUser]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_CreateUser]
    @ApplicationName                        nvarchar(256),
    @UserName                               nvarchar(256),
    @Password                               nvarchar(128),
    @PasswordSalt                           nvarchar(128),
    @Email                                  nvarchar(256),
    @PasswordQuestion                       nvarchar(256),
    @PasswordAnswer                         nvarchar(128),
    @IsApproved                             bit,
    @CurrentTimeUtc                         datetime,
    @CreateDate                             datetime = NULL,
    @UniqueEmail                            int      = 0,
    @PasswordFormat                         int      = 0,
    @UserId                                 uniqueidentifier OUTPUT
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @NewUserId uniqueidentifier
    SELECT @NewUserId = NULL

    DECLARE @IsLockedOut bit
    SET @IsLockedOut = 0

    DECLARE @LastLockoutDate  datetime
    SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAttemptCount int
    SET @FailedPasswordAttemptCount = 0

    DECLARE @FailedPasswordAttemptWindowStart  datetime
    SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @FailedPasswordAnswerAttemptCount int
    SET @FailedPasswordAnswerAttemptCount = 0

    DECLARE @FailedPasswordAnswerAttemptWindowStart  datetime
    SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )

    DECLARE @NewUserCreated bit
    DECLARE @ReturnValue   int
    SET @ReturnValue = 0

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    SET @CreateDate = @CurrentTimeUtc

    SELECT  @NewUserId = UserId FROM dbo.aspnet_Users WHERE LOWER(@UserName) = LoweredUserName AND @ApplicationId = ApplicationId
    IF ( @NewUserId IS NULL )
    BEGIN
        SET @NewUserId = @UserId
        EXEC @ReturnValue = dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CreateDate, @NewUserId OUTPUT
        SET @NewUserCreated = 1
    END
    ELSE
    BEGIN
        SET @NewUserCreated = 0
        IF( @NewUserId <> @UserId AND @UserId IS NOT NULL )
        BEGIN
            SET @ErrorCode = 6
            GOTO Cleanup
        END
    END

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @ReturnValue = -1 )
    BEGIN
        SET @ErrorCode = 10
        GOTO Cleanup
    END

    IF ( EXISTS ( SELECT UserId
                  FROM   dbo.aspnet_Membership
                  WHERE  @NewUserId = UserId ) )
    BEGIN
        SET @ErrorCode = 6
        GOTO Cleanup
    END

    SET @UserId = @NewUserId

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership m WITH ( UPDLOCK, HOLDLOCK )
                    WHERE ApplicationId = @ApplicationId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            SET @ErrorCode = 7
            GOTO Cleanup
        END
    END

    IF (@NewUserCreated = 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate = @CreateDate
        WHERE  @UserId = UserId
        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    INSERT INTO dbo.aspnet_Membership
                ( ApplicationId,
                  UserId,
                  Password,
                  PasswordSalt,
                  Email,
                  LoweredEmail,
                  PasswordQuestion,
                  PasswordAnswer,
                  PasswordFormat,
                  IsApproved,
                  IsLockedOut,
                  CreateDate,
                  LastLoginDate,
                  LastPasswordChangedDate,
                  LastLockoutDate,
                  FailedPasswordAttemptCount,
                  FailedPasswordAttemptWindowStart,
                  FailedPasswordAnswerAttemptCount,
                  FailedPasswordAnswerAttemptWindowStart )
         VALUES ( @ApplicationId,
                  @UserId,
                  @Password,
                  @PasswordSalt,
                  @Email,
                  LOWER(@Email),
                  @PasswordQuestion,
                  @PasswordAnswer,
                  @PasswordFormat,
                  @IsApproved,
                  @IsLockedOut,
                  @CreateDate,
                  @CreateDate,
                  @CreateDate,
                  @LastLockoutDate,
                  @FailedPasswordAttemptCount,
                  @FailedPasswordAttemptWindowStart,
                  @FailedPasswordAnswerAttemptCount,
                  @FailedPasswordAnswerAttemptWindowStart )

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByEmail]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByEmail]
    @ApplicationName       nvarchar(256),
    @EmailToMatch          nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    IF( @EmailToMatch IS NULL )
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.Email IS NULL
            ORDER BY m.LoweredEmail
    ELSE
        INSERT INTO #PageIndexForUsers (UserId)
            SELECT u.UserId
            FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
            WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND m.LoweredEmail LIKE LOWER(@EmailToMatch)
            ORDER BY m.LoweredEmail

    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY m.LoweredEmail

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_FindUsersByName]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_FindUsersByName]
    @ApplicationName       nvarchar(256),
    @UserNameToMatch       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT u.UserId
        FROM   dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  u.ApplicationId = @ApplicationId AND m.UserId = u.UserId AND u.LoweredUserName LIKE LOWER(@UserNameToMatch)
        ORDER BY u.UserName


    SELECT  u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName

    SELECT  @TotalRecords = COUNT(*)
    FROM    #PageIndexForUsers
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetAllUsers]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetAllUsers]
    @ApplicationName       nvarchar(256),
    @PageIndex             int,
    @PageSize              int
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN 0


    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
    SELECT u.UserId
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u
    WHERE  u.ApplicationId = @ApplicationId AND u.UserId = m.UserId
    ORDER BY u.UserName

    SELECT @TotalRecords = @@ROWCOUNT

    SELECT u.UserName, m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate,
            m.LastLoginDate,
            u.LastActivityDate,
            m.LastPasswordChangedDate,
            u.UserId, m.IsLockedOut,
            m.LastLockoutDate
    FROM   dbo.aspnet_Membership m, dbo.aspnet_Users u, #PageIndexForUsers p
    WHERE  u.UserId = p.UserId AND u.UserId = m.UserId AND
           p.IndexId >= @PageLowerBound AND p.IndexId <= @PageUpperBound
    ORDER BY u.UserName
    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetNumberOfUsersOnline]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetNumberOfUsersOnline]
    @ApplicationName            nvarchar(256),
    @MinutesSinceLastInActive   int,
    @CurrentTimeUtc             datetime
AS
BEGIN
    DECLARE @DateActive datetime
    SELECT  @DateActive = DATEADD(minute,  -(@MinutesSinceLastInActive), @CurrentTimeUtc)

    DECLARE @NumOnline int
    SELECT  @NumOnline = COUNT(*)
    FROM    dbo.aspnet_Users u(NOLOCK),
            dbo.aspnet_Applications a(NOLOCK),
            dbo.aspnet_Membership m(NOLOCK)
    WHERE   u.ApplicationId = a.ApplicationId                  AND
            LastActivityDate > @DateActive                     AND
            a.LoweredApplicationName = LOWER(@ApplicationName) AND
            u.UserId = m.UserId
    RETURN(@NumOnline)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPassword]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPassword]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @PasswordAnswer                 nvarchar(128) = NULL
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @PasswordFormat                         int
    DECLARE @Password                               nvarchar(128)
    DECLARE @passAns                                nvarchar(128)
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @Password = m.Password,
            @passAns = m.PasswordAnswer,
            @PasswordFormat = m.PasswordFormat,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    IF ( NOT( @PasswordAnswer IS NULL ) )
    BEGIN
        IF( ( @passAns IS NULL ) OR ( LOWER( @passAns ) <> LOWER( @PasswordAnswer ) ) )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
        ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    IF( @ErrorCode = 0 )
        SELECT @Password, @PasswordFormat

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetPasswordWithFormat]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetPasswordWithFormat]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @UpdateLastLoginActivityDate    bit,
    @CurrentTimeUtc                 datetime
AS
BEGIN
    DECLARE @IsLockedOut                        bit
    DECLARE @UserId                             uniqueidentifier
    DECLARE @Password                           nvarchar(128)
    DECLARE @PasswordSalt                       nvarchar(128)
    DECLARE @PasswordFormat                     int
    DECLARE @FailedPasswordAttemptCount         int
    DECLARE @FailedPasswordAnswerAttemptCount   int
    DECLARE @IsApproved                         bit
    DECLARE @LastActivityDate                   datetime
    DECLARE @LastLoginDate                      datetime

    SELECT  @UserId          = NULL

    SELECT  @UserId = u.UserId, @IsLockedOut = m.IsLockedOut, @Password=Password, @PasswordFormat=PasswordFormat,
            @PasswordSalt=PasswordSalt, @FailedPasswordAttemptCount=FailedPasswordAttemptCount,
		    @FailedPasswordAnswerAttemptCount=FailedPasswordAnswerAttemptCount, @IsApproved=IsApproved,
            @LastActivityDate = LastActivityDate, @LastLoginDate = LastLoginDate
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF (@UserId IS NULL)
        RETURN 1

    IF (@IsLockedOut = 1)
        RETURN 99

    SELECT   @Password, @PasswordFormat, @PasswordSalt, @FailedPasswordAttemptCount,
             @FailedPasswordAnswerAttemptCount, @IsApproved, @LastLoginDate, @LastActivityDate

    IF (@UpdateLastLoginActivityDate = 1 AND @IsApproved = 1)
    BEGIN
        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @CurrentTimeUtc
        WHERE   UserId = @UserId

        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @CurrentTimeUtc
        WHERE   @UserId = UserId
    END


    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByEmail]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByEmail]
    @ApplicationName  nvarchar(256),
    @Email            nvarchar(256)
AS
BEGIN
    IF( @Email IS NULL )
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                m.LoweredEmail IS NULL
    ELSE
        SELECT  u.UserName
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                u.UserId = m.UserId AND
                LOWER(@Email) = m.LoweredEmail

    IF (@@rowcount = 0)
        RETURN(1)
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByName]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByName]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier

    IF (@UpdateLastActivity = 1)
    BEGIN
        -- select user ID from aspnet_users table
        SELECT TOP 1 @UserId = u.UserId
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1

        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        WHERE    @UserId = UserId

        SELECT m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut, m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE  @UserId = u.UserId AND u.UserId = m.UserId 
    END
    ELSE
    BEGIN
        SELECT TOP 1 m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
                m.CreateDate, m.LastLoginDate, u.LastActivityDate, m.LastPasswordChangedDate,
                u.UserId, m.IsLockedOut,m.LastLockoutDate
        FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m
        WHERE    LOWER(@ApplicationName) = a.LoweredApplicationName AND
                u.ApplicationId = a.ApplicationId    AND
                LOWER(@UserName) = u.LoweredUserName AND u.UserId = m.UserId

        IF (@@ROWCOUNT = 0) -- Username not found
            RETURN -1
    END

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_GetUserByUserId]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_GetUserByUserId]
    @UserId               uniqueidentifier,
    @CurrentTimeUtc       datetime,
    @UpdateLastActivity   bit = 0
AS
BEGIN
    IF ( @UpdateLastActivity = 1 )
    BEGIN
        UPDATE   dbo.aspnet_Users
        SET      LastActivityDate = @CurrentTimeUtc
        FROM     dbo.aspnet_Users
        WHERE    @UserId = UserId

        IF ( @@ROWCOUNT = 0 ) -- User ID not found
            RETURN -1
    END

    SELECT  m.Email, m.PasswordQuestion, m.Comment, m.IsApproved,
            m.CreateDate, m.LastLoginDate, u.LastActivityDate,
            m.LastPasswordChangedDate, u.UserName, m.IsLockedOut,
            m.LastLockoutDate
    FROM    dbo.aspnet_Users u, dbo.aspnet_Membership m
    WHERE   @UserId = u.UserId AND u.UserId = m.UserId

    IF ( @@ROWCOUNT = 0 ) -- User ID not found
       RETURN -1

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_ResetPassword]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_ResetPassword]
    @ApplicationName             nvarchar(256),
    @UserName                    nvarchar(256),
    @NewPassword                 nvarchar(128),
    @MaxInvalidPasswordAttempts  int,
    @PasswordAttemptWindow       int,
    @PasswordSalt                nvarchar(128),
    @CurrentTimeUtc              datetime,
    @PasswordFormat              int = 0,
    @PasswordAnswer              nvarchar(128) = NULL
AS
BEGIN
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @UserId                                 uniqueidentifier
    SET     @UserId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    SELECT @IsLockedOut = IsLockedOut,
           @LastLockoutDate = LastLockoutDate,
           @FailedPasswordAttemptCount = FailedPasswordAttemptCount,
           @FailedPasswordAttemptWindowStart = FailedPasswordAttemptWindowStart,
           @FailedPasswordAnswerAttemptCount = FailedPasswordAnswerAttemptCount,
           @FailedPasswordAnswerAttemptWindowStart = FailedPasswordAnswerAttemptWindowStart
    FROM dbo.aspnet_Membership WITH ( UPDLOCK )
    WHERE @UserId = UserId

    IF( @IsLockedOut = 1 )
    BEGIN
        SET @ErrorCode = 99
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Membership
    SET    Password = @NewPassword,
           LastPasswordChangedDate = @CurrentTimeUtc,
           PasswordFormat = @PasswordFormat,
           PasswordSalt = @PasswordSalt
    WHERE  @UserId = UserId AND
           ( ( @PasswordAnswer IS NULL ) OR ( LOWER( PasswordAnswer ) = LOWER( @PasswordAnswer ) ) )

    IF ( @@ROWCOUNT = 0 )
        BEGIN
            IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAnswerAttemptWindowStart ) )
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = 1
            END
            ELSE
            BEGIN
                SET @FailedPasswordAnswerAttemptWindowStart = @CurrentTimeUtc
                SET @FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount + 1
            END

            BEGIN
                IF( @FailedPasswordAnswerAttemptCount >= @MaxInvalidPasswordAttempts )
                BEGIN
                    SET @IsLockedOut = 1
                    SET @LastLockoutDate = @CurrentTimeUtc
                END
            END

            SET @ErrorCode = 3
        END
    ELSE
        BEGIN
            IF( @FailedPasswordAnswerAttemptCount > 0 )
            BEGIN
                SET @FailedPasswordAnswerAttemptCount = 0
                SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            END
        END

    IF( NOT ( @PasswordAnswer IS NULL ) )
    BEGIN
        UPDATE dbo.aspnet_Membership
        SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
            FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
            FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
            FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
            FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
        WHERE @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_SetPassword]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_SetPassword]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @NewPassword      nvarchar(128),
    @PasswordSalt     nvarchar(128),
    @CurrentTimeUtc   datetime,
    @PasswordFormat   int = 0
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    UPDATE dbo.aspnet_Membership
    SET Password = @NewPassword, PasswordFormat = @PasswordFormat, PasswordSalt = @PasswordSalt,
        LastPasswordChangedDate = @CurrentTimeUtc
    WHERE @UserId = UserId
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UnlockUser]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UnlockUser]
    @ApplicationName                         nvarchar(256),
    @UserName                                nvarchar(256)
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF ( @UserId IS NULL )
        RETURN 1

    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = 0,
        FailedPasswordAttemptCount = 0,
        FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        FailedPasswordAnswerAttemptCount = 0,
        FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 ),
        LastLockoutDate = CONVERT( datetime, '17540101', 112 )
    WHERE @UserId = UserId

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUser]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUser]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @Email                nvarchar(256),
    @Comment              ntext,
    @IsApproved           bit,
    @LastLoginDate        datetime,
    @LastActivityDate     datetime,
    @UniqueEmail          int,
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @UserId uniqueidentifier
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @UserId = NULL
    SELECT  @UserId = u.UserId, @ApplicationId = a.ApplicationId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a, dbo.aspnet_Membership m
    WHERE   LoweredUserName = LOWER(@UserName) AND
            u.ApplicationId = a.ApplicationId  AND
            LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.UserId = m.UserId

    IF (@UserId IS NULL)
        RETURN(1)

    IF (@UniqueEmail = 1)
    BEGIN
        IF (EXISTS (SELECT *
                    FROM  dbo.aspnet_Membership WITH (UPDLOCK, HOLDLOCK)
                    WHERE ApplicationId = @ApplicationId  AND @UserId <> UserId AND LoweredEmail = LOWER(@Email)))
        BEGIN
            RETURN(7)
        END
    END

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    UPDATE dbo.aspnet_Users WITH (ROWLOCK)
    SET
         LastActivityDate = @LastActivityDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    UPDATE dbo.aspnet_Membership WITH (ROWLOCK)
    SET
         Email            = @Email,
         LoweredEmail     = LOWER(@Email),
         Comment          = @Comment,
         IsApproved       = @IsApproved,
         LastLoginDate    = @LastLoginDate
    WHERE
       @UserId = UserId

    IF( @@ERROR <> 0 )
        GOTO Cleanup

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN -1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Membership_UpdateUserInfo]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Membership_UpdateUserInfo]
    @ApplicationName                nvarchar(256),
    @UserName                       nvarchar(256),
    @IsPasswordCorrect              bit,
    @UpdateLastLoginActivityDate    bit,
    @MaxInvalidPasswordAttempts     int,
    @PasswordAttemptWindow          int,
    @CurrentTimeUtc                 datetime,
    @LastLoginDate                  datetime,
    @LastActivityDate               datetime
AS
BEGIN
    DECLARE @UserId                                 uniqueidentifier
    DECLARE @IsApproved                             bit
    DECLARE @IsLockedOut                            bit
    DECLARE @LastLockoutDate                        datetime
    DECLARE @FailedPasswordAttemptCount             int
    DECLARE @FailedPasswordAttemptWindowStart       datetime
    DECLARE @FailedPasswordAnswerAttemptCount       int
    DECLARE @FailedPasswordAnswerAttemptWindowStart datetime

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    SELECT  @UserId = u.UserId,
            @IsApproved = m.IsApproved,
            @IsLockedOut = m.IsLockedOut,
            @LastLockoutDate = m.LastLockoutDate,
            @FailedPasswordAttemptCount = m.FailedPasswordAttemptCount,
            @FailedPasswordAttemptWindowStart = m.FailedPasswordAttemptWindowStart,
            @FailedPasswordAnswerAttemptCount = m.FailedPasswordAnswerAttemptCount,
            @FailedPasswordAnswerAttemptWindowStart = m.FailedPasswordAnswerAttemptWindowStart
    FROM    dbo.aspnet_Applications a, dbo.aspnet_Users u, dbo.aspnet_Membership m WITH ( UPDLOCK )
    WHERE   LOWER(@ApplicationName) = a.LoweredApplicationName AND
            u.ApplicationId = a.ApplicationId    AND
            u.UserId = m.UserId AND
            LOWER(@UserName) = u.LoweredUserName

    IF ( @@rowcount = 0 )
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    IF( @IsLockedOut = 1 )
    BEGIN
        GOTO Cleanup
    END

    IF( @IsPasswordCorrect = 0 )
    BEGIN
        IF( @CurrentTimeUtc > DATEADD( minute, @PasswordAttemptWindow, @FailedPasswordAttemptWindowStart ) )
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = 1
        END
        ELSE
        BEGIN
            SET @FailedPasswordAttemptWindowStart = @CurrentTimeUtc
            SET @FailedPasswordAttemptCount = @FailedPasswordAttemptCount + 1
        END

        BEGIN
            IF( @FailedPasswordAttemptCount >= @MaxInvalidPasswordAttempts )
            BEGIN
                SET @IsLockedOut = 1
                SET @LastLockoutDate = @CurrentTimeUtc
            END
        END
    END
    ELSE
    BEGIN
        IF( @FailedPasswordAttemptCount > 0 OR @FailedPasswordAnswerAttemptCount > 0 )
        BEGIN
            SET @FailedPasswordAttemptCount = 0
            SET @FailedPasswordAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @FailedPasswordAnswerAttemptCount = 0
            SET @FailedPasswordAnswerAttemptWindowStart = CONVERT( datetime, '17540101', 112 )
            SET @LastLockoutDate = CONVERT( datetime, '17540101', 112 )
        END
    END

    IF( @UpdateLastLoginActivityDate = 1 )
    BEGIN
        UPDATE  dbo.aspnet_Users
        SET     LastActivityDate = @LastActivityDate
        WHERE   @UserId = UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END

        UPDATE  dbo.aspnet_Membership
        SET     LastLoginDate = @LastLoginDate
        WHERE   UserId = @UserId

        IF( @@ERROR <> 0 )
        BEGIN
            SET @ErrorCode = -1
            GOTO Cleanup
        END
    END


    UPDATE dbo.aspnet_Membership
    SET IsLockedOut = @IsLockedOut, LastLockoutDate = @LastLockoutDate,
        FailedPasswordAttemptCount = @FailedPasswordAttemptCount,
        FailedPasswordAttemptWindowStart = @FailedPasswordAttemptWindowStart,
        FailedPasswordAnswerAttemptCount = @FailedPasswordAnswerAttemptCount,
        FailedPasswordAnswerAttemptWindowStart = @FailedPasswordAnswerAttemptWindowStart
    WHERE @UserId = UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
	SET @TranStarted = 0
	COMMIT TRANSACTION
    END

    RETURN @ErrorCode

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Paths_CreatePath]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Paths_CreatePath]
    @ApplicationId UNIQUEIDENTIFIER,
    @Path           NVARCHAR(256),
    @PathId         UNIQUEIDENTIFIER OUTPUT
AS
BEGIN
    BEGIN TRANSACTION
    IF (NOT EXISTS(SELECT * FROM dbo.aspnet_Paths WHERE LoweredPath = LOWER(@Path) AND ApplicationId = @ApplicationId))
    BEGIN
        INSERT dbo.aspnet_Paths (ApplicationId, Path, LoweredPath) VALUES (@ApplicationId, @Path, LOWER(@Path))
    END
    COMMIT TRANSACTION
    SELECT @PathId = PathId FROM dbo.aspnet_Paths WHERE LOWER(@Path) = LoweredPath AND ApplicationId = @ApplicationId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Personalization_GetApplicationId]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Personalization_GetApplicationId] (
    @ApplicationName NVARCHAR(256),
    @ApplicationId UNIQUEIDENTIFIER OUT)
AS
BEGIN
    SELECT @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_DeleteAllState]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_DeleteAllState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Count int OUT)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        IF (@AllUsersScope = 1)
            DELETE FROM aspnet_PersonalizationAllUsers
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)
        ELSE
            DELETE FROM aspnet_PersonalizationPerUser
            WHERE PathId IN
               (SELECT Paths.PathId
                FROM dbo.aspnet_Paths Paths
                WHERE Paths.ApplicationId = @ApplicationId)

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_FindState]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_FindState] (
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @PageIndex              INT,
    @PageSize               INT,
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound INT
    DECLARE @PageUpperBound INT
    DECLARE @TotalRecords   INT
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table to store the selected results
    CREATE TABLE #PageIndex (
        IndexId int IDENTITY (0, 1) NOT NULL,
        ItemId UNIQUEIDENTIFIER
    )

    IF (@AllUsersScope = 1)
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT Paths.PathId
        FROM dbo.aspnet_Paths Paths,
             ((SELECT Paths.PathId
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND AllUsers.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT DISTINCT Paths.PathId
               FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Paths Paths
               WHERE Paths.ApplicationId = @ApplicationId
                      AND PerUser.PathId = Paths.PathId
                      AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path,
               SharedDataPerPath.LastUpdatedDate,
               SharedDataPerPath.SharedDataLength,
               UserDataPerPath.UserDataLength,
               UserDataPerPath.UserCount
        FROM dbo.aspnet_Paths Paths,
             ((SELECT PageIndex.ItemId AS PathId,
                      AllUsers.LastUpdatedDate AS LastUpdatedDate,
                      DATALENGTH(AllUsers.PageSettings) AS SharedDataLength
               FROM dbo.aspnet_PersonalizationAllUsers AllUsers, #PageIndex PageIndex
               WHERE AllUsers.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
              ) AS SharedDataPerPath
              FULL OUTER JOIN
              (SELECT PageIndex.ItemId AS PathId,
                      SUM(DATALENGTH(PerUser.PageSettings)) AS UserDataLength,
                      COUNT(*) AS UserCount
               FROM aspnet_PersonalizationPerUser PerUser, #PageIndex PageIndex
               WHERE PerUser.PathId = PageIndex.ItemId
                     AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
               GROUP BY PageIndex.ItemId
              ) AS UserDataPerPath
              ON SharedDataPerPath.PathId = UserDataPerPath.PathId
             )
        WHERE Paths.PathId = SharedDataPerPath.PathId OR Paths.PathId = UserDataPerPath.PathId
        ORDER BY Paths.Path ASC
    END
    ELSE
    BEGIN
        -- Insert into our temp table
        INSERT INTO #PageIndex (ItemId)
        SELECT PerUser.Id
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
        WHERE Paths.ApplicationId = @ApplicationId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
              AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
              AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
        ORDER BY Paths.Path ASC, Users.UserName ASC

        SELECT @TotalRecords = @@ROWCOUNT

        SELECT Paths.Path, PerUser.LastUpdatedDate, DATALENGTH(PerUser.PageSettings), Users.UserName, Users.LastActivityDate
        FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths, #PageIndex PageIndex
        WHERE PerUser.Id = PageIndex.ItemId
              AND PerUser.UserId = Users.UserId
              AND PerUser.PathId = Paths.PathId
              AND PageIndex.IndexId >= @PageLowerBound AND PageIndex.IndexId <= @PageUpperBound
        ORDER BY Paths.Path ASC, Users.UserName ASC
    END

    RETURN @TotalRecords
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_GetCountOfState]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_GetCountOfState] (
    @Count int OUT,
    @AllUsersScope bit,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256) = NULL,
    @UserName NVARCHAR(256) = NULL,
    @InactiveSinceDate DATETIME = NULL)
AS
BEGIN

    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
        IF (@AllUsersScope = 1)
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND AllUsers.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
        ELSE
            SELECT @Count = COUNT(*)
            FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
            WHERE Paths.ApplicationId = @ApplicationId
                  AND PerUser.UserId = Users.UserId
                  AND PerUser.PathId = Paths.PathId
                  AND (@Path IS NULL OR Paths.LoweredPath LIKE LOWER(@Path))
                  AND (@UserName IS NULL OR Users.LoweredUserName LIKE LOWER(@UserName))
                  AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetSharedState]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetSharedState] (
    @Count int OUT,
    @ApplicationName NVARCHAR(256),
    @Path NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationAllUsers
        WHERE PathId IN
            (SELECT AllUsers.PathId
             FROM dbo.aspnet_PersonalizationAllUsers AllUsers, dbo.aspnet_Paths Paths
             WHERE Paths.ApplicationId = @ApplicationId
                   AND AllUsers.PathId = Paths.PathId
                   AND Paths.LoweredPath = LOWER(@Path))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAdministration_ResetUserState]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAdministration_ResetUserState] (
    @Count                  int                 OUT,
    @ApplicationName        NVARCHAR(256),
    @InactiveSinceDate      DATETIME            = NULL,
    @UserName               NVARCHAR(256)       = NULL,
    @Path                   NVARCHAR(256)       = NULL)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
        SELECT @Count = 0
    ELSE
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser
        WHERE Id IN (SELECT PerUser.Id
                     FROM dbo.aspnet_PersonalizationPerUser PerUser, dbo.aspnet_Users Users, dbo.aspnet_Paths Paths
                     WHERE Paths.ApplicationId = @ApplicationId
                           AND PerUser.UserId = Users.UserId
                           AND PerUser.PathId = Paths.PathId
                           AND (@InactiveSinceDate IS NULL OR Users.LastActivityDate <= @InactiveSinceDate)
                           AND (@UserName IS NULL OR Users.LoweredUserName = LOWER(@UserName))
                           AND (@Path IS NULL OR Paths.LoweredPath = LOWER(@Path)))

        SELECT @Count = @@ROWCOUNT
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationAllUsers p WHERE p.PathId = @PathId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path              NVARCHAR(256))
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    DELETE FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationAllUsers_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationAllUsers WHERE PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationAllUsers SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationAllUsers(PathId, PageSettings, LastUpdatedDate) VALUES (@PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_GetPageSettings]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_GetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    SELECT p.PageSettings FROM dbo.aspnet_PersonalizationPerUser p WHERE p.PathId = @PathId AND p.UserId = @UserId
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_ResetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Personalization_GetApplicationId @ApplicationName, @ApplicationId OUTPUT
    IF (@ApplicationId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        RETURN
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        RETURN
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE PathId = @PathId AND UserId = @UserId
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_PersonalizationPerUser_SetPageSettings]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_PersonalizationPerUser_SetPageSettings] (
    @ApplicationName  NVARCHAR(256),
    @UserName         NVARCHAR(256),
    @Path             NVARCHAR(256),
    @PageSettings     IMAGE,
    @CurrentTimeUtc   DATETIME)
AS
BEGIN
    DECLARE @ApplicationId UNIQUEIDENTIFIER
    DECLARE @PathId UNIQUEIDENTIFIER
    DECLARE @UserId UNIQUEIDENTIFIER

    SELECT @ApplicationId = NULL
    SELECT @PathId = NULL
    SELECT @UserId = NULL

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    SELECT @PathId = u.PathId FROM dbo.aspnet_Paths u WHERE u.ApplicationId = @ApplicationId AND u.LoweredPath = LOWER(@Path)
    IF (@PathId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Paths_CreatePath @ApplicationId, @Path, @PathId OUTPUT
    END

    SELECT @UserId = u.UserId FROM dbo.aspnet_Users u WHERE u.ApplicationId = @ApplicationId AND u.LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
    BEGIN
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, 0, @CurrentTimeUtc, @UserId OUTPUT
    END

    UPDATE   dbo.aspnet_Users WITH (ROWLOCK)
    SET      LastActivityDate = @CurrentTimeUtc
    WHERE    UserId = @UserId
    IF (@@ROWCOUNT = 0) -- Username not found
        RETURN

    IF (EXISTS(SELECT PathId FROM dbo.aspnet_PersonalizationPerUser WHERE UserId = @UserId AND PathId = @PathId))
        UPDATE dbo.aspnet_PersonalizationPerUser SET PageSettings = @PageSettings, LastUpdatedDate = @CurrentTimeUtc WHERE UserId = @UserId AND PathId = @PathId
    ELSE
        INSERT INTO dbo.aspnet_PersonalizationPerUser(UserId, PathId, PageSettings, LastUpdatedDate) VALUES (@UserId, @PathId, @PageSettings, @CurrentTimeUtc)
    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteInactiveProfiles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT  0
        RETURN
    END

    DELETE
    FROM    dbo.aspnet_Profile
    WHERE   UserId IN
            (   SELECT  UserId
                FROM    dbo.aspnet_Users u
                WHERE   ApplicationId = @ApplicationId
                        AND (LastActivityDate <= @InactiveSinceDate)
                        AND (
                                (@ProfileAuthOptions = 2)
                             OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                             OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                            )
            )

    SELECT  @@ROWCOUNT
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_DeleteProfiles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_DeleteProfiles]
    @ApplicationName        nvarchar(256),
    @UserNames              nvarchar(4000)
AS
BEGIN
    DECLARE @UserName     nvarchar(256)
    DECLARE @CurrentPos   int
    DECLARE @NextPos      int
    DECLARE @NumDeleted   int
    DECLARE @DeletedUser  int
    DECLARE @TranStarted  bit
    DECLARE @ErrorCode    int

    SET @ErrorCode = 0
    SET @CurrentPos = 1
    SET @NumDeleted = 0
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    WHILE (@CurrentPos <= LEN(@UserNames))
    BEGIN
        SELECT @NextPos = CHARINDEX(N',', @UserNames,  @CurrentPos)
        IF (@NextPos = 0 OR @NextPos IS NULL)
            SELECT @NextPos = LEN(@UserNames) + 1

        SELECT @UserName = SUBSTRING(@UserNames, @CurrentPos, @NextPos - @CurrentPos)
        SELECT @CurrentPos = @NextPos+1

        IF (LEN(@UserName) > 0)
        BEGIN
            SELECT @DeletedUser = 0
            EXEC dbo.aspnet_Users_DeleteUser @ApplicationName, @UserName, 4, @DeletedUser OUTPUT
            IF( @@ERROR <> 0 )
            BEGIN
                SET @ErrorCode = -1
                GOTO Cleanup
            END
            IF (@DeletedUser <> 0)
                SELECT @NumDeleted = @NumDeleted + 1
        END
    END
    SELECT @NumDeleted
    IF (@TranStarted = 1)
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END
    SET @TranStarted = 0

    RETURN 0

Cleanup:
    IF (@TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END
    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetNumberOfInactiveProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @InactiveSinceDate      datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
    BEGIN
        SELECT 0
        RETURN
    END

    SELECT  COUNT(*)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
    WHERE   ApplicationId = @ApplicationId
        AND u.UserId = p.UserId
        AND (LastActivityDate <= @InactiveSinceDate)
        AND (
                (@ProfileAuthOptions = 2)
                OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
            )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProfiles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProfiles]
    @ApplicationName        nvarchar(256),
    @ProfileAuthOptions     int,
    @PageIndex              int,
    @PageSize               int,
    @UserNameToMatch        nvarchar(256) = NULL,
    @InactiveSinceDate      datetime      = NULL
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    -- Set the page bounds
    DECLARE @PageLowerBound int
    DECLARE @PageUpperBound int
    DECLARE @TotalRecords   int
    SET @PageLowerBound = @PageSize * @PageIndex
    SET @PageUpperBound = @PageSize - 1 + @PageLowerBound

    -- Create a temp table TO store the select results
    CREATE TABLE #PageIndexForUsers
    (
        IndexId int IDENTITY (0, 1) NOT NULL,
        UserId uniqueidentifier
    )

    -- Insert into our temp table
    INSERT INTO #PageIndexForUsers (UserId)
        SELECT  u.UserId
        FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p
        WHERE   ApplicationId = @ApplicationId
            AND u.UserId = p.UserId
            AND (@InactiveSinceDate IS NULL OR LastActivityDate <= @InactiveSinceDate)
            AND (     (@ProfileAuthOptions = 2)
                   OR (@ProfileAuthOptions = 0 AND IsAnonymous = 1)
                   OR (@ProfileAuthOptions = 1 AND IsAnonymous = 0)
                 )
            AND (@UserNameToMatch IS NULL OR LoweredUserName LIKE LOWER(@UserNameToMatch))
        ORDER BY UserName

    SELECT  u.UserName, u.IsAnonymous, u.LastActivityDate, p.LastUpdatedDate,
            DATALENGTH(p.PropertyNames) + DATALENGTH(p.PropertyValuesString) + DATALENGTH(p.PropertyValuesBinary)
    FROM    dbo.aspnet_Users u, dbo.aspnet_Profile p, #PageIndexForUsers i
    WHERE   u.UserId = p.UserId AND p.UserId = i.UserId AND i.IndexId >= @PageLowerBound AND i.IndexId <= @PageUpperBound

    SELECT COUNT(*)
    FROM   #PageIndexForUsers

    DROP TABLE #PageIndexForUsers
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_GetProperties]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_GetProperties]
    @ApplicationName      nvarchar(256),
    @UserName             nvarchar(256),
    @CurrentTimeUtc       datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM dbo.aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN

    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)

    IF (@UserId IS NULL)
        RETURN
    SELECT TOP 1 PropertyNames, PropertyValuesString, PropertyValuesBinary
    FROM         dbo.aspnet_Profile
    WHERE        UserId = @UserId

    IF (@@ROWCOUNT > 0)
    BEGIN
        UPDATE dbo.aspnet_Users
        SET    LastActivityDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    END
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Profile_SetProperties]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Profile_SetProperties]
    @ApplicationName        nvarchar(256),
    @PropertyNames          ntext,
    @PropertyValuesString   ntext,
    @PropertyValuesBinary   image,
    @UserName               nvarchar(256),
    @IsUserAnonymous        bit,
    @CurrentTimeUtc         datetime
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
       BEGIN TRANSACTION
       SET @TranStarted = 1
    END
    ELSE
    	SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DECLARE @UserId uniqueidentifier
    DECLARE @LastActivityDate datetime
    SELECT  @UserId = NULL
    SELECT  @LastActivityDate = @CurrentTimeUtc

    SELECT @UserId = UserId
    FROM   dbo.aspnet_Users
    WHERE  ApplicationId = @ApplicationId AND LoweredUserName = LOWER(@UserName)
    IF (@UserId IS NULL)
        EXEC dbo.aspnet_Users_CreateUser @ApplicationId, @UserName, @IsUserAnonymous, @LastActivityDate, @UserId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    UPDATE dbo.aspnet_Users
    SET    LastActivityDate=@CurrentTimeUtc
    WHERE  UserId = @UserId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS( SELECT *
               FROM   dbo.aspnet_Profile
               WHERE  UserId = @UserId))
        UPDATE dbo.aspnet_Profile
        SET    PropertyNames=@PropertyNames, PropertyValuesString = @PropertyValuesString,
               PropertyValuesBinary = @PropertyValuesBinary, LastUpdatedDate=@CurrentTimeUtc
        WHERE  UserId = @UserId
    ELSE
        INSERT INTO dbo.aspnet_Profile(UserId, PropertyNames, PropertyValuesString, PropertyValuesBinary, LastUpdatedDate)
             VALUES (@UserId, @PropertyNames, @PropertyValuesString, @PropertyValuesBinary, @CurrentTimeUtc)

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
    	SET @TranStarted = 0
    	COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
    	ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_RegisterSchemaVersion]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_RegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128),
    @IsCurrentVersion          bit,
    @RemoveIncompatibleSchema  bit
AS
BEGIN
    IF( @RemoveIncompatibleSchema = 1 )
    BEGIN
        DELETE FROM dbo.aspnet_SchemaVersions WHERE Feature = LOWER( @Feature )
    END
    ELSE
    BEGIN
        IF( @IsCurrentVersion = 1 )
        BEGIN
            UPDATE dbo.aspnet_SchemaVersions
            SET IsCurrentVersion = 0
            WHERE Feature = LOWER( @Feature )
        END
    END

    INSERT  dbo.aspnet_SchemaVersions( Feature, CompatibleSchemaVersion, IsCurrentVersion )
    VALUES( LOWER( @Feature ), @CompatibleSchemaVersion, @IsCurrentVersion )
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_CreateRole]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Roles_CreateRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    EXEC dbo.aspnet_Applications_CreateApplication @ApplicationName, @ApplicationId OUTPUT

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF (EXISTS(SELECT RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId))
    BEGIN
        SET @ErrorCode = 1
        GOTO Cleanup
    END

    INSERT INTO dbo.aspnet_Roles
                (ApplicationId, RoleName, LoweredRoleName)
         VALUES (@ApplicationId, @RoleName, LOWER(@RoleName))

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_DeleteRole]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_DeleteRole]
    @ApplicationName            nvarchar(256),
    @RoleName                   nvarchar(256),
    @DeleteOnlyIfRoleIsEmpty    bit
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)

    DECLARE @ErrorCode     int
    SET @ErrorCode = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
        BEGIN TRANSACTION
        SET @TranStarted = 1
    END
    ELSE
        SET @TranStarted = 0

    DECLARE @RoleId   uniqueidentifier
    SELECT  @RoleId = NULL
    SELECT  @RoleId = RoleId FROM dbo.aspnet_Roles WHERE LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
    BEGIN
        SELECT @ErrorCode = 1
        GOTO Cleanup
    END
    IF (@DeleteOnlyIfRoleIsEmpty <> 0)
    BEGIN
        IF (EXISTS (SELECT RoleId FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId))
        BEGIN
            SELECT @ErrorCode = 2
            GOTO Cleanup
        END
    END


    DELETE FROM dbo.aspnet_UsersInRoles  WHERE @RoleId = RoleId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    DELETE FROM dbo.aspnet_Roles WHERE @RoleId = RoleId  AND ApplicationId = @ApplicationId

    IF( @@ERROR <> 0 )
    BEGIN
        SET @ErrorCode = -1
        GOTO Cleanup
    END

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        COMMIT TRANSACTION
    END

    RETURN(0)

Cleanup:

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
        ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_GetAllRoles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_GetAllRoles] (
    @ApplicationName           nvarchar(256))
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN
    SELECT RoleName
    FROM   dbo.aspnet_Roles WHERE ApplicationId = @ApplicationId
    ORDER BY RoleName
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Roles_RoleExists]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Roles_RoleExists]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(0)
    IF (EXISTS (SELECT RoleName FROM dbo.aspnet_Roles WHERE LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId ))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RemoveAllRoleMembers]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RemoveAllRoleMembers]
    @name   sysname
AS
BEGIN
    CREATE TABLE #aspnet_RoleMembers
    (
        Group_name      sysname,
        Group_id        smallint,
        Users_in_group  sysname,
        User_id         smallint
    )

    INSERT INTO #aspnet_RoleMembers
    EXEC sp_helpuser @name

    DECLARE @user_id smallint
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT User_id FROM #aspnet_RoleMembers

    OPEN c1

    FETCH c1 INTO @user_id
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = 'EXEC sp_droprolemember ' + '''' + @name + ''', ''' + USER_NAME(@user_id) + ''''
        EXEC (@cmd)
        FETCH c1 INTO @user_id
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Setup_RestorePermissions]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Setup_RestorePermissions]
    @name   sysname
AS
BEGIN
    DECLARE @object sysname
    DECLARE @protectType char(10)
    DECLARE @action varchar(60)
    DECLARE @grantee sysname
    DECLARE @cmd nvarchar(500)
    DECLARE c1 cursor FORWARD_ONLY FOR
        SELECT Object, ProtectType, [Action], Grantee FROM #aspnet_Permissions where Object = @name

    OPEN c1

    FETCH c1 INTO @object, @protectType, @action, @grantee
    WHILE (@@fetch_status = 0)
    BEGIN
        SET @cmd = @protectType + ' ' + @action + ' on ' + @object + ' TO [' + @grantee + ']'
        EXEC (@cmd)
        FETCH c1 INTO @object, @protectType, @action, @grantee
    END

    CLOSE c1
    DEALLOCATE c1
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UnRegisterSchemaVersion]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UnRegisterSchemaVersion]
    @Feature                   nvarchar(128),
    @CompatibleSchemaVersion   nvarchar(128)
AS
BEGIN
    DELETE FROM dbo.aspnet_SchemaVersions
        WHERE   Feature = LOWER(@Feature) AND @CompatibleSchemaVersion = CompatibleSchemaVersion
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_CreateUser]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_Users_CreateUser]
    @ApplicationId    uniqueidentifier,
    @UserName         nvarchar(256),
    @IsUserAnonymous  bit,
    @LastActivityDate DATETIME,
    @UserId           uniqueidentifier OUTPUT
AS
BEGIN
    IF( @UserId IS NULL )
        SELECT @UserId = NEWID()
    ELSE
    BEGIN
        IF( EXISTS( SELECT UserId FROM dbo.aspnet_Users
                    WHERE @UserId = UserId ) )
            RETURN -1
    END

    INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
    VALUES (@ApplicationId, @UserId, @UserName, LOWER(@UserName), @IsUserAnonymous, @LastActivityDate)

    RETURN 0
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_Users_DeleteUser]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_Users_DeleteUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @TablesToDeleteFrom int,
    @NumTablesDeletedFrom int OUTPUT
AS
BEGIN
    DECLARE @UserId               uniqueidentifier
    SELECT  @UserId               = NULL
    SELECT  @NumTablesDeletedFrom = 0

    DECLARE @TranStarted   bit
    SET @TranStarted = 0

    IF( @@TRANCOUNT = 0 )
    BEGIN
	    BEGIN TRANSACTION
	    SET @TranStarted = 1
    END
    ELSE
	SET @TranStarted = 0

    DECLARE @ErrorCode   int
    DECLARE @RowCount    int

    SET @ErrorCode = 0
    SET @RowCount  = 0

    SELECT  @UserId = u.UserId
    FROM    dbo.aspnet_Users u, dbo.aspnet_Applications a
    WHERE   u.LoweredUserName       = LOWER(@UserName)
        AND u.ApplicationId         = a.ApplicationId
        AND LOWER(@ApplicationName) = a.LoweredApplicationName

    IF (@UserId IS NULL)
    BEGIN
        GOTO Cleanup
    END

    -- Delete from Membership table if (@TablesToDeleteFrom & 1) is set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_MembershipUsers') AND (type = 'V'))))
    BEGIN
        DELETE FROM dbo.aspnet_Membership WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
               @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_UsersInRoles table if (@TablesToDeleteFrom & 2) is set
    IF ((@TablesToDeleteFrom & 2) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_UsersInRoles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_UsersInRoles WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Profile table if (@TablesToDeleteFrom & 4) is set
    IF ((@TablesToDeleteFrom & 4) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_Profiles') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_Profile WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_PersonalizationPerUser table if (@TablesToDeleteFrom & 8) is set
    IF ((@TablesToDeleteFrom & 8) <> 0  AND
        (EXISTS (SELECT name FROM sysobjects WHERE (name = N'vw_aspnet_WebPartState_User') AND (type = 'V'))) )
    BEGIN
        DELETE FROM dbo.aspnet_PersonalizationPerUser WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    -- Delete from aspnet_Users table if (@TablesToDeleteFrom & 1,2,4 & 8) are all set
    IF ((@TablesToDeleteFrom & 1) <> 0 AND
        (@TablesToDeleteFrom & 2) <> 0 AND
        (@TablesToDeleteFrom & 4) <> 0 AND
        (@TablesToDeleteFrom & 8) <> 0 AND
        (EXISTS (SELECT UserId FROM dbo.aspnet_Users WHERE @UserId = UserId)))
    BEGIN
        DELETE FROM dbo.aspnet_Users WHERE @UserId = UserId

        SELECT @ErrorCode = @@ERROR,
                @RowCount = @@ROWCOUNT

        IF( @ErrorCode <> 0 )
            GOTO Cleanup

        IF (@RowCount <> 0)
            SELECT  @NumTablesDeletedFrom = @NumTablesDeletedFrom + 1
    END

    IF( @TranStarted = 1 )
    BEGIN
	    SET @TranStarted = 0
	    COMMIT TRANSACTION
    END

    RETURN 0

Cleanup:
    SET @NumTablesDeletedFrom = 0

    IF( @TranStarted = 1 )
    BEGIN
        SET @TranStarted = 0
	    ROLLBACK TRANSACTION
    END

    RETURN @ErrorCode

END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_AddUsersToRoles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_AddUsersToRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000),
	@CurrentTimeUtc   datetime
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)
	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames	table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles	table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers	table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num		int
	DECLARE @Pos		int
	DECLARE @NextPos	int
	DECLARE @Name		nvarchar(256)

	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		SELECT TOP 1 Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END

	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1

	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	IF (@@ROWCOUNT <> @Num)
	BEGIN
		DELETE FROM @tbNames
		WHERE LOWER(Name) IN (SELECT LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE au.UserId = u.UserId)

		INSERT dbo.aspnet_Users (ApplicationId, UserId, UserName, LoweredUserName, IsAnonymous, LastActivityDate)
		  SELECT @AppId, NEWID(), Name, LOWER(Name), 0, @CurrentTimeUtc
		  FROM   @tbNames

		INSERT INTO @tbUsers
		  SELECT  UserId
		  FROM	dbo.aspnet_Users au, @tbNames t
		  WHERE   LOWER(t.Name) = au.LoweredUserName AND au.ApplicationId = @AppId
	END

	IF (EXISTS (SELECT * FROM dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr WHERE tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId))
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 dbo.aspnet_UsersInRoles ur, @tbUsers tu, @tbRoles tr, aspnet_Users u, aspnet_Roles r
		WHERE		u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND tu.UserId = ur.UserId AND tr.RoleId = ur.RoleId

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	INSERT INTO dbo.aspnet_UsersInRoles (UserId, RoleId)
	SELECT UserId, RoleId
	FROM @tbUsers, @tbRoles

	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_FindUsersInRole]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_FindUsersInRole]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256),
    @UserNameToMatch  nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId AND LoweredUserName LIKE LOWER(@UserNameToMatch)
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetRolesForUser]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetRolesForUser]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(1)

    SELECT r.RoleName
    FROM   dbo.aspnet_Roles r, dbo.aspnet_UsersInRoles ur
    WHERE  r.RoleId = ur.RoleId AND r.ApplicationId = @ApplicationId AND ur.UserId = @UserId
    ORDER BY r.RoleName
    RETURN (0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_GetUsersInRoles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_GetUsersInRoles]
    @ApplicationName  nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(1)
     DECLARE @RoleId uniqueidentifier
     SELECT  @RoleId = NULL

     SELECT  @RoleId = RoleId
     FROM    dbo.aspnet_Roles
     WHERE   LOWER(@RoleName) = LoweredRoleName AND ApplicationId = @ApplicationId

     IF (@RoleId IS NULL)
         RETURN(1)

    SELECT u.UserName
    FROM   dbo.aspnet_Users u, dbo.aspnet_UsersInRoles ur
    WHERE  u.UserId = ur.UserId AND @RoleId = ur.RoleId AND u.ApplicationId = @ApplicationId
    ORDER BY u.UserName
    RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_IsUserInRole]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_IsUserInRole]
    @ApplicationName  nvarchar(256),
    @UserName         nvarchar(256),
    @RoleName         nvarchar(256)
AS
BEGIN
    DECLARE @ApplicationId uniqueidentifier
    SELECT  @ApplicationId = NULL
    SELECT  @ApplicationId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
    IF (@ApplicationId IS NULL)
        RETURN(2)
    DECLARE @UserId uniqueidentifier
    SELECT  @UserId = NULL
    DECLARE @RoleId uniqueidentifier
    SELECT  @RoleId = NULL

    SELECT  @UserId = UserId
    FROM    dbo.aspnet_Users
    WHERE   LoweredUserName = LOWER(@UserName) AND ApplicationId = @ApplicationId

    IF (@UserId IS NULL)
        RETURN(2)

    SELECT  @RoleId = RoleId
    FROM    dbo.aspnet_Roles
    WHERE   LoweredRoleName = LOWER(@RoleName) AND ApplicationId = @ApplicationId

    IF (@RoleId IS NULL)
        RETURN(3)

    IF (EXISTS( SELECT * FROM dbo.aspnet_UsersInRoles WHERE  UserId = @UserId AND RoleId = @RoleId))
        RETURN(1)
    ELSE
        RETURN(0)
END
GO
/****** Object:  StoredProcedure [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[aspnet_UsersInRoles_RemoveUsersFromRoles]
	@ApplicationName  nvarchar(256),
	@UserNames		  nvarchar(4000),
	@RoleNames		  nvarchar(4000)
AS
BEGIN
	DECLARE @AppId uniqueidentifier
	SELECT  @AppId = NULL
	SELECT  @AppId = ApplicationId FROM aspnet_Applications WHERE LOWER(@ApplicationName) = LoweredApplicationName
	IF (@AppId IS NULL)
		RETURN(2)


	DECLARE @TranStarted   bit
	SET @TranStarted = 0

	IF( @@TRANCOUNT = 0 )
	BEGIN
		BEGIN TRANSACTION
		SET @TranStarted = 1
	END

	DECLARE @tbNames  table(Name nvarchar(256) NOT NULL PRIMARY KEY)
	DECLARE @tbRoles  table(RoleId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @tbUsers  table(UserId uniqueidentifier NOT NULL PRIMARY KEY)
	DECLARE @Num	  int
	DECLARE @Pos	  int
	DECLARE @NextPos  int
	DECLARE @Name	  nvarchar(256)
	DECLARE @CountAll int
	DECLARE @CountU	  int
	DECLARE @CountR	  int


	SET @Num = 0
	SET @Pos = 1
	WHILE(@Pos <= LEN(@RoleNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @RoleNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@RoleNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@RoleNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbRoles
	  SELECT RoleId
	  FROM   dbo.aspnet_Roles ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredRoleName AND ar.ApplicationId = @AppId
	SELECT @CountR = @@ROWCOUNT

	IF (@CountR <> @Num)
	BEGIN
		SELECT TOP 1 N'', Name
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT ar.LoweredRoleName FROM dbo.aspnet_Roles ar,  @tbRoles r WHERE r.RoleId = ar.RoleId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(2)
	END


	DELETE FROM @tbNames WHERE 1=1
	SET @Num = 0
	SET @Pos = 1


	WHILE(@Pos <= LEN(@UserNames))
	BEGIN
		SELECT @NextPos = CHARINDEX(N',', @UserNames,  @Pos)
		IF (@NextPos = 0 OR @NextPos IS NULL)
			SELECT @NextPos = LEN(@UserNames) + 1
		SELECT @Name = RTRIM(LTRIM(SUBSTRING(@UserNames, @Pos, @NextPos - @Pos)))
		SELECT @Pos = @NextPos+1

		INSERT INTO @tbNames VALUES (@Name)
		SET @Num = @Num + 1
	END

	INSERT INTO @tbUsers
	  SELECT UserId
	  FROM   dbo.aspnet_Users ar, @tbNames t
	  WHERE  LOWER(t.Name) = ar.LoweredUserName AND ar.ApplicationId = @AppId

	SELECT @CountU = @@ROWCOUNT
	IF (@CountU <> @Num)
	BEGIN
		SELECT TOP 1 Name, N''
		FROM   @tbNames
		WHERE  LOWER(Name) NOT IN (SELECT au.LoweredUserName FROM dbo.aspnet_Users au,  @tbUsers u WHERE u.UserId = au.UserId)

		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(1)
	END

	SELECT  @CountAll = COUNT(*)
	FROM	dbo.aspnet_UsersInRoles ur, @tbUsers u, @tbRoles r
	WHERE   ur.UserId = u.UserId AND ur.RoleId = r.RoleId

	IF (@CountAll <> @CountU * @CountR)
	BEGIN
		SELECT TOP 1 UserName, RoleName
		FROM		 @tbUsers tu, @tbRoles tr, dbo.aspnet_Users u, dbo.aspnet_Roles r
		WHERE		 u.UserId = tu.UserId AND r.RoleId = tr.RoleId AND
					 tu.UserId NOT IN (SELECT ur.UserId FROM dbo.aspnet_UsersInRoles ur WHERE ur.RoleId = tr.RoleId) AND
					 tr.RoleId NOT IN (SELECT ur.RoleId FROM dbo.aspnet_UsersInRoles ur WHERE ur.UserId = tu.UserId)
		IF( @TranStarted = 1 )
			ROLLBACK TRANSACTION
		RETURN(3)
	END

	DELETE FROM dbo.aspnet_UsersInRoles
	WHERE UserId IN (SELECT UserId FROM @tbUsers)
	  AND RoleId IN (SELECT RoleId FROM @tbRoles)
	IF( @TranStarted = 1 )
		COMMIT TRANSACTION
	RETURN(0)
END
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
GO
/****** Object:  StoredProcedure [dbo].[aspnet_WebEvent_LogEvent]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO
CREATE PROCEDURE [dbo].[aspnet_WebEvent_LogEvent]
        @EventId         char(32),
        @EventTimeUtc    datetime,
        @EventTime       datetime,
        @EventType       nvarchar(256),
        @EventSequence   decimal(19,0),
        @EventOccurrence decimal(19,0),
        @EventCode       int,
        @EventDetailCode int,
        @Message         nvarchar(1024),
        @ApplicationPath nvarchar(256),
        @ApplicationVirtualPath nvarchar(256),
        @MachineName    nvarchar(256),
        @RequestUrl      nvarchar(1024),
        @ExceptionType   nvarchar(256),
        @Details         ntext
AS
BEGIN
    INSERT
        dbo.aspnet_WebEvent_Events
        (
            EventId,
            EventTimeUtc,
            EventTime,
            EventType,
            EventSequence,
            EventOccurrence,
            EventCode,
            EventDetailCode,
            Message,
            ApplicationPath,
            ApplicationVirtualPath,
            MachineName,
            RequestUrl,
            ExceptionType,
            Details
        )
    VALUES
    (
        @EventId,
        @EventTimeUtc,
        @EventTime,
        @EventType,
        @EventSequence,
        @EventOccurrence,
        @EventCode,
        @EventDetailCode,
        @Message,
        @ApplicationPath,
        @ApplicationVirtualPath,
        @MachineName,
        @RequestUrl,
        @ExceptionType,
        @Details
    )
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ACT_DeleteActivity]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: May 5, 2016
-- Description:	Marck an activity as deleted
-- =============================================
CREATE PROCEDURE [dbo].[usp_ACT_DeleteActivity]
	@activityID int,
	@username varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[tbl_Activity]
	   SET [deleted] = 1
		  ,[dateDeleted] = GETDATE()
		  ,[usernameDeleted] = @username
	 WHERE [activityID] = @activityID

END
GO
/****** Object:  StoredProcedure [dbo].[usp_ACT_DeletePermanentlyActivity]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: May 5, 2016
-- Description:	Delete an activity and all of the 
-- related objects
-- =============================================
CREATE PROCEDURE [dbo].[usp_ACT_DeletePermanentlyActivity]
	@activityID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		-- ===============================================
		---  MAKE SURE THAT THIS NAME IS COPIED BELOW 
		---  AND IS UNIQUE IN THE SYSTEM!!!!!!
		-- ===============================================
		SAVE TRANSACTION DeleteActivity;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		-- Start with KPIs. 
		-- Get the IDs of all the KPIs we will delete
		DECLARE @KPITable as TABLE (kpiID int)
		
		INSERT INTO @KPITable
		SELECT [kpiID] from [dbo].[tbl_KPI]
		where [activityID] = @activityID

		-- Delete all permissions for the KPIs selected
		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and [objectID] in (select kpiID from @KPITable)

		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ACTIVITY'
		AND   [objectID] = @activityID
		
		DELETE FROM [dbo].[tbl_KPIMeasurementCategories]
		WHERE [measurementID] IN (SELECT [measurementID]
		                          FROM [dbo].[tbl_KPIMeasurements]
		                          WHERE [kpiID] IN (select kpiID from @KPITable))
		
		DELETE FROM [dbo].[tbl_KPIMeasurements]
		WHERE [kpiID] IN (select kpiID from @KPITable)
		
		DELETE FROM [dbo].[tbl_KPITargetCategories]
		WHERE [targetID] IN (SELECT targetID 
		                     FROM [dbo].[tbl_KPITarget]
							 WHERE [kpiID] IN (select kpiID from @KPITable))
		
		DELETE FROM [dbo].[tbl_KPITarget]
		WHERE [kpiID] IN (select kpiID from @KPITable)
		
		DELETE FROM [dbo].[tbl_KPI]
	    WHERE [activityID] = @activityID
		
		DELETE FROM [dbo].[tbl_Activity]
	    WHERE [activityID] = @activityID
		-- =============================================================

		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				-- ===============================================
				---  MAKE SURE THAT THIS NAME IS EXACTLY AS ABOVE 
				-- ===============================================
				ROLLBACK TRANSACTION DeleteActivity;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ACT_GetActivitiesByProject]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 19/05/2016
-- Description:	List all activities by project
-- =============================================
CREATE PROCEDURE [dbo].[usp_ACT_GetActivitiesByProject]
	@intProjectId AS INT,
	@varUserName AS VARCHAR(50)
AS
BEGIN
	
	SET NOCOUNT ON;

    	CREATE TABLE #tbl_Activity
		(activityId INT,
		 sourceObjectType VARCHAR(100),
		 isOwner INT DEFAULT(0))
	
	CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
	
	INSERT INTO #tbl_Activity (activityId, sourceObjectType)
	EXEC [dbo].[usp_ACT_GetActivityListForUser] @varUsername
    
    SELECT DISTINCT [a].[activityID]
		  ,[a].[name]
		  ,[a].[organizationID]
		  ,[o].[name] [organizationName]
		  ,[a].[areaID]
		  ,[ar].[name] [areaName]
		  ,[a].[projectID]
		  ,ISNULL([p].[name],'''') as [projectName]
		  ,0 as isOwner
		  ,[kpi].[numberKPIs]
	FROM [dbo].[tbl_Activity] [a] 
	INNER JOIN #tbl_Activity [d] ON [a].[activityID] = [d].[activityID]
	INNER JOIN [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	LEFT OUTER JOIN [dbo].[tbl_Area] [ar] ON [a].[areaID] = [ar].[areaID] 
	LEFT OUTER JOIN [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID] 
    LEFT OUTER JOIN (SELECT COUNT( DISTINCT[k].[kpiID]) [numberKPIs]
					       ,[k].[activityID]
					 FROM [dbo].[tbl_KPI] [k] 
					 INNER JOIN #tbl_KPI [d] ON [k].[kpiID] = [d].[kpiId] 
					 GROUP BY [k].[activityID]) [kpi] ON [a].[activityID] = [kpi].[activityID] 
	WHERE [a].[projectID] = @intProjectId
	AND [o].[deleted] = 0
	AND [p].[deleted] = 0
    
	DROP TABLE #tbl_Activity
	DROP TABLE #tbl_KPI
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ACT_GetActivitiesBySearch]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: May 4 2016
-- Description:	List all activities by search
-- =============================================
CREATE PROCEDURE [dbo].[usp_ACT_GetActivitiesBySearch]
	@varUsername VARCHAR(25),
	@varWhereClause VARCHAR(1000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	CREATE TABLE #tblActivity
		(activityId INT,
		 sourceObjectType VARCHAR(100),
		 isOwner INT DEFAULT(0))
	CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
	
	INSERT INTO #tblActivity (activityId, sourceObjectType)
	EXEC [dbo].[usp_ACT_GetActivityListForUser] @varUsername

	UPDATE #tblActivity
	SET [isOwner] = 1
	WHERE [sourceObjectType] IN ('ORG OWN (1)','ORG MAN_PROJECT (3)','ORG MAN_ACTIVITY (4)',
	'ACT OWN (5)','PROJ OWN (6)','PROJ-MAN_ACTIVITY (7)')

	DECLARE @varSQL AS VARCHAR(MAX)

	SET @varSQL = 'SELECT [a].[activityID]
		  ,[a].[name]
		  ,[a].[organizationID]
		  ,[g].[name] [organizationName]
		  ,[a].[areaID]
		  ,[r].[name] [areaName]
		  ,[a].[projectID]
		  ,ISNULL([p].[name],'''') as [projectName]
		  ,CASE WHEN ISNULL([t].[isOwner],0) > 0 THEN 1 ELSE 0 END as isOwner
		  ,[kpi].[numberKPIs]
	  FROM [dbo].[tbl_Activity] [a]
	  INNER JOIN (
		    SELECT activityId, SUM(isOwner) as isOwner
			FROM #tblActivity
			GROUP BY activityId) [t] ON [a].[activityID] = [t].[activityId]
	  INNER JOIN [dbo].[tbl_Organization] [g] ON [a].[organizationID] = [g].[organizationID]
	  LEFT JOIN [dbo].[tbl_Area] [r] ON [a].[areaID] = [r].[areaID]
	  LEFT JOIN [dbo].[tbl_Project] [p] ON [p].[projectID] = [a].[projectID]
	  LEFT OUTER JOIN (SELECT COUNT(DISTINCT [k].[kpiID]) [numberKPIs]
							   ,[k].[activityID]
						 FROM [dbo].[tbl_KPI] [k] 
						 INNER JOIN #tbl_KPI [d] ON [k].[kpiID] = [d].[kpiId] 
						 GROUP BY [k].[activityID]) [kpi] ON [a].[activityID] = [kpi].[activityID] 
	  WHERE [g].[deleted] = 0
	  AND CASE WHEN [a].[projectID] IS NOT NULL THEN
	           CASE WHEN [p].[deleted] = 0 THEN 1 ELSE 0 END
	           ELSE 1
	      END = 1
	  AND ' + @varWhereClause + '
	  ORDER BY [g].[name], [p].[name],[a].[name]'
	  
	 EXEC (@varSQL)
	 
	 DROP TABLE #tblActivity
	 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ACT_GetActivityById]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 30/04/2016
-- Description:	Get persona by id
-- =============================================
CREATE PROCEDURE [dbo].[usp_ACT_GetActivityById]
	@intActivityId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [a].[activityID]
		  ,[a].[name]
		  ,[a].[organizationID]
		  ,[g].[name] [organizationName]
		  ,[a].[areaID]
		  ,[r].[name] [areaName]
		  ,[a].[projectID]
		  ,ISNULL([p].[name],'''') as [projectName]
		  ,0 as isOwner
		  ,0 as [numberKPIs]
	FROM [dbo].[tbl_Activity] [a]
	INNER JOIN [dbo].[tbl_Organization] [g] ON [a].[organizationID] = [g].[organizationID]
	LEFT JOIN [dbo].[tbl_Area] [r] ON [a].[areaID] = [r].[areaID]
	LEFT JOIN [dbo].[tbl_Project] [p] ON [p].[projectID] = [a].[projectID]
	WHERE [activityID] = @intActivityId
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ACT_GetActivityByOrganization]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 02/05/2016
-- Description:	List all activities by organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_ACT_GetActivityByOrganization]
	@intOrganizationId INT,
	@varUserName AS VARCHAR(50)
AS
BEGIN
	
	SET NOCOUNT ON;
	
	CREATE TABLE #tbl_Activity
		(activityId INT,
		 sourceObjectType VARCHAR(100),
		 isOwner INT DEFAULT(0))
	CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername

	INSERT INTO #tbl_Activity (activityId, sourceObjectType)
	EXEC [dbo].[usp_ACT_GetActivityListForUser] @varUsername
	
    SELECT DISTINCT [a].[activityID]
		  ,[a].[name]
		  ,[a].[organizationID]
		  ,[a].[areaID]
		  ,[a].[projectID]
		  ,[o].[name] [organizationName]
		  ,[ar].[name] [areaName]
		  ,[p].[name] [projectName]
		  ,[kpi].[numberKPIs]
	FROM [dbo].[tbl_Activity] [a] 
	INNER JOIN #tbl_Activity [d] ON [a].[activityID] = [d].[activityID] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	LEFT OUTER JOIN [dbo].[tbl_Area] [ar] ON [a].[areaID] = [ar].[areaID] 
	LEFT OUTER JOIN [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID] 
	LEFT OUTER JOIN (SELECT COUNT(DISTINCT [k].[kpiID]) [numberKPIs]
					       ,[k].[activityID]
					 FROM [dbo].[tbl_KPI] [k] 
					 INNER JOIN #tbl_KPI [d] ON [k].[kpiID] = [d].[kpiId] 
					 GROUP BY [k].[activityID]) [kpi] ON [a].[activityID] = [kpi].[activityID] 
	WHERE [a].[organizationID] = @intOrganizationId
	AND [o].[deleted] = 0
	AND [p].[deleted] = 0
    
    DROP TABLE #tbl_Activity
    DROP TABLE #tbl_KPI
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ACT_GetActivityByProject]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez 
-- Create date: 10/05/2016
-- Description:	get activities by project
-- =============================================
CREATE PROCEDURE [dbo].[usp_ACT_GetActivityByProject]
	@intProjectId INT
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT [a].[activityID]
		  ,[a].[name]
		  ,[a].[organizationID]
		  ,[g].[name] [organizationName]
		  ,[a].[areaID]
		  ,[r].[name] [areaName]
		  ,[a].[projectID]
		  ,ISNULL([p].[name],'''') as [projectName]
		  ,0 as isOwner
		  ,0 as [numberKPIs]
	FROM [dbo].[tbl_Activity] [a]
	INNER JOIN [dbo].[tbl_Organization] [g] ON [a].[organizationID] = [g].[organizationID]
	LEFT JOIN [dbo].[tbl_Area] [r] ON [a].[areaID] = [r].[areaID]
	LEFT JOIN [dbo].[tbl_Project] [p] ON [p].[projectID] = [a].[projectID]
	WHERE [activityID] = @intProjectId
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ACT_GetActivityListForUser]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================================
-- Author:		Gabriela Sanchez V.
-- Create date: Jun 2 2016
-- Description:	Get List of Activities that user has view rights to
-- =============================================================
CREATE PROCEDURE [dbo].[usp_ACT_GetActivityListForUser]
	-- Add the parameters for the stored procedure here
	@userName varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--- Get list of KPIS where user has acccess.  In the sourceObjectType
	-- column we will record where we got this from, and the objectID will
	-- tell us the ID of the object where this KPI came from.
	DECLARE @actList as TABLE(activityID int, sourceObjectType varchar(100), objectID int)

	-- For the following description ORG = ORGANIZATION, ACT = ACTIVITY, PPL = PEOPLE, PROF = PROJECT. 
	--If we need to determine the list of KPIs that a specific user can see 
	--we need to follow the following steps:
	--
	--1. Search for all ORGs where the user has OWN permissions and add to the list 
	--   of ACT to those ORGs.
	--2. Search for all ORGs where the user has MAN_KPI permissions or ORG has public 
	--   MAN_KPI and add to the list of ACTs all of these that are directly associated 
	--   to the organization
	--3. Search for all ORGs where the user has MAN_PROJECT permissions or ORG has public 
	--   MAN_PROJECT, then search for all ACTs then add to the ACT list all of the ACTs 
	--   that are associated to these ORGs.
	--4. Search for all ORGs where the user has MAN_ACTITIVIES permissions or ORG has public 
	--   MAN_ACTITIVIES and search for ACT that are associated to these ORGs and ARE NOT 
	--   associated to any PROJ, then add to the ACT list all of the ACTs that are 
	--   associated.
	--5. Search for all ACT where the user has OWN or MAN_KPI permissions or the ACT is public 
	--   MAN_KPI and add to the ACT list all of the ACTs.
	--6. Search for all PROJ where the user has OWN or MAN_KPI permissions, or where the PROJ 
	--   is public MAN_KPI and add to the ACT list all of the ACTs that are associated to those
	--   PROJ.
	--7. Search for all PROJ where the user has MAN_ACTIVITIES permissions or where the PROJ is 
	--   public MAN_ACTIVITIES, then search for all of the ACT and finally add to the ACT list 
	--   the ACTs.
	--8. Add to the ACT list all of the ACTs that are public VIEW_KPI
	--9. Add to the ACT list all of the ACTs where the user has OWN or VIEW_KPI or ENTER_DATA
	--   permissions.
	--
	--At the end of this, we should have a list of all of the ORGs that the user can see.

	-- So lets start with step 1.
 
	--1. Search for all ORGs where the user has OWN permissions and add to the list 
	--   of ACT to those ORGs.

	insert into @actList
	select [activityID], 'ORG OWN (1)', [a].[organizationID] 
	from [dbo].[tbl_Activity] [a]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID]
	where [a].[deleted] = 0
	  AND [o].[deleted] = 0
	  AND case when [a].projectID Is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
		  end = 1
	  AND [a].[organizationID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'ORGANIZATION' and objectActionID = 'OWN'
			and username = @userName
	)

	--2. Search for all ORGs where the user has MAN_KPI permissions or ORG has public 
	--   MAN_KPI and add to the list of ACTs all of these that are directly associated 
	--   to the organization

	insert into @actList
	select [activityID], 'ORG MAN_KPI (2)', [a].[organizationID] 
	from [dbo].[tbl_Activity] [a]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID] 
	where [a].[deleted] = 0
	  AND [o].[deleted] = 0
	  AND case when [a].projectID Is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
		  end = 1
	  and [a].[organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_KPI'
	) 

	--3. Search for all ORGs where the user has MAN_PROJECT permissions or ORG has public 
	--   MAN_PROJECT, then search for all ACTs then add to the ACT list all of the ACTs 
	--   that are associated to these ORGs.

	insert into @actList
	select [activityID], 'ORG MAN_PROJECT (3)', [a].[organizationID] 
	from [dbo].[tbl_Activity] [a]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID] 
	where [a].[deleted] = 0
	  AND [o].[deleted] = 0
	  AND case when [a].projectID is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
		  end = 1
	  and [a].[organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PROJECT' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PROJECT'
	) 

	--4. Search for all ORGs where the user has MAN_ACTITIVIES permissions or ORG has public 
	--   MAN_ACTITIVIES and search for ACT that are associated to these ORGs and ARE NOT 
	--   associated to any PROJ, then add to the ACT list all of the ACTs that are 
	--   associated.
	
	insert into @actList
	select [activityID], 'ORG MAN_ACTIVITY (4)', [a].[organizationID] 
	from [dbo].[tbl_Activity] [a]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID]
	where [a].[deleted] = 0
	  AND [o].[deleted] = 0
	  AND case when [a].projectID is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
		  end = 1
	  and [a].[organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_ACTIVITY' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_ACTIVITY'
	)  and [a].[projectID] is null

	--5. Search for all ACT where the user has OWN or MAN_KPI permissions or the ACT is public 
	--   MAN_KPI and add to the ACT list all of the ACTs.

	insert into @actList
	select [activityID], 'ACT OWN (5)', [activityID]
	from  [dbo].[tbl_Activity] [a]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID] 
	where [a].[deleted] = 0
	  AND [o].[deleted] = 0
	  AND case when [a].projectID is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
		  end = 1
	  and [activityID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'ACTIVITY' and objectActionID = 'OWN' and username = @userName
	) 

	insert into @actList
	select [activityID], 'ACT-MAN_KPI (5)', [activityID] 
	FROM [dbo].[tbl_Activity] [a]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID] 
	where [a].[deleted] = 0
	  AND [o].[deleted] = 0
	  AND case when [a].projectID is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
		  end = 1
	  and [activityID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ACTIVITY' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ACTIVITY' and objectActionID = 'MAN_KPI'
	)

	--6. Search for all PROJ where the user has OWN or MAN_KPI permissions, or where the PROJ 
	--   is public MAN_KPI and add to the ACT list all of the ACTs that are associated to those
	--   PROJ.

	insert into @actList
	select [activityID], 'PROJ OWN (6)', [a].[projectID] 
	from [dbo].[tbl_Activity] [a]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID] 
	where [a].[deleted] = 0
	  AND [o].[deleted] = 0
	  AND case when [a].projectID is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
		  end = 1
	  and [a].[projectID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'PROJECT' and objectActionID = 'OWN' and username = @userName
	)

	insert into @actList
	select [activityID], 'PROJ-MAN_KPI (6)', [a].[projectID] 
	FROM [dbo].[tbl_Activity] [a]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID]
	where [a].[deleted] = 0
	  AND [o].[deleted] = 0
	  AND case when [a].projectID is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
		  end = 1
	  and [a].[projectID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_KPI'
	)

	--7. Search for all PROJ where the user has MAN_ACTIVITIES permissions or where the PROJ is 
	--   public MAN_ACTIVITIES, then search for all of the ACT and finally add to the ACT list 
	--   the ACTs.

	insert into @actList
	select [activityID], 'PROJ-MAN_ACTIVITY (7)', [a].[projectID] 
	from [dbo].[tbl_Activity] [a]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID]
	where [a].[deleted] = 0
	  AND [o].[deleted] = 0
	  AND case when [a].projectID is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
		  end = 1
	  and [a].[projectID] in (
							SELECT [objectID] 
							FROM [dbo].[tbl_SEG_ObjectPermissions]
							WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_ACTIVITY' AND username = @userName
							UNION
							SELECT [objectID]
							FROM [dbo].[tbl_SEG_ObjectPublic]
							WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_ACTIVITY'
						)

	--8. Add to the ACT list all of the ACTs that are public VIEW_KPI

	insert into @actList
	select [k].[activityID], 'KPI-PUB VIEW (8)', [kpiID] 
	FROM [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Activity] [a] ON [k].[activityID] = [a].[activityID]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID]
	where [a].[deleted] = 0
	  and [k].[deleted] = 0
	  AND [o].[deleted] = 0
	  AND case when [k].projectID is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
		  end = 1
	  and [kpiID] in (
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI'
	)

	--9.	Add to the ACT list all of the ACTs where the user has OWN or VIEW_KPI or ENTER_DATA
	--      permissions.
	insert into @actList
	select [k].[activityID], 'KPI-VIEW-OWN-ENTER (11)', [kpiID] 
	FROM [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Activity] [a] ON [k].[activityID] = [a].[activityID]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID]
	where [a].[deleted] = 0
	  and [k].[deleted] = 0
	  AND [o].[deleted] = 0
	  AND case when [k].projectID is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
		  end = 1
	  and [kpiID] in (
					SELECT [objectID] 
					FROM [dbo].[tbl_SEG_ObjectPermissions]
					WHERE [objectTypeID] = 'KPI' and objectActionID = 'OWN' AND username = @userName
					union
					SELECT [objectID] 
					FROM [dbo].[tbl_SEG_ObjectPermissions]
					WHERE [objectTypeID] = 'KPI' and objectActionID = 'ENTER_DATA' AND username = @userName
					union
					SELECT [objectID] 
					FROM [dbo].[tbl_SEG_ObjectPermissions]
					WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI' AND username = @userName
				)

	select distinct [activityID],[sourceObjectType] from @actList 


END
GO
/****** Object:  StoredProcedure [dbo].[usp_ACT_GetAllActivities]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 22 2016
-- Description:	List all activities in the system
-- =============================================
CREATE PROCEDURE [dbo].[usp_ACT_GetAllActivities]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [a].[activityID]
		  ,[a].[name]
		  ,[a].[organizationID]
		  ,[g].[name] [organizationName]
		  ,[a].[areaID]
		  ,[r].[name] [areaName]
		  ,[a].[projectID]
		  ,ISNULL([p].[name],'') as [projectName]
		  ,0 as isOwner
		  ,0 as [numberKPIs]
	FROM [dbo].[tbl_Activity] [a]
	INNER JOIN [dbo].[tbl_Organization] [g] ON [a].[organizationID] = [g].[organizationID]
	LEFT JOIN [dbo].[tbl_Area] [r] ON [a].[areaID] = [r].[areaID]
	LEFT JOIN [dbo].[tbl_Project] [p] ON [p].[projectID] = [a].[projectID]
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ACT_InsertActivity]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Cerate a new activity
-- =============================================
CREATE PROCEDURE [dbo].[usp_ACT_InsertActivity]
	@userName varchar(50),
	@organizationID int,
	@areaID int,
	@projectID int,
	@activityName nvarchar(250),
	@activityID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		-- ===============================================
		---  MAKE SURE THAT THIS NAME IS COPIED BELOW 
		---  AND IS UNIQUE IN THE SYSTEM!!!!!!
		-- ===============================================
		SAVE TRANSACTION InsertActivityPS;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		IF(@areaID = 0)
			SELECT @areaID = null
		IF(@projectID = 0)
			SELECT @projectID = null

		INSERT INTO [dbo].[tbl_Activity]
			([name]
			,[organizationID]
			,[areaID]
			,[projectID])
		VALUES
           (@activityName
           ,@organizationID
           ,@areaID
           ,@projectID)

		SELECT @activityID = SCOPE_IDENTITY()

		-- Ensure that the owner can manage this object
		INSERT INTO [dbo].[tbl_SEG_ObjectPermissions]
           ([objectTypeID]
           ,[objectID]
           ,[username]
           ,[objectActionID])
		VALUES
           ('ACTIVITY'
           ,@activityID
           ,@userName
           ,'OWN')

		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				-- ===============================================
				---  MAKE SURE THAT THIS NAME IS EXACTLY AS ABOVE 
				-- ===============================================
				ROLLBACK TRANSACTION InsertActivityPS;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ACT_UpdateActivity]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: May 4, 2016
-- Description:	Update a activity
-- =============================================
CREATE PROCEDURE [dbo].[usp_ACT_UpdateActivity]
	@activityID int,
	@activityName nvarchar(250),
	@organizationID int,
	@areaID int,
	@projectID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		-- ===============================================
		---  MAKE SURE THAT THIS NAME IS COPIED BELOW 
		---  AND IS UNIQUE IN THE SYSTEM!!!!!!
		-- ===============================================
		SAVE TRANSACTION UpdateActivityPS;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		IF(@areaID = 0)
			SELECT @areaID = null
		IF(@projectID = 0)
			SELECT @projectID = null

		UPDATE [dbo].[tbl_Activity]
		SET [name] = @activityName,
			[organizationID] = @organizationID,
			[areaID] = @areaID,
			[projectID] = @projectID
		WHERE [activityId] = @activityID
           
		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				-- ===============================================
				---  MAKE SURE THAT THIS NAME IS EXACTLY AS ABOVE 
				-- ===============================================
				ROLLBACK TRANSACTION UpdateActivityPS;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[usp_AUTOCOMPLETE_SearchActivitiess]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcela Martinez
-- Create date: 30/04/2016
-- Description:	Get activities for autocomplete
-- =============================================
CREATE PROCEDURE [dbo].[usp_AUTOCOMPLETE_SearchActivitiess]
	@varUserName AS VARCHAR(50),
	@intOrganizationId AS INT,
	@intAreaId AS INT,
	@intProjectId AS INT,
	@varFilter AS VARCHAR(250)
AS
BEGIN
	
	SET NOCOUNT ON;
	
	CREATE TABLE #tbl_Activity
		(activityId INT,
		 sourceObjectType VARCHAR(100),
		 isOwner INT DEFAULT(0))
	
	INSERT INTO #tbl_Activity (activityId, sourceObjectType)
	EXEC [dbo].[usp_ACT_GetActivityListForUser] @varUsername
	
    SELECT DISTINCT [a].[activityID]
		  ,[a].[name]
		  ,[a].[organizationID]
		  ,[g].[name] [organizationName]
		  ,[a].[areaID]
		  ,ISNULL([r].[name],'') [areaName]
		  ,[a].[projectID]
		  ,ISNULL([p].[name],'') as [projectName]
		  ,0 as isOwner
		  ,0 as [numberKPIs]
	FROM [dbo].[tbl_Activity] [a] 
	INNER JOIN #tbl_Activity [d] ON [a].[activityID] = [d].[activityID]
	INNER JOIN [dbo].[tbl_Organization] [g] ON [a].[organizationID] = [g].[organizationID]
	LEFT JOIN [dbo].[tbl_Area] [r] ON [a].[areaID] = [r].[areaID]
	LEFT JOIN [dbo].[tbl_Project] [p] ON [p].[projectID] = [a].[projectID]
	WHERE [a].[name] LIKE CASE @varFilter WHEN '' THEN [a].[name] ELSE '%' + @varFilter + '%' END 
	AND [a].[deleted] = 0
	AND [g].[deleted] = 0
	AND CASE WHEN [a].[projectID] IS NOT NULL THEN
	         CASE WHEN [p].[deleted] = 0 THEN 1 ELSE 0 END
	         ELSE 1
	    END = 1
	AND [a].[organizationID] = @intOrganizationId 
	AND ISNULL([a].[areaID],0) = CASE WHEN ISNULL(@intAreaId,0) = 0 THEN ISNULL([a].[areaID],0) ELSE ISNULL(@intAreaId,0) END 
	AND ISNULL([a].[projectID],0) = CASE WHEN ISNULL(@intProjectId,0) = 0 THEN ISNULL([a].[projectID],0) ELSE ISNULL(@intProjectId,0) END 
	ORDER BY [a].[name]
    
    DROP TABLE #tbl_Activity
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AUTOCOMPLETE_SearchAreas]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 25/04/2016
-- Description:	Get areas for autocomplete
-- ===============================================
CREATE PROCEDURE [dbo].[usp_AUTOCOMPLETE_SearchAreas]
	@intOrganizationId AS INT,
	@varFilter AS VARCHAR(250)
AS
BEGIN
	
	SET NOCOUNT ON;

    IF(@varFilter IS NULL)
		SELECT @varFilter = ''
	
	SELECT [areaID]
		  ,[organizationID]
		  ,[name]
	FROM [dbo].[tbl_Area] 
	WHERE [name] LIKE CASE @varFilter WHEN '' THEN [name] ELSE '%' + @varFilter + '%' END 
	AND [organizationID] = @intOrganizationId 
	ORDER BY [name]
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_AUTOCOMPLETE_SearchOrganizations]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ===============================================
-- Author:		Marcela Martinez
-- Create date: 25/04/2016
-- Description:	Get organizations for autocomplete
-- ===============================================
CREATE PROCEDURE [dbo].[usp_AUTOCOMPLETE_SearchOrganizations]
	@varUserName AS VARCHAR(50),
	@varFilter AS VARCHAR(250)
AS
BEGIN
	
	SET NOCOUNT ON;

    IF(@varFilter IS NULL)
		SELECT @varFilter = ''
		
	CREATE TABLE #tbl_Organization([organizationID] INT)
	INSERT INTO #tbl_Organization
		EXEC [dbo].[usp_ORG_GetOrganizationListForUser] @varUserName
	
	SELECT [o].[organizationID]
		  ,[o].[name]
	FROM [dbo].[tbl_Organization] [o] 
	INNER JOIN #tbl_Organization [d] ON [o].[organizationID] = [d].[organizationId]
	WHERE [o].[name] LIKE CASE @varFilter WHEN '' THEN [o].[name] ELSE '%' + @varFilter + '%' END 
	ORDER BY [o].[name]
	
	DROP TABLE #tbl_Organization
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_AUTOCOMPLETE_SearchPeople]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 30/04/2016
-- Description:	Get people for autocomplete
-- =============================================
CREATE PROCEDURE [dbo].[usp_AUTOCOMPLETE_SearchPeople]
	@varUserName AS VARCHAR(50),
	@intOrganizationId AS INT,
	@intAreaId AS INT,
	@varFilter AS VARCHAR(250)
AS
BEGIN
	
	SET NOCOUNT ON;
	
	CREATE TABLE #tbl_People([personID] INT, [sourceObjectType] VARCHAR(20))
	INSERT INTO #tbl_People
		EXEC [dbo].[usp_PEOPLE_GetPersonListForUser] @varUserName
	
    SELECT [p].[personID]
		  ,[p].[id]
		  ,[p].[name]
		  ,[p].[organizationID]
		  ,[g].[name] [organizationName]
		  ,[p].[areaID]
		  ,[r].[name] [areaName]
		  ,0 [isOwner]
		  ,0 [numberKPIs]
	FROM [dbo].[tbl_People] [p] 
	INNER JOIN #tbl_People [d] ON [p].[personID] = [d].[personID]
	INNER JOIN [dbo].[tbl_Organization] [g] ON [p].[organizationID] = [g].[organizationID]
	LEFT JOIN [dbo].[tbl_Area] [r] ON [p].[areaID] = [r].[areaID]
	WHERE [p].[name] LIKE CASE @varFilter WHEN '' THEN [p].[name] ELSE '%' + @varFilter + '%' END 
	AND [p].[organizationID] = @intOrganizationId 
	AND ISNULL([p].[areaID],0) = CASE WHEN ISNULL(@intAreaId,0) = 0 THEN ISNULL([p].[areaID],0) ELSE ISNULL(@intAreaId,0) END 
	ORDER BY [p].[name]
    
    DROP TABLE #tbl_People
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AUTOCOMPLETE_SearchProjects]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 29/04/2016
-- Description:	Get projects for autocomplete
-- =============================================
CREATE PROCEDURE [dbo].[usp_AUTOCOMPLETE_SearchProjects]
	@varUserName AS VARCHAR(50),
	@intOrganizationId AS INT,
	@intAreaId AS INT,
	@varFilter AS VARCHAR(250)
AS
BEGIN
	
	SET NOCOUNT ON;

    IF(@varFilter IS NULL)
		SELECT @varFilter = ''
	
	CREATE TABLE #tbl_Project
	([projectID] INT, 
	 [sourceObjectType] VARCHAR(100))
	
	INSERT INTO #tbl_Project (projectId, sourceObjectType)
	EXEC [dbo].[usp_PROJ_GetProjectListForUser] @varUsername
	
	SELECT DISTINCT 
	       [p].[projectID]
		  ,[p].[name]
		  ,[p].[organizationID]
		  ,[p].[areaID]
		  ,[o].[name] [organizationName]
		  ,[a].[name] [areaName]
		  ,0 as [numberKPIs]
		  ,0 as [isOwner]
		  ,'' as [owner]
	FROM [dbo].[tbl_Project] [p] 
	INNER JOIN #tbl_Project [d] ON [p].[projectID] = [d].[projectID]
	INNER JOIN [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	LEFT OUTER JOIN [dbo].[tbl_Area] [a] ON [p].[areaID] = [a].[areaID] 
	WHERE [p].[name] LIKE CASE @varFilter WHEN '' THEN [p].[name] ELSE '%' + @varFilter + '%' END 
	AND [p].[organizationID] = @intOrganizationId 
	AND ISNULL([p].[areaID],0) = CASE WHEN ISNULL(@intAreaId,0) = 0 THEN ISNULL([p].[areaID],0) ELSE ISNULL(@intAreaId,0) END 
	ORDER BY [p].[name]
    
    DROP TABLE #tbl_Project
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_AUTOCOMPLETE_SearchUsers]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 06/05/2016
-- Description:	Get users for autocomplete
-- =============================================
CREATE PROCEDURE [dbo].[usp_AUTOCOMPLETE_SearchUsers]
	@varFilter AS VARCHAR(250)
AS
BEGIN
	
	SET NOCOUNT ON;
	
	IF(@varFilter IS null)
		SELECT @varFilter = ''
	
	SELECT [userId]
		  ,[fullname]
		  ,[cellphone]
		  ,[address]
		  ,[phonenumber]
		  ,[phonearea]
		  ,[phonecode]
		  ,[username]
		  ,[email]
	FROM [dbo].[tbl_SEG_User] 
	WHERE [fullname] LIKE CASE @varFilter WHEN '' THEN [fullname] ELSE '%' + @varFilter + '%' END
	
END


GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_DeleteCategory]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 30/04/2016
-- Description:	Delete category
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_DeleteCategory]
	@varCategoryId varchar(20)
AS
BEGIN
	
	SET NOCOUNT ON;
	
	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		SAVE TRANSACTION DeleteCategoryPS;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		--DELETE FROM [dbo].[tbl_KPITargetCategories] 
		--WHERE [categoryID] = @varCategoryId 
		
		--DELETE FROM [dbo].[tbl_KPIMeasurementCategories] 
		--WHERE [categoryID] = @varCategoryId
		
		--DELETE FROM [dbo].[tbl_KPICategories] 
		--WHERE [categoryID] = @varCategoryId
		
		DELETE FROM [dbo].[tbl_CategoryItem] 
		WHERE [categoryID] = @varCategoryId
		
		DELETE FROM [dbo].[tbl_Category] 
		WHERE [categoryID] = @varCategoryId 
	    
	    -- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				ROLLBACK TRANSACTION DeleteCategoryPS;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
	    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_DeleteCategoryItem]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 30/04/2016
-- Description:	Delete category item
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_DeleteCategoryItem]
	@varCategoryItemId VARCHAR(20),
	@varCategoryId AS VARCHAR(20)
AS
BEGIN
	
	SET NOCOUNT ON;
	
	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		SAVE TRANSACTION DeleteCategoryItemPS;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		--DELETE FROM [dbo].[tbl_KPITargetCategories] 
		--WHERE [categoryItemID] = @varCategoryItemId 
		
		--DELETE FROM [dbo].[tbl_KPIMeasurementCategories] 
		--WHERE [categoryItemID] = @varCategoryItemId
		
		DELETE FROM [dbo].[tbl_CategoryItem] 
		WHERE [categoryItemID] = @varCategoryItemId 
		AND [categoryID] = @varCategoryId
	    
	    
	    -- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				ROLLBACK TRANSACTION DeleteCategoryItemPS;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
	    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_GetAllCategories]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 29/04/2016
-- Description:	Get all categories
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_GetAllCategories] 
	
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [categoryID]
		  ,[name]
	FROM [dbo].[tbl_Category] 
	ORDER BY [name]
    
END



GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_GetCategoriesByKpiId]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 26/05/2016
-- Description:	Get Categories by kpiID
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_GetCategoriesByKpiId] 
	@intKpiId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [c].[categoryID]
		  ,[c].[name]
		  ,(SELECT ';' + [ci].[categoryItemID]
            FROM [dbo].[tbl_CategoryItem] [ci] 
            WHERE [ci].[categoryID] = [c].[categoryID]
            FOR XML PATH('')) [items]
	FROM [dbo].[tbl_Category] [c] 
	INNER JOIN [dbo].[tbl_KPICategories] [kc] ON [c].[categoryID] = [kc].[categoryID] 
	AND [kc].[kpiID] = @intKpiId 
	ORDER BY [c].[categoryID]
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_GetCategoryById]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 29/04/2016
-- Description:	Get category by id
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_GetCategoryById] 
	@intCategoryId AS VARCHAR(20)
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [categoryID]
		  ,[name]
	FROM [dbo].[tbl_Category] 
	WHERE [categoryID] = @intCategoryId
    
END



GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_GetCategoryByKpi]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 31/05/2016
-- Description:	Get category KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_GetCategoryByKpi] 
	@kpiId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT DISTINCT [c].[categoryID],[c].[name]
	  FROM [dbo].[tbl_KPITargetCategories] [t]
	 INNER JOIN [dbo].[tbl_Category] [c] ON [t].[categoryID] = [c].[categoryID]
	  WHERE [targetID] IN (SELECT [targetID] FROM [dbo].[tbl_KPITarget] WHERE [kpiID] = @kpiId)

END

GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_GetCategoryItemById]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 30/04/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_GetCategoryItemById]
	@varCategoryItemId AS VARCHAR(20),
	@varCategoryId AS VARCHAR(20)
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [categoryItemID]
		  ,[categoryID]
		  ,[name]
	FROM [dbo].[tbl_CategoryItem] 
	WHERE [categoryItemID] = @varCategoryItemId 
	AND [categoryID] = @varCategoryId
    
END



GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_GetCategoryItems]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 22 2016
-- Description:	Gets all category items
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_GetCategoryItems]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT ci.[categoryItemID]
		  ,ci.[categoryID]
		  ,c.[name] as categoryName
		  ,ci.[name] as categoriItemName
	  FROM [dbo].[tbl_CategoryItem] as ci
	  join [dbo].[tbl_Category] as c on ci.categoryID = c.categoryID

END

GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_GetCategoryItemsByCategoryId]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 30/04/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_GetCategoryItemsByCategoryId]
	@varCategoryId AS VARCHAR(20)
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [categoryItemID]
		  ,[categoryID]
		  ,[name]
	FROM [dbo].[tbl_CategoryItem] 
	WHERE [categoryID] = @varCategoryId 
	ORDER BY [name]
    
END



GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_InsertNewCategory]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 22 2016
-- Description:	Inserts a Category
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_InsertNewCategory]
	@categoryName nvarchar(250),
	@categoryID varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[tbl_Category]
           ([categoryID]
           ,[name])
     VALUES
           (@categoryID
		   , @categoryName)
END

GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_InsertNewCategoryItem]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 22 2016
-- Description:	Inserts a Category Item
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_InsertNewCategoryItem]
	@categoryID varchar(20),
	@categoryItemID varchar(20),
	@categoryItemName nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[tbl_CategoryItem]
           ([categoryItemID]
           ,[categoryID]
           ,[name])
     VALUES
           (@categoryItemID
           ,@categoryID
           ,@categoryItemName)

END

GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_UpdateCategory]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 30/04/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_UpdateCategory]
	@varCategoryName NVARCHAR(250),
	@varCategoryId varchar(20)
AS
BEGIN
	
	SET NOCOUNT ON;

    UPDATE [dbo].[tbl_Category]
    SET [name] = @varCategoryName 
    WHERE [categoryID] = @varCategoryId 
    
END



GO
/****** Object:  StoredProcedure [dbo].[usp_CATEGORY_UpdateCategoryItem]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 30/04/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_CATEGORY_UpdateCategoryItem]
	@varCategoryItemId AS VARCHAR(20),
	@varCategoryId AS VARCHAR(20),
	@varName AS NVARCHAR(250)
AS
BEGIN
	
	SET NOCOUNT ON;

    UPDATE [dbo].[tbl_CategoryItem]
	SET [name] = @varName 
	WHERE [categoryItemID] = @varCategoryItemId 
    AND [categoryID] = @varCategoryId
    
END



GO
/****** Object:  StoredProcedure [dbo].[usp_CLA_GetCurrency]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- =============================================
-- Author:		Gabriela Sanchez
-- Create date: May 19 2016
-- Description:	List all Currency
-- =============================================
CREATE PROCEDURE [dbo].[usp_CLA_GetCurrency]
	@varLanguage VARCHAR(5)
AS
BEGIN
	
	SELECT [d].[currencyID], [l].[name]
    FROM [dbo].[tbl_Currency] d 
    INNER JOIN [dbo].[tbl_CurrencyLabels] [l] ON [d].[currencyID] = [l].[currencyID]
    WHERE [l].[language] = @varLanguage
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CLA_GetCurrencyUnitByCurrency]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- =============================================
-- Author:		Gabriela Sanchez
-- Create date: May 19 2016
-- Description:	List all Currency
-- =============================================
CREATE PROCEDURE [dbo].[usp_CLA_GetCurrencyUnitByCurrency]
	@varLanguage VARCHAR(5),
	@varCurrencyID VARCHAR(5)
AS
BEGIN
	
	SELECT [a].[currencyID], [d].[currencyUnitID], [l].[name], [a].[hasMeasure]
    FROM [dbo].[tbl_CurrencyUnits] d 
    INNER JOIN [dbo].[tbl_CurrencyUnitsLabels] [l] ON [d].[currencyUnitID] = [l].[currencyUnitID]
    INNER JOIN [dbo].[tbl_UnitsAllowedForCurrency] [a] ON [a].[currencyUnitID] = [d].[currencyUnitID] 
    WHERE [l].[language] = @varLanguage
    AND   [a].[currencyID] = @varCurrencyID
    ORDER BY [a].[orden]
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CLA_GetDirections]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- =============================================
-- Author:		Gabriela Sanchez
-- Create date: May 19 2016
-- Description:	List all Directions
-- =============================================
CREATE PROCEDURE [dbo].[usp_CLA_GetDirections]
	@varLanguage VARCHAR(5)
AS
BEGIN
	
	SELECT [d].[directionID], [l].[name]
    FROM [dbo].[tbl_Direction] d INNER JOIN [dbo].[tbl_DirectionLabels] [l]
    ON [d].directionID = [l].[directionID]
    WHERE [l].[language] = @varLanguage
    AND   [d].[directionID] <> 'NA'
  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CLA_GetReportingUnitById]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:  Marcela Martinez
-- Create date: 26/05/2016
-- Description: Get Reporting unit by id
-- =============================================
CREATE PROCEDURE [dbo].[usp_CLA_GetReportingUnitById]
 @varReportingUnitId AS CHAR(5),
 @varLanguage CHAR(2)
AS
BEGIN
 
 SET NOCOUNT ON;

    SELECT [reportingUnitID]
    ,[name]
 FROM [dbo].[tbl_ReportingUnitLabels] 
 WHERE [language] = @varLanguage 
 AND [reportingUnitID] = @varReportingUnitId
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_CLA_GetReportingUnits]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- =============================================
-- Author:		Gabriela Sanchez
-- Create date: May 18 2016
-- Description:	List all Reporting Units
-- =============================================
CREATE PROCEDURE [dbo].[usp_CLA_GetReportingUnits]
	@varLanguage VARCHAR(5)
AS
BEGIN
	
	SELECT [l].[reportingUnitID], [l].[name]
	  FROM [dbo].[tbl_ReportingUnit] [u]
	 INNER JOIN [dbo].[tbl_ReportingUnitLabels] [l] ON [u].[reportingUnitID] = [l].reportingUnitID
	 WHERE [l].[language] = @varLanguage
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CLA_GetStrategies]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- =============================================
-- Author:		Gabriela Sanchez
-- Create date: May 19 2016
-- Description:	List all Strategies
-- =============================================
CREATE PROCEDURE [dbo].[usp_CLA_GetStrategies]
	@varLanguage VARCHAR(5)
AS
BEGIN
	
	SELECT [d].[strategyID], [l].[name]
    FROM [dbo].[tbl_Strategy] d 
    INNER JOIN [dbo].[tbl_StrategyLabels] [l] ON [d].[strategyID] = [l].[strategyID]
    WHERE [l].[language] = @varLanguage
    AND   [d].[strategyID] <> 'NA'
  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CLA_GetUnits]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- =============================================
-- Author:		Gabriela Sanchez
-- Create date: May 19 2016
-- Description:	List all Units
-- =============================================
CREATE PROCEDURE [dbo].[usp_CLA_GetUnits]
	@varLanguage VARCHAR(5)
AS
BEGIN
	
	SELECT [d].[unitID], [l].[name]
    FROM [dbo].[tbl_Unit] d 
    INNER JOIN [dbo].[tbl_UnitLabels] [l] ON [d].[unitID] = [l].[unitID]
    WHERE [l].[language] = @varLanguage
    AND   [d].[unitID] <> 'NA'
  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_CURRENCY_GetAllCurrencies]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 26 2016>
-- Description:	Ge a list of curencies we can use
-- =============================================
CREATE PROCEDURE [dbo].[usp_CURRENCY_GetAllCurrencies]
	@language char(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	select c.[currencyID], cl.[name]
		from [dbo].[tbl_Currency] as c
		join [dbo].[tbl_CurrencyLabels] as cl on cl.[currencyID] = c.[currencyID]
		where cl.language = @language
END

GO
/****** Object:  StoredProcedure [dbo].[usp_CURRENCY_GetCurrencyUnitsAcceptableForAllCurrencies]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 26 2016>
-- Description:	Get a list of currency units that can be used for all currencies
-- =============================================
CREATE PROCEDURE [dbo].[usp_CURRENCY_GetCurrencyUnitsAcceptableForAllCurrencies]
	@language char(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	select u.[currencyID], u.[currencyUnitID], ul.name, [u].[hasMeasure]
		from [dbo].[tbl_UnitsAllowedForCurrency] as u
		join [dbo].[tbl_CurrencyUnitsLabels] as ul on u.[currencyUnitID] = ul.[currencyUnitID]
		where ul.language = @language
END

GO
/****** Object:  StoredProcedure [dbo].[usp_CURRENCY_GetCurrencyUnitsByID]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez
-- Create date: July 25 2016
-- Description:	Get a currency units by ID
-- =============================================
CREATE PROCEDURE [dbo].[usp_CURRENCY_GetCurrencyUnitsByID]
	@language char(3),
	@currencyId char(3),
	@currencyUnitId char(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	select u.[currencyID], u.[currencyUnitID], ul.name, [u].[hasMeasure]
	from [dbo].[tbl_UnitsAllowedForCurrency] as u
	inner join [dbo].[tbl_CurrencyUnitsLabels] as ul on u.[currencyUnitID] = ul.[currencyUnitID]
	where ul.language = @language
	and   ul.currencyUnitID = @currencyUnitId
	and   u.currencyID = @currencyId
END

GO
/****** Object:  StoredProcedure [dbo].[usp_DELETE_DeleteAllUserData]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 22 2016
-- Description:	Resets the database, deleting all user data
-- =============================================
CREATE PROCEDURE [dbo].[usp_DELETE_DeleteAllUserData]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE FROM [dbo].[tbl_SEG_ObjectPublic]
	DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
	DELETE FROM [dbo].[tbl_KPIMeasurementCategories]
	DELETE FROM [dbo].[tbl_KPIMeasurements]
	DELETE FROM [dbo].[tbl_KPITargetCategories]
	DELETE FROM [dbo].[tbl_KPITarget]
	DELETE FROM [dbo].[tbl_KPICategories]
	DELETE FROM [dbo].[tbl_KPI]
	DELETE FROM [dbo].[tbl_People]
	DELETE FROM [dbo].[tbl_Activity]
	DELETE FROM [dbo].[tbl_Project]
	DELETE FROM [dbo].[tbl_Area]
	DELETE FROM [dbo].[tbl_Organization]
	DELETE FROM [dbo].[tbl_CategoryItem]
	DELETE FROM [dbo].[tbl_Category]

END

GO
/****** Object:  StoredProcedure [dbo].[usp_GenerateInserts]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO



CREATE PROC [dbo].[usp_GenerateInserts]
(
	@table_name varchar(776),  		-- The table/view for which the INSERT statements will be generated using the existing data
	@target_table varchar(776) = NULL, 	-- Use this parameter to specify a different table name into which the data will be inserted
	@include_column_list bit = 1,		-- Use this parameter to include/ommit column list in the generated INSERT statement
	@from varchar(800) = NULL, 		-- Use this parameter to filter the rows based on a filter condition (using WHERE)
	@include_timestamp bit = 0, 		-- Specify 1 for this parameter, if you want to include the TIMESTAMP/ROWVERSION column's data in the INSERT statement
	@debug_mode bit = 0,			-- If @debug_mode is set to 1, the SQL statements constructed by this procedure will be printed for later examination
	@owner varchar(64) = NULL,		-- Use this parameter if you are not the owner of the table
	@ommit_images bit = 0,			-- Use this parameter to generate INSERT statements by omitting the 'image' columns
	@ommit_identity bit = 0,		-- Use this parameter to ommit the identity columns
	@top int = NULL,			-- Use this parameter to generate INSERT statements only for the TOP n rows
	@cols_to_include varchar(8000) = NULL,	-- List of columns to be included in the INSERT statement
	@cols_to_exclude varchar(8000) = NULL,	-- List of columns to be excluded from the INSERT statement
	@disable_constraints bit = 0,		-- When 1, disables foreign key constraints and enables them after the INSERT statements
	@ommit_computed_cols bit = 0		-- When 1, computed columns will not be included in the INSERT statement
	
)
-- ENCRYPT_ME
AS
BEGIN

/***********************************************************************************************************
Procedure:	sp_generate_inserts  (Build 22) 
		(Copyright © 2002 Narayana Vyas Kondreddi. All rights reserved.)
                                          
Purpose:To generate INSERT statements from existing data. 
		These INSERTS can be executed to regenerate the data at some other location.
		This procedure is also useful to create a database setup, where in you can 
		script your data along with your table definitions.

Written by:	Narayana Vyas Kondreddi
	        http://vyaskn.tripod.com

Acknowledgements:
		Divya Kalra	-- For beta testing
		Mark Charsley	-- For reporting a problem with scripting uniqueidentifier columns with NULL values
		Artur Zeygman	-- For helping me simplify a bit of code for handling non-dbo owned tables
		Joris Laperre   -- For reporting a regression bug in handling text/ntext columns

Tested on: 	SQL Server 7.0 and SQL Server 2000

Date created:	January 17th 2001 21:52 GMT

Date modified:	May 1st 2002 19:50 GMT

Email: 		vyaskn@hotmail.com

NOTE:		This procedure may not work with tables with too many columns.
		Results can be unpredictable with huge text columns or SQL Server 2000's sql_variant data types
		Whenever possible, Use @include_column_list parameter to ommit column list in the INSERT statement, for better results
		IMPORTANT: This procedure is not tested with internation data (Extended characters or Unicode). If needed
		you might want to convert the datatypes of character variables in this procedure to their respective unicode counterparts
		like nchar and nvarchar
		

Example 1:	To generate INSERT statements for table 'titles':
		
		EXEC sp_generate_inserts 'titles'

Example 2: 	To ommit the column list in the INSERT statement: (Column list is included by default)
		IMPORTANT: If you have too many columns, you are advised to ommit column list, as shown below,
		to avoid erroneous results
		
		EXEC sp_generate_inserts 'titles', @include_column_list = 0

Example 3:	To generate INSERT statements for 'titlesCopy' table from 'titles' table:

		EXEC sp_generate_inserts 'titles', 'titlesCopy'

Example 4:	To generate INSERT statements for 'titles' table for only those titles 
		which contain the word 'Computer' in them:
		NOTE: Do not complicate the FROM or WHERE clause here. It's assumed that you are good with T-SQL if you are using this parameter

		EXEC sp_generate_inserts 'titles', @from = "from titles where title like '%Computer%'"

Example 5: 	To specify that you want to include TIMESTAMP column's data as well in the INSERT statement:
		(By default TIMESTAMP column's data is not scripted)

		EXEC sp_generate_inserts 'titles', @include_timestamp = 1

Example 6:	To print the debug information:
  
		EXEC sp_generate_inserts 'titles', @debug_mode = 1

Example 7: 	If you are not the owner of the table, use @owner parameter to specify the owner name
		To use this option, you must have SELECT permissions on that table

		EXEC sp_generate_inserts Nickstable, @owner = 'Nick'

Example 8: 	To generate INSERT statements for the rest of the columns excluding images
		When using this otion, DO NOT set @include_column_list parameter to 0.

		EXEC sp_generate_inserts imgtable, @ommit_images = 1

Example 9: 	To generate INSERT statements excluding (ommiting) IDENTITY columns:
		(By default IDENTITY columns are included in the INSERT statement)

		EXEC sp_generate_inserts mytable, @ommit_identity = 1

Example 10: 	To generate INSERT statements for the TOP 10 rows in the table:
		
		EXEC sp_generate_inserts mytable, @top = 10

Example 11: 	To generate INSERT statements with only those columns you want:
		
		EXEC sp_generate_inserts titles, @cols_to_include = "'title','title_id','au_id'"

Example 12: 	To generate INSERT statements by omitting certain columns:
		
		EXEC sp_generate_inserts titles, @cols_to_exclude = "'title','title_id','au_id'"

Example 13:	To avoid checking the foreign key constraints while loading data with INSERT statements:
		
		EXEC sp_generate_inserts titles, @disable_constraints = 1

Example 14: 	To exclude computed columns from the INSERT statement:
		EXEC sp_generate_inserts MyTable, @ommit_computed_cols = 1
***********************************************************************************************************/

SET NOCOUNT ON

--Making sure user only uses either @cols_to_include or @cols_to_exclude
IF ((@cols_to_include IS NOT NULL) AND (@cols_to_exclude IS NOT NULL))
	BEGIN
		RAISERROR('Use either @cols_to_include or @cols_to_exclude. Do not use both the parameters at once',16,1)
		RETURN -1 --Failure. Reason: Both @cols_to_include and @cols_to_exclude parameters are specified
	END

--Making sure the @cols_to_include and @cols_to_exclude parameters are receiving values in proper format
IF ((@cols_to_include IS NOT NULL) AND (PATINDEX('''%''',@cols_to_include) = 0))
	BEGIN
		RAISERROR('Invalid use of @cols_to_include property',16,1)
		PRINT 'Specify column names surrounded by single quotes and separated by commas'
		PRINT 'Eg: EXEC sp_generate_inserts titles, @cols_to_include = "''title_id'',''title''"'
		RETURN -1 --Failure. Reason: Invalid use of @cols_to_include property
	END

IF ((@cols_to_exclude IS NOT NULL) AND (PATINDEX('''%''',@cols_to_exclude) = 0))
	BEGIN
		RAISERROR('Invalid use of @cols_to_exclude property',16,1)
		PRINT 'Specify column names surrounded by single quotes and separated by commas'
		PRINT 'Eg: EXEC sp_generate_inserts titles, @cols_to_exclude = "''title_id'',''title''"'
		RETURN -1 --Failure. Reason: Invalid use of @cols_to_exclude property
	END


--Checking to see if the database name is specified along wih the table name
--Your database context should be local to the table for which you want to generate INSERT statements
--specifying the database name is not allowed
IF (PARSENAME(@table_name,3)) IS NOT NULL
	BEGIN
		RAISERROR('Do not specify the database name. Be in the required database and just specify the table name.',16,1)
		RETURN -1 --Failure. Reason: Database name is specified along with the table name, which is not allowed
	END

--Checking for the existence of 'user table' or 'view'
--This procedure is not written to work on system tables
--To script the data in system tables, just create a view on the system tables and script the view instead

IF @owner IS NULL
	BEGIN
		IF ((OBJECT_ID(@table_name,'U') IS NULL) AND (OBJECT_ID(@table_name,'V') IS NULL)) 
			BEGIN
				RAISERROR('User table or view not found.',16,1)
				PRINT 'You may see this error, if you are not the owner of this table or view. In that case use @owner parameter to specify the owner name.'
				PRINT 'Make sure you have SELECT permission on that table or view.'
				RETURN -1 --Failure. Reason: There is no user table or view with this name
			END
	END
ELSE
	BEGIN
		IF NOT EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = @table_name AND (TABLE_TYPE = 'BASE TABLE' OR TABLE_TYPE = 'VIEW') AND TABLE_SCHEMA = @owner)
			BEGIN
				RAISERROR('User table or view not found.',16,1)
				PRINT 'You may see this error, if you are not the owner of this table. In that case use @owner parameter to specify the owner name.'
				PRINT 'Make sure you have SELECT permission on that table or view.'
				RETURN -1 --Failure. Reason: There is no user table or view with this name		
			END
	END

--Variable declarations
DECLARE		@Column_ID int, 		
		@Column_List varchar(8000), 
		@Column_Name varchar(128), 
		@Start_Insert varchar(786), 
		@Data_Type varchar(128), 
		@Actual_Values varchar(8000),	--This is the string that will be finally executed to generate INSERT statements
		@IDN varchar(128)		--Will contain the IDENTITY column's name in the table

--Variable Initialization
SET @IDN = ''
SET @Column_ID = 0
SET @Column_Name = ''
SET @Column_List = ''
SET @Actual_Values = ''

IF @owner IS NULL 
	BEGIN
		SET @Start_Insert = 'INSERT INTO ' + '[' + RTRIM(COALESCE(@target_table,@table_name)) + ']' 
	END
ELSE
	BEGIN
		SET @Start_Insert = 'INSERT ' + '[' + LTRIM(RTRIM(@owner)) + '].' + '[' + RTRIM(COALESCE(@target_table,@table_name)) + ']' 		
	END


--To get the first column's ID

SELECT	@Column_ID = MIN(ORDINAL_POSITION) 	
FROM	INFORMATION_SCHEMA.COLUMNS (NOLOCK) 
WHERE 	TABLE_NAME = @table_name AND
(@owner IS NULL OR TABLE_SCHEMA = @owner)



--Loop through all the columns of the table, to get the column names and their data types
WHILE @Column_ID IS NOT NULL
	BEGIN
		SELECT 	@Column_Name = QUOTENAME(COLUMN_NAME), 
		@Data_Type = DATA_TYPE 
		FROM 	INFORMATION_SCHEMA.COLUMNS (NOLOCK) 
		WHERE 	ORDINAL_POSITION = @Column_ID AND 
		TABLE_NAME = @table_name AND
		(@owner IS NULL OR TABLE_SCHEMA = @owner)



		IF @cols_to_include IS NOT NULL --Selecting only user specified columns
		BEGIN
			IF CHARINDEX( '''' + SUBSTRING(@Column_Name,2,LEN(@Column_Name)-2) + '''',@cols_to_include) = 0 
			BEGIN
				GOTO SKIP_LOOP
			END
		END

		IF @cols_to_exclude IS NOT NULL --Selecting only user specified columns
		BEGIN
			IF CHARINDEX( '''' + SUBSTRING(@Column_Name,2,LEN(@Column_Name)-2) + '''',@cols_to_exclude) <> 0 
			BEGIN
				GOTO SKIP_LOOP
			END
		END

		--Making sure to output SET IDENTITY_INSERT ON/OFF in case the table has an IDENTITY column
		IF (SELECT COLUMNPROPERTY( OBJECT_ID(QUOTENAME(COALESCE(@owner,USER_NAME())) + '.' + @table_name),SUBSTRING(@Column_Name,2,LEN(@Column_Name) - 2),'IsIdentity')) = 1 
		BEGIN
			IF @ommit_identity = 0 --Determing whether to include or exclude the IDENTITY column
				SET @IDN = @Column_Name
			ELSE
				GOTO SKIP_LOOP			
		END
		
		--Making sure whether to output computed columns or not
		IF @ommit_computed_cols = 1
		BEGIN
			IF (SELECT COLUMNPROPERTY( OBJECT_ID(QUOTENAME(COALESCE(@owner,USER_NAME())) + '.' + @table_name),SUBSTRING(@Column_Name,2,LEN(@Column_Name) - 2),'IsComputed')) = 1 
			BEGIN
				GOTO SKIP_LOOP					
			END
		END
		
		--Tables with columns of IMAGE data type are not supported for obvious reasons
		IF(@Data_Type in ('image'))
			BEGIN
				IF (@ommit_images = 0)
					BEGIN
						RAISERROR('Tables with image columns are not supported.',16,1)
						PRINT 'Use @ommit_images = 1 parameter to generate INSERTs for the rest of the columns.'
						PRINT 'DO NOT ommit Column List in the INSERT statements. If you ommit column list using @include_column_list=0, the generated INSERTs will fail.'
						RETURN -1 --Failure. Reason: There is a column with image data type
					END
				ELSE
					BEGIN
					GOTO SKIP_LOOP
					END
			END

		--Determining the data type of the column and depending on the data type, the VALUES part of
		--the INSERT statement is generated. Care is taken to handle columns with NULL values. Also
		--making sure, not to lose any data from flot, real, money, smallmomey, datetime columns
		SET @Actual_Values = @Actual_Values  +
		CASE 
			WHEN @Data_Type IN ('char','varchar','nchar','nvarchar') 
				THEN 
					'COALESCE('''''''' + REPLACE(RTRIM(' + @Column_Name + '),'''''''','''''''''''')+'''''''',''NULL'')'
			WHEN @Data_Type IN ('datetime','smalldatetime') 
				THEN 
					'COALESCE('''''''' + RTRIM(CONVERT(char,' + @Column_Name + ',109))+'''''''',''NULL'')'
			WHEN @Data_Type IN ('uniqueidentifier') 
				THEN  
					'COALESCE('''''''' + REPLACE(CONVERT(char(255),RTRIM(' + @Column_Name + ')),'''''''','''''''''''')+'''''''',''NULL'')'
			WHEN @Data_Type IN ('text','ntext') 
				THEN  
					'COALESCE('''''''' + REPLACE(CONVERT(char(8000),' + @Column_Name + '),'''''''','''''''''''')+'''''''',''NULL'')'					
			WHEN @Data_Type IN ('binary','varbinary') 
				THEN  
					'COALESCE(RTRIM(CONVERT(char,' + 'CONVERT(int,' + @Column_Name + '))),''NULL'')'  
			WHEN @Data_Type IN ('timestamp','rowversion') 
				THEN  
					CASE 
						WHEN @include_timestamp = 0 
							THEN 
								'''DEFAULT''' 
							ELSE 
								'COALESCE(RTRIM(CONVERT(char,' + 'CONVERT(int,' + @Column_Name + '))),''NULL'')'  
					END
			WHEN @Data_Type IN ('float','real','money','smallmoney')
				THEN
					'COALESCE(LTRIM(RTRIM(' + 'CONVERT(char, ' +  @Column_Name  + ',2)' + ')),''NULL'')' 
			ELSE 
				'COALESCE(LTRIM(RTRIM(' + 'CONVERT(char, ' +  @Column_Name  + ')' + ')),''NULL'')' 
		END   + '+' +  ''',''' + ' + '
		
		--Generating the column list for the INSERT statement
		SET @Column_List = @Column_List +  @Column_Name + ','	

		SKIP_LOOP: --The label used in GOTO

		SELECT 	@Column_ID = MIN(ORDINAL_POSITION) 
		FROM 	INFORMATION_SCHEMA.COLUMNS (NOLOCK) 
		WHERE 	TABLE_NAME = @table_name AND 
		ORDINAL_POSITION > @Column_ID AND
		(@owner IS NULL OR TABLE_SCHEMA = @owner)


	--Loop ends here!
	END

--To get rid of the extra characters that got concatenated during the last run through the loop
SET @Column_List = LEFT(@Column_List,len(@Column_List) - 1)
SET @Actual_Values = LEFT(@Actual_Values,len(@Actual_Values) - 6)

IF LTRIM(@Column_List) = '' 
	BEGIN
		RAISERROR('No columns to select. There should at least be one column to generate the output',16,1)
		RETURN -1 --Failure. Reason: Looks like all the columns are ommitted using the @cols_to_exclude parameter
	END

--Forming the final string that will be executed, to output the INSERT statements
IF (@include_column_list <> 0)
	BEGIN
		SET @Actual_Values = 
			'SELECT ' +  
			CASE WHEN @top IS NULL OR @top < 0 THEN '' ELSE ' TOP ' + LTRIM(STR(@top)) + ' ' END + 
			'''' + RTRIM(@Start_Insert) + 
			' ''+' + '''(' + RTRIM(@Column_List) +  '''+' + ''')''' + 
			' +''VALUES(''+ ' +  @Actual_Values  + '+'')''' + ' ' + 
			COALESCE(@from,' FROM ' + CASE WHEN @owner IS NULL THEN '' ELSE '[' + LTRIM(RTRIM(@owner)) + '].' END + '[' + rtrim(@table_name) + ']' + '(NOLOCK)')
	END
ELSE IF (@include_column_list = 0)
	BEGIN
		SET @Actual_Values = 
			'SELECT ' + 
			CASE WHEN @top IS NULL OR @top < 0 THEN '' ELSE ' TOP ' + LTRIM(STR(@top)) + ' ' END + 
			'''' + RTRIM(@Start_Insert) + 
			' '' +''VALUES(''+ ' +  @Actual_Values + '+'')''' + ' ' + 
			COALESCE(@from,' FROM ' + CASE WHEN @owner IS NULL THEN '' ELSE '[' + LTRIM(RTRIM(@owner)) + '].' END + '[' + rtrim(@table_name) + ']' + '(NOLOCK)')
	END	

--Determining whether to ouput any debug information
IF @debug_mode =1
	BEGIN
		PRINT '/*****START OF DEBUG INFORMATION*****'
		PRINT 'Beginning of the INSERT statement:'
		PRINT @Start_Insert
		PRINT ''
		PRINT 'The column list:'
		PRINT @Column_List
		PRINT ''
		PRINT 'The SELECT statement executed to generate the INSERTs'
		PRINT @Actual_Values
		PRINT ''
		PRINT '*****END OF DEBUG INFORMATION*****/'
		PRINT ''
	END
		
PRINT '--INSERTs generated by ''sp_generate_inserts'' stored procedure written by Vyas'
PRINT '--Build number: 22'
PRINT '--Problems/Suggestions? Contact Vyas @ vyaskn@hotmail.com'
PRINT '--http://vyaskn.tripod.com'
PRINT ''
PRINT 'SET NOCOUNT ON'
PRINT ''


--Determining whether to print IDENTITY_INSERT or not
IF (@IDN <> '')
	BEGIN
		PRINT 'SET IDENTITY_INSERT ' + QUOTENAME(COALESCE(@owner,USER_NAME())) + '.' + QUOTENAME(@table_name) + ' ON'
		PRINT 'GO'
		PRINT ''
	END


IF @disable_constraints = 1 AND (OBJECT_ID(QUOTENAME(COALESCE(@owner,USER_NAME())) + '.' + @table_name, 'U') IS NOT NULL)
	BEGIN
		IF @owner IS NULL
			BEGIN
				SELECT 	'ALTER TABLE ' + QUOTENAME(COALESCE(@target_table, @table_name)) + ' NOCHECK CONSTRAINT ALL' AS '--Code to disable constraints temporarily'
			END
		ELSE
			BEGIN
				SELECT 	'ALTER TABLE ' + QUOTENAME(@owner) + '.' + QUOTENAME(COALESCE(@target_table, @table_name)) + ' NOCHECK CONSTRAINT ALL' AS '--Code to disable constraints temporarily'
			END

		PRINT 'GO'
	END

PRINT ''
PRINT 'PRINT ''Inserting values into ' + '[' + RTRIM(COALESCE(@target_table,@table_name)) + ']' + ''''


--All the hard work pays off here!!! You'll get your INSERT statements, when the next line executes!
EXEC (@Actual_Values)

PRINT 'PRINT ''Done'''
PRINT ''


IF @disable_constraints = 1 AND (OBJECT_ID(QUOTENAME(COALESCE(@owner,USER_NAME())) + '.' + @table_name, 'U') IS NOT NULL)
	BEGIN
		IF @owner IS NULL
			BEGIN
				SELECT 	'ALTER TABLE ' + QUOTENAME(COALESCE(@target_table, @table_name)) + ' CHECK CONSTRAINT ALL'  AS '--Code to enable the previously disabled constraints'
			END
		ELSE
			BEGIN
				SELECT 	'ALTER TABLE ' + QUOTENAME(@owner) + '.' + QUOTENAME(COALESCE(@target_table, @table_name)) + ' CHECK CONSTRAINT ALL' AS '--Code to enable the previously disabled constraints'
			END

		PRINT 'GO'
	END

PRINT ''
IF (@IDN <> '')
	BEGIN
		PRINT 'SET IDENTITY_INSERT ' + QUOTENAME(COALESCE(@owner,USER_NAME())) + '.' + QUOTENAME(@table_name) + ' OFF'
		PRINT 'GO'
	END

PRINT 'SET NOCOUNT OFF'


SET NOCOUNT OFF
RETURN 0 --Success. We are done!
END



GO
/****** Object:  StoredProcedure [dbo].[usp_GetVersionMajor]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_GetVersionMajor] 
		@smiMajor smallint OUTPUT
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_DatabaseInfo]') 
		AND type in (N'U')) 
	BEGIN
		IF EXISTS(SELECT [majorversion] FROM [dbo].[tbl_DatabaseInfo])
		BEGIN
			SELECT TOP 1 @smiMajor = [majorversion] 
				FROM [dbo].[tbl_DatabaseInfo] ORDER BY [majorversion] DESC
		END
		ELSE
		BEGIN
			select @smiMajor = 0
		END
	END
	ELSE
	BEGIN
		select @smiMajor = 0
	END
END





GO
/****** Object:  StoredProcedure [dbo].[usp_GetVersionMinor]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =====================================================================================

CREATE PROCEDURE [dbo].[usp_GetVersionMinor] 
		@smiMinor smallint OUTPUT
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tbl_DatabaseInfo]') 
		AND type in (N'U')) 
	BEGIN
		IF EXISTS(SELECT [minorversion] FROM [dbo].[tbl_DatabaseInfo])
		BEGIN
			SELECT TOP 1 @smiMinor = [minorversion] 
				FROM [dbo].[tbl_DatabaseInfo] ORDER BY [majorversion] DESC, [minorversion] DESC
		END
		ELSE
		BEGIN
			select @smiMinor = 0
		END
	END
	ELSE
	BEGIN
		select @smiMinor = 0
	END
END





GO
/****** Object:  StoredProcedure [dbo].[usp_GetVersionRelease]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[usp_GetVersionRelease] 
		@smiRelease smallint OUTPUT
AS
BEGIN

	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[databaseinfo]') 
		AND type in (N'U')) 
	BEGIN
		IF EXISTS(SELECT [releaseversion] FROM [dbo].[tbl_DatabaseInfo])
		BEGIN
			SELECT TOP 1 @smiRelease = [releaseversion]
				FROM [dbo].[tbl_DatabaseInfo] ORDER BY [majorversion] DESC, [minorversion] DESC, [releaseversion] DESC
		END
		ELSE
		BEGIN
			select @smiRelease = 0
		END
	END
	ELSE
	BEGIN
		select @smiRelease = 0
	END
END

/****** Object:  Table [dbo].[tbl_GridColumn]    Script Date: 08/26/2013 11:58:01 ******/
SET ANSI_NULLS ON


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_AddDeleteCategoryTargetByKpi]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 30/05/2016
-- Description:	Add or Delete a category for a KPI Target
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_AddDeleteCategoryTargetByKpi]
	@kpiID INT,
	@newCategoryID VARCHAR(20),
	@operation INT --1: Insert 2: Delete
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @tblCategories AS TABLE
	(categoryId VARCHAR(20))

	DECLARE @tblProducto AS TABLE
	(number INT,
	 productoId VARCHAR(1000),
	 categoriesId VARCHAR(1000))
	
	DECLARE @categoryId VARCHAR(20)
	DECLARE @count INT = 1
	
	--Create the table with all the categories of KPI
	INSERT @tblCategories
	SELECT DISTINCT [categoryID]
	  FROM [dbo].[tbl_KPITargetCategories] [c]
	  INNER JOIN [dbo].[tbl_KPITarget] [t] ON [c].[targetID] = [t].[targetID]
	 WHERE [t].[kpiID] = @kpiID

	IF (@operation = 1)
		INSERT @tblCategories VALUES (@newCategoryID)
	IF (@operation = 2)
		DELETE @tblCategories WHERE categoryId = @newCategoryID

	DECLARE @productoId VARCHAR(1000)
	DECLARE @categoriesId VARCHAR(1000)
	DECLARE @targetID INT
	
	CREATE TABLE #tbl_Items 
	(itemId INT IDENTITY,
	 itemText VARCHAR(20))
	 
	CREATE TABLE #tbl_CategoryItems 
	(categoryId INT IDENTITY,
	 categoryText VARCHAR(20))

	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		-- ===============================================
		---  MAKE SURE THAT THIS NAME IS COPIED BELOW 
		---  AND IS UNIQUE IN THE SYSTEM!!!!!!
		-- ===============================================
		SAVE TRANSACTION AddDeleteCategoryTarget;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		--Create in @tblProducto all categoryItems combinations
		DECLARE category_cursor CURSOR FOR 
			SELECT DISTINCT c.categoryId 
			FROM @tblCategories c
			INNER JOIN [dbo].[tbl_CategoryItem] [i]
			ON [c].[categoryId] = [i].[categoryID]
		OPEN category_cursor

		FETCH NEXT FROM category_cursor
		INTO @categoryId

		WHILE @@FETCH_STATUS = 0
		BEGIN
			IF EXISTS(SELECT 1 FROM @tblProducto)
				INSERT @tblProducto
				SELECT @count, [productoId] + ',' + [b].[categoryItemID], [a].[categoriesId] + ',' + [b].[categoryID]
				  FROM @tblProducto [a], [dbo].[tbl_CategoryItem] [b]
				 WHERE [b].[categoryID] = @categoryId
			ELSE
				INSERT @tblProducto
				SELECT @count, [b].[categoryItemID], [b].[categoryID]
				  FROM [dbo].[tbl_CategoryItem] [b]
				 WHERE [b].[categoryID] = @categoryId
						
			DELETE FROM @tblProducto WHERE number = @count - 1
			
			SET @count = @count + 1
			
			FETCH NEXT FROM category_cursor
			INTO @categoryId
		END

		CLOSE category_cursor;
		DEALLOCATE category_cursor;

		--With the combinatios of items, insert into database
		--First clean all the target in the database
		DELETE FROM dbo.tbl_KPITargetCategories
		WHERE targetID IN (SELECT targetID FROM dbo.tbl_KPITarget WHERE kpiID = @kpiID)
		
		DELETE FROM dbo.tbl_KPITarget WHERE kpiID = @kpiID
		
		--Second insert all in database as a new target without value (0)
		DECLARE producto_cursor CURSOR FOR 
			SELECT productoId, categoriesId
			FROM @tblProducto
		OPEN producto_cursor

		FETCH NEXT FROM producto_cursor
		INTO @productoId, @categoriesId

		WHILE @@FETCH_STATUS = 0
		BEGIN
			--INICIALIZAR LAS TABLAS TEMPORALES
			DELETE FROM #tbl_Items
			DELETE FROM #tbl_CategoryItems
			
			DBCC CHECKIDENT (#tbl_Items, RESEED, 0)
			DBCC CHECKIDENT (#tbl_CategoryItems, RESEED, 0)
			
			INSERT #tbl_Items
			SELECT splitvalue
			FROM dbo.tvf_SplitStringInVarCharTable(@productoId,',')
			
			INSERT #tbl_CategoryItems
			SELECT splitvalue
			FROM dbo.tvf_SplitStringInVarCharTable(@categoriesId,',')
			
			INSERT INTO [dbo].[tbl_KPITarget] ([kpiID],[target]) VALUES (@kpiID, 0)

			SET @targetID = @@IDENTITY
			
			INSERT INTO [dbo].[tbl_KPITargetCategories]
			   ([targetID],[categoryItemID],[categoryID])
			SELECT @targetID, itemText, categoryText
			FROM #tbl_Items a, #tbl_CategoryItems b
			WHERE a.itemId = b.categoryId

			FETCH NEXT FROM producto_cursor
			INTO @productoId, @categoriesId
		END

		CLOSE producto_cursor;
		DEALLOCATE producto_cursor;
		
		DROP TABLE #tbl_Items 
		DROP TABLE #tbl_CategoryItems 

		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				-- ===============================================
				---  MAKE SURE THAT THIS NAME IS EXACTLY AS ABOVE 
				-- ===============================================
				ROLLBACK TRANSACTION AddDeleteCategoryTarget;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
	
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_AddKPICategory]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Adda  Category for a KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_AddKPICategory]
	@kpiID int,
	@categoryID varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[tbl_KPICategories]
           ([kpiID]
           ,[categoryID])
     VALUES
           (@kpiID
           ,@categoryID)

END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_AddKPITargetInCategoryItem]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Add a Target for a KPI for a specific item in a category
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_AddKPITargetInCategoryItem]
	@kpiID int,
	@target decimal(21,3),
	@categoryItemID varchar(20),
	@categoryID varchar(20),
	@targetID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[tbl_KPITarget]
           ([kpiID]
           ,[target])
     VALUES
           (@kpiID
           ,@target)

	SELECT @targetID = SCOPE_IDENTITY()

	INSERT INTO [dbo].[tbl_KPITargetCategories]
           ([targetID]
           ,[categoryItemID]
           ,[categoryID])
     VALUES
           (@targetID
           ,@categoryItemID
           ,@categoryID)
END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_AddKPITargetNoCategories]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Add a Target for a KPI that does not have Categories
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_AddKPITargetNoCategories]
	@kpiID int,
	@target decimal(21,3),
	@targetID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[tbl_KPITarget]
           ([kpiID]
           ,[target])
     VALUES
           (@kpiID
           ,@target)

	SELECT @targetID = SCOPE_IDENTITY()

END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_DeleteAllKPITarget]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Gabriela Sanchez 
-- Create date: May 23, 2016
-- Description:	Delete all targets from KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_DeleteAllKPITarget]
	@kpiID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE FROM [dbo].[tbl_KPITargetCategories]
	WHERE [targetID] IN (SELECT [targetID] FROM [dbo].[tbl_KPITarget]
	                     WHERE [kpiID] = @kpiID)
	
	DELETE FROM [dbo].[tbl_KPITarget]
	WHERE [kpiID] = @kpiID
	
	DELETE FROM [dbo].[tbl_KPICategories]
	WHERE [kpiID] = @kpiID
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_DeleteKPI]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Gabriela Sanchez 
-- Create date: Jun 22, 2016
-- Description:	Mark KPI as deleted
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_DeleteKPI]
	@kpiID int,
	@username varchar(50)
AS
BEGIN
	
	UPDATE [dbo].[tbl_KPI]
	   SET [deleted] = 1
		  ,[dateDeleted] = GETDATE()
		  ,[usernameDeleted] = @username
	WHERE [kpiID] = @kpiID

END
GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_DeleteKpiDashboard]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutiérrez
-- Create date: 2016/05/13
-- Description:	Insert a KPI to Dashboard
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_DeleteKpiDashboard]
	@intKpiId		INT,
	@intUserId		INT,
	@intDashboardId	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	IF @intDashboardId = 0
	BEGIN
		DELETE FROM [dbo].[tbl_KPIDashboard]
		WHERE [dashboardId] IS NULL AND [kpiId] = @intKpiId
			AND [ownerUserId] = @intUserId
	END
	ELSE
	BEGIN
		DELETE FROM [dbo].[tbl_KPIDashboard]
		WHERE [dashboardId] = @intDashboardId AND [kpiId] = @intKpiId
			AND [ownerUserId] = @intUserId
	END
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_DeleteKpiMeasurement]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =======================================================
-- Author:		Marcela Martinez
-- Create date: 01/06/2016
-- Description:	Delete a measurement and related categories 
-- ========================================================
CREATE PROCEDURE [dbo].[usp_KPI_DeleteKpiMeasurement] 
	@intMeasurementId INT
AS
BEGIN
	
	SET NOCOUNT ON;

    -- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		SAVE TRANSACTION DeleteKPIMeasurementPS;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		DELETE FROM [dbo].[tbl_KPIMeasurementCategories] 
		WHERE [measurementID] = @intMeasurementId
		
		DELETE FROM [dbo].[tbl_KPIMeasurements] 
		WHERE [measurmentID] = @intMeasurementId
		
		
		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				ROLLBACK TRANSACTION DeleteKPIMeasurementPS;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_DeleteKpiMeasurementByListIds]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =======================================================================================
-- Author:		Marcela Martinez
-- Create date: 07/06/2016
-- Description:	Delete a list of measurement separated by semi colon and related categories 
-- =======================================================================================
CREATE PROCEDURE [dbo].[usp_KPI_DeleteKpiMeasurementByListIds] 
	@varMeasurementIds VARCHAR(MAX)
AS
BEGIN
	
	SET NOCOUNT ON;

    -- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		SAVE TRANSACTION DeleteKPIMeasurementByListIDsPS;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		DELETE FROM [dbo].[tbl_KPIMeasurementCategories] 
		WHERE [measurementID] IN (SELECT [m].[measurmentID] FROM [dbo].[tbl_KPIMeasurements] [m] 
								  INNER JOIN [dbo].[tvf_SplitStringInTable] (@varMeasurementIds,';') [d] 
								  ON [m].[measurmentID] = [d].[splitvalue])
		
		DELETE FROM [dbo].[tbl_KPIMeasurements] 
		WHERE [measurmentID] IN (SELECT [m].[measurmentID] FROM [dbo].[tbl_KPIMeasurements] [m] 
								 INNER JOIN [dbo].[tvf_SplitStringInTable] (@varMeasurementIds,';') [d] 
								 ON [m].[measurmentID] = [d].[splitvalue])
		
		
		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				ROLLBACK TRANSACTION DeleteKPIMeasurementByListIDsPS;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_DeletePermanentlyKPI]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: July 8, 2016
-- Description:	Delete a kpi and all of the 
-- related objects
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_DeletePermanentlyKPI]
	@kpiID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		-- ===============================================
		---  MAKE SURE THAT THIS NAME IS COPIED BELOW 
		---  AND IS UNIQUE IN THE SYSTEM!!!!!!
		-- ===============================================
		SAVE TRANSACTION DeleteKpi;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		-- =============================================================
		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and [objectID] = @kpiID
		
		DELETE FROM [dbo].[tbl_KPIMeasurementCategories]
		WHERE [measurementID] IN (SELECT [measurementID]
		                          FROM [dbo].[tbl_KPIMeasurements]
		                          WHERE [kpiID] = @kpiID)
		
		DELETE FROM [dbo].[tbl_KPIMeasurements]
		WHERE [kpiID] = @kpiID
		
		DELETE FROM [dbo].[tbl_KPITargetCategories]
		WHERE [targetID] IN (SELECT targetID 
		                     FROM [dbo].[tbl_KPITarget]
							 WHERE [kpiID] = @kpiID)
		
		DELETE FROM [dbo].[tbl_KPITarget]
		WHERE [kpiID] = @kpiID
		
		DELETE FROM [dbo].[tbl_KPI]
	    WHERE [kpiID] = @kpiID
		-- =============================================================

		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				-- ===============================================
				---  MAKE SURE THAT THIS NAME IS EXACTLY AS ABOVE 
				-- ===============================================
				ROLLBACK TRANSACTION DeleteKpi;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_DeleteUserDashboard]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016/05/13
-- Description:	Deletes a dashboard for user
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_DeleteUserDashboard]
	@intDashboardId	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- Procedure called when there is an active transaction.
		-- Create a savepoint to be able to roll back only the work done
		-- in the procedure if there is an error.
		SAVE TRANSACTION DeleteUserDashboard;
	ELSE
		-- Procedure must start its own transaction.
		BEGIN TRANSACTION;

	BEGIN TRY	
	

	DELETE FROM [dbo].[tbl_KpiDashboard]
	WHERE [dashboardId] = @intDashboardId

	DELETE FROM [dbo].[tbl_UserDashboard]
	WHERE [dashboardId] = @intDashboardId

    	-- Llegamos aquí si no hay errores;  debemos hacer un commit de la transacción
		-- que comenzamos, pero no debemos hacer un comit si hubo una transacción
		-- comenzada anteriormente.
		IF @TranCounter = 0
			-- @TranCounter = 0 significa que no se comenzó ninguna transacción antes de 
			-- esta transacción y por lo tando debemos hacer un comit de nuestra 
			-- stranacción.
			COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH

		-- Hubo un error. Debemos detemrinar que tipo de rollback debemos hacer.

		IF @TranCounter = 0
			-- Tenemos sólo la transacción que comenzamos en este SP.  Rollback
			-- toda la transacción.
			ROLLBACK TRANSACTION;
		ELSE
			-- Se comenzó una transacción antes de que llamen a este SP. Debemos hacer
			-- un rollback solo de las modificaciones que hicimos en este SP

			-- Vemos XACT_STATE y los posibles resultados son 0, 1, or -1.
			-- Si es 1, la transacción es válida y se puede hacer un comit. Pero como 
			-- estamos en el CATCH no hacemos comit.
			-- Si es -1 la transacción no es válida y se debe hacer un rollback
			-- Si es - Significa que no hay un transacción y que un rollback causaría un error
			-- Ver http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() <> -1
				-- Si la transacción es todavía válida, hacemos un rollback hasta el punto
				-- de restauración definido anteriormente.  
				-- Sólo podemos hacer un rollback si XACT_STATE() = -1
				-- OJO: Este es el mismo nombre utilizado anterioremente!!  
				ROLLBACK TRANSACTION DeleteUserDashboard;

				-- Si la transaccion no es válida no se puede hacer un commit ni un rollback, 
				-- por lo que un rollback al punto de restauración no es permitido por que 
				-- el rollback al punto de restauración escribiría en el log de la base de 
				-- datos.  Símplemente debemos retornar al que nos llamó y este será 
				-- responsable de hacer rollback a la transacción. 

		-- Luego de hacer el rollback correspondiente, debemos propagar la información de error
		-- al SP que nos llamó. 
		--
		-- Ver http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
	
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetAllKPIs]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- =============================================
-- Author:		Ivan Krsul
-- Create date: April 22 2014
-- Description:	List all KPIs in the system
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetAllKPIs]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [k].[kpiID]
		  ,[k].[name]
		  ,[k].[organizationID]
		  ,[o].[name] organizationName
		  ,[k].[areaID]
		  ,[a].[name] areaName
		  ,[k].[projectID]
		  ,[p].[name] projectName
		  ,[activityID]
		  ,[personID]
		  ,[unitID]
		  ,[directionID]
		  ,[strategyID]
		  ,[startDate]
		  ,[reportingUnitID]
		  ,[targetPeriod]
		  ,[allowsCategories]
		  ,[currency]
		  ,[currencyUnitID]
		  ,[kpiTypeID]
		  ,0 [progress]
		  ,0 [trend]
		  ,0 [isOwner]
	   FROM [dbo].[tbl_KPI] [k]
	   INNER JOIN [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID]
	   LEFT JOIN [dbo].[tbl_Area] [a] ON [k].[areaID] = [a].[areaID]
	   LEFT JOIN [dbo].[tbl_Project] [p] ON [k].[projectID] = [p].[projectID]
				  
END
GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetCategoryItemsCombinatedByKpiId]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ================================================================
-- Author:		Marcela Martinez
-- Create date: 03/06/2016
-- Description:	Get the combinations of category items by kpiID
-- ================================================================
CREATE PROCEDURE [dbo].[usp_KPI_GetCategoryItemsCombinatedByKpiId] 
	@intKpiID INT
AS
BEGIN
	
	SET NOCOUNT ON;

    CREATE TABLE #tbl_CategoriesCombination([productoId] VARCHAR(MAX), [categoriesId] VARCHAR(MAX))
	
	CREATE TABLE #tbl_KPICategories([categoryID] VARCHAR(20))
		INSERT INTO #tbl_KPICategories
			SELECT [categoryID] 
			FROM [dbo].[tbl_KPICategories] 
			WHERE [kpiID] = @intKpiID 
			ORDER BY [categoryID]
	
	IF EXISTS(SELECT 1 FROM #tbl_KPICategories)
		BEGIN
			DECLARE @varCategoryId AS VARCHAR(20)
			DECLARE @intIndex AS INT = 1
			DECLARE @varItems AS VARCHAR(MAX) = ''
			DECLARE @varItemsDetalle AS VARCHAR(MAX) = ''
			DECLARE @varCategories AS VARCHAR(MAX) = ''
			
			DECLARE CURSORCATEGORY CURSOR FOR
				SELECT [categoryID] 
				FROM #tbl_KPICategories
				
			OPEN CURSORCATEGORY 

			FETCH NEXT FROM CURSORCATEGORY INTO @varCategoryId
			
			WHILE @@fetch_status = 0
				BEGIN
					
					SET @varItems = @varItems + CASE WHEN @varItems = '' 
													THEN ('[' + CONVERT(VARCHAR(10),@intIndex) + '].[categoryItemID]') 
													ELSE (' + '', '' + [' + CONVERT(VARCHAR(10),@intIndex) + '].[categoryItemID]') END
					
					SET @varItemsDetalle = @varItemsDetalle + CASE WHEN @varItemsDetalle = '' 
														THEN '(SELECT [ci].[categoryItemID]
															   FROM #tbl_KPICategories [c] 
															   INNER JOIN [dbo].[tbl_CategoryItem] [ci] ON [c].[categoryID] = [ci].[categoryID] 
															   AND [c].[categoryID] = ''' + @varCategoryId + ''') [' + CONVERT(VARCHAR(10),@intIndex) + ']' 
														ELSE ',(SELECT [ci].[categoryItemID]
															   FROM #tbl_KPICategories [c] 
															   INNER JOIN [dbo].[tbl_CategoryItem] [ci] ON [c].[categoryID] = [ci].[categoryID] 
															   AND [c].[categoryID] = ''' + @varCategoryId + ''') [' + CONVERT(VARCHAR(10),@intIndex) + ']' END
					
					SET @varCategories = @varCategories + CASE WHEN @varCategories = '' THEN @varCategoryId ELSE ', ' + @varCategoryId END
					SET @intIndex = @intIndex + 1
					
					FETCH NEXT FROM CURSORCATEGORY INTO @varCategoryId
					
				END
			
			CLOSE CURSORCATEGORY
			DEALLOCATE CURSORCATEGORY 
			
			INSERT INTO #tbl_CategoriesCombination([productoId])
				EXEC('SELECT ' + @varItems + ' 
					  FROM ' + @varItemsDetalle)
					  
			UPDATE #tbl_CategoriesCombination 
			SET [categoriesId] = @varCategories
		END
	
	SELECT [cc].[productoId]
		  ,[cc].[categoriesId] 
	FROM #tbl_CategoriesCombination [cc] 
	ORDER BY [cc].[productoId]
	
	DROP TABLE #tbl_KPICategories
	DROP TABLE #tbl_CategoriesCombination
    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetCombinationCategoryItems]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 30/05/2016
-- Description:	Get combination of items by categoy list
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetCombinationCategoryItems]
	@categoryList VARCHAR(1000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @tblCategories AS TABLE
	(categoryId VARCHAR(20))

	INSERT @tblCategories
	SELECT * FROM [dbo].[tvf_SplitStringInTable] (@categoryList, ',')

	DECLARE @tblProducto AS TABLE
	(number INT,
	 productoId VARCHAR(1000),
	 categoriesId VARCHAR(1000))
	
	DECLARE @categoryId VARCHAR(20)
	DECLARE @productoId VARCHAR(1000)
	DECLARE @count INT = 1
	
			
	--Create in @tblProducto all categoryItems combinations
	DECLARE category_cursor CURSOR FOR 
		SELECT DISTINCT c.categoryId 
		FROM @tblCategories c
		INNER JOIN [dbo].[tbl_CategoryItem] [i]
		ON [c].[categoryId] = [i].[categoryID]
	OPEN category_cursor

	FETCH NEXT FROM category_cursor
	INTO @categoryId

	WHILE @@FETCH_STATUS = 0
	BEGIN
		IF EXISTS(SELECT 1 FROM @tblProducto)
			INSERT @tblProducto
			SELECT @count, [productoId] + ',' + [b].[categoryItemID], [a].[categoriesId] + ',' + [b].[categoryID]
			  FROM @tblProducto [a], [dbo].[tbl_CategoryItem] [b]
			 WHERE [b].[categoryID] = @categoryId
		ELSE
			INSERT @tblProducto
			SELECT @count, [b].[categoryItemID], [b].[categoryID]
			  FROM [dbo].[tbl_CategoryItem] [b]
			 WHERE [b].[categoryID] = @categoryId
					
		DELETE FROM @tblProducto WHERE number = @count - 1
		
		SET @count = @count + 1
		
		FETCH NEXT FROM category_cursor
		INTO @categoryId
	END

	CLOSE category_cursor;
	DEALLOCATE category_cursor;

	SELECT productoId, categoriesId
	FROM @tblProducto
	
	
END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPIById]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 03/05/2016
-- Description:	Get KPI by id
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPIById]
	 @intKPIId INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [kpiID]
		  ,[name]
		  ,[organizationID]
		  ,[areaID]
		  ,[projectID]
		  ,[activityID]
		  ,[personID]
		  ,[unitID]
		  ,[directionID]
		  ,[strategyID]
		  ,[startDate]
		  ,[reportingUnitID]
		  ,[targetPeriod]
		  ,[allowsCategories]
		  ,[currency]
		  ,[currencyUnitID]
		  ,[kpiTypeID]
	FROM [dbo].[tbl_KPI] 
	WHERE [kpiID] = @intKPIId
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKpiCategories]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:  Jose Carlos Gutierrez
-- Create date: 2016/05/27
-- Description: Get Categories used in KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKpiCategories]
 @intKpiId INT
AS
BEGIN
 -- SET NOCOUNT ON added to prevent extra result sets from
 -- interfering with SELECT statements.
 SET NOCOUNT ON;


 --SELECT kc.[categoryID]
 -- ,c.[name] [categoryName]
 --FROM (
 -- SELECT DISTINCT [categoryID],
 --     [categoryItemID]
 -- FROM [dbo].[tbl_KPIMeasurementCategories] kmc 
 -- WHERE [kmc].[categoryID] IN (SELECT [categoryId] FROM [dbo].[tbl_KPICategories] WHERE [kpiID] = @intKpiId)
 -- ) kc
 -- JOIN [dbo].[tbl_Category] c ON c.[categoryID] = kc.[categoryID]
  
 
 SELECT kc.[categoryID] 
  ,c.[name] [categoryName]
  ,ci.[categoryItemID]
  ,ci.[name] [categoryItemName]
 FROM [dbo].[tbl_KPICategories] kc
  JOIN [dbo].[tbl_Category] c ON c.[categoryID] = kc.[categoryID]
  JOIN [dbo].[tbl_CategoryItem] ci ON ci.[categoryID] = c.[categoryID]
 WHERE kc.[kpiID] = @intKpiId
END




GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPIDataTimeFromValue]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ==================================================================================
-- Author:		Marcela Martinez
-- Create date: 01/06/2016
-- Description:	Get KPI Data Time (year, month, day, hour, minute) from decimal value
-- ==================================================================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPIDataTimeFromValue]
	@dcValue AS DECIMAL(21,3)
AS
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @intYear AS INT
	DECLARE @intMonth AS INT
	DECLARE @intDay AS INT
	DECLARE @intHour AS INT
	DECLARE @intMinute AS INT
    DECLARE @dtBaseDate AS DATETIME
	DECLARE @dtCalculatedDate DATETIME
	
	SET @dtBaseDate = '1900-01-01'	
	SET @dtCalculatedDate = CAST(@dcValue AS DATETIME)
	
	--REDONDEO AL SEGUNDO
	SET @dtCalculatedDate = DATEADD(SECOND, ROUND(DATEPART(SECOND,@dtCalculatedDate)*2,-1) / 2-DATEPART(SECOND,@dtCalculatedDate), @dtCalculatedDate)

	SET @intYear = DATEDIFF(YY,@dtBaseDate,@dtCalculatedDate)
	SET @dtCalculatedDate = DATEADD(YY,-@intYear,@dtCalculatedDate)

	SET @intMonth = DATEDIFF(MM,@dtBaseDate,@dtCalculatedDate) 
	SET @dtCalculatedDate = DATEADD(MM,-@intMonth,@dtCalculatedDate)

	SET @intDay = DATEDIFF(DD,@dtBaseDate,@dtCalculatedDate) 
	SET @dtCalculatedDate = DATEADD(DD,-@intDay,@dtCalculatedDate)

	SET @intHour = DATEDIFF(HH,@dtBaseDate,@dtCalculatedDate) 
	SET @dtCalculatedDate = DATEADD(HH,-@intHour,@dtCalculatedDate)

	SET @intMinute = DATEDIFF(MINUTE,@dtBaseDate,@dtCalculatedDate)
	
	SELECT @intYear as [year],
	       @intMonth as [month],
	       @intDay as [day],
	       @intHour as [hour],
	       @intMinute as [minute]
    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPIListForUser]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================================
-- Author:		Ivan Krsul
-- Create date: May 12 2016
-- Description:	Get List of KPIs that user has view rights to
-- =============================================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPIListForUser]
	-- Add the parameters for the stored procedure here
	@userName varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--- Get list of KPIS where user has acccess.  In the sourceObjectType
	-- column we will record where we got this from, and the objectID will
	-- tell us the ID of the object where this KPI came from.
	DECLARE @kpiList as TABLE(kpiID int, sourceObjectType varchar(100), objectID int)

	-- For the following description ORG = ORGANIZATION, ACT = ACTIVITY, PPL = PEOPLE, PROF = PROJECT. 
	--If we need to determine the list of KPIs that a specific user can see 
	--we need to follow the following steps:
	--
	--1. Search for all ORGs where the user has OWN permissions and add to the list 
	--   of KPIs all of those KPIs associated to those ORGs.
	--2. Search for all ORGs where the user has MAN_KPI permissions or ORG has public 
	--   MAN_KPI and add to the list of KPIs all of these that are directly associated 
	--   to the organization and ARE NOT associated to a PROJ, ACT or PPL.  
	--3. Search for all ORGs where the user has MAN_PROJECT permissions or ORG has public 
	--   MAN_PROJECT, then search for all PROJs associated to these ORGs and then add to 
	--   the KPI list all of the KPIs that are associated to these PROJs.
	--4. For the list of projects obtained above, search for all the ACT that are associated
	--   to these PROJ and then add to the KPI list all of the KPIs that are associated to 
	--   these ACT.
	--5. Search for all ORGs where the user has MAN_ACTITIVIES permissions or ORG has public 
	--   MAN_ACTITIVIES and search for ACT that are associated to these ORGs and ARE NOT 
	--   associated to any PROJ, then add to the KPI list all of the KPIs that are 
	--   associated to these ACT.
	--6. Search for all ORGs where the user has MAN_PEOPLE permissions or where the ORG has 
	--   public MAN_PEOPLE, then search for all of the PPL that are associated to those 
	--   ORGs and finally add to the KPI list all of the KPIs that are associated to those 
	--   PPL.
	--7. Search for all ACT where the user has OWN or MAN_KPI permissions or the ACT is public 
	--   MAN_KPI and add to the KPI list all of the KPIs that are associated to the ACT.
	--8. Search for all PROJ where the user has OWN or MAN_KPI permissions, or where the ORG 
	--   is public MAN_KPI and add to the KPI list all of the PKIs that are associated to those
	--   PROJ.
	--9. Search for all PROJ where the user has MAN_ACTIVITIES permissions or where the PROJ is 
	--   public MAN_ACTIVITIES, then search for all of the ACT that are associated to these 
	--   PROJs and finally add to the KPI list the KPIs that are associated to these ACT.
	--10. Search for all PPL where the user user has MAN_KPI permissions or where the PPL is 
	--    public MAN_KPI and add to the KPI list all of the KIPs that are associated to these PPL.
	--11.	Add to the KPI list all of the KPIs that are public VIEW
	--12.	Add to the KPI list all of the KPIs where the user has OWN or VIEW or ENTER_DATA
	--      permissions.
	--
	--At the end of this, we should have a list of all of the KPIs that the user can see.

	-- So lets start with step 1.
 
	--1. Search for all ORGs where the user has OWN permissions and add to the list 
	--   of KPIs all of those KPIs associated to those ORGs.

	insert into @kpiList
	select [kpiID], 'ORG OWN (1)', [k].[organizationID] 
	from [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [pj] ON [k].[projectID] = [pj].[projectID] and [pj].[deleted] = 0
	left join [dbo].[tbl_People] [pe] ON [k].[personID] = [pe].[personID] and [pe].[deleted] = 0
	left join [dbo].[tbl_Activity] [a] ON [k].[activityID] = [a].[activityID] and [a].[deleted] = 0
	where [k].[deleted] = 0
	    and [o].[deleted] = 0
		and case when k.projectID Is not null then
				 case when pj.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
		and case when k.personID Is not null then
				 case when pe.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
		and case when k.activityID Is not null then
				 case when a.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
		and [k].[organizationID] in (
					select [objectID]
					from [dbo].[tbl_SEG_ObjectPermissions]
					where [objectTypeID] = 'ORGANIZATION' and objectActionID = 'OWN'
						and username = @userName
			)

	--2. Search for all ORGs where the user has MAN_KPI permissions or ORG has public 
	--   MAN_KPI and add to the list of KPIs all of these that are directly associated 
	--   to the organization and ARE NOT associated to a PROJ, ACT or PPL.  

	insert into @kpiList
	select [kpiID], 'ORG MAN_KPI (2)', [k].[organizationID] 
	from [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	where [k].[deleted] = 0
	  and [o].[deleted] = 0
	  and [k].[organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_KPI'
	) and [k].[projectID] is null and [k].[activityID] is null and [k].[personID] is null

	--3. Search for all ORGs where the user has MAN_PROJECT permissions or ORG has public 
	--   MAN_PROJECT, then search for all PROJs associated to these ORGs and then add to 
	--   the KPI list all of the KPIs that are associated to these PROJs.

	insert into @kpiList
	select [kpiID], 'ORG MAN_PROJECT (3)', [k].[organizationID] 
	from [dbo].[tbl_KPI] [k]
	left join [dbo].[tbl_Activity] [a] ON [k].[activityID] = [a].[activityID] 
	where [k].[deleted] = 0
	  and case when k.activityID Is not null then
				 case when a.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
	  and [k].[projectID] in (
			select [projectID]
			from [dbo].[tbl_Project] [p]
			inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID] 
			where [p].[deleted] = 0
			  and [o].[deleted] = 0
			  and [p].[organizationID] in (
				SELECT [objectID] 
				FROM [dbo].[tbl_SEG_ObjectPermissions]
				WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PROJECT' AND username = @userName
				UNION
				SELECT [objectID]
				FROM [dbo].[tbl_SEG_ObjectPublic]
				WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PROJECT'
			) 
		)

	--4. For the list of projects obtained above, search for all the ACT that are associated
	--   to these PROJ and then add to the KPI list all of the KPIs that are associated to 
	--   these ACT.

	insert into @kpiList
	select [kpiID], 'ORG MAN_PROJECT_ACT (4)', [organizationID] 
	from [dbo].[tbl_KPI]
	where [deleted] = 0
	  and [activityID] in (
		select [activityID] 
		from [dbo].[tbl_Activity]
		where [deleted] = 0
	      and [projectID] in (
			select [projectID]
			from [dbo].[tbl_Project] [p]
			inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID] 
			where [p].[deleted] = 0
			  and [o].[deleted] = 0
	          and [p].[organizationID] in (
				SELECT [objectID] 
				FROM [dbo].[tbl_SEG_ObjectPermissions]
				WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PROJECT' AND username = @userName
				UNION
				SELECT [objectID]
				FROM [dbo].[tbl_SEG_ObjectPublic]
				WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PROJECT'
			) 
		)
	)

	--5. Search for all ORGs where the user has MAN_ACTITIVIES permissions or ORG has public 
	--   MAN_ACTITIVIES and search for ACT that are associated to these ORGs and ARE NOT 
	--   associated to any PROJ, then add to the KPI list all of the KPIs that are 
	--   associated to these ACT.
	
	insert into @kpiList
	select [kpiID], 'ORG MAN_ACTIVITY (5)', [organizationID] 
	from [dbo].[tbl_KPI]
	where [deleted] = 0
	  and [activityID] in (
		select [activityID] 
		from [dbo].[tbl_Activity] [a]
		inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID]
		where [a].[deleted] = 0
		  and [o].[deleted] = 0
	      and [a].[organizationID] in (
			SELECT [objectID] 
			FROM [dbo].[tbl_SEG_ObjectPermissions]
			WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_ACTIVITY' AND username = @userName
			UNION
			SELECT [objectID]
			FROM [dbo].[tbl_SEG_ObjectPublic]
			WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_ACTIVITY'
		)  and [projectID] is null
	)

	--6. Search for all ORGs where the user has MAN_PEOPLE permissions or where the ORG has 
	--   public MAN_PEOPLE, then search for all of the PPL that are associated to those 
	--   ORGs and finally add to the KPI list all of the KPIs that are associated to those 
	--   PPL.

	insert into @kpiList
	select [kpiID], 'ORG MAN_PEOPLE (6)', [organizationID] 
	from [dbo].[tbl_KPI]
	where [deleted] = 0
	  and [personID] in (
		select [personID]
		from [dbo].[tbl_People] [p]
		inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID] 
		where [p].[deleted] = 0
		  and [o].[deleted] = 0
	      and [p].[organizationID] in (
			SELECT [objectID] 
			FROM [dbo].[tbl_SEG_ObjectPermissions]
			WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PEOPLE' AND username = @userName
			UNION
			SELECT [objectID]
			FROM [dbo].[tbl_SEG_ObjectPublic]
			WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PEOPLE'
		) 
	)

	--7. Search for all ACT where the user has OWN or MAN_KPI permissions or the ACT is public 
	--   MAN_KPI and add to the KPI list all of the KPIs that are associated to the ACT.

	insert into @kpiList
	select [kpiID], 'ACT OWN (7)', [k].[activityID]
	from [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	inner join [dbo].[tbl_Project] [pj] ON [k].[projectID] = [pj].[projectID] 
	left join [dbo].[tbl_Activity] [a] ON [k].[activityID] = [a].[activityID] 
	where [k].[deleted] = 0
	  and [o].[deleted] = 0
	  and [pj].[deleted] = 0
	  and case when k.activityID Is not null then
				 case when a.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
	  and [k].[activityID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'ACTIVITY' and objectActionID = 'OWN' and username = @userName
	)

	insert into @kpiList
	select [kpiID], 'ACT-MAN_KPI (7)', [k].[activityID] 
	FROM [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	inner join [dbo].[tbl_Project] [pj] ON [k].[projectID] = [pj].[projectID] 
	left join [dbo].[tbl_Activity] [a] ON [k].[activityID] = [a].[activityID] 
	where [k].[deleted] = 0
	  and [o].[deleted] = 0
	  and [pj].[deleted] = 0
	  and case when k.activityID Is not null then
				 case when a.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
	  and [k].[activityID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ACTIVITY' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ACTIVITY' and objectActionID = 'MAN_KPI'
	)

	--8. Search for all PROJ where the user has OWN or MAN_KPI permissions, or where the ORG 
	--   is public MAN_KPI and add to the KPI list all of the PKIs that are associated to those
	--   PROJ.

	insert into @kpiList
	select [kpiID], 'PROJ OWN (8)', [k].[projectID] 
	from [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	inner join [dbo].[tbl_Project] [pj] ON [k].[projectID] = [pj].[projectID] 
	left join [dbo].[tbl_Activity] [a] ON [k].[activityID] = [a].[activityID] 
	where [k].[deleted] = 0
	  and [o].[deleted] = 0
	  and [pj].[deleted] = 0
	  and case when k.activityID Is not null then
				 case when a.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
	  and [k].[projectID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'PROJECT' and objectActionID = 'OWN' and username = @userName
	)

	insert into @kpiList
	select [kpiID], 'PROJ-MAN_KPI (8)', [k].[projectID] 
	FROM [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	inner join [dbo].[tbl_Project] [pj] ON [k].[projectID] = [pj].[projectID] 
	left join [dbo].[tbl_Activity] [a] ON [k].[activityID] = [a].[activityID] 
	where [k].[deleted] = 0
	  and [o].[deleted] = 0
	  and [pj].[deleted] = 0
	  and case when k.activityID Is not null then
				 case when a.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
	  and [k].[projectID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_KPI'
	)

	--9. Search for all PROJ where the user has MAN_ACTIVITIES permissions or where the PROJ is 
	--   public MAN_ACTIVITIES, then search for all of the ACT that are associated to these 
	--   PROJs and finally add to the KPI list the KPIs that are associated to these ACT.

	insert into @kpiList
	select [kpiID], 'PROJ-MAN_ACTIVITY (9)', [projectID] 
	FROM [dbo].[tbl_KPI]
	where [deleted] = 0
	  and [activityID] in (
		select [activityID]
		from [dbo].[tbl_Activity] [a]
		inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	    inner join [dbo].[tbl_Project] [pj] ON [a].[projectID] = [pj].[projectID] 
		where [a].[deleted] = 0
		  and [o].[deleted] = 0
		  and [pj].[deleted] = 0
	      and [a].[projectID] in (
			SELECT [objectID] 
			FROM [dbo].[tbl_SEG_ObjectPermissions]
			WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_ACTIVITY' AND username = @userName
			UNION
			SELECT [objectID]
			FROM [dbo].[tbl_SEG_ObjectPublic]
			WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_ACTIVITY'
		)
	)

	--10. Search for all PPL where the user has OWN or MAN_KPI permissions or where the PPL is 
	--    public MAN_KPI and add to the KPI list all of the KIPs that are associated to these PPL.

	insert into @kpiList
	select [kpiID], 'PPL OWN (10)', [k].[personID]
	from [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	inner join [dbo].[tbl_People] [p] ON [k].[personID] = [p].[personID] 
	where [k].[deleted] = 0
	  and [o].[deleted] = 0
	  and [p].[deleted] = 0
	  and [k].[personID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'PERSON' and objectActionID = 'OWN' and username = @userName
	)

	insert into @kpiList
	select [kpiID], 'PPL-MAN_KPI (10)', [k].[personID] 
	FROM [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	inner join [dbo].[tbl_People] [p] ON [k].[personID] = [p].[personID] 
	where [k].[deleted] = 0
	  and [o].[deleted] = 0
	  and [p].[deleted] = 0
	  and [k].[personID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PERSON' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'PERSON' and objectActionID = 'MAN_KPI'
	)

	--11. Add to the KPI list all of the KPIs that are public VIEW_KPI

	insert into @kpiList
	select [kpiID], 'KPI-PUB VIEW (11)', [kpiID] 
	FROM [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [pj] ON [k].[projectID] = [pj].[projectID] 
	left join [dbo].[tbl_People] [pe] ON [k].[personID] = [pe].[personID] 
	left join [dbo].[tbl_Activity] [a] ON [k].[activityID] = [a].[activityID]
	where [k].[deleted] = 0
	  and [o].[deleted] = 0
	  and case when k.projectID Is not null then
				 case when pj.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
		and case when k.personID Is not null then
				 case when pe.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
		and case when k.activityID Is not null then
				 case when a.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
	  and [kpiID] in (
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI'
	)

	--12.	Add to the KPI list all of the KPIs where the user has OWN or VIEW_KPI or ENTER_DATA
	--      permissions.
	insert into @kpiList
	select [kpiID], 'KPI-OWN-ENTER (12)', [kpiID] 
	FROM [dbo].[tbl_KPI][k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [pj] ON [k].[projectID] = [pj].[projectID] 
	left join [dbo].[tbl_People] [pe] ON [k].[personID] = [pe].[personID] 
	left join [dbo].[tbl_Activity] [a] ON [k].[activityID] = [a].[activityID]
	where [k].[deleted] = 0
	    and [o].[deleted] = 0
	    and case when k.projectID Is not null then
				 case when pj.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
		and case when k.personID Is not null then
				 case when pe.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
		and case when k.activityID Is not null then
				 case when a.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
	  and [kpiID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'OWN' AND username = @userName
		union
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'ENTER_DATA' AND username = @userName
		union
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI' AND username = @userName
	)
	
	insert into @kpiList
	select [kpiID], 'KPI-VIEW (12)', [kpiID] 
	FROM [dbo].[tbl_KPI][k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	left join [dbo].[tbl_Project] [pj] ON [k].[projectID] = [pj].[projectID] 
	left join [dbo].[tbl_People] [pe] ON [k].[personID] = [pe].[personID] 
	left join [dbo].[tbl_Activity] [a] ON [k].[activityID] = [a].[activityID]
	where [k].[deleted] = 0
	    and [o].[deleted] = 0
	    and case when k.projectID Is not null then
				 case when pj.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
		and case when k.personID Is not null then
				 case when pe.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
		and case when k.activityID Is not null then
				 case when a.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
	  and [kpiID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI' AND username = @userName
	)


	select distinct kpiID, sourceObjectType from @kpiList 


END
GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKpiMeasurementCategoriesByKpiId]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Marcela Martinez
-- Create date: 30/05/2016
-- Description:	Get MeasurementCategories by kpiId
-- =================================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKpiMeasurementCategoriesByKpiId]
	@intKpiId INT,
	@varCategoryId VARCHAR(20),
	@varCategoryItemId VARCHAR(20)
AS
BEGIN
	
	SET NOCOUNT ON;

    CREATE TABLE #tbl_Measurement([measurmentID] INT, [date] DATE, [measurement] DECIMAL(21,3), [detalle] VARCHAR(MAX), [categories] VARCHAR(MAX))
    
    DECLARE @intMeasurementId AS INT
    DECLARE @dtDate AS DATE
	DECLARE @dcMeasurement AS DECIMAL(21,3)
    DECLARE @varDetalle AS VARCHAR(MAX)
    DECLARE @varCategories AS VARCHAR(MAX)
    
	IF ISNULL(@varCategoryId,'') = ''
		DECLARE MEASUREMENT_CURSOR CURSOR FOR
			SELECT [measurmentID]
			FROM [dbo].[tbl_KPIMeasurements] 
			WHERE [kpiID] = @intKpiID 
			ORDER BY [date] DESC 
	ELSE
		DECLARE MEASUREMENT_CURSOR CURSOR FOR
			SELECT [measurmentID]
			FROM [dbo].[tbl_KPIMeasurements] 
			WHERE [kpiID] = @intKpiID 
			AND [measurmentID] IN (SELECT [measurementID] FROM [dbo].[tbl_KPIMeasurementCategories] 
								   WHERE [kpiID] = @intKpiId 
								   AND [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId)
			ORDER BY [date] DESC
	
	OPEN MEASUREMENT_CURSOR
	
	FETCH NEXT FROM MEASUREMENT_CURSOR INTO @intMeasurementId
	
	WHILE @@FETCH_STATUS = 0
		BEGIN
			SELECT @varDetalle = COALESCE(COALESCE(CASE WHEN @varDetalle = '' THEN '' ELSE @varDetalle + ', ' END, '') + [i].[categoryItemID], @varDetalle),
				   @varCategories = COALESCE(COALESCE(CASE WHEN @varCategories = '' THEN '' ELSE @varCategories + ', ' END, '') + [i].[categoryID], @varCategories),
				   @dtDate = [m].[date],
				   @dcMeasurement = [m].[measurement]
			FROM [dbo].[tbl_KPIMeasurements] [m]  
			LEFT OUTER JOIN [dbo].[tbl_KPIMeasurementCategories] [c] ON [m].[measurmentID] = [c].[measurementID] 
			LEFT OUTER JOIN [dbo].[tbl_CategoryItem] [i] ON [c].[categoryItemID] = [i].[categoryItemID] 
				AND [c].[categoryID] = [i].[categoryID] 
				AND [c].[categoryID] = CASE WHEN ISNULL(@varCategoryId,'') = '' THEN [c].[categoryID] ELSE @varCategoryId END 
				AND [c].[categoryItemID] = CASE WHEN ISNULL(@varCategoryItemId,'') = '' THEN [c].[categoryItemID] ELSE @varCategoryItemId END 
			WHERE [m].[measurmentID] = @intMeasurementId 
			ORDER BY [i].[categoryID]
			
			INSERT INTO #tbl_Measurement VALUES(@intMeasurementId, @dtDate, @dcMeasurement, @varDetalle, @varCategories)
			
			SET @varDetalle = ''
			SET @varCategories = ''
			SET @dtDate = NULL
			SET @dcMeasurement = NULL
			
			FETCH NEXT FROM MEASUREMENT_CURSOR INTO @intMeasurementId
		END
	
	CLOSE MEASUREMENT_CURSOR;
	DEALLOCATE MEASUREMENT_CURSOR;
    
    SELECT [measurmentID]
		  ,@intKpiID [kpiID]
		  ,[date]
		  ,[measurement]
		  ,[detalle]
		  ,[categories]
	FROM #tbl_Measurement 
	ORDER BY [date] DESC, [measurmentID] DESC
	
	DROP TABLE #tbl_Measurement
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKpiMeasurements]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 04/05/2016
-- Description:	Gets all measurements of KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKpiMeasurements]
	@intKpiId			INT,
	@varCategoryId		VARCHAR(20),
	@varCategoryItemId	VARCHAR(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	IF @varCategoryId = '' OR @varCategoryId IS NULL
	BEGIN

		SELECT [measurmentID]
		  ,[kpiID]
		  ,[date]
		  ,[measurement]
		FROM [dbo].[tbl_KPIMeasurements]
		WHERE [kpiID] = @intKpiId 
		ORDER BY [date] ASC
	END	
	ELSE
	BEGIN
	
		DECLARE @tbl_Measurements TABLE (
			[measurmentID] INT, 
			[kpiId] INT,
			[date] DATE, 
			[measurement] DECIMAL(21,3), 
			[detalle] VARCHAR(MAX), 
			[categories] VARCHAR(MAX)
		)
		
		INSERT INTO @tbl_Measurements
		EXEC [dbo].[usp_KPI_GetKpiMeasurementCategoriesByKpiId] @intKpiId
		
		SELECT [measurmentID]
		  ,[kpiID]
		  ,[date]
		  ,[measurement]
		FROM @tbl_Measurements
		WHERE [detalle] = @varCategoryItemId
		ORDER BY [date] ASC
	
	END

END





GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKpiMeasurementsByKpiOwner]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 04/05/2016
-- Description:	Gets all measurements of KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKpiMeasurementsByKpiOwner]
	@intOwnerId	INT,
	@varOwnerType VARCHAR(25),
	@varUserName	VARCHAR(50),
	@decMin	DECIMAL(21,3) OUTPUT,
	@decMax	DECIMAL(21,3) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @tbl_AuthorizedKPI AS TABLE([kpiId] INT,sourceObjectType VARCHAR(100))
 
	 INSERT INTO @tbl_AuthorizedKPI (kpiId, sourceObjectType)
		EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUserName
	DECLARE @tblKpiIds AS TABLE ([kpiId] INT)
	
	IF @varOwnerType = 'KPI'
	BEGIN
		INSERT INTO @tblKpiIds ([kpiId]) VALUES (@intOwnerId)
	END
	
	IF @varOwnerType = 'ACTIVITY'
	BEGIN
	
		INSERT INTO @tblKpiIds
		SELECT k.[kpiID]
		FROM [dbo].[tbl_KPI] k
			JOIN [dbo].[tbl_KPITarget] kt ON kt.[kpiID] = k.[kpiID]
		WHERE k.[activityID] = @intOwnerId
			AND k.[kpiID] IN (SELECT [kpiId] FROM @tbl_AuthorizedKPI)

	END
	
	IF @varOwnerType = 'ORGANIZATION'
	BEGIN
	
		INSERT INTO @tblKpiIds
		SELECT k.[kpiID]
		FROM [dbo].[tbl_KPI] k
			JOIN [dbo].[tbl_KPITarget] kt ON kt.[kpiID] = k.[kpiID]
		WHERE [organizationID] = @intOwnerId
			AND k.[kpiID] IN (SELECT [kpiId] FROM @tbl_AuthorizedKPI)

	END
	
	IF @varOwnerType = 'AREA'
	BEGIN
	
		INSERT INTO @tblKpiIds
		SELECT k.[kpiID]
		FROM [dbo].[tbl_KPI] k
			JOIN [dbo].[tbl_KPITarget] kt ON kt.[kpiID] = k.[kpiID]
		WHERE k.[areaID] = @intOwnerId
			AND k.[kpiID] IN (SELECT [kpiId] FROM @tbl_AuthorizedKPI)

	END
	
	IF @varOwnerType = 'PROJECT'
	BEGIN
	
		INSERT INTO @tblKpiIds
		SELECT k.[kpiID]
		FROM [dbo].[tbl_KPI] k
			JOIN [dbo].[tbl_KPITarget] kt ON kt.[kpiID] = k.[kpiID]
		WHERE k.[projectID] = @intOwnerId
			AND k.[kpiID] IN (SELECT [kpiId] FROM @tbl_AuthorizedKPI)

	END
	
	IF @varOwnerType = 'PERSON'
	BEGIN
	
		INSERT INTO @tblKpiIds
		SELECT k.[kpiID]
		FROM [dbo].[tbl_KPI] k
			JOIN [dbo].[tbl_KPITarget] kt ON kt.[kpiID] = k.[kpiID]
		WHERE k.[personID] = @intOwnerId
			AND k.[kpiID] IN (SELECT [kpiId] FROM @tbl_AuthorizedKPI)

	END
	
	--SELECT @decMax = MAX([measurement]), @decMin = MIN([measurement])
	--FROM [dbo].[tbl_KPIMeasurements]
	--WHERE [kpiID] IN (SELECT [kpiID] FROM @tblKpiIds)
	
	SET @decMax = 100
	SET @decMin = 0

    SELECT ROW_NUMBER() 
        OVER (ORDER BY [kpiID]) AS [measurmentID]
      ,[kpiID]
      ,GETDATE() [date]
      ,[dbo].[svf_GetKpiProgess]([kpiID],'','') [measurement]
	FROM @tblKpiIds
	--WHERE [kpiID] IN (SELECT distinct [kpiID]  FROM @tblKpiIds)
	ORDER BY [measurement] ASC


END



GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKpiMeasurementsForChart]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






-- =============================================
-- Author:  Jose Carlos Gutierrez
-- Create date: 2016/05/12
-- Description: Gets measurement of KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKpiMeasurementsForChart]
	@intKpiId				 INT,
	@intCategoryId			 VARCHAR(20),
	@intCategoryItemId		 VARCHAR(20),
	@intFirstDayOfWeek		 INT,
	@varStrategyId			 CHAR(3) OUTPUT,
	@decTarget				 DECIMAL(21,3) OUTPUT,
	@varStartingTargetPeriod VARCHAR(50) OUTPUT,
	@varEndTargetPeriod		 VARCHAR(50) OUTPUT
AS
BEGIN
 -- SET NOCOUNT ON added to prevent extra result sets from
 -- interfering with SELECT statements.
 SET NOCOUNT ON;
 
	IF @intCategoryId = ''
	BEGIN
		SET @intCategoryId = NULL
		SET @intCategoryItemId = NULL
	END
	
	SET DATEFIRST @intFirstDayOfWeek
	
	SET @varStartingTargetPeriod = NULL

	DECLARE @datStartDate DATE 
	DECLARE @datEndDateForTarget DATE 
	--DECLARE @varStrategyId CHAR(3)
	DECLARE @varReportingUnit CHAR(5)
	DECLARE @intTargetPeriod INT
	--DECLARE @decTarget DECIMAL(21,3)

	 DECLARE @tabResult TABLE(
		[period] VARCHAR(50),
		[measurement] DECIMAL(21,3),
		[order] INT
	 )
	 
	DECLARE @tblTargets AS TABLE
			(targetID INT,
			 [kpiId] INT,
			 [target] DECIMAL(21,9),
			 detalle VARCHAR(1000),
			 categories VARCHAR(1000)
	)
			 
	SELECT @varStrategyId = [strategyID],
		@datStartDate = [startDate],
		@intTargetPeriod = ISNULL([targetPeriod],0),
		@varReportingUnit = [reportingUnitID]  
	FROM [dbo].[tbl_KPI] 
	WHERE [kpiID] = @intKpiId
 
	IF @intCategoryId IS NULL
	BEGIN
	
		DECLARE @intAmountOfCategories INT
		
		SELECT @intAmountOfCategories = COUNT(*)
		FROM [dbo].[tbl_KPICategories]
		WHERE [kpiID] = @intKpiId
		
		IF @intAmountOfCategories = 0 OR @varStrategyId = 'SUM'
		BEGIN
			SELECT @decTarget = SUM([target])
			FROM [dbo].[tbl_KPITarget]
			WHERE [kpiID] = @intKpiId
		END
		ELSE
		BEGIN
		
			INSERT INTO @tblTargets
			SELECT [targetID],
				[kpiId],
				[target],
				[detalle],
				[categories]
			FROM [dbo].[tvf_GetKpiTargetForCategories](@intKpiId)
			
			SELECT @decTarget = AVG([target])
			FROM @tblTargets
			WHERE [target] <> 0			
			
		END
	END
	ELSE
	BEGIN
	
		INSERT INTO @tblTargets
		SELECT [targetID],
			[kpiId],
			[target],
			[detalle],
			[categories]
		FROM [dbo].[tvf_GetKpiTargetForCategories](@intKpiId)
 
		SELECT @decTarget = [target]
		FROM @tblTargets t
		WHERE t.[detalle] = @intCategoryItemId   
 
	END

	
 
	IF @decTarget IS NULL OR @decTarget = 0 OR ISNULL(@intTargetPeriod,0) = 0
		SET @decTarget = -1
	ELSE
	BEGIN
		
		IF @varStrategyId = 'SUM'
			SET @decTarget = @decTarget / @intTargetPeriod
		
	END
	
	DECLARE  @tbl_Measurement table(
		[measurmentID] INT,
		[kpiId] INT,
		[date] DATE, 
		[measurement] DECIMAL(21,3), 
		[detalle] VARCHAR(MAX), 
		[categories] VARCHAR(MAX)
	)
	
	--IF @intCategoryId IS NULL
	--BEGIN
	
		INSERT INTO @tbl_Measurement  
		SELECT [measurmentID],
			[kpiId],
			[date],
			[measurement],
			[detalle],
			[categories]
		FROM [dbo].[tvf_GetKpiMeasurements](@intKpiId, @intCategoryId)
		
	--END
	--ELSE
	--BEGIN
	
		--INSERT INTO @tbl_Measurement 
		--EXEC [dbo].[usp_KPI_GetKpiMeasurementCategoriesByKpiId] @intKpiId
	
	--END

	DECLARE @today DATE = GETDATE()
	DECLARE @currentDate DATE = @today

	DECLARE @intReportingPeriod INT
	DECLARE @intDaysToSubstract INT
 
	SELECT @intReportingPeriod = [periodsToReport],
		   @intDaysToSubstract = [days]
	FROM [dbo].[tbl_KpiReportingPeriod]
	WHERE [reportingUnitId] = @varReportingUnit
	
	DECLARE @tblDates TABLE 
	(
		[from] DATE,
		[to] DATE
	)
	
	IF @varReportingUnit = 'DAY'
	BEGIN 
	
		INSERT INTO @tblDates
		SELECT [from], [to] FROM [dbo].[tvf_GetDatesForKpiReportingForDays](@intReportingPeriod)
	
	END
	
	IF @varReportingUnit = 'MONTH'
	BEGIN 
	
		INSERT INTO @tblDates
		SELECT [from], [to] FROM [dbo].[tvf_GetDatesForKpiReportingForMonths](@intReportingPeriod)
	
	END
	
	IF @varReportingUnit = 'WEEK'
	BEGIN 
	
		INSERT INTO @tblDates
		SELECT [from], [to] FROM [dbo].[tvf_GetDatesForKpiReportingForWeeks](@intReportingPeriod)
	
	END
	
	IF @varReportingUnit = 'QUART'
	BEGIN 
	
		INSERT INTO @tblDates
		SELECT [from], [to] FROM [dbo].[tvf_GetDatesForKpiReportingForQuarter](@intReportingPeriod)
	
	END
	
	IF @varReportingUnit = 'YEAR'
	BEGIN 
	
		INSERT INTO @tblDates
		SELECT [from], [to] FROM [dbo].[tvf_GetDatesForKpiReportingForYears](@intReportingPeriod)
	
	END
	
	IF @datStartDate IS NOT NULL
	BEGIN
	
		IF @varReportingUnit = 'DAY'
		BEGIN
			SET @datEndDateForTarget = DATEADD(DAY, @intTargetPeriod,@datStartDate)
		END
		
		IF @varReportingUnit = 'MONTH'
		BEGIN 		
			
			--Getting first day of moth for start date
			SET @datEndDateForTarget = CONVERT(VARCHAR(25),DATEADD(dd,-(DAY(@datStartDate)-1),@datStartDate),101)
			--Adding months according to periods
			SET @datEndDateForTarget = DATEADD(MONTH, @intTargetPeriod,@datEndDateForTarget)
		
		END
		
		IF @varReportingUnit = 'WEEK'
		BEGIN 
		
			SET @datEndDateForTarget = DATEADD(dd, -(DATEPART(dw, @datStartDate)-1), @datStartDate)
			SET @datEndDateForTarget = DATEADD(WEEK, @intTargetPeriod, @datEndDateForTarget)
		
		END
		
		IF @varReportingUnit = 'QUART'
		BEGIN 
		
			SET @datEndDateForTarget = DATEADD(q, DATEDIFF(q, 0, @datStartDate), 0) 
			SET @datEndDateForTarget = DATEADD(q, @intTargetPeriod, @datEndDateForTarget)
		
		END
		
		IF @varReportingUnit = 'YEAR'
		BEGIN 
		
			SET @datEndDateForTarget = DATEADD(yy, DATEDIFF(yy,0,@datStartDate), 0)
			SET @datEndDateForTarget = DATEADD(yy, @intTargetPeriod, @datEndDateForTarget)
		
		END
		
		SELECT @varEndTargetPeriod = [dbo].[svf_GetReportingName](@varReportingUnit, @datEndDateForTarget)
				
	END
	
	
	
	DECLARE @order INT = 1
	DECLARE @currentPeriod INT = @intReportingPeriod
	DECLARE @from DATE
	DECLARE @to DATE
	
	DECLARE cDates CURSOR FOR
	SELECT [from], [to] FROM @tblDates
	ORDER BY [from]
	
	OPEN cDates
	FETCH cDates INTO @from, @to

	WHILE (@@FETCH_STATUS = 0)
	BEGIN

		
		
		--IF @varReportingUnit = 'YEAR'
		--BEGIN
		--	SET @from = null
			
		--END
		
		--IF @varReportingUnit = 'MONTH'
		--BEGIN
		--	SET @from = null
		--END 
		
		--IF @varReportingUnit = 'QUART'
		--BEGIN
		--	SET @from = null
		--END 
		
		--IF @varReportingUnit = 'WEEK'
		--BEGIN
		--	SET @from = null
		--END 
		
		--IF @varReportingUnit = 'DAY'
		--BEGIN
		--	SET @from = null
		--END 
		
		
		-- = DATEADD(DAY, -@intDaysToSubstract, @currentDate)
		
		IF @datStartDate IS NOT NULL AND @varStartingTargetPeriod IS NULL
		BEGIN
		
			IF (@datStartDate >= @from AND @datStartDate <= @to)
				SELECT @varStartingTargetPeriod = [dbo].[svf_GetReportingName](@varReportingUnit, @from)
		
			
		
		END
  
		IF @varStrategyId = 'AVG'
		BEGIN
  
			IF @intCategoryId IS NULL
			BEGIN
				INSERT INTO @tabResult
				SELECT [dbo].[svf_GetReportingName](@varReportingUnit, @from), [measurement], @currentPeriod
				FROM (
					SELECT ISNULL(AVG([measurement]),0) [measurement]
					FROM @tbl_Measurement
					WHERE [date] BETWEEN @from AND @to
						AND 1 = CASE WHEN @datStartDate IS NULL OR @varReportingUnit = 'DAY' THEN 1 ELSE
								CASE WHEN [date] >= @datStartDate THEN 1 ELSE 0 END
								END
				) tbl
			END
			ELSE
			BEGIN
   
				INSERT INTO @tabResult
				SELECT [dbo].[svf_GetReportingName](@varReportingUnit, @from), [measurement], @currentPeriod
				FROM (
					SELECT ISNULL(AVG([measurement]),0) [measurement]
					FROM @tbl_Measurement
					WHERE [date] BETWEEN @from AND @to
						AND 1 = CASE WHEN @datStartDate IS NULL OR @varReportingUnit = 'DAY' THEN 1 ELSE
								CASE WHEN [date] >= @datStartDate THEN 1 ELSE 0 END
								END
						AND [detalle] = @intCategoryItemId
						--AND [measurmentID] IN (SELECT [measurmentID] 
						--						FROM [dbo].[tbl_KPIMeasurementCategories]
						--						WHERE [categoryID] = @intCategoryId 
						--						AND [categoryItemID] = @intCategoryItemId
						--					)
				) tbl
   
			END
		END

		IF @varStrategyId = 'SUM'
		BEGIN

			IF @intCategoryId IS NULL
			BEGIN
				INSERT INTO @tabResult
				SELECT [dbo].[svf_GetReportingName](@varReportingUnit, @from),[measurement], @currentPeriod
				FROM (
					SELECT ISNULL(SUM([measurement]),0) [measurement]
					FROM @tbl_Measurement
					WHERE [date] BETWEEN @from AND @to
					AND 1 = CASE WHEN @datStartDate IS NULL OR @varReportingUnit = 'DAY' THEN 1 ELSE
							CASE WHEN [date] >= @datStartDate THEN 1 ELSE 0 END
					END
				) tbl
			
			END		
			ELSE
			BEGIN
		
				INSERT INTO @tabResult
				SELECT [dbo].[svf_GetReportingName](@varReportingUnit, @to),[measurement], @currentPeriod
				FROM (
					SELECT ISNULL(SUM([measurement]),0) [measurement]
					FROM @tbl_Measurement
					WHERE [date] BETWEEN @from AND @to
						AND 1 = CASE WHEN @datStartDate IS NULL OR @varReportingUnit = 'DAY' THEN 1 ELSE
							CASE WHEN [date] >= @datStartDate THEN 1 ELSE 0 END
							END
						AND [detalle] = @intCategoryItemId
						--AND [measurmentID] IN (SELECT [measurmentID] 
						--					FROM [dbo].[tbl_KPIMeasurementCategories]
						--					WHERE [categoryID] = @intCategoryId 
						--					AND [categoryItemID] = @intCategoryItemId
						--				)
				) tbl

			END
		END

  
		SET @currentPeriod = @currentPeriod - 1
		
		FETCH cDates INTO @from, @to
		
	END
	
	CLOSE cDates
	DEALLOCATE cDates

	SELECT [period],
		[measurement]
	FROM @tabResult
	ORDER BY [order] DESC

 --DECLARE @tabResult TABLE ([date] DATE,[measurement] DECIMAL(21,3))
 --print @varStrategyId
 --IF @varStrategyId = 'AVG'
 --BEGIN
 -- INSERT INTO @tabResult
 -- SELECT [date], AVG([measurement])
 -- FROM [dbo].[tbl_KPIMeasurements]
 -- WHERE [kpiID] = @intKpiId
 -- GROUP BY [date]
 -- ORDER BY [date] ASC
 --END

 --IF @varStrategyId = 'SUM'
 --BEGIN
 -- INSERT INTO @tabResult
 -- SELECT [date], SUM([measurement])
 -- FROM [dbo].[tbl_KPIMeasurements]
 -- WHERE [kpiID] = @intKpiId
 -- GROUP BY [date]
 -- ORDER BY [date] ASC
 --END

 --IF @varStrategyId = 'NA'
 --BEGIN
 -- INSERT INTO @tabResult
 -- SELECT [date], [measurement]
 -- FROM [dbo].[tbl_KPIMeasurements]
 -- WHERE [kpiID] = @intKpiId
 -- ORDER BY [date] ASC
 --END


 --SELECT d.[date]
 -- ,ISNULL(r.[measurement],0) [measurement]
 --FROM @tabDates d
 -- LEFT OUTER JOIN @tabResult r  ON d.[date] = r.[date] 
 --WHERE d.[date] BETWEEN @datStartDate AND @today
END







GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKpiProgress]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:  Jose Carlos Gutierrez
-- Create date: 2016/05/19
-- Description: Get KPI Progress
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKpiProgress]
	@intKpiId   INT,
	@varCategoryId  VARCHAR(20),
	@varCategoryItemId VARCHAR(20),
	@intFirstDayOfWeek	INT,
	@bitHasTarget  BIT OUTPUT,
	@decCurrentValue DECIMAL(21,3) OUTPUT,
	@decProgress  DECIMAL(5,2) OUTPUT
AS
BEGIN
 -- SET NOCOUNT ON added to prevent extra result sets from
 -- interfering with SELECT statements.
 SET NOCOUNT ON;
 
	DECLARE @decTarget DECIMAL(21,3)

	DECLARE @varStrategyId CHAR(3)
	DECLARE @varReportingUnitId CHAR(5) 

	SELECT @varStrategyId = [strategyID],
		@varReportingUnitId = [reportingUnitId]
	FROM [dbo].[tbl_KPI] 
	WHERE [kpiID] = @intKpiId

	IF  @varCategoryId = '' OR @varCategoryId IS NULL
	BEGIN
	 
		IF(@varStrategyId = 'SUM')
		BEGIN
	 
	   -- verify if exists a target
			SELECT @decTarget = SUM([target]) 
			FROM [dbo].[tbl_KPITarget] 
			WHERE [kpiID] = @intKpiId
			GROUP BY [kpiID]
		END
		ELSE IF @varStrategyId = 'AVG'
		BEGIN
			SELECT @decTarget = AVG([target]) 
			FROM [dbo].[tbl_KPITarget] 
			WHERE [kpiID] = @intKpiId
			GROUP BY [kpiID]
		END
	  
	 END
	 ELSE
	 BEGIN
	 
		IF(@varStrategyId = 'SUM')
		BEGIN
			SELECT @decTarget = SUM([target]) 
			FROM [dbo].[tbl_KPITarget]
			WHERE [kpiID] = @intKpiId
				AND [kpiID] IN (SELECT [kpiID] FROM [dbo].[tbl_KPITargetCategories] WHERE [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId)
			GROUP BY [kpiID]
		END
		ELSE IF @varStrategyId = 'AVG'
		BEGIN
			SELECT @decTarget = AVG([target]) 
			FROM [dbo].[tbl_KPITarget]
			WHERE [kpiID] = @intKpiId
				AND [kpiID] IN (SELECT [kpiID] FROM [dbo].[tbl_KPITargetCategories] WHERE [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId)
			GROUP BY [kpiID]
		END
	 END
	 
	IF @decTarget IS NULL
		SET @bitHasTarget = 0
	ELSE
		SET @bitHasTarget = 1 
		
	DECLARE @tabResult TABLE(
		[id] INT IDENTITY(1,1),
		[period] VARCHAR(50),
		[measurement] DECIMAL(21,3)
	) 
	
	SELECT @decProgress = [dbo].[svf_GetKpiProgess](@intKpiId, @varCategoryId, @varCategoryItemId)
	
	INSERT INTO @tabResult ([period], [measurement])
	EXEC [dbo].[usp_KPI_GetKpiMeasurementsForChart] 
		@intKpiId, 
		@varCategoryId, 
		@varCategoryItemId, 
		@intFirstDayOfWeek,
		0,
		0,
		'',
		''
		
	SELECT TOP 1 @decCurrentValue = [measurement]
		FROM @tabResult
		ORDER BY [id] DESC
 
    
END




GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPIsByActivity]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 19/05/2016
-- Description:	Get KPIs by activity
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPIsByActivity]
	 @intActivityId INT,
	 @varUserName AS VARCHAR(50),
	 @intFirstDayOfWeek	INT
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SET DATEFIRST @intFirstDayOfWeek
	
    CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
	
    SELECT DISTINCT [k].[kpiID]
		  ,[k].[name]
		  ,[k].[organizationID]
		  ,[k].[areaID]
		  ,[k].[projectID]
		  ,[k].[activityID]
		  ,[k].[personID]
		  ,[k].[unitID]
		  ,[k].[directionID]
		  ,[k].[strategyID]
		  ,[k].[startDate]
		  ,[k].[reportingUnitID]
		  ,[k].[targetPeriod]
		  ,[k].[allowsCategories]
		  ,[k].[currency]
		  ,[k].[currencyUnitID]
		  ,[k].[kpiTypeID]
		  ,[o].[name] [organizationName]
		  ,[a].[name] [areaName]
		  ,[p].[name] [projectName]
		  ,[ac].[name] [activityName]
		  ,[pe].name [personName]
		  ,[dbo].[svf_GetKpiProgess]([k].[kpiID],'','') [progress]
		  ,[dbo].[svf_GetKpiTrend]([k].[kpiID], '', '') [trend]
	FROM [dbo].[tbl_KPI] [k] 
	INNER JOIN #tbl_KPI [kpi] ON [k].[kpiID] = [kpi].[kpiId] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	LEFT OUTER JOIN [dbo].[tbl_Area] [a] ON [k].[areaID] = [a].[areaID] 
	LEFT OUTER JOIN [dbo].[tbl_Project] [p] ON [k].[projectID] = [p].[projectID] 
	LEFT OUTER JOIN [dbo].[tbl_Activity] [ac] ON [k].[activityID] = [ac].[activityID] 
	LEFT OUTER JOIN [dbo].[tbl_People] [pe] ON [k].[personID] = [pe].[personID] 
	WHERE [k].[activityID] = @intActivityId
	AND [o].[deleted] = 0
	and case when k.projectID Is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
	and case when k.personID Is not null then
			 case when pe.deleted = 0 then 1 else 0 end
			 else 1
		end = 1
	and case when k.activityID Is not null then
			 case when ac.deleted = 0 then 1 else 0 end
			 else 1
		end = 1
	
	DROP TABLE #tbl_KPI
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPIsByOrganization]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 02/04/2016
-- Description:	Get KPIs by organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPIsByOrganization]
	 @intOrganizationId INT,
	 @varUserName AS VARCHAR(50),
	 @intFirstDayOfWeek	INT
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SET DATEFIRST @intFirstDayOfWeek
	
	CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
	
    SELECT DISTINCT [k].[kpiID]
		  ,[k].[name]
		  ,[k].[organizationID]
		  ,[k].[areaID]
		  ,[k].[projectID]
		  ,[k].[activityID]
		  ,[k].[personID]
		  ,[k].[unitID]
		  ,[k].[directionID]
		  ,[k].[strategyID]
		  ,[k].[startDate]
		  ,[k].[reportingUnitID]
		  ,[k].[targetPeriod]
		  ,[k].[allowsCategories]
		  ,[k].[currency]
		  ,[k].[currencyUnitID]
		  ,[k].[kpiTypeID]
		  ,[o].[name] [organizationName]
		  ,[a].[name] [areaName]
		  ,[p].[name] [projectName]
		  ,[ac].[name] [activityName]
		  ,[pe].name [personName]
		  ,[dbo].[svf_GetKpiProgess]([k].[kpiID], '', '') [progress]
		  ,[dbo].[svf_GetKpiTrend]([k].[kpiID], '', '') [trend]
	FROM [dbo].[tbl_KPI] [k] 
	INNER JOIN #tbl_KPI [kpi] ON [k].[kpiID] = [kpi].[kpiId] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	LEFT OUTER JOIN [dbo].[tbl_Area] [a] ON [k].[areaID] = [a].[areaID] 
	LEFT OUTER JOIN [dbo].[tbl_Project] [p] ON [k].[projectID] = [p].[projectID] 
	LEFT OUTER JOIN [dbo].[tbl_Activity] [ac] ON [k].[activityID] = [ac].[activityID] 
	LEFT OUTER JOIN [dbo].[tbl_People] [pe] ON [k].[personID] = [pe].[personID] 
	WHERE [k].[organizationID] = @intOrganizationId
	  AND [o].[deleted] = 0
	  AND CASE WHEN [k].[projectID] IS NOT NULL THEN
				CASE WHEN [p].[deleted] = 0 THEN 1 ELSE 0 END
			   ELSE 1
		  END = 1
	  AND CASE WHEN [k].[activityID] IS NOT NULL THEN
				CASE WHEN [ac].[deleted] = 0 THEN 1 ELSE 0 END
			   ELSE 1
		  END = 1
      AND CASE WHEN [k].[personID] IS NOT NULL THEN
				CASE WHEN [pe].[deleted] = 0 THEN 1 ELSE 0 END
			   ELSE 1
		  END = 1
    
    DROP TABLE #tbl_KPI
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPIsByPerson]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 19/05/2016
-- Description:	Get KPIs by person
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPIsByPerson]
	 @intPersonId INT,
	 @varUserName AS VARCHAR(50),
	 @intFirstDayOfWeek	INT
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SET DATEFIRST @intFirstDayOfWeek
	
	CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
	
    SELECT DISTINCT [k].[kpiID]
		  ,[k].[name]
		  ,[k].[organizationID]
		  ,[k].[areaID]
		  ,[k].[projectID]
		  ,[k].[activityID]
		  ,[k].[personID]
		  ,[k].[unitID]
		  ,[k].[directionID]
		  ,[k].[strategyID]
		  ,[k].[startDate]
		  ,[k].[reportingUnitID]
		  ,[k].[targetPeriod]
		  ,[k].[allowsCategories]
		  ,[k].[currency]
		  ,[k].[currencyUnitID]
		  ,[k].[kpiTypeID]
		  ,[o].[name] [organizationName]
		  ,[a].[name] [areaName]
		  ,[p].[name] [projectName]
		  ,[ac].[name] [activityName]
		  ,[pe].name [personName]
		  ,[dbo].[svf_GetKpiProgess]([k].[kpiID], '', '') [progress]
		  ,[dbo].[svf_GetKpiTrend]([k].[kpiID], '', '') [trend]
	FROM [dbo].[tbl_KPI] [k] 
	INNER JOIN #tbl_KPI [kpi] ON [k].[kpiID] = [kpi].[kpiId] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	LEFT OUTER JOIN [dbo].[tbl_Area] [a] ON [k].[areaID] = [a].[areaID] 
	LEFT OUTER JOIN [dbo].[tbl_Project] [p] ON [k].[projectID] = [p].[projectID]
	LEFT OUTER JOIN [dbo].[tbl_Activity] [ac] ON [k].[activityID] = [ac].[activityID] 
	LEFT OUTER JOIN [dbo].[tbl_People] [pe] ON [k].[personID] = [pe].[personID]
	WHERE [k].[personID] = @intPersonId   
	AND [o].[deleted] = 0
	and case when k.projectID Is not null then
				 case when p.deleted = 0 then 1 else 0 end
				 else 1
			end = 1
	and case when k.personID Is not null then
			 case when pe.deleted = 0 then 1 else 0 end
			 else 1
		end = 1
	and case when k.activityID Is not null then
			 case when ac.deleted = 0 then 1 else 0 end
			 else 1
		end = 1
	
    DROP TABLE #tbl_KPI
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPIsByProject]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 19/05/2016
-- Description:	Get KPIs by project
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPIsByProject]
	@intProjectId INT,
	@varUserName AS VARCHAR(50),
	@intFirstDayOfWeek	INT
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SET DATEFIRST @intFirstDayOfWeek
	
	CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
	
    SELECT DISTINCT [k].[kpiID]
		  ,[k].[name]
		  ,[k].[organizationID]
		  ,[k].[areaID]
		  ,[k].[projectID]
		  ,[k].[activityID]
		  ,[k].[personID]
		  ,[k].[unitID]
		  ,[k].[directionID]
		  ,[k].[strategyID]
		  ,[k].[startDate]
		  ,[k].[reportingUnitID]
		  ,[k].[targetPeriod]
		  ,[k].[allowsCategories]
		  ,[k].[currency]
		  ,[k].[currencyUnitID]
		  ,[k].[kpiTypeID]
		  ,[o].[name] [organizationName]
		  ,[a].[name] [areaName]
		  ,[p].[name] [projectName]
		  ,[ac].[name] [activityName]
		  ,[pe].name [personName]
		  ,[dbo].[svf_GetKpiProgess]([k].[kpiID], '', '') [progress]
		  ,[dbo].[svf_GetKpiTrend]([k].[kpiID], '', '') [trend]
	FROM [dbo].[tbl_KPI] [k] 
	INNER JOIN #tbl_KPI [kpi] ON [k].[kpiID] = [kpi].[kpiId] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID] 
	LEFT OUTER JOIN [dbo].[tbl_Area] [a] ON [k].[areaID] = [a].[areaID] 
	LEFT OUTER JOIN [dbo].[tbl_Project] [p] ON [k].[projectID] = [p].[projectID] 
	LEFT OUTER JOIN [dbo].[tbl_Activity] [ac] ON [k].[activityID] = [ac].[activityID] 
	LEFT OUTER JOIN [dbo].[tbl_People] [pe] ON [k].[personID] = [pe].[personID]
	WHERE [k].[projectID] = @intProjectId
	AND [o].[deleted] = 0
	AND CASE WHEN [k].[projectID] IS NOT NULL THEN 
	         CASE WHEN [p].[deleted] = 0 THEN 1 ELSE 0 END
	         ELSE 1
	    END = 1
	AND CASE WHEN [k].[activityID] IS NOT NULL THEN 
	         CASE WHEN [ac].[deleted] = 0 THEN 1 ELSE 0 END
	         ELSE 1
	    END = 1
	AND CASE WHEN [k].[personID] IS NOT NULL THEN 
	         CASE WHEN [pe].[deleted] = 0 THEN 1 ELSE 0 END
	         ELSE 1
	    END = 1
    
    DROP TABLE #tbl_KPI
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPIsBySearch]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

---- =============================================
-- Author:		Ivan Krsul
-- Create date: May 5 2016
-- Description:	List all KPIs in the system by Search
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPIsBySearch]
	@varUserName VARCHAR(50),
	@varWhereClause VARCHAR(MAX),
	@intFirstDayOfWeek	INT
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SET DATEFIRST @intFirstDayOfWeek
	
	CREATE TABLE #tblKPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100),
		 isOwner INT DEFAULT(1))

	INSERT INTO #tblKPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
	
	UPDATE #tblKPI
	SET isOwner = 0
	WHERE sourceObjectType IN ('KPI-PUB VIEW (11)','KPI-VIEW (12)')
	
	DECLARE @varSQL VARCHAR(MAX)

	SET @varSQL = 'SELECT [k].[kpiID]
				  ,[k].[name]
				  ,[k].[organizationID]
				  ,[o].[name] organizationName
				  ,[k].[areaID]
				  ,[a].[name] areaName
				  ,[k].[projectID]
				  ,[p].[name] projectName
				  ,[activityID]
				  ,[personID]
				  ,[unitID]
				  ,[directionID]
				  ,[strategyID]
				  ,[startDate]
				  ,[reportingUnitID]
				  ,[targetPeriod]
				  ,[allowsCategories]
				  ,[currency]
				  ,[currencyUnitID]
				  ,[kpiTypeID]
				  ,[dbo].[svf_GetKpiProgess]([k].[kpiID], '''', '''') [progress]
				  ,[dbo].[svf_GetKpiTrend]([k].[kpiID], '''', '''') [trend]
				  ,CASE WHEN ISNULL([tk].[isOwner],0) > 0 THEN 1 ELSE 0 END isOwner
			  FROM [dbo].[tbl_KPI] [k]
			  INNER JOIN [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID]
			  LEFT JOIN [dbo].[tbl_Area] [a] ON [k].[areaID] = [a].[areaID]
			  LEFT JOIN [dbo].[tbl_Project] [p] ON [k].[projectID] = [p].[projectID]
			  INNER JOIN (
						  SELECT kpiId, SUM(isOwner) as isOwner
						  FROM #tblKPI
						  GROUP BY kpiId) [tk] ON [k].[KPIId] = [tk].[KPIId]
			  WHERE ' + @varWhereClause
			  
	 EXEC (@varSQL)
	 
	 DROP TABLE #tblKPI
	 
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKpisFromDashboard]    Script Date: 3/23/2021 5:58:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutiérrez
-- Create date: 2016/05/13
-- Description:	Insert a KPI to Dashboard
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKpisFromDashboard]
	@intDashboardId	INT,
	@intUserId		INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	IF @intDashboardId = 0 
	BEGIN
		SELECT [kpiDashboardId]
			  ,[dashboardId]
			  ,d.[kpiId]
			  ,[ownerUserId]
			  ,k.[name]
		FROM [dbo].[tbl_KPIDashboard] d
		INNER JOIN [dbo].[tbl_KPI] k ON k.[kpiID] = d.[kpiId]
		WHERE [dashboardId] IS NULL
			AND [ownerUserId] = @intUserId
			AND [deleted] = 0
	END 
	ELSE
	BEGIN
		SELECT [kpiDashboardId]
			  ,[dashboardId]
			  ,d.[kpiId]
			  ,[ownerUserId]
			  ,k.[name]
		FROM [dbo].[tbl_KPIDashboard] d
		INNER JOIN [dbo].[tbl_KPI] k ON k.[kpiID] = d.[kpiId]
		WHERE [dashboardId] = @intDashboardId 
			AND [ownerUserId] = @intUserId
			AND [deleted] = 0
	END
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKpiStats]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



-- =============================================
-- Author:		José Carlos Gutiérrez
-- Create date: 2016/Jun/16
-- Description:	Gets stats of a KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKpiStats]
	@intKpiId			INT,
	@varCategoryId		VARCHAR(20),
	@varCategoryItemId	VARCHAR(20),
	@intFirstDayOfWeek	INT,
	@decCurrentValue DECIMAL(21,3) OUTPUT,
	@decLowestValue  DECIMAL(21,3) OUTPUT,
	@decMaxValue	 DECIMAL(21,3) OUTPUT,
	@decAvgValue	 DECIMAL(21,3) OUTPUT,
	@decProgress	 DECIMAL(5,2) OUTPUT,
	@decTrend	     DECIMAL(9,2) OUTPUT
	
AS
BEGIN
	
	SET NOCOUNT ON;
	
	DECLARE @tabResult TABLE(
		[id] INT IDENTITY(1,1),
		[period] VARCHAR(50),
		[measurement] DECIMAL(21,3)
	) 
	
	SELECT @decTrend = [dbo].[svf_GetKpiTrend](@intKpiId, @varCategoryId, @varCategoryItemId)
	
	INSERT INTO @tabResult ([period], [measurement])
	EXEC [dbo].[usp_KPI_GetKpiMeasurementsForChart] 
		@intKpiId, 
		@varCategoryId, 
		@varCategoryItemId, 
		@intFirstDayOfWeek,
		0,
		0,
		'',
		''	
	
	EXEC [dbo].[usp_KPI_GetKpiProgress] 
		@intKpiId, 
		@varCategoryId, 
		@varCategoryItemId, 
		@intFirstDayOfWeek,
		0, 
		@decCurrentValue OUTPUT, 
		@decProgress OUTPUT
		
	--DECLARE @varStrategyId CHAR(3)
	DECLARE @varReportingUnitId CHAR(5)	

	SELECT --@varStrategyId = [strategyID],
		@varReportingUnitId = [reportingUnitId]
	FROM [dbo].[tbl_KPI] 
	WHERE [kpiID] = @intKpiId
		
	DECLARE @days INT 
	SELECT @days = p.[days]
	FROM [dbo].[tbl_KpiReportingPeriod] p
	WHERE p.[reportingUnitId] = @varReportingUnitId
	
	DECLARE @dateFrom DATE = DATEADD(DAY, -@days, GETDATE())
		
	
	--IF 	@varCategoryId = '' OR @varCategoryId IS NULL
	--BEGIN
	
		--SELECT @decMaxValue = MAX([measurement]),
		--	@decLowestValue = MIN([measurement]),
		--	@decAvgValue = AVG([measurement])
		--FROM [dbo].[tbl_KPIMeasurements]
		--WHERE [kpiID] = @intKpiId
		--	AND [date] BETWEEN @dateFrom AND GETDATE()		
	
		SELECT @decMaxValue = MAX([measurement]),
			@decLowestValue = MIN([measurement]),
			@decAvgValue = AVG([measurement])
		FROM @tabResult
		
		
	
	--END
	--ELSE
	--BEGIN
	
		--SELECT @decMaxValue = MAX([measurement]),
		--	@decLowestValue = MIN([measurement]),
		--	@decAvgValue = AVG([measurement])
		--FROM [dbo].[tbl_KPIMeasurements]
		--WHERE [kpiID] = @intKpiId
		--	AND [date] BETWEEN @dateFrom AND GETDATE()
		--	AND [measurmentID] IN (SELECT [measurmentID] FROM [dbo].[tbl_KPIMeasurementCategories] WHERE [categoryID] = @varCategoryId AND [categoryItemID] = @varCategoryItemId)
	
	--END


END




GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPITargetById]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 20/05/2016
-- Description:	Get KPI Target by KPIid
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPITargetById]
	 @intKPIId INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [targetID]
          ,[kpiID]
		  ,[target]
	FROM [dbo].[tbl_KPITarget] 
	WHERE [kpiID] = @intKPIId
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPITargetCategoriesByKpiId]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 30/05/2016
-- Description:	Obtener las categorias con target de un KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPITargetCategoriesByKpiId]
	@kpiID INT
AS
BEGIN
	
	SET NOCOUNT ON;

    DECLARE @tblData AS TABLE
	(targetID INT,
	 detalle VARCHAR(1000),
	 categories VARCHAR(1000),
	 [target] DECIMAL(21,9))

	DECLARE @targetID INT
	DECLARE @detalle VARCHAR(1000)
	DECLARE @categories VARCHAR(1000)
	DECLARE @valor DECIMAL(21,9)

	DECLARE target_cursor CURSOR FOR 
		SELECT DISTINCT [t].[targetID], [t].[target]
		FROM [dbo].[tbl_KPITarget] [t]
		INNER JOIN [dbo].[tbl_KPITargetCategories] [c] ON [t].[targetID] = [c].[targetID]
		WHERE [kpiID] = @kpiID
	OPEN target_cursor

	FETCH NEXT FROM target_cursor
	INTO @targetID, @valor

	WHILE @@FETCH_STATUS = 0
	BEGIN
		
		SELECT @detalle = COALESCE(COALESCE(CASE WHEN @detalle = '' THEN '' ELSE @detalle + ', ' END, '') + [i].[categoryItemID], @detalle),
		       @categories = COALESCE(COALESCE(CASE WHEN @categories = '' THEN '' ELSE @categories + ', ' END, '') + [i].[categoryID], @categories)
		FROM [dbo].[tbl_KPITargetCategories] [c]
		INNER JOIN [dbo].[tbl_CategoryItem] [i] ON [c].[categoryItemID] = [i].[categoryItemID] 
		AND [c].[categoryID] = [i].[categoryID] 
		WHERE [targetID] = @targetID 
		ORDER BY [i].[categoryItemID]

		INSERT @tblData VALUES (@targetID, @detalle, @categories, @valor)
		
		SET @detalle = ''
		
		FETCH NEXT FROM target_cursor
		INTO @targetID, @valor
	END

	CLOSE target_cursor;
	DEALLOCATE target_cursor;

	SELECT [targetID]
		  ,@kpiID [kpiID]
		  ,[target]
		  ,[detalle]
		  ,[categories]
	FROM @tblData
	
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPITargetTimeByTargetId]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 24/05/2016
-- Description:	Get KPI Target Time By TargetId
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPITargetTimeByTargetId]
	@targetID INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @valor AS DECIMAL(21,9)

	SELECT @valor = [target]
	FROM [dbo].[tbl_KPITarget]
	WHERE [targetID] = @targetID
	
	DECLARE @year INT
	DECLARE @month INT
	DECLARE @day INT
	DECLARE @hour INT
	DECLARE @minute INT

	DECLARE @fechaBase AS DATETIME
	DECLARE @fechaObtenida DATETIME
	
	SET @fechaBase = '1900-01-01'	
	SET @fechaObtenida = CAST(@valor AS DATETIME)
	--REDONDEO AL SEGUNDO
	SET @fechaObtenida = dateadd(second, round(datepart(second,@fechaObtenida)*2,-1) / 2-datepart(second,@fechaObtenida), @fechaObtenida)

	SET @year = DATEDIFF(YY,@fechaBase,@fechaObtenida)
	SET @fechaObtenida = DATEADD(YY,-@year,@fechaObtenida)

	SET @month = DATEDIFF(MM,@fechaBase,@fechaObtenida) 
	SET @fechaObtenida = DATEADD(MM,-@month,@fechaObtenida)

	SET @day = DATEDIFF(DD,@fechaBase,@fechaObtenida) 
	SET @fechaObtenida = DATEADD(DD,-@day,@fechaObtenida)

	SET @hour = DATEDIFF(HH,@fechaBase,@fechaObtenida) 
	SET @fechaObtenida = DATEADD(HH,-@hour,@fechaObtenida)

	SET @minute = DATEDIFF(MINUTE,@fechaBase,@fechaObtenida) 

	SELECT 0 as kpiID,
	       @targetID as targetID,
	       @year as [year],
	       @month as [month],
	       @day as [day],
	       @hour as [hour],
	       @minute as [minute]

END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPITargetTimeFromKpi]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 24/05/2016
-- Description:	Get KPI Target Time From KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPITargetTimeFromKpi]
	@kpiID INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @valor AS DECIMAL(21,9)
	DECLARE @targetID AS INT

	SELECT @targetID = [targetID],
	       @valor = [target]
	FROM [dbo].[tbl_KPITarget]
	WHERE [kpiID] = @kpiID
	
	DECLARE @year INT = 0
	DECLARE @month INT = 0
	DECLARE @day INT = 0
	DECLARE @hour INT = 0
	DECLARE @minute INT = 0

	DECLARE @fechaBase AS DATETIME
	DECLARE @fechaObtenida DATETIME
	
	IF (ISNULL(@valor,0) > 0)
	BEGIN
		
		SET @fechaBase = '1900-01-01'	
		SET @fechaObtenida = CAST(@valor AS DATETIME)
		--REDONDEO AL SEGUNDO
		SET @fechaObtenida = dateadd(second, round(datepart(second,@fechaObtenida)*2,-1) / 2-datepart(second,@fechaObtenida), @fechaObtenida)

		SET @year = DATEDIFF(YY,@fechaBase,@fechaObtenida)
		SET @fechaObtenida = DATEADD(YY,-@year,@fechaObtenida)

		SET @month = DATEDIFF(MM,@fechaBase,@fechaObtenida) 
		SET @fechaObtenida = DATEADD(MM,-@month,@fechaObtenida)

		SET @day = DATEDIFF(DD,@fechaBase,@fechaObtenida) 
		SET @fechaObtenida = DATEADD(DD,-@day,@fechaObtenida)

		SET @hour = DATEDIFF(HH,@fechaBase,@fechaObtenida) 
		SET @fechaObtenida = DATEADD(HH,-@hour,@fechaObtenida)

		SET @minute = DATEDIFF(MINUTE,@fechaBase,@fechaObtenida) 

	END
	
	SELECT @kpiID as kpiID,
	       ISNULL(@targetID,0) as targetID,
	       @year as [year],
	       @month as [month],
	       @day as [day],
	       @hour as [hour],
	       @minute as [minute]

END
GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetNumberFromTime]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 24/05/2016
-- Description:	Convert time data to float to save en DB
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetNumberFromTime]
	@year INT,
	@month INT,
	@day INT,
	@hour INT,
	@minute INT,
	@valor DECIMAL(21,3) OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @fechaBase AS DATETIME
	DECLARE @fechaCalculada AS DATETIME
	
	SET @fechaBase = '1900-01-01'
	SET @fechaCalculada = DATEADD(MINUTE,@minute,DATEADD(HH,@hour,DATEADD(DD,@day,DATEADD(MM,@month,DATEADD(YY,@year, @fechaBase)))))
	SET @valor = CAST(@fechaCalculada AS DECIMAL(21,3))

END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetUserDashboardByKpiId]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutiérrez
-- Create date: 2016/05/13
-- Description:	Get dashboards that KPI is into it
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetUserDashboardByKpiId]
	@intKPI		INT,
	@intUserId	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT 0 AS [dashboardId]
      ,'Main Dashboard' AS [name]
      ,@intUserId [ownerUserId]
	FROM [dbo].[tbl_KpiDashboard] 
			WHERE [dashboardId] IS NULL AND [ownerUserId] = @intUserId
				AND [kpiId] = @intKPI
	UNION
	SELECT [dashboardId]
      ,[name]
      ,[ownerUserId]
	FROM [dbo].[tbl_UserDashboard]
	WHERE [dashboardId] IN (
			SELECT [dashboardId] 
			FROM [dbo].[tbl_KpiDashboard] 
			WHERE [kpiId] = @intKPI AND [ownerUserId] = @intUserId
			)


    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetUserDashboards]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016/05/13
-- Description:	Deletes a dashboard for user
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetUserDashboards]
	@intOwnerUserId	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [dashboardId]
		  ,[name]
		  ,[ownerUserId]
	FROM [dbo].[tbl_UserDashboard]
	WHERE [ownerUserId] = @intOwnerUserId

    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetUserDashboardWhenKpiIdIsNotIn]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutiérrez
-- Create date: 2016/05/13
-- Description:	Get dashboards that KPI is not in it
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetUserDashboardWhenKpiIdIsNotIn]
	@intKPI		INT,
	@intUserId	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	--SELECT 0 AS [dashboardId]
 --     ,'Main Dashboard' AS [name]
 --     ,@intUserId [ownerUserId]
	--FROM [dbo].[tbl_KpiDashboard] 
	--WHERE 0 NOT IN (
	--	SELECT 0 AS [dashboardId]
	--	FROM [dbo].[tbl_KpiDashboard] 
	--	WHERE [dashboardId] IS NULL AND [ownerUserId] = @intUserId
	--	)
	--UNION
	SELECT [dashboardId]
      ,[name]
      ,[ownerUserId]
	FROM [dbo].[tbl_UserDashboard]
	WHERE [dashboardId] NOT IN (		
		SELECT ud.[dashboardId]
		FROM [dbo].[tbl_UserDashboard] ud 
			JOIN [dbo].[tbl_KpiDashboard] kd ON kd.[dashboardId] = ud.[dashboardId]
		WHERE kd.[kpiId] = @intKPI AND kd.[ownerUserId] = @intUserId
	)

    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_InsertKPI]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Create a new KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_InsertKPI]
	@userName varchar(50),
	@organizationID int,
	@areaID int,
	@projectID int,
	@activityID int,
	@personID int,
	@kpiName nvarchar(250),
	@unit varchar(10),
	@direction char(3),
	@strategy char(3),
	@startDate date,
	@reportingUnit char(15),
	@targetPeriod int,
	@allowsCategories bit,
	@currency char(3),
	@currencyUnit char(3),
	@kpiTypeID varchar(10),
	@kpiID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- ===============================================================================================
	-- ===============================================================================================
	-- This is very important! This stored procedure does not implement a transaction, even though
	-- it does multiple things.  We do this because it is assumed that the ASP.NET program that is 
	-- calling this procedure is handling the transaction, since this procedure must be called in 
	-- conjunction with others that crete the categories and targets.  
	-- Hence, YOU MUST create an ASP.NET tranaction to call this function!
	-- ===============================================================================================
	-- ===============================================================================================

	if(@kpiTypeID is null or @kpiTypeID = '')
			RAISERROR ('KPITypeID is null or empty', -- Message text.
			16, -- Severity.
			1 -- State.
			); 

	if(@kpiTypeID <> 'GENDEC' AND
	   @kpiTypeID <> 'GENINT' AND 
	   @kpiTypeID <> 'GENMON' AND 
	   @kpiTypeID <> 'GENPER' AND
	   @kpiTypeID <> 'GENTIME') 
	begin
		-- The KPI is a not generic, so we must fetch from the KPI type table
		-- the values for direction, strategy and unit
			
		select @direction = [directionID],
			@strategy = [strategyID],
			@unit = [unitID]
		from [dbo].[tbl_KPITypes]
		where [kpiTypeID] = @kpiTypeID
	end

	IF(@areaID = 0)
		SELECT @areaID = null
	IF(@projecTID = 0)
		SELECT @projectID = null
	IF(@activityID = 0)
		SELECT @activityID = null
	IF(@personID = 0)
		SELECT @personID = null

	INSERT INTO [dbo].[tbl_KPI]
		([name]
		,[organizationID]
		,[areaID]
		,[projectID]
		,[activityID]
		,[personID]
		,[unitID]
		,[directionID]
		,[strategyID]
		,[startDate]
		,[reportingUnitID]
		,[targetPeriod]
		,[allowsCategories]
		,[currency]
		,[currencyUnitID]
		,[kpiTypeID])
	VALUES
		(@kpiName
		,@organizationID
		,@areaID
		,@projectID
		,@activityID
		,@personID
		,@unit
		,@direction
		,@strategy
		,@startDate
		,@reportingUnit
		,@targetPeriod
		,@allowsCategories
		,@currency
		,@currencyUnit
		,@kpiTypeID)

	SELECT @kpiID = SCOPE_IDENTITY()

	-- Ensure that the owner can manage this object
	INSERT INTO [dbo].[tbl_SEG_ObjectPermissions]
		([objectTypeID]
		,[objectID]
		,[username]
		,[objectActionID])
	VALUES
		('KPI'
		,@kpiID
		,@userName
		,'OWN')
END
GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_InsertKpiMeasurement]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 31/05/2016
-- Description:	Insert Measurement for a KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_InsertKpiMeasurement] 
	@intMeasurementId INT OUTPUT,
	@intKpiId INT,
	@dtDate DATE,
	@dcMeasurement DECIMAL(21,3)
AS
BEGIN
	
	SET NOCOUNT ON;

    INSERT INTO [dbo].[tbl_KPIMeasurements]
           ([kpiID]
           ,[date]
           ,[measurement])
     VALUES
           (@intKpiId
           ,@dtDate
           ,@dcMeasurement)
    
    SELECT @intMeasurementId = SCOPE_IDENTITY()
    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_InsertKpiMeasurementCategories]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- ================================================
-- Author:		Marcela Martinez
-- Create date: 31/05/2016
-- Description:	Insert Categories for a Measurement
-- ================================================
CREATE PROCEDURE [dbo].[usp_KPI_InsertKpiMeasurementCategories]  
	@intMeasurementId INT,
	@varCategoryItemId VARCHAR(20),
	@varCategoryId VARCHAR(20)
AS
BEGIN
	
	SET NOCOUNT ON;

    INSERT INTO [dbo].[tbl_KPIMeasurementCategories]
           ([measurementID]
           ,[categoryItemID]
           ,[categoryID])
	VALUES
           (@intMeasurementId
           ,@varCategoryItemId
           ,@varCategoryId)
    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_InsertKpiToDashboard]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutiérrez
-- Create date: 2016/05/13
-- Description:	Insert a KPI to Dashboard
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_InsertKpiToDashboard]
	@intDashboardId	INT,
	@intKpiId		INT,
	@intOwnerUserId	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	IF @intDashboardId = 0
		SET @intDashboardId = NULL

	INSERT INTO [dbo].[tbl_KPIDashboard]
			   ([dashboardId]
			   ,[kpiId]
			   ,[ownerUserId])
		 VALUES
			   (@intDashboardId
			   ,@intKpiId
			   ,@intOwnerUserId)

    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_InsertMeasurement]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 26 2016
-- Description:	Insert Measurement for a KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_InsertMeasurement]
	@kpiID int,
	@date date,
	@measurement decimal(21,3),
	@categoryID varchar(20),
	@categoryItemID varchar(20),
	@measurementID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- ===============================================================================================
	-- ===============================================================================================
	-- This is very important! This stored procedure does not implement a transaction, even though
	-- it does multiple things.  We do this because it is assumed that the ASP.NET program that is 
	-- calling this procedure is handling the transaction, since this procedure is likely to be called
	-- many times during the insert process of KPI data.
	-- ===============================================================================================
	-- ===============================================================================================

	INSERT INTO [dbo].[tbl_KPIMeasurements]
           ([kpiID]
           ,[date]
           ,[measurement])
     VALUES
           (@kpiID
           ,@date
           ,@measurement)
	
	SELECT @measurementID = SCOPE_IDENTITY()

	if(@categoryID is not null and @categoryID <> '' 
		and @categoryItemID is not null and @categoryItemID <> '') 
	begin
		INSERT INTO [dbo].[tbl_KPIMeasurementCategories]
           ([measurementID]
           ,[categoryItemID]
           ,[categoryID])
		VALUES
           (@measurementID
           ,@categoryItemID
           ,@categoryID)
	end
END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_InsertUserDashboard]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016/05/13
-- Description:	Inserts a dashboard for user
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_InsertUserDashboard]
	@varName		NVARCHAR(250),
	@intOwnerUser	INT,
	@intDashboardId	INT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[tbl_UserDashboard]
		   ([name]
		   ,[ownerUserId])
	VALUES
		   (@varName
		   ,@intOwnerUser)
	       
	SET @intDashboardId = SCOPE_IDENTITY()

    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_UpdateKPI]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: May 23, 2016
-- Description:	Update a new KPI
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_UpdateKPI]
	@kpiId int,
	@organizationID int,
	@areaID int,
	@projectID int,
	@activityID int,
	@personID int,
	@kpiName nvarchar(250),
	@unit varchar(10),
	@direction char(3),
	@strategy char(3),
	@startDate date,
	@reportingUnit char(15),
	@targetPeriod int,
	@allowsCategories bit,
	@currency char(3),
	@currencyUnit char(3),
	@kpiTypeID varchar(10)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- ===============================================================================================
	-- ===============================================================================================
	-- This is very important! This stored procedure does not implement a transaction, even though
	-- it does multiple things.  We do this because it is assumed that the ASP.NET program that is 
	-- calling this procedure is handling the transaction, since this procedure must be called in 
	-- conjunction with others that crete the categories and targets.  
	-- Hence, YOU MUST create an ASP.NET tranaction to call this function!
	-- ===============================================================================================
	-- ===============================================================================================

	if(@kpiTypeID is null or @kpiTypeID = '')
			RAISERROR ('KPITypeID is null or empty', -- Message text.
			16, -- Severity.
			1 -- State.
			); 

	IF(@areaID = 0)
		SELECT @areaID = null
	IF(@projecTID = 0)
		SELECT @projectID = null
	IF(@activityID = 0)
		SELECT @activityID = null
	IF(@personID = 0)
		SELECT @personID = null
	IF (@targetPeriod = 0)
		SELECT @targetPeriod = NULL
	IF (@currency = '')
		SELECT @currency = NULL
	IF (@currencyUnit='')
		SELECT @currencyUnit = NULL

	UPDATE [dbo].[tbl_KPI]
	SET [name] = @kpiName
		  ,[organizationID] = @organizationID
		  ,[areaID] = @areaID
		  ,[projectID] = @projectID
		  ,[activityID] = @activityID
		  ,[personID] = @personID
		  ,[unitID] = @unit
		  ,[directionID] = @direction
		  ,[strategyID] = @strategy
		  ,[startDate] = @startDate
		  ,[reportingUnitID] = @reportingUnit
		  ,[targetPeriod] = @targetPeriod
		  ,[allowsCategories] = @allowsCategories
		  ,[currency] = @currency
		  ,[currencyUnitID] = @currencyUnit
		  ,[kpiTypeID] = @kpiTypeID
	WHERE [kpiID] = @kpiId

END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_UpdateKPITargetCategory]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 01/06/2016
-- Description:	Update KPI Target Category
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_UpdateKPITargetCategory]
	@kpiId INT,
	@targetID INT,
	@items VARCHAR(1000),
	@categories VARCHAR(1000),
	@target DECIMAL(21,9)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF (@categories IS NULL)
		SET @categories = ''

    CREATE TABLE #tbl_Items 
	(itemId INT IDENTITY,
	 itemText VARCHAR(20))
	 
	CREATE TABLE #tbl_CategoryItems 
	(categoryId INT IDENTITY,
	 categoryText VARCHAR(20))
	 
	IF (@targetID > 0)
	BEGIN 
		UPDATE [dbo].[tbl_KPITarget]
		SET [target] = @target
		WHERE [targetID] = @targetID
		AND   [kpiID] = @kpiId
	END
	ELSE
	BEGIN
		DECLARE @newTargetID INT
		
		INSERT INTO [dbo].[tbl_KPITarget]
			   ([kpiID]
			   ,[target])
		 VALUES
			   (@kpiId
			   ,@target)
	           
		SET @newTargetID = @@IDENTITY

		INSERT #tbl_Items
		SELECT splitvalue
		FROM dbo.tvf_SplitStringInVarCharTable(@items,',')
		
		INSERT #tbl_CategoryItems
		SELECT splitvalue
		FROM dbo.tvf_SplitStringInVarCharTable(@categories,',')
		
		INSERT INTO [dbo].[tbl_KPITargetCategories]
		   ([targetID],[categoryItemID],[categoryID])
		SELECT @newTargetID, itemText, categoryText
		FROM #tbl_Items a, #tbl_CategoryItems b
		WHERE a.itemId = b.categoryId

	END	

	INSERT INTO [dbo].[tbl_KPICategories]
	SELECT DISTINCT @kpiId, categoryText
	FROM #tbl_CategoryItems
	WHERE categoryText NOT IN (SELECT categoryId FROM [dbo].[tbl_KPICategories] WHERE kpiID = @kpiId)

	DROP TABLE #tbl_Items
	DROP TABLE #tbl_CategoryItems

END
GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_UpdateKPITargetNoCategories]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez 
-- Create date: May 23, 2016
-- Description:	Update a Target for a KPI that does not have Categories
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_UpdateKPITargetNoCategories]
	@kpiID int,
	@target decimal(21,3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @targetID INT = 0
	
	SELECT TOP 1 @targetID =  [targetID]
	FROM [dbo].[tbl_KPITarget]
	WHERE [kpiID] = @kpiID
	
	DELETE FROM [dbo].[tbl_KPITargetCategories]
	WHERE [targetID] = @targetID
	
	IF (SELECT COUNT(*) 
	    FROM [dbo].[tbl_KPITarget]
	    WHERE [kpiID] = @kpiID ) > 1
	BEGIN 
		DELETE FROM [dbo].[tbl_KPITargetCategories]
		WHERE [targetID] IN (SELECT [targetID]
		                     FROM [dbo].[tbl_KPITarget]
							 WHERE [kpiID] = @kpiID
							 AND [targetID] <> @targetID)
		
		DELETE FROM [dbo].[tbl_KPITarget]
		WHERE [kpiID] = @kpiID
		AND [targetID] <> @targetID
	END
	
	
	
	DELETE FROM [dbo].[tbl_KPICategories]
	WHERE [kpiID] = @kpiID
	
	IF ISNULL(@targetID,0) > 0
		UPDATE [dbo].[tbl_KPITarget]
		SET [target] = @target
		WHERE [kpiID] = @kpiID
		AND   [targetID] = @targetID
	ELSE
		INSERT INTO [dbo].[tbl_KPITarget]
			   ([kpiID]
			   ,[target])
		 VALUES
			   (@kpiID
			   ,@target)

	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_UpdateUserDashboard]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016/05/13
-- Description:	Updates a dashboard for user
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_UpdateUserDashboard]
	@varName		NVARCHAR(250),
	@intDashboardId	INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[tbl_UserDashboard]
		   SET [name] = @varName
	WHERE [dashboardId] = @intDashboardId

    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_KPI_VerifyKpiMeasurements]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 07/06/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_VerifyKpiMeasurements] 
	@intKpiId AS INT,
	@dtDate AS DATE,
	@varDetalle AS VARCHAR(MAX),
	@varCategory AS VARCHAR(MAX)
AS
BEGIN
	
	SET NOCOUNT ON;

    CREATE TABLE #tbl_Measurement([measurmentID] INT, [date] DATE, [measurement] DECIMAL(21,3), [detalle] VARCHAR(MAX), [categories] VARCHAR(MAX))
	
	DECLARE @intMeasurementId AS INT
	DECLARE @dcMeasurement AS DECIMAL(21,3)
    DECLARE @varItemsDetalle AS VARCHAR(MAX)
    DECLARE @varCategoriesDetalle AS VARCHAR(MAX)
	
	DECLARE MEASUREMENT_CURSOR CURSOR FOR
		SELECT [measurmentID]
		FROM [dbo].[tbl_KPIMeasurements] 
		WHERE [kpiID] = @intKpiId 
		AND [date] = @dtDate 
	
	OPEN MEASUREMENT_CURSOR
	
	FETCH NEXT FROM MEASUREMENT_CURSOR INTO @intMeasurementId
	
	WHILE @@FETCH_STATUS = 0
		BEGIN
			
			SELECT @varItemsDetalle = COALESCE(COALESCE(CASE WHEN @varItemsDetalle = '' THEN '' ELSE @varItemsDetalle + ', ' END, '') + [i].[categoryItemID], @varItemsDetalle),
				   @varCategoriesDetalle = COALESCE(COALESCE(CASE WHEN @varCategoriesDetalle = '' THEN '' ELSE @varCategoriesDetalle + ', ' END, '') + [i].[categoryID], @varCategoriesDetalle),
				   @dcMeasurement = [m].[measurement]
			FROM [dbo].[tbl_KPIMeasurements] [m]  
			LEFT OUTER JOIN [dbo].[tbl_KPIMeasurementCategories] [c] ON [m].[measurmentID] = [c].[measurementID] 
			LEFT OUTER JOIN [dbo].[tbl_CategoryItem] [i] ON [c].[categoryItemID] = [i].[categoryItemID] 
				AND [c].[categoryID] = [i].[categoryID]
			WHERE [m].[measurmentID] = @intMeasurementId 
			ORDER BY [i].[categoryID]
			
			INSERT INTO #tbl_Measurement VALUES(@intMeasurementId, @dtDate, @dcMeasurement, @varItemsDetalle, @varCategoriesDetalle)
			
			SET @varItemsDetalle = ''
			SET @varCategoriesDetalle = ''
			SET @dcMeasurement = NULL
			
			FETCH NEXT FROM MEASUREMENT_CURSOR INTO @intMeasurementId
		END
	
	CLOSE MEASUREMENT_CURSOR;
	DEALLOCATE MEASUREMENT_CURSOR;
	
	SELECT [measurmentID]
		  ,@intKpiID [kpiID]
		  ,[date]
		  ,[measurement]
		  ,[detalle]
	FROM #tbl_Measurement 
	WHERE ISNULL([detalle],'') = @varDetalle 
	AND ISNULL([categories],'') = @varCategory
	
	DROP TABLE #tbl_Measurement
    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPITYPE_GetAllKPITypes]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 26 2015
-- Description:	Get a list of all KPY Types in the system
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPITYPE_GetAllKPITypes] 
	@language CHAR(3)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	select t.[kpiTypeID], t.[directionID], dl.[name] directionName, 
		t.[strategyID], sl.name strategyName, t.unitID, ul.name unitName
		from [dbo].[tbl_KPITypes] t
		join [dbo].[tbl_KPITypesLabels] tl on t.kpiTypeID = tl.kpiTypeID
		join [dbo].[tbl_DirectionLabels] dl on t.directionID = dl.directionID
		join [dbo].[tbl_StrategyLabels] sl on t.[strategyID] = sl.strategyID
		join [dbo].[tbl_UnitLabels] ul on t.[unitID] = ul.[unitID]
		where tl.language = @language and dl.language = @language 
			and sl.language = @language and ul.language = @language
END

GO
/****** Object:  StoredProcedure [dbo].[usp_KPITYPE_GetKPITypeById]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- =============================================
-- Author:		Gabriela Sanchez
-- Create date: May 18 2016
-- Description:	Get KPIs Types by ID
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPITYPE_GetKPITypeById]
	@varKpiTypeID VARCHAR(10),
	@varLanguage VARCHAR(5)
AS
BEGIN
	SELECT [t].[kpiTypeID]
		  ,[t].[directionID]
		  ,[t].[strategyID]
		  ,[t].[unitID]
		  ,[l].[typeName]
		  ,[l].[description]
	  FROM [dbo].[tbl_KPITypes] [t]
	  INNER JOIN [dbo].[tbl_KPITypesLabels] [l] ON [t].[kpiTypeID] = [l].[kpiTypeID]
	  WHERE [l].[language] = @varLanguage
	  AND   [t].[kpiTypeID] = @varKpiTypeID
END
GO
/****** Object:  StoredProcedure [dbo].[usp_KPITYPE_GetKPITypes]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---- =============================================
-- Author:		Gabriela Sanchez
-- Create date: May 18 2016
-- Description:	List all KPIs Types by languages
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPITYPE_GetKPITypes]
	@varLanguage VARCHAR(5)
AS
BEGIN
	SELECT [t].[kpiTypeID]
		  ,[t].[directionID]
		  ,[t].[strategyID]
		  ,[t].[unitID]
		  ,[l].[typeName]
		  ,[l].[description]
	  FROM [dbo].[tbl_KPITypes] [t]
	  INNER JOIN [dbo].[tbl_KPITypesLabels] [l] ON [t].[kpiTypeID] = [l].[kpiTypeID]
	  WHERE [l].[language] = @varLanguage
END
GO
/****** Object:  StoredProcedure [dbo].[usp_LANG_GetLanguageList]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


CREATE PROCEDURE [dbo].[usp_LANG_GetLanguageList]
AS
BEGIN
	SELECT	[languageId]
		   ,[languageName]
	FROM	[dbo].[tbl_Language]
END


GO
/****** Object:  StoredProcedure [dbo].[usp_LANG_GetLanguageNameById]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO


-- =============================================
-- Author:		Fernando Alarcón
-- Create date: 10/09/2013
-- Description:	Get a language Name by id.
-- =============================================
CREATE PROCEDURE [dbo].[usp_LANG_GetLanguageNameById]
		@languageNameId VARCHAR(10),
		@language VARCHAR(10)
AS
BEGIN
	SET NOCOUNT ON;

	IF(@languageNameId IS NULL)
		SELECT @languageNameId = ''
			
	SET @language = UPPER(@language)
			
	SELECT	TOP 1	[T].[languageName]
	FROM			[dbo].[tbl_Language] AS [L]
	INNER JOIN		[dbo].[tbl_Language_Translations] AS [T] 
		ON			[T].[languageID] = [L].[languageID]
	WHERE			[T].[languageID] = CASE @languageNameId WHEN '' THEN [L].[languageID] ELSE @languageNameId END
	AND				[t].[language] = @language
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_DeleteArea]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: April 29, 2016
-- Description:	Delete the area for an organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_DeleteArea]
	@areaID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DELETE FROM [dbo].[tbl_Area]
	WHERE [areaID] = @areaID

END

GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_DeleteOrganization]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Delete an organization, an all of the related objects
--				
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_DeleteOrganization]
	@organizationID int,
	@username varchar(50)
AS
BEGIN
	
	UPDATE [dbo].[tbl_Organization]
	   SET [deleted] = 1
		  ,[dateDeleted] = GETDATE()
		  ,[usernameDeleted] = @username
	 WHERE [organizationID] = @organizationID
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_DeletePermanentlyOrganization]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Delete an organization, an all of the related objects
--				
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_DeletePermanentlyOrganization]
	@organizationID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		-- ===============================================
		---  MAKE SURE THAT THIS NAME IS COPIED BELOW 
		---  AND IS UNIQUE IN THE SYSTEM!!!!!!
		-- ===============================================
		SAVE TRANSACTION DeleteOrganization;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		-- We basically have to delete everything related to that organization.
		
		-- Start with KPIs. 
		-- Get the IDs of all the KPIs we will delete
		DECLARE @KPITable as TABLE (kpiID int)
		INSERT INTO @KPITable
		SELECT [kpiID] from [dbo].[tbl_KPI]
		where [organizationID] = @organizationID

		-- Delete all measurements for the KPIs selected

		-- Delete all permissions for the KPIs selected
		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and [objectID] in (select kpiID from @KPITable)

		-- Delete the KPIs selected
		-- Now lets delete all people for the organization
		-- Get the IDs of all the people we will delete
		-- Delete all the permissios for these persons
		-- Delete the people

		-- Now lets delete all activities for the organization
		-- Get the IDs of all the activities we will delete
		-- Delete all the permissios for these activities
		-- Delete the activities

		-- Now lets delete all projects for the organization
		-- Get the IDs of all the projects we will delete
		-- Delete all the projects for these activities
		-- Delete the projects

		-- Now lets delete all areas for the organization

		-- Now lets delete the permissions for the organization

		-- And finally lets delete the organization

		-- =============================================================
		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION'
		AND   [objectID] = @organizationID
		
		DELETE FROM [dbo].[tbl_KPIMeasurementCategories]
		WHERE [measurementID] IN (SELECT [measurementID]
		                          FROM [dbo].[tbl_KPIMeasurements]
		                          WHERE [kpiID] IN (select kpiID from @KPITable))
		
		DELETE FROM [dbo].[tbl_KPIMeasurements]
		WHERE [kpiID] IN (select kpiID from @KPITable)
		
		DELETE FROM [dbo].[tbl_KPITargetCategories]
		WHERE [targetID] IN (SELECT targetID 
		                     FROM [dbo].[tbl_KPITarget]
							 WHERE [kpiID] IN (select kpiID from @KPITable))
		
		DELETE FROM [dbo].[tbl_KPITarget]
		WHERE [kpiID] IN (select kpiID from @KPITable)
		
		DELETE FROM [dbo].[tbl_KPI]
		WHERE [organizationID] = @organizationID
		
		DELETE FROM [dbo].[tbl_Activity]
		WHERE [organizationID] = @organizationID
		
		DELETE FROM [dbo].[tbl_Project]
		WHERE [organizationID] = @organizationID
		
		DELETE FROM [dbo].[tbl_People]
		WHERE [organizationID] = @organizationID
		
		DELETE FROM [dbo].[tbl_Area]
		WHERE [organizationID] = @organizationID
		
		DELETE FROM dbo.tbl_Organization
		WHERE organizationID = @organizationID
		-- =============================================================

		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				-- ===============================================
				---  MAKE SURE THAT THIS NAME IS EXACTLY AS ABOVE 
				-- ===============================================
				ROLLBACK TRANSACTION DeleteOrganization;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_GetActivityListForUser]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================================
-- Author:		Gabriela Sanchez V.
-- Create date: Jun 2 2016
-- Description:	Get List of Activities that user has view rights to
-- =============================================================
CREATE PROCEDURE [dbo].[usp_ORG_GetActivityListForUser]
	-- Add the parameters for the stored procedure here
	@userName varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--- Get list of KPIS where user has acccess.  In the sourceObjectType
	-- column we will record where we got this from, and the objectID will
	-- tell us the ID of the object where this KPI came from.
	DECLARE @actList as TABLE(activityID int, sourceObjectType varchar(100), objectID int)

	-- For the following description ORG = ORGANIZATION, ACT = ACTIVITY, PPL = PEOPLE, PROF = PROJECT. 
	--If we need to determine the list of KPIs that a specific user can see 
	--we need to follow the following steps:
	--
	--1. Search for all ORGs where the user has OWN permissions and add to the list 
	--   of ACT to those ORGs.
	--2. Search for all ORGs where the user has MAN_KPI permissions or ORG has public 
	--   MAN_KPI and add to the list of ACTs all of these that are directly associated 
	--   to the organization
	--3. Search for all ORGs where the user has MAN_PROJECT permissions or ORG has public 
	--   MAN_PROJECT, then search for all ACTs then add to the ACT list all of the ACTs 
	--   that are associated to these ORGs.
	--4. Search for all ORGs where the user has MAN_ACTITIVIES permissions or ORG has public 
	--   MAN_ACTITIVIES and search for ACT that are associated to these ORGs and ARE NOT 
	--   associated to any PROJ, then add to the ACT list all of the ACTs that are 
	--   associated.
	--5. Search for all ACT where the user has OWN or MAN_KPI permissions or the ACT is public 
	--   MAN_KPI and add to the ACT list all of the ACTs.
	--6. Search for all PROJ where the user has OWN or MAN_KPI permissions, or where the PROJ 
	--   is public MAN_KPI and add to the ACT list all of the ACTs that are associated to those
	--   PROJ.
	--7. Search for all PROJ where the user has MAN_ACTIVITIES permissions or where the PROJ is 
	--   public MAN_ACTIVITIES, then search for all of the ACT and finally add to the ACT list 
	--   the ACTs.
	--8. Add to the ACT list all of the ACTs that are public VIEW_KPI
	--9. Add to the ACT list all of the ACTs where the user has OWN or VIEW_KPI or ENTER_DATA
	--   permissions.
	--
	--At the end of this, we should have a list of all of the ORGs that the user can see.

	-- So lets start with step 1.
 
	--1. Search for all ORGs where the user has OWN permissions and add to the list 
	--   of ACT to those ORGs.

	insert into @actList
	select [activityID], 'ORG OWN (1)', [organizationID] 
	from [dbo].[tbl_Activity]
	where [deleted] = 0
	  and [organizationID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'ORGANIZATION' and objectActionID = 'OWN'
			and username = @userName
	)

	--2. Search for all ORGs where the user has MAN_KPI permissions or ORG has public 
	--   MAN_KPI and add to the list of ACTs all of these that are directly associated 
	--   to the organization

	insert into @actList
	select [activityID], 'ORG MAN_KPI (2)', [organizationID] 
	from [dbo].[tbl_Activity]
	where [deleted] = 0
	  and [organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_KPI'
	) 

	--3. Search for all ORGs where the user has MAN_PROJECT permissions or ORG has public 
	--   MAN_PROJECT, then search for all ACTs then add to the ACT list all of the ACTs 
	--   that are associated to these ORGs.

	insert into @actList
	select [activityID], 'ORG MAN_PROJECT (3)', [organizationID] 
	from [dbo].[tbl_Activity]
	where [deleted] = 0
	  and [organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PROJECT' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PROJECT'
	) 

	--4. Search for all ORGs where the user has MAN_ACTITIVIES permissions or ORG has public 
	--   MAN_ACTITIVIES and search for ACT that are associated to these ORGs and ARE NOT 
	--   associated to any PROJ, then add to the ACT list all of the ACTs that are 
	--   associated.
	
	insert into @actList
	select [activityID], 'ORG MAN_ACTIVITY (4)', [organizationID] 
	from [dbo].[tbl_Activity]
	where [deleted] = 0
	  and [organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_ACTIVITY' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_ACTIVITY'
	)  and [projectID] is null

	--5. Search for all ACT where the user has OWN or MAN_KPI permissions or the ACT is public 
	--   MAN_KPI and add to the ACT list all of the ACTs.

	insert into @actList
	select [activityID], 'ACT OWN (5)', [activityID]
	from [dbo].[tbl_Activity]
	where [deleted] = 0
	  and [activityID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'ACTIVITY' and objectActionID = 'OWN' and username = @userName
	) 

	insert into @actList
	select [activityID], 'ACT-MAN_KPI (5)', [activityID] 
	FROM [dbo].[tbl_Activity]
	where [deleted] = 0
	  and [activityID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ACTIVITY' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ACTIVITY' and objectActionID = 'MAN_KPI'
	)

	--6. Search for all PROJ where the user has OWN or MAN_KPI permissions, or where the PROJ 
	--   is public MAN_KPI and add to the ACT list all of the ACTs that are associated to those
	--   PROJ.

	insert into @actList
	select [activityID], 'PROJ OWN (6)', [projectID] 
	from [dbo].[tbl_Activity]
	where [deleted] = 0
	  and [projectID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'PROJECT' and objectActionID = 'OWN' and username = @userName
	)

	insert into @actList
	select [activityID], 'PROJ-MAN_KPI (6)', [projectID] 
	FROM [dbo].[tbl_Activity]
	where [deleted] = 0
	  and [projectID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_KPI'
	)

	--7. Search for all PROJ where the user has MAN_ACTIVITIES permissions or where the PROJ is 
	--   public MAN_ACTIVITIES, then search for all of the ACT and finally add to the ACT list 
	--   the ACTs.

	insert into @actList
	select [activityID], 'PROJ-MAN_ACTIVITY (7)', [projectID] 
	from [dbo].[tbl_Activity]
	where [deleted] = 0
	  and [projectID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_ACTIVITY' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_ACTIVITY'
	)

	--8. Add to the ACT list all of the ACTs that are public VIEW_KPI

	insert into @actList
	select [activityID], 'KPI-PUB VIEW (8)', [kpiID] 
	FROM [dbo].[tbl_KPI]
	where [deleted] = 0
	  and [kpiID] in (
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI'
	)

	--9.	Add to the ACT list all of the ACTs where the user has OWN or VIEW_KPI or ENTER_DATA
	--      permissions.
	insert into @actList
	select [activityID], 'KPI-VIEW-OWN-ENTER (11)', [kpiID] 
	FROM [dbo].[tbl_KPI]
	where [deleted] = 0
	  and [kpiID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'OWN' AND username = @userName
		union
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'ENTER_DATA' AND username = @userName
		union
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI' AND username = @userName
	)

	select distinct [activityID] from @actList 


END
GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_GetAllOrganizations]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 21 2016
-- Description:	List organizations
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_GetAllOrganizations] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT [organizationID], [name]
	FROM [dbo].[tbl_Organization]

END

GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_GetAreaById]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 29/04/2016
-- Description:	Get area by Id
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_GetAreaById]
	@intAreaId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [areaID]
		  ,[organizationID]
		  ,[name]
	FROM [dbo].[tbl_Area]
	WHERE [areaID] = @intAreaId
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_GetAreaByNameAndOrganization]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez
-- Create date: April 29 2016
-- Description:	Get area by organization y name
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_GetAreaByNameAndOrganization]
	 @intOrganizationId INT,
	 @varName VARCHAR(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT [areaID]
		  ,[organizationID]
		  ,[name]
	  FROM [dbo].[tbl_Area]
	 WHERE [organizationID] = @intOrganizationId
	 AND   [name] = @varName


END

GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_GetAreasByOrganization]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez
-- Create date: April 29 2016
-- Description:	Get areas by organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_GetAreasByOrganization]
	@intOrganizationId INT,
	@varUserName AS VARCHAR(50)
AS
BEGIN
	
	SET NOCOUNT ON;
	
	CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
						 
	SELECT [a].[areaID]
		  ,[a].[organizationID]
		  ,[a].[name]
		  ,[o].[name] [organizationName]
		  ,[kpi].[numberKPIs]
	FROM [dbo].[tbl_Area] [a] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	LEFT OUTER JOIN (SELECT areaID, COUNT(1)  [numberKPIs]
					 FROM (
						 SELECT DISTINCT [k].[kpiID],[k].[areaID]
						 FROM [dbo].[tbl_KPI] [k] 
						 INNER JOIN #tbl_KPI [d] ON [k].[kpiID] = [d].[kpiId])x
					 GROUP By areaID) [kpi] ON [a].[areaID] = [kpi].[areaID] 
	WHERE [a].[organizationID] = @intOrganizationId
	AND   [o].[deleted] = 0
	
    DROP TABLE #tbl_KPI
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_GetOrganizationById]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez
-- Create date: April 27 2016
-- Description:	Get organization by ID
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_GetOrganizationById]
	 @intOrganizationId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	SELECT [organizationID], [name]
	FROM [dbo].[tbl_Organization]
	WHERE [organizationID] = @intOrganizationId

END

GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_GetOrganizationListForUser]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================================
-- Author:		Gabriela Sanchez V.
-- Create date: Jun 2 2016
-- Description:	Get List of Organizations that user has view rights to
-- =============================================================
CREATE PROCEDURE [dbo].[usp_ORG_GetOrganizationListForUser]
	-- Add the parameters for the stored procedure here
	@userName varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--- Get list of KPIS where user has acccess.  In the sourceObjectType
	-- column we will record where we got this from, and the objectID will
	-- tell us the ID of the object where this KPI came from.
	DECLARE @orgList as TABLE(organizationID int, sourceObjectType varchar(100), objectID int)

	-- For the following description ORG = ORGANIZATION, ACT = ACTIVITY, PPL = PEOPLE, PROF = PROJECT. 
	--If we need to determine the list of KPIs that a specific user can see 
	--we need to follow the following steps:
	--
	--1. Search for all ORGs where the user has OWN permissions and add to the list 
	--   of organizations to those ORGs.
	--2. Search for all ORGs where the user has MAN_KPI permissions or ORG has public 
	--   MAN_KPI and add to the list of ORGs all of these that are directly associated 
	--   to the organization
	--3. Search for all ORGs where the user has MAN_PROJECT permissions or ORG has public 
	--   MAN_PROJECT, then search for all PROJs then add to the ORG list all of the ORGs 
	--   that are associated to these PROJs.
	--4. Search for all ORGs where the user has MAN_ACTITIVIES permissions or ORG has public 
	--   MAN_ACTITIVIES and search for ACT that are associated to these ORGs and ARE NOT 
	--   associated to any PROJ, then add to the ORG list all of the ORGs that are 
	--   associated to these ACT.
	--5. Search for all ORGs where the user has MAN_PEOPLE permissions or where the ORG has 
	--   public MAN_PEOPLE, then search for all of the PPL that are associated to those 
	--   ORGs and finally add to the ORG list all of the ORGs that are associated to those 
	--   PPL.
	--6. Search for all ACT where the user has OWN or MAN_KPI permissions or the ACT is public 
	--   MAN_KPI and add to the ORG list all of the ORGs that are associated to the ACT.
	--7. Search for all PROJ where the user has OWN or MAN_KPI permissions, or where the PROJ 
	--   is public MAN_KPI and add to the ORG list all of the ORGs that are associated to those
	--   PROJ.
	--8. Search for all PROJ where the user has MAN_ACTIVITIES permissions or where the PROJ is 
	--   public MAN_ACTIVITIES, then search for all of the ACT that are associated to these 
	--   PROJs and finally add to the ORG list the ORGs that are associated to these ACT.
	--9. Search for all PPL where the user has OWN or MAN_KPI permissions or where the PPL is 
	--    public MAN_KPI and add to the ORG list all of the ORGs that are associated to these PPL.
	--10. Add to the ORG list all of the KPIs that are public VIEW_KPI
	--11.	Add to the ORG list all of the ORGs where the user has OWN or VIEW_KPI or ENTER_DATA
	--      permissions.
	--
	--At the end of this, we should have a list of all of the ORGs that the user can see.

	-- So lets start with step 1.
 
	--1. Search for all ORGs where the user has OWN permissions and add to the list 
	--   of organizations to those ORGs.

	insert into @orgList
	select [organizationID], 'ORG OWN (1)', [organizationID] 
	from [dbo].[tbl_Organization]
	where [deleted] = 0
	  and [organizationID] in (
								select [objectID]
								from [dbo].[tbl_SEG_ObjectPermissions]
								where [objectTypeID] = 'ORGANIZATION' and objectActionID = 'OWN'
								and username = @userName
							)

	--2. Search for all ORGs where the user has MAN_KPI permissions or ORG has public 
	--   MAN_KPI and add to the list of ORGs all of these that are directly associated 
	--   to the organization

	insert into @orgList
	select [organizationID], 'ORG MAN_ORG (2)', [organizationID] 
	from [dbo].[tbl_Organization]
	where [deleted] = 0
	  and [organizationID] in (
							SELECT [objectID] 
							FROM [dbo].[tbl_SEG_ObjectPermissions]
							WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_KPI' AND username = @userName
							UNION
							SELECT [objectID]
							FROM [dbo].[tbl_SEG_ObjectPublic]
							WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_KPI'
						) 

	--3. Search for all ORGs where the user has MAN_PROJECT permissions or ORG has public 
	--   MAN_PROJECT, then search for all PROJs then add to the ORG list all of the ORGs 
	--   that are associated to these PROJs.

	insert into @orgList
	select [o].[organizationID], 'ORG MAN_PROJECT (3)', [p].[organizationID] 
	from [dbo].[tbl_Organization] [o]
	left join [dbo].[tbl_Project] [p] ON [p].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and ISNULL([p].[deleted],0) = 0
	  and [o].[organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PROJECT' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PROJECT'
	)
	
	--4. Search for all ORGs where the user has MAN_ACTITIVIES permissions or ORG has public 
	--   MAN_ACTITIVIES and search for ACT that are associated to these ORGs and ARE NOT 
	--   associated to any PROJ, then add to the ORG list all of the ORGs that are 
	--   associated to these ACT.
	
	insert into @orgList
	select [o].[organizationID], 'ORG MAN_ACTIVITY (4)', [o].[organizationID] 
	from [dbo].[tbl_Organization] [o] 
	left join [dbo].[tbl_Activity] [a] ON [a].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and ISNULL([a].[deleted],0) = 0
	  and [o].[organizationID] in (
							SELECT [objectID] 
							FROM [dbo].[tbl_SEG_ObjectPermissions]
							WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_ACTIVITY' AND username = @userName
							UNION
							SELECT [objectID]
							FROM [dbo].[tbl_SEG_ObjectPublic]
							WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_ACTIVITY'
						)  
      and [a].[projectID] is null

	--5. Search for all ORGs where the user has MAN_PEOPLE permissions or where the ORG has 
	--   public MAN_PEOPLE, then search for all of the PPL that are associated to those 
	--   ORGs and finally add to the ORG list all of the ORGs that are associated to those 
	--   PPL.

	insert into @orgList
	select [o].[organizationID], 'ORG MAN_PEOPLE (5)', [o].[organizationID] 
	from [dbo].[tbl_Organization] [o]
	left join [dbo].[tbl_People][p] ON [p].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and ISNULL([p].[deleted],0) = 0
	  and [o].[organizationID] in (
									SELECT [objectID] 
									FROM [dbo].[tbl_SEG_ObjectPermissions]
									WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PEOPLE' AND username = @userName
									UNION
									SELECT [objectID]
									FROM [dbo].[tbl_SEG_ObjectPublic]
									WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PEOPLE'
								) 

	--6. Search for all ACT where the user has OWN or MAN_KPI permissions or the ACT is public 
	--   MAN_KPI and add to the ORG list all of the ORGs that are associated to the ACT.

	insert into @orgList
	select [a].[organizationID], 'ACT OWN (6)', [a].[activityID]
	from [dbo].[tbl_Activity][a]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [a].[deleted] = 0
	  and [a].[activityID] in (
							select [objectID]
							from [dbo].[tbl_SEG_ObjectPermissions]
							where [objectTypeID] = 'ACTIVITY' and objectActionID = 'OWN' and username = @userName
						) 

	insert into @orgList
	select [a].[organizationID], 'ACT-MAN_KPI (6)', [activityID] 
	FROM [dbo].[tbl_Activity][a]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [a].[deleted] = 0
	  and [a].[activityID] in (
							SELECT [objectID] 
							FROM [dbo].[tbl_SEG_ObjectPermissions]
							WHERE [objectTypeID] = 'ACTIVITY' and objectActionID = 'MAN_KPI' AND username = @userName
							UNION
							SELECT [objectID]
							FROM [dbo].[tbl_SEG_ObjectPublic]
							WHERE [objectTypeID] = 'ACTIVITY' and objectActionID = 'MAN_KPI'
						)

	--7. Search for all PROJ where the user has OWN or MAN_KPI permissions, or where the PROJ 
	--   is public MAN_KPI and add to the ORG list all of the ORGs that are associated to those
	--   PROJ.

	insert into @orgList
	select [p].[organizationID], 'PROJ OWN (7)', [projectID] 
	from [dbo].[tbl_Project] [p]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [p].[deleted] = 0
	  and [p].[projectID] in (
							select [objectID]
							from [dbo].[tbl_SEG_ObjectPermissions]
							where [objectTypeID] = 'PROJECT' and objectActionID = 'OWN' and username = @userName
						)

	insert into @orgList
	select [p].[organizationID], 'PROJ-MAN_KPI (7)', [projectID] 
	FROM [dbo].[tbl_Project] [p]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [p].[deleted] = 0
	  and [p].[projectID] in (
							SELECT [objectID] 
							FROM [dbo].[tbl_SEG_ObjectPermissions]
							WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_KPI' AND username = @userName
							UNION
							SELECT [objectID]
							FROM [dbo].[tbl_SEG_ObjectPublic]
							WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_KPI'
						)

	--8. Search for all PROJ where the user has MAN_ACTIVITIES permissions or where the PROJ is 
	--   public MAN_ACTIVITIES, then search for all of the ACT that are associated to these 
	--   PROJs and finally add to the ORG list the ORGs that are associated to these ACT.

	insert into @orgList
	select [a].[organizationID], 'PROJ-MAN_ACTIVITY (8)', [projectID] 
	from [dbo].[tbl_Activity] [a]
	inner join [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [a].[deleted] = 0
	  and [a].[projectID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_ACTIVITY' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_ACTIVITY'
	)

	--9. Search for all PPL where the user has OWN or MAN_KPI permissions or where the PPL is 
	--    public MAN_KPI and add to the ORG list all of the ORGs that are associated to these PPL.

	insert into @orgList
	select [p].[organizationID], 'PPL OWN (9)', [personID]
	from [dbo].[tbl_People] [p]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [p].[deleted] = 0
	  and [p].[personID] in (
							select [objectID]
							from [dbo].[tbl_SEG_ObjectPermissions]
							where [objectTypeID] = 'PERSON' and objectActionID = 'OWN' and username = @userName
						)

	insert into @orgList
	select [p].[organizationID], 'PPL-MAN_KPI (9)', [personID] 
	FROM [dbo].[tbl_People] [p]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [p].[deleted] = 0
	  and [p].[personID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PERSON' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'PERSON' and objectActionID = 'MAN_KPI'
	)

	--10. Add to the ORG list all of the KPIs that are public VIEW_KPI

	insert into @orgList
	select [k].[organizationID], 'KPI-PUB VIEW (10)', [kpiID] 
	FROM [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [k].[deleted] = 0
	  and [k].[kpiID] in (
						SELECT [objectID]
						FROM [dbo].[tbl_SEG_ObjectPublic]
						WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI'
					)

	--11.	Add to the ORG list all of the ORGs where the user has OWN or VIEW_KPI or ENTER_DATA
	--      permissions.
	insert into @orgList
	select [k].[organizationID], 'KPI-VIEW-OWN-ENTER (11)', [kpiID] 
	FROM [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [k].[deleted] = 0
	  and [k].[kpiID] in (
					SELECT [objectID] 
					FROM [dbo].[tbl_SEG_ObjectPermissions]
					WHERE [objectTypeID] = 'KPI' and objectActionID = 'OWN' AND username = @userName
					union
					SELECT [objectID] 
					FROM [dbo].[tbl_SEG_ObjectPermissions]
					WHERE [objectTypeID] = 'KPI' and objectActionID = 'ENTER_DATA' AND username = @userName
					union
					SELECT [objectID] 
					FROM [dbo].[tbl_SEG_ObjectPermissions]
					WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI' AND username = @userName
				)

	select distinct organizationID from @orgList 


END
GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_GetOrganizationsByName]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez
-- Create date: April 27 2016
-- Description:	List organizations by name
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_GetOrganizationsByName] 
	@varUsername VARCHAR(50),
	@varName VARCHAR(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT DISTINCT [o].[organizationID], [o].[name]
	FROM [dbo].[tbl_Organization] [o]
	INNER JOIN [dbo].[tbl_SEG_ObjectPermissions] [p] ON [o].[organizationID] = [p].[objectID]
	WHERE [p].[objectTypeID] = 'ORGANIZATION'
	AND   [p].[username] = @varUsername 
	AND   [o].[name] = @varName
	AND   [o].[deleted] = 0

END
GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_GetOrganizationsByUser]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez
-- Create date: April 27 2016
-- Description:	List organizations by user
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_GetOrganizationsByUser] 
	@varUsername VARCHAR(50),
	@varWhereClause VARCHAR(1000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	CREATE TABLE #tblOrganization
		(organizationId INT)

	INSERT INTO #tblOrganization
	EXEC [dbo].[usp_ORG_GetOrganizationListForUser] @varUsername

	DECLARE @varSQL AS VARCHAR(MAX)

	SET @varSQL = '	SELECT DISTINCT [o].[organizationID], [o].[name],
	                       CASE WHEN ISNULL([p].[objectActionID],'''') = ''OWN'' THEN 1 ELSE 0 END isOwner
					FROM [dbo].[tbl_Organization] [o]
					INNER JOIN #tblOrganization [t] ON [o].[organizationID] = [t].[organizationId]
					LEFT JOIN [dbo].[tbl_SEG_ObjectPermissions] [p] ON [o].[organizationID] = [p].[objectID] 
					      AND [p].[objectTypeID] = ''ORGANIZATION''
					      AND [p].[username] = ''' + @varUsername + '''
					WHERE ' + @varWhereClause + '
					ORDER BY [o].[name]'
	
	EXEC (@varSQL)
	
	DROP TABLE #tblOrganization

END
GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_GetQuantitiesByOrganization]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 28/06/2016
-- Description:	Get quantities by organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_GetQuantitiesByOrganization]
	@organizationID INT,
	@varUserName VARCHAR(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	DECLARE @nroAreas AS INT
	DECLARE @nroProjects AS INT
	DECLARE @nroPeople AS INT
	DECLARE @nroActivities AS INT
	DECLARE @nroKpis AS INT

	--Areas
	SELECT @nroAreas = COUNT(1)
	FROM [dbo].[tbl_Area] [a] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	WHERE [o].[organizationID] = @organizationID

	--Proyectos
	CREATE TABLE #tbl_Project
	([projectID] INT, 
	 [sourceObjectType] VARCHAR(100))
	
	INSERT INTO #tbl_Project (projectId, sourceObjectType)
	EXEC [dbo].[usp_PROJ_GetProjectListForUser] @varUsername

	SELECT @nroProjects = COUNT(1) 
	FROM (
	SELECT DISTINCT p.projectID
	FROM [dbo].[tbl_Project] [p] 
	INNER JOIN #tbl_Project [d] ON [p].[projectID] = [d].[projectID] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID] 
	WHERE [o].[organizationID] = @organizationID) x

	--Personas
	CREATE TABLE #tbl_People
		(personId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_People (personId, sourceObjectType)
	EXEC [usp_PEOPLE_GetPersonListForUser] @varUsername


	SELECT @nroPeople = COUNT(1)
	FROM (
	SELECT DISTINCT p.personID
	FROM [dbo].[tbl_People] [p] 
	INNER JOIN #tbl_People [d] ON [p].[personID] = [d].[personID] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID] 
	WHERE [o].[organizationID] = @organizationID) X

	--Actividades
	CREATE TABLE #tbl_Activity
		(activityId INT,
		 sourceObjectType VARCHAR(100))
		
	INSERT INTO #tbl_Activity (activityId, sourceObjectType)
	EXEC [dbo].[usp_ACT_GetActivityListForUser] @varUsername
		
	SELECT @nroActivities = COUNT(1)
	FROM (SELECT DISTINCT [a].[activityID]
	FROM [dbo].[tbl_Activity] [a] 
	INNER JOIN #tbl_Activity [d] ON [a].[activityID] = [d].[activityID] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [a].[organizationID] = [o].[organizationID] 
	WHERE [o].[organizationID] = @organizationID) X

	--KPIs
	CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername

	SELECT @nroKpis = COUNT(1)
	FROM (
	SELECT DISTINCT k.kpiID
	FROM [dbo].[tbl_KPI] [k] 
	INNER JOIN #tbl_KPI [kpi] ON [k].[kpiID] = [kpi].[kpiId] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [k].[organizationID] = [o].[organizationID]
	WHERE [o].[organizationID] = @organizationID) X

	SELECT @nroAreas as Areas,
		   @nroProjects as Projects,
		   @nroPeople as People,
		   @nroActivities as Activities,
		   @nroKpis as Kpis
	       
	DROP TABLE #tbl_Project
	DROP TABLE #tbl_People
	DROP TABLE #tbl_Activity
	DROP TABLE #tbl_KPI

END
GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_InsertArea]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Cerate a new area for an organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_InsertArea]
	@organizationID int,
	@areaName nvarchar(250),
	@areaID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	INSERT INTO [dbo].[tbl_Area]
           ([organizationID]
           ,[name])
     VALUES
           (@organizationID
           ,@areaName)

	SELECT @areaID = SCOPE_IDENTITY()
END

GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_InsertOrganization]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Cerate a new organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_InsertOrganization]
	@userName varchar(50),
	@organizationName nvarchar(250),
	@organizationID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;


	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		-- ===============================================
		---  MAKE SURE THAT THIS NAME IS COPIED BELOW 
		---  AND IS UNIQUE IN THE SYSTEM!!!!!!
		-- ===============================================
		SAVE TRANSACTION InsertOrganiPS;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		INSERT INTO [dbo].[tbl_Organization]
			   ([name]
			   ,[deleted])
		VALUES
			   (@organizationName
			   ,0)

		SELECT @organizationID = SCOPE_IDENTITY()

		-- Ensure that the owner can manage this object
		INSERT INTO [dbo].[tbl_SEG_ObjectPermissions]
           ([objectTypeID]
           ,[objectID]
           ,[username]
           ,[objectActionID])
		VALUES
           ('ORGANIZATION'
           ,@organizationID
           ,@userName
           ,'OWN')	

		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				-- ===============================================
				---  MAKE SURE THAT THIS NAME IS EXACTLY AS ABOVE 
				-- ===============================================
				ROLLBACK TRANSACTION InsertOrganiPS;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_UpdateArea]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: April 29, 2016
-- Description:	Update the area for an organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_UpdateArea]
	@areaID int,
	@areaName nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[tbl_Area]
	SET [name] = @areaName
	WHERE [areaID] = @areaID


END

GO
/****** Object:  StoredProcedure [dbo].[usp_ORG_UpdateOrganization]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 12 2016
-- Description:	Update the name of the organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_ORG_UpdateOrganization]
	@organizationID int,
	@organizationName nvarchar(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[tbl_Organization]
	SET [name] = @organizationName
	WHERE [organizationID] = @organizationID

END

GO
/****** Object:  StoredProcedure [dbo].[usp_PEOPLE_DeletePermanentlyPerson]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: July 8, 2016
-- Description:	Delete a peolple and all of the 
-- related objects
-- =============================================
CREATE PROCEDURE [dbo].[usp_PEOPLE_DeletePermanentlyPerson]
	@personID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		-- ===============================================
		---  MAKE SURE THAT THIS NAME IS COPIED BELOW 
		---  AND IS UNIQUE IN THE SYSTEM!!!!!!
		-- ===============================================
		SAVE TRANSACTION DeletePerson;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		-- We basically have to delete everything related to that project.
		
		-- Start with KPIs. 
		-- Get the IDs of all the KPIs we will delete
		DECLARE @KPITable as TABLE (kpiID int)
		INSERT INTO @KPITable
		SELECT [kpiID] from [dbo].[tbl_KPI]
		where [personID] = @personID

		-- Delete all measurements for the KPIs selected

		-- Delete all permissions for the KPIs selected
		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and [objectID] in (select kpiID from @KPITable)

		-- Now lets delete all activities for the project
		-- Get the IDs of all the activities we will delete
		-- Delete all the permissios for these activities
		-- Delete the activities

		-- Now lets delete the permissions for the project

		-- And finally lets delete the project

		-- =============================================================
		-- INSERT THE SQL STATEMENTS HERE
		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PERSON'
		AND   [objectID] = @personID
		
		DELETE FROM [dbo].[tbl_KPIMeasurementCategories]
		WHERE [measurementID] IN (SELECT [measurementID]
		                          FROM [dbo].[tbl_KPIMeasurements]
		                          WHERE [kpiID] IN (select kpiID from @KPITable))
		
		DELETE FROM [dbo].[tbl_KPIMeasurements]
		WHERE [kpiID] IN (select kpiID from @KPITable)
		
		DELETE FROM [dbo].[tbl_KPITargetCategories]
		WHERE [targetID] IN (SELECT targetID 
		                     FROM [dbo].[tbl_KPITarget]
							 WHERE [kpiID] IN (select kpiID from @KPITable))
		
		DELETE FROM [dbo].[tbl_KPITarget]
		WHERE [kpiID] IN (select kpiID from @KPITable)
		
		DELETE FROM [dbo].[tbl_KPI]
	    WHERE [personID] = @personID
	    
		DELETE FROM [dbo].[tbl_People]
	    WHERE [personID] = @personID
		-- =============================================================

		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				-- ===============================================
				---  MAKE SURE THAT THIS NAME IS EXACTLY AS ABOVE 
				-- ===============================================
				ROLLBACK TRANSACTION DeletePerson;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[usp_PEOPLE_DeletePerson]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: June 7, 2016
-- Description:	Delete a person
-- =============================================
CREATE PROCEDURE [dbo].[usp_PEOPLE_DeletePerson]
	@personID int,
	@username VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	UPDATE [dbo].[tbl_People]
	   SET [deleted] = 1
		  ,[dateDeleted] = GETDATE()
		  ,[usernameDeleted] = @username
	 WHERE [personID] = @personID
      

END
GO
/****** Object:  StoredProcedure [dbo].[usp_PEOPLE_GetAllPeople]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Get the full lists of people
-- =============================================
CREATE PROCEDURE [dbo].[usp_PEOPLE_GetAllPeople]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [p].[personID]
		  ,[p].[id]
		  ,[p].[name]
		  ,[p].[organizationID]
		  ,[g].[name] [organizationName]
		  ,[p].[areaID]
		  ,[r].[name] [areaName]
		  ,0 [isOwner]
		  ,0 [numberKPIs]
	FROM [dbo].[tbl_People] [p]
	INNER JOIN [dbo].[tbl_Organization] [g] ON [p].[organizationID] = [g].[organizationID]
	LEFT JOIN [dbo].[tbl_Area] [r] ON [p].[areaID] = [r].[areaID]						 

END
GO
/****** Object:  StoredProcedure [dbo].[usp_PEOPLE_GetPeopleBySearch]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: June 2, 2016
-- Description:	Get the lists of people for search
-- =============================================
CREATE PROCEDURE [dbo].[usp_PEOPLE_GetPeopleBySearch]
	@varUsername VARCHAR(25),
	@varWhereClause VARCHAR(1000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	CREATE TABLE #tblPeople
		(personId INT,
		 sourceObjectType VARCHAR(100),
		 isOwner INT DEFAULT(0))

	CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
		
	INSERT INTO #tblPeople (personId, sourceObjectType)
	EXEC [usp_PEOPLE_GetPersonListForUser] @varUsername

	UPDATE #tblPeople
	SET isOwner = 1
	WHERE sourceObjectType IN ('ORG OWN (1)','ORG MAN_PEOPLE (3)','PPL OWN (4)')

	DECLARE @varSQL AS VARCHAR(MAX)

	SET @varSQL = 'SELECT [p].[personID]
				  ,[p].[id]
				  ,[p].[name]
				  ,[p].[organizationID]
				  ,[g].[name] [organizationName]
				  ,[p].[areaID]
				  ,[r].[name] [areaName]
				  ,CASE WHEN ISNULL([t].[isOwner],0) > 0 THEN 1 ELSE 0 END isOwner
				  ,[kpi].[numberKPIs]
			FROM [dbo].[tbl_People] [p]
			INNER JOIN (SELECT personId, SUM(isOwner) isOwner
						FROM #tblPeople
						GROUP BY personId) [t] ON [p].[personID] = [t].[personId]
			INNER JOIN [dbo].[tbl_Organization] [g] ON [p].[organizationID] = [g].[organizationID]
			LEFT JOIN [dbo].[tbl_Area] [r] ON [p].[areaID] = [r].[areaID]
			LEFT OUTER JOIN (SELECT COUNT(DISTINCT [k].[kpiID]) [numberKPIs]
								   ,[k].[personID]
							 FROM [dbo].[tbl_KPI] [k] 
							 INNER JOIN #tbl_KPI [d] ON [k].[kpiID] = [d].[kpiId] 
							 GROUP BY [k].[personID]) [kpi] ON [p].[personID] = [kpi].[personID] 
	        WHERE [g].[deleted] = 0 and ' + @varWhereClause + '
	        ORDER BY [g].[name],[r].[name], [p].[name]'
	  
	 EXEC (@varSQL)
	 
	 DROP TABLE #tblPeople
	 
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PEOPLE_GetPersonByArea]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 30/04/2016
-- Description:	Get persona by Area
-- =============================================
CREATE PROCEDURE [dbo].[usp_PEOPLE_GetPersonByArea]
	@intAreaId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [p].[personID]
		  ,[p].[id]
		  ,[p].[name]
		  ,[p].[organizationID]
		  ,[g].[name] [organizationName]
		  ,[p].[areaID]
		  ,[r].[name] [areaName]
		  ,0 [isOwner]
		  ,0 [numberKPIs]
	FROM [dbo].[tbl_People] [p]
	INNER JOIN [dbo].[tbl_Organization] [g] ON [p].[organizationID] = [g].[organizationID]
	LEFT JOIN [dbo].[tbl_Area] [r] ON [p].[areaID] = [r].[areaID]	 
	WHERE [p].[areaID] = @intAreaId
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PEOPLE_GetPersonById]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 30/04/2016
-- Description:	Get persona by id
-- =============================================
CREATE PROCEDURE [dbo].[usp_PEOPLE_GetPersonById]
	@intPersonId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

     SELECT [p].[personID]
		  ,[p].[id]
		  ,[p].[name]
		  ,[p].[organizationID]
		  ,[g].[name] [organizationName]
		  ,[p].[areaID]
		  ,[r].[name] [areaName]
		  ,0 [isOwner]
		  ,0 [numberKPIs]
	FROM [dbo].[tbl_People] [p]
	INNER JOIN [dbo].[tbl_Organization] [g] ON [p].[organizationID] = [g].[organizationID]
	LEFT JOIN [dbo].[tbl_Area] [r] ON [p].[areaID] = [r].[areaID]	
	WHERE [p].[personID] = @intPersonId
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PEOPLE_GetPersonByOrganization]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcela Martinez
-- Create date: 18/05/2016
-- Description:	Get people by organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_PEOPLE_GetPersonByOrganization]
	@intOrganizationId INT,
	@varUserName AS VARCHAR(50)
AS
BEGIN
	
	SET NOCOUNT ON;
	
    CREATE TABLE #tbl_People
		(personId INT,
		 sourceObjectType VARCHAR(100))

	CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
		
	INSERT INTO #tbl_People (personId, sourceObjectType)
	EXEC [usp_PEOPLE_GetPersonListForUser] @varUsername
	
	SELECT DISTINCT [p].[personID]
		  ,[p].[id]
		  ,[p].[name]
		  ,[p].[organizationID]
		  ,[p].[areaID]
		  ,[o].[name] [organizationName]
		  ,[a].[name] [areaName]
		  ,0 [isOwner]
		  ,[kpi].[numberKPIs]
	FROM [dbo].[tbl_People] [p] 
	INNER JOIN #tbl_People [d] ON [p].[personID] = [d].[personID] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID] AND [o].[deleted]= 0
	LEFT OUTER JOIN [dbo].[tbl_Area] [a] ON [p].[areaID] = [a].[areaID] 
	LEFT OUTER JOIN (SELECT COUNT(DISTINCT [k].[kpiID]) [numberKPIs]
					       ,[k].[personID]
					 FROM [dbo].[tbl_KPI] [k] 
					 INNER JOIN #tbl_KPI [d] ON [k].[kpiID] = [d].[kpiId] 
					 GROUP BY [k].[personID]) [kpi] ON [p].[personID] = [kpi].[personID] 
	WHERE [p].[organizationID] = @intOrganizationId
	AND [p].[deleted] = 0
	AND [o].[deleted] = 0
    
    DROP TABLE #tbl_People
    DROP TABLE #tbl_KPI
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PEOPLE_GetPersonListForUser]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================================
-- Author:		Gabriela Sanchez V.
-- Create date: Jun 2 2016
-- Description:	Get List of People that user has view rights to
-- =============================================================
CREATE PROCEDURE [dbo].[usp_PEOPLE_GetPersonListForUser]
	-- Add the parameters for the stored procedure here
	@userName varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--- Get list of KPIS where user has acccess.  In the sourceObjectType
	-- column we will record where we got this from, and the objectID will
	-- tell us the ID of the object where this KPI came from.
	DECLARE @pplList as TABLE(personID int, sourceObjectType varchar(100), objectID int)

	-- For the following description ORG = ORGANIZATION, ACT = ACTIVITY, PPL = PEOPLE, PROF = PROJECT. 
	--If we need to determine the list of KPIs that a specific user can see 
	--we need to follow the following steps:
	--
	--1. Search for all ORGs where the user has OWN permissions and add to the list 
	--   of PPL all the people related to the ORG.
	--2. Search for all ORGs where the user has MAN_KPI permissions or ORG has public 
	--   MAN_KPI and add to the list of PPLs all of the people that are directly associated 
	--   to the ORG
	--3. Search for all ORGs where the user has MAN_PEOPLE permissions or where the ORG has 
	--   public MAN_PEOPLE, then search for all of the PPL that are associated to those 
	--   ORGs and finally add to the PLL list all of the people.
	--4. Search for all PPL where the user has OWN or MAN_KPI permissions or where the PPL is 
	--    public MAN_KPI and add to the PPL list all the people that are associated.
	--5. Add to the ORG list all of the KPIs that are public VIEW_KPI
	--6.	Add to the ORG list all of the ORGs where the user has OWN or VIEW_KPI or ENTER_DATA
	--      permissions.
	--
	--At the end of this, we should have a list of all of the ORGs that the user can see.

	-- So lets start with step 1.
 
	--1. Search for all ORGs where the user has OWN permissions and add to the list 
	--   of PPL all the people related to the ORG.

	insert into @pplList
	select [personID], 'ORG OWN (1)', [p].[organizationID] 
	from [dbo].[tbl_People] [p]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	  and [o].[deleted] = 0
	  and [p].[organizationID] in (
					select [objectID]
					from [dbo].[tbl_SEG_ObjectPermissions]
					where [objectTypeID] = 'ORGANIZATION' and objectActionID = 'OWN'
						and username = @userName
				)

	--2. Search for all ORGs where the user has MAN_KPI permissions or ORG has public 
	--   MAN_KPI and add to the list of PPLs all of the people that are directly associated 
	--   to the ORG

	insert into @pplList
	select [k].[personID], 'ORG MAN_ORG (2)', [k].[organizationID] 
	from [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_People] [p] ON [k].[personID] = [p].[personID]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	  and [k].[deleted] = 0
	  and [o].[deleted] = 0
	  and [k].[organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_KPI'
	) 

	--3. Search for all ORGs where the user has MAN_PEOPLE permissions or where the ORG has 
	--   public MAN_PEOPLE, then search for all of the PPL that are associated to those 
	--   ORGs and finally add to the PLL list all of the people.

	insert into @pplList
	select [personID], 'ORG MAN_PEOPLE (3)', [p].[organizationID] 
	from [dbo].[tbl_People] [p]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	  and [o].[deleted] = 0
	  and [p].[organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PEOPLE' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PEOPLE'
	)  

	--4. Search for all PPL where the user has OWN or MAN_KPI permissions or where the PPL is 
	--    public MAN_KPI and add to the PPL list all the people that are associated.

	insert into @pplList
	select [personID], 'PPL OWN (4)', [personID]
	from [dbo].[tbl_People] [p]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	  and [o].[deleted] = 0
	  and [personID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'PERSON' and objectActionID = 'OWN' and username = @userName
	)

	insert into @pplList
	select [personID], 'PPL-MAN_KPI (4)', [personID] 
	FROM [dbo].[tbl_People] [p]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	  and [o].[deleted] = 0
	  and [personID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PERSON' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'PERSON' and objectActionID = 'MAN_KPI'
	)

	--5. Add to the ORG list all of the KPIs that are public VIEW_KPI

	insert into @pplList
	select [k].[personID], 'KPI-PUB VIEW (5)', [kpiID] 
	FROM [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_People] [p] ON [k].[personID] = [p].[personID]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	  and [k].[deleted] = 0
	  and [o].[deleted] = 0
	  and [k].[kpiID] in (
						SELECT [objectID]
						FROM [dbo].[tbl_SEG_ObjectPublic]
						WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI'
					)

	--6.	Add to the ORG list all of the ORGs where the user has OWN or VIEW_KPI or ENTER_DATA
	--      permissions.
	insert into @pplList
	select [k].[personID], 'KPI-VIEW-OWN-ENTER (6)', [kpiID] 
	FROM [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_People] [p] ON [k].[personID] = [p].[personID]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	  and [k].[deleted] = 0
	  and [o].[deleted] = 0
	  and [k]. [kpiID] in (
					SELECT [objectID] 
					FROM [dbo].[tbl_SEG_ObjectPermissions]
					WHERE [objectTypeID] = 'KPI' and objectActionID = 'OWN' AND username = @userName
					union
					SELECT [objectID] 
					FROM [dbo].[tbl_SEG_ObjectPermissions]
					WHERE [objectTypeID] = 'KPI' and objectActionID = 'ENTER_DATA' AND username = @userName
					union
					SELECT [objectID] 
					FROM [dbo].[tbl_SEG_ObjectPermissions]
					WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI' AND username = @userName
				)

	select distinct personID, sourceObjectType from @pplList 


END
GO
/****** Object:  StoredProcedure [dbo].[usp_PEOPLE_InsertPerson]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Cerate a new person
-- =============================================
CREATE PROCEDURE [dbo].[usp_PEOPLE_InsertPerson]
	@userName varchar(50),
	@organizationID int,
	@areaID int,
	@personName nvarchar(250),
	@id nvarchar(50),
	@personID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		-- ===============================================
		---  MAKE SURE THAT THIS NAME IS COPIED BELOW 
		---  AND IS UNIQUE IN THE SYSTEM!!!!!!
		-- ===============================================
		SAVE TRANSACTION InsertPersonPS;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		IF(@areaID = 0)
			SELECT @areaID = null

		INSERT INTO [dbo].[tbl_People]
           ([id]
           ,[name]
           ,[organizationID]
           ,[areaID])
		VALUES
           (@id
           ,@personName
           ,@organizationID
           ,@areaID)

		SELECT @personID = SCOPE_IDENTITY()

		-- Ensure that the owner can manage this object
		INSERT INTO [dbo].[tbl_SEG_ObjectPermissions]
           ([objectTypeID]
           ,[objectID]
           ,[username]
           ,[objectActionID])
		VALUES
           ('PERSON'
           ,@personID
           ,@userName
           ,'OWN')

		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				-- ===============================================
				---  MAKE SURE THAT THIS NAME IS EXACTLY AS ABOVE 
				-- ===============================================
				ROLLBACK TRANSACTION InsertPersonPS;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[usp_PEOPLE_UpdatePerson]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: June 7, 2016
-- Description:	Update a new person
-- =============================================
CREATE PROCEDURE [dbo].[usp_PEOPLE_UpdatePerson]
	@personID int,
	@id nvarchar(50),
	@personName nvarchar(250),
	@organizationID int,
	@areaID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	IF(@areaID = 0)
		SELECT @areaID = null

	UPDATE [dbo].[tbl_People]
	   SET [id] = @id
		  ,[name] = @personName
		  ,[organizationID] = @organizationID
		  ,[areaID] = @areaID
	 WHERE [personId] = @personID

END

GO
/****** Object:  StoredProcedure [dbo].[usp_PROJ_DeletePermanentlyProject]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Delete a project and all of the 
-- related objects
-- =============================================
CREATE PROCEDURE [dbo].[usp_PROJ_DeletePermanentlyProject]
	@projectID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		-- ===============================================
		---  MAKE SURE THAT THIS NAME IS COPIED BELOW 
		---  AND IS UNIQUE IN THE SYSTEM!!!!!!
		-- ===============================================
		SAVE TRANSACTION DeleteOrganization;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		-- We basically have to delete everything related to that project.
		
		-- Start with KPIs. 
		-- Get the IDs of all the KPIs we will delete
		DECLARE @KPITable as TABLE (kpiID int)
		INSERT INTO @KPITable
		SELECT [kpiID] from [dbo].[tbl_KPI]
		where [projectID] = @projectID

		-- Delete all permissions for the KPIs selected
		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and [objectID] in (select kpiID from @KPITable)

		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PROJECT'
		AND   [objectID] = @projectID

		DELETE FROM [dbo].[tbl_KPIMeasurementCategories]
		WHERE [measurementID] IN (SELECT [measurementID]
		                          FROM [dbo].[tbl_KPIMeasurements]
		                          WHERE [kpiID] IN (select kpiID from @KPITable))
		
		DELETE FROM [dbo].[tbl_KPIMeasurements]
		WHERE [kpiID] IN (select kpiID from @KPITable)
		
		DELETE FROM [dbo].[tbl_KPITargetCategories]
		WHERE [targetID] IN (SELECT targetID 
		                     FROM [dbo].[tbl_KPITarget]
							 WHERE [kpiID] IN (select kpiID from @KPITable))
		
		DELETE FROM [dbo].[tbl_KPITarget]
		WHERE [kpiID] IN (select kpiID from @KPITable)
				
		DELETE FROM [dbo].[tbl_KPI]
	    WHERE [projectID] = @projectID
		
		DELETE FROM [dbo].[tbl_Activity]
	    WHERE [projectID] = @projectID
	    
		DELETE FROM [dbo].[tbl_Project]
	    WHERE [projectID] = @projectID
		-- =============================================================

		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				-- ===============================================
				---  MAKE SURE THAT THIS NAME IS EXACTLY AS ABOVE 
				-- ===============================================
				ROLLBACK TRANSACTION DeleteOrganization;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PROJ_DeleteProject]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Mark as delete a project and all of the 
-- related objects
-- =============================================
CREATE PROCEDURE [dbo].[usp_PROJ_DeleteProject]
	@projectID int,
	@username varchar(50)
AS
BEGIN
	
	UPDATE [dbo].[tbl_Project]
	   SET [deleted] = 1
		  ,[dateDeleted] = GETDATE()
		  ,[usernameDeleted] = @username
	 WHERE [projectID] = @projectID


END
GO
/****** Object:  StoredProcedure [dbo].[usp_PROJ_GetAllProjects]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 22 2014
-- Description:	List all projects in the system
-- =============================================
CREATE PROCEDURE [dbo].[usp_PROJ_GetAllProjects]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [projectID]
		,[name]
		,[organizationID]
		,[areaID]
	FROM [dbo].[tbl_Project]

END

GO
/****** Object:  StoredProcedure [dbo].[usp_PROJ_GetProjectById]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 29/04/2016
-- Description:	Get Project by id
-- =============================================
CREATE PROCEDURE [dbo].[usp_PROJ_GetProjectById]
	@intProjectId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT [p].[projectID]
		  ,[p].[name]
		  ,[p].[organizationID]
		  ,[o].[name] as [organizationName]
		  ,[p].[areaID]
		  ,[a].[name] as [areaName]
		  ,0 as [numberKPIs]
		  ,0 as [isOwner]
		  ,(SELECT TOP 1 username
		    FROM dbo.tbl_SEG_ObjectPermissions
		    WHERE [objectTypeID] = 'PROJECT'
		    AND   [objectID] = @intProjectId
		    AND   [objectActionID] = 'OWN') as [owner]
	FROM [dbo].[tbl_Project][p]
	INNER JOIN [dbo].[tbl_Organization] [o] ON [p].[organizationId] = [o].[organizationId]
	LEFT JOIN [dbo].[tbl_Area] [a] ON [a].[areaID] = [p].[areaID]
	WHERE [projectID] = @intProjectId
    
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PROJ_GetProjectListForUser]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================================
-- Author:		Gabriela Sanchez V.
-- Create date: Jun 2 2016
-- Description:	Get List of Projects that user has view rights to
-- =============================================================
CREATE PROCEDURE [dbo].[usp_PROJ_GetProjectListForUser]
	-- Add the parameters for the stored procedure here
	@userName varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	--- Get list of KPIS where user has acccess.  In the sourceObjectType
	-- column we will record where we got this from, and the objectID will
	-- tell us the ID of the object where this KPI came from.
	DECLARE @projList as TABLE(projectID int, sourceObjectType varchar(100), objectID int)

	-- For the following description ORG = ORGANIZATION, ACT = ACTIVITY, PPL = PEOPLE, PROF = PROJECT. 
	--If we need to determine the list of KPIs that a specific user can see 
	--we need to follow the following steps:
	--
	--1. Search for all ORGs where the user has OWN permissions and add to the list 
	--   of PROJ the PROJs of this ORG.
	--2. Search for all ORGs where the user has MAN_KPI permissions or ORG has public 
	--   MAN_KPI and add to the list of PROJs all of these that are directly associated 
	--   to the organization
	--3. Search for all ORGs where the user has MAN_PROJECT permissions or ORG has public 
	--   MAN_PROJECT, then search for all PROJs then add to the PROJ list all of the PROJs 
	--   that are associated to these ORGs.
	--4. Search for all ORGs where the user has MAN_ACTITIVIES permissions or ORG has public 
	--   MAN_ACTITIVIES and search for PROJ that are associated to these ORGs then add to the 
	--   PROJ list all of the PROJs.
	--5. Search for all ACT where the user has OWN or MAN_KPI permissions or the ACT is public 
	--   MAN_KPI and add to the PROJ list all of the PROJs that are associated to the ACT.
	--6. Search for all PROJ where the user has OWN or MAN_KPI permissions, or where the PROJ 
	--   is public MAN_KPI and add to the PROJ list all of the PROJ.
	--7. Search for all PROJ where the user has MAN_ACTIVITIES permissions or where the PROJ is 
	--   public MAN_ACTIVITIES, then search for all of the PROJs and finally add to the PROJ list.
	--8. Add to the PROJ list all of the PROJs that are public VIEW_KPI
	--9. Add to the PROJ list all of the PROJs where the user has OWN or VIEW_KPI or ENTER_DATA
	--   permissions.
	--
	--At the end of this, we should have a list of all of the ORGs that the user can see.

	-- So lets start with step 1.
 
	--1. Search for all ORGs where the user has OWN permissions and add to the list 
	--   of PROJ the PROJs of this ORG.

	insert into @projList
	select [p].[projectID], 'ORG OWN (1)', [p].[organizationID] 
	from [dbo].[tbl_Project] [p]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [p].[deleted] = 0
	  and [p].[organizationID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'ORGANIZATION' and objectActionID = 'OWN'
			and username = @userName
	)

	--2. Search for all ORGs where the user has MAN_KPI permissions or ORG has public 
	--   MAN_KPI and add to the list of PROJs all of these that are directly associated 
	--   to the organization

	insert into @projList
	select [projectID], 'ORG MAN_KPI (2)', [p].[organizationID] 
	from [dbo].[tbl_Project] [p]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [p].[deleted] = 0
	  and [p].[organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_KPI'
	) 

	--3. Search for all ORGs where the user has MAN_PROJECT permissions or ORG has public 
	--   MAN_PROJECT, then search for all PROJs then add to the PROJ list all of the PROJs 
	--   that are associated to these ORGs.

	insert into @projList
	select [projectID], 'ORG MAN_PROJECT (3)', [p].[organizationID] 
	from [dbo].[tbl_Project] [p]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [p].[deleted] = 0
	  and [p].[organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PROJECT' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_PROJECT'
	) 

	--4. Search for all ORGs where the user has MAN_ACTITIVIES permissions or ORG has public 
	--   MAN_ACTITIVIES and search for PROJ that are associated to these ORGs then add to the 
	--   PROJ list all of the PROJs.
	
	insert into @projList
	select [projectID], 'ORG MAN_ACTIVITY (4)', [p].[organizationID] 
	from [dbo].[tbl_Project] [p]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [p].[deleted] = 0
	  and [p].[organizationID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_ACTIVITY' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ORGANIZATION' and objectActionID = 'MAN_ACTIVITY'
	)  

	--5. Search for all ACT where the user has OWN or MAN_KPI permissions or the ACT is public 
	--   MAN_KPI and add to the PROJ list all of the PROJs that are associated to the ACT.

	insert into @projList
	select [a].[projectID], 'ACT OWN (5)', [activityID]
	from [dbo].[tbl_Activity] [a]
	inner join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [o].[deleted] = 0
	  and [p].[deleted] = 0
	  and [a].[deleted] = 0
	  and [activityID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'ACTIVITY' and objectActionID = 'OWN' and username = @userName
	) 

	insert into @projList
	select [a].[projectID], 'ACT-MAN_KPI (5)', [activityID] 
	FROM [dbo].[tbl_Activity] [a]
	inner join [dbo].[tbl_Project] [p] ON [a].[projectID] = [p].[projectID]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	  and [a].[deleted] = 0
	  and [o].[deleted] = 0
	  and [activityID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ACTIVITY' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'ACTIVITY' and objectActionID = 'MAN_KPI'
	)

	--6. Search for all PROJ where the user has OWN or MAN_KPI permissions, or where the PROJ 
	--   is public MAN_KPI and add to the PROJ list all of the PROJ.

	insert into @projList
	select [projectID], 'PROJ OWN (6)', [projectID] 
	from [dbo].[tbl_Project] [p] 
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	  and [o].[deleted] = 0
	  and [projectID] in (
		select [objectID]
		from [dbo].[tbl_SEG_ObjectPermissions]
		where [objectTypeID] = 'PROJECT' and objectActionID = 'OWN' and username = @userName
	)

	insert into @projList
	select [projectID], 'PROJ-MAN_KPI (6)', [projectID] 
	FROM [dbo].[tbl_Project] [p] 
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	  and [o].[deleted] = 0
	  and [projectID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_KPI' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_KPI'
	)

	--7. Search for all PROJ where the user has MAN_ACTIVITIES permissions or where the PROJ is 
	--   public MAN_ACTIVITIES, then search for all of the PROJs and finally add to the PROJ list.

	insert into @projList
	select [projectID], 'PROJ-MAN_ACTIVITY (7)', [projectID] 
	from [dbo].[tbl_Project] [p] 
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	 and  [o].[deleted] = 0
	 and  [projectID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_ACTIVITY' AND username = @userName
		UNION
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'PROJECT' and objectActionID = 'MAN_ACTIVITY'
	)


	--8. Add to the PROJ list all of the PROJs that are public VIEW_KPI

	insert into @projList
	select [k].[projectID], 'KPI-PUB VIEW (8)', [kpiID] 
	FROM [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Project] [p] on [k].[projectID] = [p].[projectID]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	 and  [k].[deleted] = 0
	 and  [o].[deleted] = 0
	 and  [kpiID] in (
		SELECT [objectID]
		FROM [dbo].[tbl_SEG_ObjectPublic]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI'
	)

	--9.	Add to the PROJ list all of the PROJs where the user has OWN or VIEW_KPI or ENTER_DATA
	--      permissions.
	insert into @projList
	select [k].[projectID], 'KPI-VIEW-OWN-ENTER (9)', [kpiID] 
	FROM [dbo].[tbl_KPI] [k]
	inner join [dbo].[tbl_Project] [p] on [k].[projectID] = [p].[projectID]
	inner join [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID]
	where [p].[deleted] = 0
	 and  [k].[deleted] = 0
	 and  [o].[deleted] = 0
	 and  [kpiID] in (
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'OWN' AND username = @userName
		union
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'ENTER_DATA' AND username = @userName
		union
		SELECT [objectID] 
		FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and objectActionID = 'VIEW_KPI' AND username = @userName
	)

	select distinct projectID, sourceObjectType from @projList 


END
GO
/****** Object:  StoredProcedure [dbo].[usp_PROJ_GetProjectsByOrganization]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: April 29 2016
-- Description:	List all projects by organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_PROJ_GetProjectsByOrganization]
	@intOrganizationId INT,
	@varUserName AS VARCHAR(50)
AS
BEGIN
	
	SET NOCOUNT ON;
	
	CREATE TABLE #tbl_Project
	([projectID] INT, 
	 [sourceObjectType] VARCHAR(100), 
	 [isOwner] INT DEFAULT(0))
	
	CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
	
	INSERT INTO #tbl_Project (projectId, sourceObjectType)
	EXEC [dbo].[usp_PROJ_GetProjectListForUser] @varUsername

	UPDATE #tbl_Project
	SET isOwner = 1
	WHERE sourceObjectType IN ('ORG OWN (1)','ORG MAN_ORG (2)','ORG MAN_PROJECT (3)','PROJ OWN (6)')
	
	SELECT [p].[projectID]
		  ,[p].[name]
		  ,[p].[organizationID]
		  ,[p].[areaID]
		  ,[o].[name] [organizationName]
		  ,[a].[name] [areaName]
		  ,[kpi].[numberKPIs]
		  ,CASE WHEN [d].[isOwner] > 0 THEN 1 ELSE 0 END isOwner
		  ,'' as [owner]
	FROM [dbo].[tbl_Project] [p] 
	INNER JOIN (SELECT projectId, SUM(isOwner) isOwner
				FROM #tbl_Project
				GROUP BY projectId)[d] ON [p].[projectID] = [d].[projectID] 
	INNER JOIN [dbo].[tbl_Organization] [o] ON [p].[organizationID] = [o].[organizationID] 
	LEFT OUTER JOIN [dbo].[tbl_Area] [a] ON [p].[areaID] = [a].[areaID] 
	LEFT OUTER JOIN (SELECT COUNT(DISTINCT[k].[kpiID]) [numberKPIs]
					       ,[k].[projectID]
					 FROM [dbo].[tbl_KPI] [k] 
					 INNER JOIN #tbl_KPI [d] ON [k].[kpiID] = [d].[kpiId] 
					 GROUP BY [k].[projectID]) [kpi] ON [p].[projectID] = [kpi].[projectID] 
	WHERE [p].[organizationID] = @intOrganizationId
	AND   [p].[deleted] = 0
	
	DROP TABLE #tbl_Project
    DROP TABLE #tbl_KPI
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PROJ_GetProjectsBySearch]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: April 29 2016
-- Description:	List all projects by organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_PROJ_GetProjectsBySearch]
	@varUsername VARCHAR(50),
	@varWhereClause VARCHAR(1000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	CREATE TABLE #tblProject
		(projectId INT,
		 sourceObjectType VARCHAR(100),
		 isOwner INT DEFAULT (0))
	
	CREATE TABLE #tbl_KPI
		(kpiId INT,
		 sourceObjectType VARCHAR(100))

	INSERT INTO #tbl_KPI (kpiId, sourceObjectType)
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
		
	INSERT INTO #tblProject (projectId, sourceObjectType)
	EXEC [dbo].[usp_PROJ_GetProjectListForUser] @varUsername

	UPDATE #tblProject
	SET isOwner = 1
	WHERE sourceObjectType IN ('ORG OWN (1)','ORG MAN_ORG (2)','ORG MAN_PROJECT (3)','PROJ OWN (6)')

	DECLARE @varSQL AS VARCHAR(MAX)

	SET @varSQL = 'SELECT DISTINCT [p].[projectID]
						,[p].[name]
						,[p].[organizationID]
						,[o].[name] as [organizationName]
						,[p].[areaID]
						,[a].[name] as [areaName]
						,[kpi].[numberKPIs]
						,CASE WHEN [t].[isOwner] > 0 THEN 1 ELSE 0 END isOwner
						,'''' as [owner]
					FROM [dbo].[tbl_Project] [p]
					INNER JOIN (SELECT projectId, SUM(isOwner) isOwner
								FROM #tblProject
								GROUP BY projectId) [t] ON [p].[projectID] = [t].[projectId]
					INNER JOIN [dbo].[tbl_Organization] [o] ON [p].[organizationId] = [o].[organizationId]
					LEFT JOIN [dbo].[tbl_Area] [a] ON [a].[areaID] = [p].[areaID]
					LEFT OUTER JOIN (SELECT COUNT(DISTINCT [k].[kpiID]) [numberKPIs],[k].[projectID]
					                 FROM [dbo].[tbl_KPI] [k] 
					                 INNER JOIN #tbl_KPI [d] ON [k].[kpiID] = [d].[kpiId] 
					                 GROUP BY [k].[projectID]) [kpi] ON [p].[projectID] = [kpi].[projectID] 
					WHERE ' + @varWhereClause + '
					ORDER BY [p].[name]'
	
	EXEC (@varSQL)

	DROP TABLE #tblProject

END
GO
/****** Object:  StoredProcedure [dbo].[usp_PROJ_InsertProject]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Cerate a new project
-- =============================================
CREATE PROCEDURE [dbo].[usp_PROJ_InsertProject]
	@userName varchar(50),
	@organizationID int,
	@areaID int,
	@projectName nvarchar(250),
	@projectID int output
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		-- ===============================================
		---  MAKE SURE THAT THIS NAME IS COPIED BELOW 
		---  AND IS UNIQUE IN THE SYSTEM!!!!!!
		-- ===============================================
		SAVE TRANSACTION InsertProjectPS;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		IF(@areaID = 0)
			SELECT @areaID = null

		INSERT INTO [dbo].[tbl_Project]
           ([name]
           ,[organizationID]
           ,[areaID]
           ,[deleted])
		VALUES
           (@projectName
           ,@organizationID
           ,@areaID
           ,0)

		SELECT @projectID = SCOPE_IDENTITY()

		-- Ensure that the owner can manage this object
		INSERT INTO [dbo].[tbl_SEG_ObjectPermissions]
           ([objectTypeID]
           ,[objectID]
           ,[username]
           ,[objectActionID])
		VALUES
           ('PROJECT'
           ,@projectID
           ,@userName
           ,'OWN')

		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				-- ===============================================
				---  MAKE SURE THAT THIS NAME IS EXACTLY AS ABOVE 
				-- ===============================================
				ROLLBACK TRANSACTION InsertProjectPS;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[usp_PROJ_UpdateProject]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 12 2016
-- Description:	Update the name and context of a project
-- =============================================
CREATE PROCEDURE [dbo].[usp_PROJ_UpdateProject]
	@projectID int,
	@projectName nvarchar(250),
	@organizationID int,
	@areaID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@areaID = null)
		select @areaID = NULL

	UPDATE [dbo].[tbl_Project]
	SET [name] = @projectName
		  ,[organizationID] = @organizationID
		  ,[areaID] = @areaID
	 WHERE projectID = @projectID

END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEARCH_DeleteSavedSearch]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		Vladimir Calderon
-- Create date: 21-02-2011
-- Description:	Deletes a saved search
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEARCH_DeleteSavedSearch]
	-- Add the parameters for the stored procedure here
	@searchId varchar(50), 
	@userId int,
	@name varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DELETE FROM [tbl_SavedSearch] 
    WHERE 
		[searchId] = @searchId
	AND	[userId] = @userId
	AND [name] = @name
END






GO
/****** Object:  StoredProcedure [dbo].[usp_SEARCH_GetSavedSearch]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		Vladimir Calderon
-- Create date: 21-02-2011
-- Description:	Gets all the saved searches for a specific user and search control
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEARCH_GetSavedSearch]
	-- Add the parameters for the stored procedure here
	@searchId varchar(50), 
	@userId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT [searchId]
      ,[userId]
      ,[name]
      ,[searchExpression]
      ,[dateCreated]
    FROM [tbl_SavedSearch] 
    WHERE 
		[searchId] = @searchId
	AND	[userId] = @userId
	ORDER BY [dateCreated] desc
END






GO
/****** Object:  StoredProcedure [dbo].[usp_SEARCH_GetSavedSearchBySearchName]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		Vladimir Calderon
-- Create date: 21-02-2011
-- Description:	Gets one saved search for a search control and a user
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEARCH_GetSavedSearchBySearchName]
	-- Add the parameters for the stored procedure here
	@searchId varchar(50), 
	@userId int,
	@name varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    SELECT [searchId]
      ,[userId]
      ,[name]
      ,[searchExpression]
      ,[dateCreated]
    FROM [tbl_SavedSearch] 
    WHERE 
		[searchId] = @searchId
	AND	[userId] = @userId
	AND [name] = @name
END






GO
/****** Object:  StoredProcedure [dbo].[usp_SEARCH_InsertSavedSearch]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





-- =============================================
-- Author:		Vladimir Calderon
-- Create date: 21-02-2011
-- Description:	Inserts a saved search
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEARCH_InsertSavedSearch]
	-- Add the parameters for the stored procedure here
	@searchId varchar(50), 
	@userId int,
	@name varchar(50),
	@searchExpression varchar(1000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	-- Detectamos si el SP fue llamado desde una transacción activa y 
	-- la guardamos para usarla más tarde.  En el SP, @TranCounter = 0
	-- significa que no existen transacciones activas y que este SP
	-- comenzó una.  @TranCounter > 0 significa que se inició una transacción
	-- antes de la que empezaremos en este SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;

	IF @TranCounter > 0
		-- Se llamó a este SP cuando ya existe una transacción activa.
		-- Creamos un punto de restauración para poder hacer sólo rollback
		-- de esta transacción si hay algún error.
		-- OJO:  Este nombre tiene que cambiarse!!!  Debe ser único para la 
		-- cadena de transacciones.  También debe cambiarse al final del SP!!!
		SAVE TRANSACTION InsertCompanyProcedureSave;
	ELSE
		-- Este SP comienza su propia transacción y no hay otra antes
		BEGIN TRANSACTION;


	BEGIN TRY
	
		DECLARE @currentNumberSavedSearches int
		DECLARE @maxNumberSavedSearches int
		SET @maxNumberSavedSearches = 10
		
		-- Count the number of saved searches already saved for this user and control
		SELECT @currentNumberSavedSearches = COUNT([name]) 
		FROM [tbl_SavedSearch]
		WHERE
			[searchId] = @searchId
		AND [userId] = @userId
		GROUP BY [searchId],[userId]
		
		-- if more than max allowed, delete the oldest
		IF (@currentNumberSavedSearches >= @maxNumberSavedSearches) 
		BEGIN
			DECLARE @nameToDelete varchar(50)
			
			DELETE FROM [tbl_SavedSearch] 
			WHERE 
				[searchId] = @searchId
			AND [userId] = @userId
			AND [name] = (
				SELECT TOP 1 ss.[name]
				FROM [tbl_SavedSearch] ss
				WHERE
					ss.[searchId] = @searchId
				AND ss.[userId] = @userId
				ORDER BY ss.[dateCreated] ASC)
		END	
		
		INSERT INTO [tbl_SavedSearch]
			   ([searchId]
			   ,[userId]
			   ,[name]
			   ,[searchExpression]
			   ,[dateCreated])
		 VALUES
			   (@searchId
			   ,@userId
			   ,@name
			   ,@searchExpression
			   ,getDate())
			   
		-- Llegamos aquí si no hay errores;  debemos hacer un commit de la transacción
		-- que comenzamos, pero no debemos hacer un comit si hubo una transacción
		-- comenzada anteriormente.
		IF @TranCounter = 0
			-- @TranCounter = 0 significa que no se comenzó ninguna transacción antes de 
			-- esta transacción y por lo tando debemos hacer un comit de nuestra 
			-- stranacción.
			COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH

		-- Hubo un error. Debemos detemrinar que tipo de rollback debemos hacer.

		IF @TranCounter = 0
			-- Tenemos sólo la transacción que comenzamos en este SP.  Rollback
			-- toda la transacción.
			ROLLBACK TRANSACTION;
		ELSE
			-- Se comenzó una transacción antes de que llamen a este SP. Debemos hacer
			-- un rollback solo de las modificaciones que hicimos en este SP

			-- Vemos XACT_STATE y los posibles resultados son 0, 1, or -1.
			-- Si es 1, la transacción es válida y se puede hacer un comit. Pero como 
			-- estamos en el CATCH no hacemos comit.
			-- Si es -1 la transacción no es válida y se debe hacer un rollback
			-- Si es - Significa que no hay un transacción y que un rollback causaría un error
			-- Ver http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() <> -1
				-- Si la transacción es todavía válida, hacemos un rollback hasta el punto
				-- de restauración definido anteriormente.  
				-- Sólo podemos hacer un rollback si XACT_STATE() = -1
				-- OJO: Este es el mismo nombre utilizado anterioremente!!  
				ROLLBACK TRANSACTION NOMBRE_PUNTO_DE_RESTAURACION;

				-- Si la transaccion no es válida no se puede hacer un commit ni un rollback, 
				-- por lo que un rollback al punto de restauración no es permitido por que 
				-- el rollback al punto de restauración escribiría en el log de la base de 
				-- datos.  Símplemente debemos retornar al que nos llamó y este será 
				-- responsable de hacer rollback a la transacción. 

		-- Luego de hacer el rollback correspondiente, debemos propagar la información de error
		-- al SP que nos llamó. 
		--
		-- Ver http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END






GO
/****** Object:  StoredProcedure [dbo].[usp_SearchCode]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER OFF
GO

CREATE PROCEDURE [dbo].[usp_SearchCode]
	@SearchStr 	varchar(100),
	@RowsReturned	int = NULL	OUT
-- ENCRYPT_ME
AS
/*************************************************************************************************
		Copyright © 1997 - 2002 Narayana Vyas Kondreddi. All rights reserved.
                                          
Purpose:	To search the stored proceudre, UDF, trigger code for a given keyword.

Written by:	Narayana Vyas Kondreddi
		http://vyaskn.tripod.com

Tested on: 	SQL Server 7.0, SQL Server 2000

Date created:	January-22-2002 21:37 GMT

Date modified:	February-17-2002 19:31 GMT

Email: 		vyaskn@hotmail.com

Examples:

To search your database code for the keyword 'unauthorized':
EXEC sp_search_code 'unauthorized'

To search your database code for the keyword 'FlowerOrders' and also find out the number of hits:
DECLARE @Hits int
EXEC sp_search_code 'FlowerOrders', @Hits OUT
SELECT 'Found ' + LTRIM(STR(@Hits)) + ' object(s) containing this keyword' AS Result
*************************************************************************************************/
BEGIN
	SET NOCOUNT ON

	SELECT	DISTINCT USER_NAME(o.uid) + '.' + OBJECT_NAME(c.id) AS 'Object name',
		CASE 
 			WHEN OBJECTPROPERTY(c.id, 'IsReplProc') = 1 
				THEN 'Replication stored procedure'
 			WHEN OBJECTPROPERTY(c.id, 'IsExtendedProc') = 1 
				THEN 'Extended stored procedure'				
			WHEN OBJECTPROPERTY(c.id, 'IsProcedure') = 1 
				THEN 'Stored Procedure' 
			WHEN OBJECTPROPERTY(c.id, 'IsTrigger') = 1 
				THEN 'Trigger' 
			WHEN OBJECTPROPERTY(c.id, 'IsTableFunction') = 1 
				THEN 'Table-valued function' 
			WHEN OBJECTPROPERTY(c.id, 'IsScalarFunction') = 1 
				THEN 'Scalar-valued function'
 			WHEN OBJECTPROPERTY(c.id, 'IsInlineFunction') = 1 
				THEN 'Inline function'	
		END AS 'Object type',
		'EXEC sp_helptext ''' + USER_NAME(o.uid) + '.' + OBJECT_NAME(c.id) + '''' AS 'Run this command to see the object text'
	FROM	syscomments c
		INNER JOIN
		sysobjects o
		ON c.id = o.id
	WHERE	c.text LIKE '%' + @SearchStr + '%'	AND
		encrypted = 0				AND
		(
		OBJECTPROPERTY(c.id, 'IsReplProc') = 1		OR
		OBJECTPROPERTY(c.id, 'IsExtendedProc') = 1	OR
		OBJECTPROPERTY(c.id, 'IsProcedure') = 1		OR
		OBJECTPROPERTY(c.id, 'IsTrigger') = 1		OR
		OBJECTPROPERTY(c.id, 'IsTableFunction') = 1	OR
		OBJECTPROPERTY(c.id, 'IsScalarFunction') = 1	OR
		OBJECTPROPERTY(c.id, 'IsInlineFunction') = 1	
		)

	ORDER BY	'Object type', 'Object name'

	SET @RowsReturned = @@ROWCOUNT
END


GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_AddDefaultAdministratorAccess]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ==============================================================================================================
/* 
* Add default access to administrator.
* The administrator for the application should ALWAYS be able to define access 
* control.  Otherwise the application locks up.  Hence, we add access to
* operation 1 for the given group, if it does not exist.
* Variables: @roleName
*/
CREATE PROCEDURE [dbo].[usp_SEG_AddDefaultAdministratorAccess] 
	-- Add the parameters for the stored procedure here
	@roleName as varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	DECLARE @intCount AS INT 
	SELECT @intCount = count(*) 
	FROM [dbo].[tbl_SEG_AccessRole] 
	WHERE [role] = @roleName 
	AND [permissionID] = (SELECT [permissionID] 
						  FROM [tbl_SEG_Permission]
						  WHERE [mnemonic] = 'MANAGE_SECURITY')
				 
	IF(@intCount = 0)  
		BEGIN
			INSERT INTO [dbo].[tbl_SEG_AccessRole] ([permissionID], [role])
			VALUES (1, @roleName)
		END
	
END







GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteObjectPermissions]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 11/05/2016
-- Description:	Delete permissions for userName
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_DeleteObjectPermissions] 
	@varObjectTypeId AS VARCHAR(20),
	@intObjectId AS INT,
	@varUserName AS VARCHAR(50)
AS
BEGIN
	
	SET NOCOUNT ON;

    DELETE FROM [dbo].[tbl_SEG_ObjectPermissions] 
	WHERE [objectTypeID] = @varObjectTypeId
	AND [objectID] = @intObjectId 
	AND [username] = @varUserName
    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteObjectPublic]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 11/05/2016
-- Description:	Delete permissions for userName
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_DeleteObjectPublic] 
	@varObjectTypeId AS VARCHAR(20),
	@intObjectId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    DELETE FROM [dbo].[tbl_SEG_ObjectPublic] 
	WHERE [objectTypeID] = @varObjectTypeId
	AND [objectID] = @intObjectId
    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteOperationForRole]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_SEG_DeleteOperationForRole]
	@intPermissionID int,
	@varRole varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS(
				SELECT * 
						FROM [dbo].[tbl_SEG_AccessRole] 
						WHERE [permissionid] = @intPermissionID AND [role] = @varRole
 			  )
	BEGIN
 		DELETE FROM [dbo].[tbl_SEG_AccessRole] 
			WHERE [permissionid] = @intPermissionID AND [role] = @varRole
	END
END





GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteOperationForUser]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_SEG_DeleteOperationForUser]
	@intPermissionID int,
	@intUserID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF EXISTS(
				SELECT * 
						FROM [dbo].[tbl_SEG_AccessUser] 
						WHERE [permissionId] = @intPermissionID 
						AND [userId] = @intUserID
 			  )
	BEGIN
 		DELETE FROM [dbo].[tbl_SEG_AccessUser] 
						WHERE [permissionId] = @intPermissionID 
						AND [userId] = @intUserID
	END
END





GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_DeleteUserRecord]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_SEG_DeleteUserRecord]
	@intUserId AS INT
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- Procedure called when there is an active transaction.
		-- Create a savepoint to be able to roll back only the work done
		-- in the procedure if there is an error.
		SAVE TRANSACTION DeleteUserRecordPS;
	ELSE
		-- Procedure must start its own transaction.
		BEGIN TRANSACTION;

	BEGIN TRY	
	
		DELETE FROM [dbo].[tbl_SEG_User]
			WHERE 
			[userId] = @intUserId

	-- Llegamos aquí si no hay errores;  debemos hacer un commit de la transacción
		-- que comenzamos, pero no debemos hacer un comit si hubo una transacción
		-- comenzada anteriormente.
		IF @TranCounter = 0
			-- @TranCounter = 0 significa que no se comenzó ninguna transacción antes de 
			-- esta transacción y por lo tando debemos hacer un comit de nuestra 
			-- stranacción.
			COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH

		-- Hubo un error. Debemos detemrinar que tipo de rollback debemos hacer.

		IF @TranCounter = 0
			-- Tenemos sólo la transacción que comenzamos en este SP.  Rollback
			-- toda la transacción.
			ROLLBACK TRANSACTION;
		ELSE
			-- Se comenzó una transacción antes de que llamen a este SP. Debemos hacer
			-- un rollback solo de las modificaciones que hicimos en este SP

			-- Vemos XACT_STATE y los posibles resultados son 0, 1, or -1.
			-- Si es 1, la transacción es válida y se puede hacer un comit. Pero como 
			-- estamos en el CATCH no hacemos comit.
			-- Si es -1 la transacción no es válida y se debe hacer un rollback
			-- Si es - Significa que no hay un transacción y que un rollback causaría un error
			-- Ver http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() <> -1
				-- Si la transacción es todavía válida, hacemos un rollback hasta el punto
				-- de restauración definido anteriormente.  
				-- Sólo podemos hacer un rollback si XACT_STATE() = -1
				-- OJO: Este es el mismo nombre utilizado anterioremente!!  
				ROLLBACK TRANSACTION InsertUserPS;

				-- Si la transaccion no es válida no se puede hacer un commit ni un rollback, 
				-- por lo que un rollback al punto de restauración no es permitido por que 
				-- el rollback al punto de restauración escribiría en el log de la base de 
				-- datos.  Símplemente debemos retornar al que nos llamó y este será 
				-- responsable de hacer rollback a la transacción. 

		-- Luego de hacer el rollback correspondiente, debemos propagar la información de error
		-- al SP que nos llamó. 
		--
		-- Ver http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END





GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetClientsForSearch]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_SEG_GetClientsForSearch]
	@whereSql AS VARCHAR(4000)
AS
BEGIN
	
	DECLARE @sqlQuery nvarchar(4000)
	

	SET @sqlQuery = '
	  
	  SELECT U.[ClienteId]
		  ,U.[CodigoIdentificacion]
		  ,U.[NombreCompleto]
		  ,U.[paisId]
		  ,U.[ciudadId]
		  ,U.[direccion]
		  ,U.[tipoClienteId]
		  ,U.[UserName]
		  ,U.[passwordChanged]
		  ,U.[estado]
		  ,U.[creditoEmision]
	      ,U.[creditoFlete]
	      ,U.[fechaRegistro]
		  ,U.[montoMaximoDeuda]
		  ,U.[observacionesCredito]
	  FROM [dbo].[tbl_CLI_Cliente] U
	  WHERE ' + @whereSql 
	
	EXEC(@sqlQuery)
	
END






GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetObjectActionsForActivity]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 06/05/2016
-- Description:	Get objectActions by activityId
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_GetObjectActionsForActivity]
	@intActivityId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [objectActionID]
	FROM [dbo].[tbl_SEG_ObjectActions] 
	WHERE [objectActionID] IN ('OWN', 'MAN_KPI') 
	AND [objectActionID] NOT IN (SELECT [objectActionID] 
								 FROM [dbo].[tbl_SEG_ObjectPublic] 
								 WHERE [objectID] = @intActivityId 
								 AND [objectTypeID] = 'ACTIVITY') 
	ORDER BY [order]
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetObjectActionsForKPI]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 06/05/2016
-- Description:	Get objectActions by KPIId
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_GetObjectActionsForKPI]
	@intKPIId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [objectActionID]
	FROM [dbo].[tbl_SEG_ObjectActions] 
	WHERE [objectActionID] IN ('OWN', 'VIEW_KPI', 'ENTER_DATA') 
	AND [objectActionID] NOT IN (SELECT [objectActionID] 
								 FROM [dbo].[tbl_SEG_ObjectPublic] 
								 WHERE [objectID] = @intKPIId 
								 AND [objectTypeID] = 'KPI') 
	ORDER BY [order]
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetObjectActionsForOrganization]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ================================================
-- Author:		Marcela Martinez
-- Create date: 06/05/2016
-- Description:	Get objectActions by organizationId
-- ================================================
CREATE PROCEDURE [dbo].[usp_SEG_GetObjectActionsForOrganization]
	@intOrganizationId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [objectActionID]
	FROM [dbo].[tbl_SEG_ObjectActions] 
	WHERE [objectActionID] IN ('OWN', 'MAN_PROJECT', 'MAN_ACTIVITY', 'MAN_PEOPLE', 'MAN_KPI') 
	AND [objectActionID] NOT IN (SELECT [objectActionID] 
								 FROM [dbo].[tbl_SEG_ObjectPublic] 
								 WHERE [objectID] = @intOrganizationId 
								 AND [objectTypeID] = 'ORGANIZATION')
	ORDER BY [order]
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetObjectActionsForPeople]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 06/05/2016
-- Description:	Get objectActions by personId
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_GetObjectActionsForPeople]
	@intPersonId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [objectActionID]
	FROM [dbo].[tbl_SEG_ObjectActions] 
	WHERE [objectActionID] IN ('OWN', 'MAN_KPI') 
	AND [objectActionID] NOT IN (SELECT [objectActionID] 
								 FROM [dbo].[tbl_SEG_ObjectPublic] 
								 WHERE [objectID] = @intPersonId 
								 AND [objectTypeID] = 'PERSON') 
	ORDER BY [order]
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetObjectActionsForProject]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Marcela Martinez
-- Create date: 06/05/2016
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_GetObjectActionsForProject]
	@intProjectId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [objectActionID]
	FROM [dbo].[tbl_SEG_ObjectActions] 
	WHERE [objectActionID] IN ('OWN', 'MAN_ACTIVITY', 'MAN_KPI') 
	AND [objectActionID] NOT IN (SELECT [objectActionID] 
								 FROM [dbo].[tbl_SEG_ObjectPublic] 
								 WHERE [objectID] = @intProjectId 
								 AND [objectTypeID] = 'PROJECT') 
    ORDER BY [order]
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetObjectPermissionsByObject]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 06/05/2015
-- Description:	Get actions for the organization
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_GetObjectPermissionsByObject]
	@varObjectTypeId AS VARCHAR(20),
	@intObjectId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;
	
	SELECT [objectID]
		  ,[objectTypeID]
		  ,[objectActionID]
		  ,[username]
		  ,[fullname]
		  ,[email] 
	FROM 
	(
		SELECT [op].[objectID]
			  ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,'' [username]
			  ,'' [fullname]
			  ,'' [email]
		FROM [dbo].[tbl_SEG_ObjectPublic] [op] 
		WHERE [op].[objectTypeID] = @varObjectTypeId 
		AND [op].[objectID] = @intObjectId
		
		UNION
		
		SELECT [op].[objectID]
			  ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,[op].[username]
			  ,[us].[fullname]
			  ,[us].[email]
		FROM [dbo].[tbl_SEG_ObjectPermissions] [op] 
		INNER JOIN [dbo].[tbl_SEG_User] [us] ON [op].[username] = [us].[username] 
		WHERE [op].[objectTypeID] = @varObjectTypeId 
		AND [op].[objectID] = @intObjectId
	) [op] 
	ORDER BY [username]
    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetObjectPermissionsByUser]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 11/05/2016
-- Description:	Get objectPermissions by user
-- =============================================
CREATE PROCEDURE [dbo].[usp_SEG_GetObjectPermissionsByUser]
	@varObjectTypeId AS VARCHAR(20),
	@intObjectId AS INT,
	@varUserName AS VARCHAR(50)
AS
BEGIN
	
	SET NOCOUNT ON;

	DECLARE @organizationID INT
	DECLARE @projectID INT
	DECLARE @activityID INT

	DECLARE @tblPermissions AS TABLE
	([objectID] [int] NOT NULL,
	 [objectTypeID] [varchar](20) NOT NULL,
	 [objectActionID] [varchar](20) NOT NULL,
	 [username] [varchar](50) NOT NULL,
	 [fullname] [varchar](500) NOT NULL,
	 [email] [varchar](100) NOT NULL)
	
	INSERT @tblPermissions
    SELECT [op].[objectID]
		  ,[op].[objectTypeID]
		  ,[op].[objectActionID]
		  ,[op].[username]
		  ,[us].[fullname]
		  ,[us].[email]
	FROM [dbo].[tbl_SEG_ObjectPermissions] [op] 
	INNER JOIN [dbo].[tbl_SEG_User] [us] ON [op].[username] = [us].[username] 
	WHERE [op].[objectTypeID] = @varObjectTypeId  
	AND [op].[objectID] = @intObjectId 
	AND [op].[username] = @varUserName
    
    IF (@varObjectTypeId = 'PROJECT')
	BEGIN
		SELECT @organizationID = organizationID
		FROM [dbo].[tbl_Project]
		WHERE [projectID] = @intObjectId
		
		INSERT @tblPermissions
		SELECT [op].[objectID]
			  ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,[op].[username]
			  ,[us].[fullname]
			  ,[us].[email]
		FROM [dbo].[tbl_SEG_ObjectPermissions] [op] 
		INNER JOIN [dbo].[tbl_SEG_User] [us] ON [op].[username] = [us].[username] 
		WHERE [op].[objectTypeID] = 'ORGANIZATION'  
		AND [op].[objectID] = @organizationID 
		AND [op].[username] = @varUserName
		
		INSERT @tblPermissions
		SELECT [objectID]
		      ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,'' [username]
			  ,'' [fullname]
			  ,'' [email]
		FROM [dbo].[tbl_SEG_ObjectPublic] [op]
		WHERE [objectTypeID] = 'ORGANIZATION' 
		and   [objectID] = @organizationID
	END
    
    IF (@varObjectTypeId = 'PERSON')
	BEGIN
		SELECT @organizationID = organizationID
		FROM [dbo].[tbl_People]
		WHERE [personID] = @intObjectId
		
		INSERT @tblPermissions
		SELECT [op].[objectID]
			  ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,[op].[username]
			  ,[us].[fullname]
			  ,[us].[email]
		FROM [dbo].[tbl_SEG_ObjectPermissions] [op] 
		INNER JOIN [dbo].[tbl_SEG_User] [us] ON [op].[username] = [us].[username] 
		WHERE [op].[objectTypeID] = 'ORGANIZATION'  
		AND [op].[objectID] = @organizationID 
		AND [op].[username] = @varUserName
		
		INSERT @tblPermissions
		SELECT [objectID]
		      ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,'' [username]
			  ,'' [fullname]
			  ,'' [email]
		FROM [dbo].[tbl_SEG_ObjectPublic] [op]
		WHERE [objectTypeID] = 'ORGANIZATION' 
		and   [objectID] = @organizationID
	END
	
	IF (@varObjectTypeId = 'ACTIVITY')
	BEGIN
		SELECT @organizationID = organizationID,
		       @projectID = projectID
		FROM [dbo].[tbl_Activity]
		WHERE [activityID] = @intObjectId
		
		INSERT @tblPermissions
		SELECT [op].[objectID]
			  ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,[op].[username]
			  ,[us].[fullname]
			  ,[us].[email]
		FROM [dbo].[tbl_SEG_ObjectPermissions] [op] 
		INNER JOIN [dbo].[tbl_SEG_User] [us] ON [op].[username] = [us].[username] 
		WHERE [op].[objectTypeID] = 'ORGANIZATION'  
		AND [op].[objectID] = @organizationID 
		AND [op].[username] = @varUserName
		
		INSERT @tblPermissions
		SELECT [objectID]
		      ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,'' [username]
			  ,'' [fullname]
			  ,'' [email]
		FROM [dbo].[tbl_SEG_ObjectPublic] [op]
		WHERE [objectTypeID] = 'ORGANIZATION' 
		and   [objectID] = @organizationID
		
		INSERT @tblPermissions
		SELECT [op].[objectID]
			  ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,[op].[username]
			  ,[us].[fullname]
			  ,[us].[email]
		FROM [dbo].[tbl_SEG_ObjectPermissions] [op] 
		INNER JOIN [dbo].[tbl_SEG_User] [us] ON [op].[username] = [us].[username] 
		WHERE [op].[objectTypeID] = 'PROJECT'  
		AND [op].[objectID] = @projectID 
		AND [op].[username] = @varUserName
		
		INSERT @tblPermissions
		SELECT [objectID]
		      ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,'' [username]
			  ,'' [fullname]
			  ,'' [email]
		FROM [dbo].[tbl_SEG_ObjectPublic] [op]
		WHERE [objectTypeID] = 'PROJECT' 
		and   [objectID] = @projectID
	END
	
	IF (@varObjectTypeId = 'KPI')
	BEGIN
		SELECT @organizationID = organizationID,
		       @projectID = projectID,
		       @activityID = activityID
		FROM [dbo].[tbl_KPI]
		WHERE [kpiID] = @intObjectId
		
		INSERT @tblPermissions
		SELECT [op].[objectID]
			  ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,[op].[username]
			  ,[us].[fullname]
			  ,[us].[email]
		FROM [dbo].[tbl_SEG_ObjectPermissions] [op] 
		INNER JOIN [dbo].[tbl_SEG_User] [us] ON [op].[username] = [us].[username] 
		WHERE [op].[objectTypeID] = 'ORGANIZATION'  
		AND [op].[objectID] = @organizationID 
		AND [op].[username] = @varUserName
		
		INSERT @tblPermissions
		SELECT [objectID]
		      ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,'' [username]
			  ,'' [fullname]
			  ,'' [email]
		FROM [dbo].[tbl_SEG_ObjectPublic] [op]
		WHERE [objectTypeID] = 'ORGANIZATION' 
		and   [objectID] = @organizationID
		
		INSERT @tblPermissions
		SELECT [op].[objectID]
			  ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,[op].[username]
			  ,[us].[fullname]
			  ,[us].[email]
		FROM [dbo].[tbl_SEG_ObjectPermissions] [op] 
		INNER JOIN [dbo].[tbl_SEG_User] [us] ON [op].[username] = [us].[username] 
		WHERE [op].[objectTypeID] = 'PROJECT'  
		AND [op].[objectID] = @projectID 
		AND [op].[username] = @varUserName
		
		INSERT @tblPermissions
		SELECT [objectID]
		      ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,'' [username]
			  ,'' [fullname]
			  ,'' [email]
		FROM [dbo].[tbl_SEG_ObjectPublic] [op]
		WHERE [objectTypeID] = 'PROJECT' 
		and   [objectID] = @projectID
		
		INSERT @tblPermissions
		SELECT [op].[objectID]
			  ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,[op].[username]
			  ,[us].[fullname]
			  ,[us].[email]
		FROM [dbo].[tbl_SEG_ObjectPermissions] [op] 
		INNER JOIN [dbo].[tbl_SEG_User] [us] ON [op].[username] = [us].[username] 
		WHERE [op].[objectTypeID] = 'ACTIVITY'  
		AND [op].[objectID] = @activityID 
		AND [op].[username] = @varUserName
		
		INSERT @tblPermissions
		SELECT [objectID]
		      ,[op].[objectTypeID]
			  ,[op].[objectActionID]
			  ,'' [username]
			  ,'' [fullname]
			  ,'' [email]
		FROM [dbo].[tbl_SEG_ObjectPublic] [op]
		WHERE [objectTypeID] = 'ACTIVITY' 
		and   [objectID] = @activityID
	END
	
	SELECT [objectID]
		  ,[objectTypeID]
		  ,[objectActionID]
		  ,[username]
		  ,[fullname]
		  ,[email]
    FROM @tblPermissions
END
GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetPermissionsForRole]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_SEG_GetPermissionsForRole]
	-- Add the parameters for the stored procedure here
	@varRole varchar(100)
-- ENCRYPT_ME
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [os].[permissionid], 
		[os].[description], 
		[ar].[role]
	FROM [dbo].[tbl_SEG_Permission] [os] 
		LEFT OUTER JOIN [dbo].[tbl_SEG_AccessRole] [ar] 
		ON [os].[permissionid] = [ar].[permissionid]
		AND [ar].[role] = @varRole
		ORDER BY [os].[description] ASC
END





GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetPermissionsForUser]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_SEG_GetPermissionsForUser]
	@intUserId int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [os].[permissionId], 
		 [os].[description], 
		[au].[userid]
	FROM [dbo].[tbl_SEG_Permission] [os] 
		LEFT OUTER JOIN [dbo].[tbl_SEG_AccessUser] [au] 
		ON [os].[permissionid] = [au].[permissionid]
		AND [au].[userid] = @intUserId
		ORDER BY [os].[description] ASC
END





GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetRolesAllowedForPermission]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




-- ==============================================================================================================
CREATE PROCEDURE [dbo].[usp_SEG_GetRolesAllowedForPermission] 
	@varMnemonic VARCHAR(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [ar].[role] 
		FROM [dbo].[tbl_SEG_Permission] [os], [dbo].[tbl_SEG_AccessRole] [ar]
		WHERE [os].[permissionID] = [ar].[permissionID] 
		AND [os].[mnemonic] = @varMnemonic
END





GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetUserById]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[usp_SEG_GetUserById]
	@intUserId AS INT
AS
BEGIN
	SELECT [userId]
      ,[fullname]
      ,[cellphone]
      ,[address]
      ,[phonenumber]
      ,[phonearea]
      ,[phonecode]
	  ,[username]
	  ,[email]
  FROM [dbo].[tbl_SEG_User]
	WHERE	
		[userId] = @intUserId 
END






GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetUserByUsername]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






--=================================================================================================================
CREATE PROCEDURE [dbo].[usp_SEG_GetUserByUsername]
	@varUserName AS VARCHAR(50)
AS
BEGIN
	SELECT [userId]
      ,[fullname]
      ,[cellphone]
      ,[address]
      ,[phonenumber]
      ,[phonearea]
      ,[phonecode]
	  ,[username]
	  ,[email]
  FROM [dbo].[tbl_SEG_User]
	WHERE	
		[username] = @varUserName
END






GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetUsersBySearchParameters]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO







CREATE PROCEDURE [dbo].[usp_SEG_GetUsersBySearchParameters]
	@varUserName AS VARCHAR(50),	
	@varFullname AS VARCHAR(500)
AS
BEGIN
	SELECT [userId]
      ,[fullname]
      ,[cellphone]
      ,[address]
      ,[phonenumber]
      ,[phonearea]
      ,[phonecode]
	  ,[username]
	  ,[email]
  FROM [dbo].[tbl_SEG_User]
	WHERE
		CASE @varUserName 
			WHEN '' THEN 1
			ELSE
				CASE WHEN
					[username] LIKE @varUserName
				THEN 1 ELSE 0 END
		END  = 1
	AND
		CASE @varFullname
			WHEN '' THEN 1
			ELSE
				CASE WHEN
					[fullname] LIKE @varFullname
				THEN 1 ELSE 0 END
		END = 1
END






GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GetUsersForSearch]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[usp_SEG_GetUsersForSearch]
	@whereSql AS VARCHAR(4000)
AS
BEGIN
	
	DECLARE @sqlQuery nvarchar(4000)
	

	SET @sqlQuery = 'SELECT U.[userId]
		  ,U.[fullname]
		  ,U.[cellphone]
		  ,U.[address]
		  ,U.[phonenumber]
		  ,U.[phonearea]
		  ,U.[phonecode]
		  ,U.[username]
		  ,U.[email]
	  FROM [dbo].[tbl_SEG_User] U
	  WHERE ' + @whereSql 
	
	EXEC(@sqlQuery)
	
END






GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_GeUserIdByEmail]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




CREATE PROCEDURE [dbo].[usp_SEG_GeUserIdByEmail]
	@varEmailAddress VARCHAR(250)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT [userId]
		FROM [dbo].[tbl_SEG_User]
		WHERE [email] = @varEmailAddress
END






GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertObjectPermissions]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Marcela Martinez
-- Create date: 11/05/2016
-- Description:	Insert objectActionList for userName
-- =================================================
CREATE PROCEDURE [dbo].[usp_SEG_InsertObjectPermissions] 
	@varObjectTypeId AS VARCHAR(20),
	@intObjectId AS INT,
	@varUserName AS VARCHAR(50),
	@varObjectActionList AS VARCHAR(MAX) -- list of objectActionId separate by ;
AS
BEGIN
	
	SET NOCOUNT ON;
	
	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		SAVE TRANSACTION InsertObjectPermissionPS;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions] 
		WHERE [objectTypeID] = @varObjectTypeId
		AND [objectID] = @intObjectId 
		AND [username] = @varUserName
		
		
		INSERT INTO [dbo].[tbl_SEG_ObjectPermissions]
			   ([objectTypeID]
			   ,[objectID]
			   ,[username]
			   ,[objectActionID])
		SELECT @varObjectTypeId
			  ,@intObjectId
			  ,@varUserName
			  ,[oa].[objectActionID]
		FROM [dbo].[tbl_SEG_ObjectActions] [oa] 
		INNER JOIN [dbo].[tvf_SplitStringInTable] (@varObjectActionList,';') [d] ON [oa].[objectActionID] = [d].[splitvalue] 
	    
	    
	    -- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				ROLLBACK TRANSACTION InsertObjectPermissionPS;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
	    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertObjectPublic]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =================================================
-- Author:		Marcela Martinez
-- Create date: 11/05/2016
-- Description:	Insert objectActionList for everyone
-- =================================================
CREATE PROCEDURE [dbo].[usp_SEG_InsertObjectPublic] 
	@varObjectTypeId AS VARCHAR(20),
	@intObjectId AS INT,
	@varObjectActionList AS VARCHAR(MAX) -- list of objectActionId separate by ;
AS
BEGIN
	
	SET NOCOUNT ON;
	
	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		SAVE TRANSACTION InsertObjectPublicPS;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		INSERT INTO [dbo].[tbl_SEG_ObjectPublic]
           ([objectTypeID]
           ,[objectID]
           ,[objectActionID])
		SELECT @varObjectTypeId
			  ,@intObjectId
			  ,[oa].[objectActionID]
		FROM [dbo].[tbl_SEG_ObjectActions] [oa] 
		INNER JOIN [dbo].[tvf_SplitStringInTable] (@varObjectActionList,';') [d] ON [oa].[objectActionID] = [d].[splitvalue] 
	    
	    
	    DELETE FROM [dbo].[tbl_SEG_ObjectPermissions] 
	    WHERE [objectTypeID] = @varObjectTypeId
		AND [objectID] = @intObjectId 
		AND [objectActionID] IN (SELECT [objectActionID] FROM [dbo].[tbl_SEG_ObjectPublic] 
								 WHERE [objectTypeID] = @varObjectTypeId
								 AND [objectID] = @intObjectId)
	    
	    
	    -- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				ROLLBACK TRANSACTION InsertObjectPublicPS;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
	    
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertOperationForRole]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[usp_SEG_InsertOperationForRole]
	@intPermissionID int,
	@varRole varchar(100)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF NOT EXISTS(
					SELECT * 
						FROM [dbo].[tbl_SEG_AccessRole] 
						WHERE [permissionid] = @intPermissionID AND [role] = @varRole
				  ) 
	BEGIN
		INSERT INTO [dbo].[tbl_SEG_AccessRole]([permissionid], [role])
			VALUES (@intPermissionID, @varRole)
	END
END






GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertOperationForUser]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO





CREATE PROCEDURE [dbo].[usp_SEG_InsertOperationForUser]
	@intPermissionID int,
	@intUserID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	IF NOT EXISTS(
					SELECT * 
						FROM [dbo].[tbl_SEG_AccessUser] 
						WHERE [permissionID] = @intPermissionID AND [userID] = @intUserID
				  ) 
	BEGIN
		INSERT INTO [dbo].[tbl_SEG_AccessUser]([permissionID], [userID])
			VALUES (@intPermissionID, @intUserID)
	END
END






GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_InsertUserRecord]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_SEG_InsertUserRecord]
	@varFullname AS VARCHAR(500),
	@varCellphone AS VARCHAR(50),
	@varAddress AS VARCHAR(250),
	@varPhone AS VARCHAR(50),
	@varPhoneArea AS INT,
	@varPhoneCode AS INT,
	@varUsername AS VARCHAR(50),
	@varEmail AS VARCHAR(100),
	@intUserId as int output
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @varFinalFullname AS VARCHAR(500)
	DECLARE @varFinalCellphone AS VARCHAR(50)
	DECLARE @varFinalAddress AS VARCHAR(250)
	DECLARE @varFinalPhoneNumber AS VARCHAR(50)
	DECLARE @varFinalUsername AS VARCHAR(50)
	DECLARE @varFinalEmail AS VARCHAR(100)

	IF(@varFullname = '')
		SELECT @varFinalFullname = NULL 
	ELSE
		SELECT @varFinalFullname = @varFullname

	IF(@varCellphone = '')
		SELECT @varFinalCellphone = NULL 
	ELSE
		SELECT @varFinalCellphone = @varCellphone

	IF(@varAddress = '')
		SELECT @varFinalAddress = NULL 
	ELSE
		SELECT @varFinalAddress = @varAddress

	IF(@varPhone = '')
		SELECT @varFinalPhoneNumber = NULL 
	ELSE
		SELECT @varFinalPhoneNumber = @varPhone
		
	IF(@varUsername = '')
		SELECT @varFinalUsername = NULL 
	ELSE
		SELECT @varFinalUsername = @varUsername

	IF (@varEmail = '')
		SELECT @varFinalEmail = NULL
	ELSE
		SELECT @varFinalEmail = @varEmail
		
		
	-- Detectamos si el SP fue llamado desde una transacción activa y 
	-- la guardamos para usarla más tarde.  En el SP, @TranCounter = 0
	-- significa que no existen transacciones activas y que este SP
	-- comenzó una.  @TranCounter > 0 significa que se inició una transacción
	-- antes de la que empezaremos en este SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;

	IF @TranCounter > 0
		-- Se llamó a este SP cuando ya existe una transacción activa.
		-- Creamos un punto de restauración para poder hacer sólo rollback
		-- de esta transacción si hay algún error.
		-- OJO:  Este nombre tiene que cambiarse!!!  Debe ser único para la 
		-- cadena de transacciones.  También debe cambiarse al final del SP!!!
		SAVE TRANSACTION InsertUserPS;
	ELSE
		-- Este SP comienza su propia transacción y no hay otra antes
		BEGIN TRANSACTION;
	BEGIN TRY
 	
	 INSERT INTO [dbo].[tbl_SEG_User]
           ([fullname]
           ,[cellphone]
           ,[address]
           ,[phonenumber]
           ,[phonearea]
           ,[phonecode]
           ,[username]
           ,[email])
     VALUES
           (@varFinalFullname
           ,@varFinalCellphone
           ,@varFinalAddress
           ,@varFinalPhoneNumber
           ,@varPhoneArea
           ,@varPhoneCode
           ,@varFinalUsername
           ,@varFinalEmail)

	SELECT @intUserId = SCOPE_IDENTITY()
	
	-- Llegamos aquí si no hay errores;  debemos hacer un commit de la transacción
		-- que comenzamos, pero no debemos hacer un comit si hubo una transacción
		-- comenzada anteriormente.
		IF @TranCounter = 0
			-- @TranCounter = 0 significa que no se comenzó ninguna transacción antes de 
			-- esta transacción y por lo tando debemos hacer un comit de nuestra 
			-- stranacción.
			COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH

		-- Hubo un error. Debemos detemrinar que tipo de rollback debemos hacer.

		IF @TranCounter = 0
			-- Tenemos sólo la transacción que comenzamos en este SP.  Rollback
			-- toda la transacción.
			ROLLBACK TRANSACTION;
		ELSE
			-- Se comenzó una transacción antes de que llamen a este SP. Debemos hacer
			-- un rollback solo de las modificaciones que hicimos en este SP

			-- Vemos XACT_STATE y los posibles resultados son 0, 1, or -1.
			-- Si es 1, la transacción es válida y se puede hacer un comit. Pero como 
			-- estamos en el CATCH no hacemos comit.
			-- Si es -1 la transacción no es válida y se debe hacer un rollback
			-- Si es - Significa que no hay un transacción y que un rollback causaría un error
			-- Ver http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() <> -1
				-- Si la transacción es todavía válida, hacemos un rollback hasta el punto
				-- de restauración definido anteriormente.  
				-- Sólo podemos hacer un rollback si XACT_STATE() = -1
				-- OJO: Este es el mismo nombre utilizado anterioremente!!  
				ROLLBACK TRANSACTION InsertUserPS;

				-- Si la transaccion no es válida no se puede hacer un commit ni un rollback, 
				-- por lo que un rollback al punto de restauración no es permitido por que 
				-- el rollback al punto de restauración escribiría en el log de la base de 
				-- datos.  Símplemente debemos retornar al que nos llamó y este será 
				-- responsable de hacer rollback a la transacción. 

		-- Luego de hacer el rollback correspondiente, debemos propagar la información de error
		-- al SP que nos llamó. 
		--
		-- Ver http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_IsPermissionAllowedForRole]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[usp_SEG_IsPermissionAllowedForRole]
	@intPermissionID int,
	@varRole varchar(100)
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT COUNT([permissionid]) AS [OC] 
	FROM [dbo].[tbl_SEG_AccessRole] [ar]
	WHERE [ar].[permissionid] = @intPermissionID 
	AND [ar].[role] = @varRole
	
END





GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_IsPermissionAllowedForUser]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE PROCEDURE [dbo].[usp_SEG_IsPermissionAllowedForUser]
	@intPermissionID int,
	@intUserId int
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT COUNT([permissionId]) AS [OC] 
	FROM [dbo].[tbl_SEG_AccessUser] [au]
	WHERE [au].[permissionid] = @intPermissionID 
	AND [au].[userid] = @intUserId
	
END





GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_IsUserAllowedToPerformPermission]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


-- ==============================================================================================================
/* 
* Get 1 if the user is allowed to perform permission and 0 otherwise
* Variables: @varMnemonic,  @intUserID
* Created by: Javier Viscarra Vargas
* Date: 10/Nov/2008
*/
CREATE PROCEDURE [dbo].[usp_SEG_IsUserAllowedToPerformPermission] 
	@varMnemonic varchar(100),
	@intUser int
AS
BEGIN
	
	SET NOCOUNT ON;

	SELECT COUNT(*) [count]
	FROM [dbo].[tbl_SEG_Permission] [os], [dbo].[tbl_SEG_AccessUser] [au]
	WHERE [os].[permissionID] = [au].[permissionID]
	AND [os].[mnemonic] = @varMnemonic
	AND [au].[userID] = @intUser
		
END


GO
/****** Object:  StoredProcedure [dbo].[usp_SEG_UpdateUserRecord]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO






--=======================================================================================================
CREATE PROCEDURE [dbo].[usp_SEG_UpdateUserRecord]
	@varFullname AS VARCHAR(500),
	@varCellphone AS VARCHAR(50),
	@varAddress AS VARCHAR(250),
	@varPhone AS VARCHAR(50),
	@varPhoneArea AS INT,
	@varPhoneCode AS INT,
	@varUsername AS VARCHAR(50),
	@intUserId as int,
	@varEmail AS VARCHAR(100)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @varFinalFullname AS VARCHAR(500)
	DECLARE @varFinalCellphone AS VARCHAR(50)
	DECLARE @varFinalAddress AS VARCHAR(250)
	DECLARE @varFinalPhone AS VARCHAR(50)
	DECLARE @varFinalUsername AS VARCHAR(50)
	DECLARE @varFinalEmail AS VARCHAR(100)

	IF(@varFullname = '')
		SELECT @varFinalFullname = NULL 
	ELSE
		SELECT @varFinalFullname = @varFullname

	IF(@varCellphone = '')
		SELECT @varFinalCellphone = NULL 
	ELSE
		SELECT @varFinalCellphone = @varCellphone

	IF(@varAddress = '')
		SELECT @varFinalAddress = NULL 
	ELSE
		SELECT @varFinalAddress = @varAddress

	IF(@varPhone = '')
		SELECT @varFinalPhone = NULL 
	ELSE
		SELECT @varFinalPhone = @varPhone

	IF(@varUsername = '')
		SELECT @varFinalUsername = NULL 
	ELSE
		SELECT @varFinalUsername = @varUsername

	IF (@varEmail = '')
		SELECT @varFinalEmail = NULL
	ELSE
		SELECT @varFinalEmail = @varEmail
		
	-- Detectamos si el SP fue llamado desde una transacción activa y 
	-- la guardamos para usarla más tarde.  En el SP, @TranCounter = 0
	-- significa que no existen transacciones activas y que este SP
	-- comenzó una.  @TranCounter > 0 significa que se inició una transacción
	-- antes de la que empezaremos en este SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;

	IF @TranCounter > 0
		-- Se llamó a este SP cuando ya existe una transacción activa.
		-- Creamos un punto de restauración para poder hacer sólo rollback
		-- de esta transacción si hay algún error.
		-- OJO:  Este nombre tiene que cambiarse!!!  Debe ser único para la 
		-- cadena de transacciones.  También debe cambiarse al final del SP!!!
		SAVE TRANSACTION UpdateUserPS;
	ELSE
		-- Este SP comienza su propia transacción y no hay otra antes
		BEGIN TRANSACTION;
	BEGIN TRY
	
		UPDATE [dbo].[tbl_SEG_User]
	    SET [fullname] = @varFinalFullname
		  ,[cellphone] = @varFinalCellphone
		  ,[address] = @varFinalAddress
		  ,[phonenumber] = @varFinalPhone
		  ,[phonearea] = @varPhoneArea
		  ,[phonecode] = @varPhoneCode
		  ,[username] = @varFinalUsername
		  ,[email] = @varFinalEmail
		WHERE 
			[userid] = @intUserId
	
	-- Llegamos aquí si no hay errores;  debemos hacer un commit de la transacción
		-- que comenzamos, pero no debemos hacer un comit si hubo una transacción
		-- comenzada anteriormente.
		IF @TranCounter = 0
			-- @TranCounter = 0 significa que no se comenzó ninguna transacción antes de 
			-- esta transacción y por lo tando debemos hacer un comit de nuestra 
			-- stranacción.
			COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH

		-- Hubo un error. Debemos detemrinar que tipo de rollback debemos hacer.

		IF @TranCounter = 0
			-- Tenemos sólo la transacción que comenzamos en este SP.  Rollback
			-- toda la transacción.
			ROLLBACK TRANSACTION;
		ELSE
			-- Se comenzó una transacción antes de que llamen a este SP. Debemos hacer
			-- un rollback solo de las modificaciones que hicimos en este SP

			-- Vemos XACT_STATE y los posibles resultados son 0, 1, or -1.
			-- Si es 1, la transacción es válida y se puede hacer un comit. Pero como 
			-- estamos en el CATCH no hacemos comit.
			-- Si es -1 la transacción no es válida y se debe hacer un rollback
			-- Si es - Significa que no hay un transacción y que un rollback causaría un error
			-- Ver http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() <> -1
				-- Si la transacción es todavía válida, hacemos un rollback hasta el punto
				-- de restauración definido anteriormente.  
				-- Sólo podemos hacer un rollback si XACT_STATE() = -1
				-- OJO: Este es el mismo nombre utilizado anterioremente!!  
				ROLLBACK TRANSACTION UpdateUserPS;

				-- Si la transaccion no es válida no se puede hacer un commit ni un rollback, 
				-- por lo que un rollback al punto de restauración no es permitido por que 
				-- el rollback al punto de restauración escribiría en el log de la base de 
				-- datos.  Símplemente debemos retornar al que nos llamó y este será 
				-- responsable de hacer rollback a la transacción. 

		-- Luego de hacer el rollback correspondiente, debemos propagar la información de error
		-- al SP que nos llamó. 
		--
		-- Ver http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END




GO
/****** Object:  StoredProcedure [dbo].[usp_TOUR_CheckUserTour]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016-07-29
-- Description:	Check if user end a specific tour
-- =============================================
CREATE PROCEDURE [dbo].[usp_TOUR_CheckUserTour]
	@intUserId	INT,
	@varTourId	VARCHAR(50),
	@bitChecked BIT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SET @bitChecked = 0

    DECLARE @intCounter INT = 0
    
    SELECT @intCounter = COUNT(*)
    FROM tbl_UserTour
    WHERE [userId] = @intUserId
		AND [tourId] = @varTourId
		
	IF @intCounter > 0
		SET @bitChecked = 1
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_TOUR_SetUserTourStatus]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jose Carlos Gutierrez
-- Create date: 2016-07-29
-- Description:	Update UserTour status
-- =============================================
CREATE PROCEDURE [dbo].[usp_TOUR_SetUserTourStatus]
	@intUserId	INT,
	@varTourId	VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    DECLARE @intCounter INT = 0
    
    SELECT @intCounter = COUNT(*)
    FROM [dbo].[tbl_UserTour]
    WHERE [userId] = @intUserId
		AND [tourId] = @varTourId
		
	IF @intCounter = 0
	BEGIN
	
		INSERT INTO [dbo].[tbl_UserTour]
			([userId],[tourId])
			VALUES
			(@intUserId, @varTourId)
	
	END
    
END


GO
/****** Object:  StoredProcedure [dbo].[usp_TRANSACTION_PATERN]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Ivan Krsul
-- Create date: April 11, 2016
-- Description:	Transaction pattern for use in the system
-- =============================================
CREATE PROCEDURE [dbo].[usp_TRANSACTION_PATERN]
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- We detect if the SP was called from an active transation and 
	-- we save it to use it later.  In the SP, @TranCounter = 0
	-- means that there are no active transations and that this SP
	-- started one. @TranCounter > 0 means that a transation was started
	-- before we started this SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- We called this SP when an active transaction already exists.
		-- We create a savepoint to be able to only roll back this 
		-- transaction if there is some error.
		-- ===============================================
		---  MAKE SURE THAT THIS NAME IS COPIED BELOW 
		---  AND IS UNIQUE IN THE SYSTEM!!!!!!
		-- ===============================================
		SAVE TRANSACTION XXXXXXXXXXXXXXXXXXXX;     
	ELSE
		-- This SP starts its own transaction and there was no previous transaction
		BEGIN TRANSACTION;

	BEGIN TRY
		
		-- =============================================================
		-- INSERT THE SQL STATEMENTS HERE
		-- =============================================================

		-- We arrived here without errors; we should commit the transation we started
		-- but we should not commit if there was a previous transaction started
		IF @TranCounter = 0
			-- @TranCounter = 0 means that no other transaction was started before this transaction 
			-- and that we shouold hence commit this transaction
			COMMIT TRANSACTION;
		
	END TRY
	BEGIN CATCH

		-- There was an error.  We need to determine what type of rollback we must perform

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		IF @TranCounter = 0
			-- We have only the transaction that we started in this SP.  Rollback
			-- all the tranaction.
			ROLLBACK TRANSACTION;
		ELSE
			-- A transaction was started before this SP was called.  We must
			-- rollback only the changes we made in this SP.

			-- We see XACT_STATE and the possible results are 0, 1, or -1.
			-- If it is 1, the transaction is valid and we can do a commit. But since we are in the 
			-- CATCH we don't do the commit. We need to rollback to the savepoint
			-- If it is -1 the transaction is not valid and we must do a full rollback... we can't
			-- do a rollback to a savepoint
			-- XACT_STATE = 0 means that there is no transaciton and a rollback would cause an error
			-- See http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() = 1
				-- If the transaction is still valid then we rollback to the restore point defined before
				-- ===============================================
				---  MAKE SURE THAT THIS NAME IS EXACTLY AS ABOVE 
				-- ===============================================
				ROLLBACK TRANSACTION XXXXXXXXXXXXXXXXXXXX;

				-- If the transaction is not valid we cannot do a commit or a rollback to a savepoint
				-- because a rollback is not allowed. Hence, we must simply return to the caller and 
				-- they will be respnsible to rollback the transaction

				-- If there is no tranaction then there is nothing left to do

		-- After doing the correpsonding rollback, we must propagate the error information to the SP that called us 
		-- See http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END

GO
/****** Object:  StoredProcedure [dbo].[usp_TRASH_GetTrashByObjectType]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 06/07/2016
-- Description:	Get Trash By object type
-- =============================================
CREATE PROCEDURE [dbo].[usp_TRASH_GetTrashByObjectType]
	@objectType VARCHAR(25),
	@whereClause VARCHAR(1000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	IF @whereClause IS NULL
		SET @whereClause = ''

	IF (@objectType = 'ORGANIZATION')
		SELECT [organizationID] as objectId
			  ,[name]
			  ,[dateDeleted]
			  ,[usernameDeleted]
			  ,[u].[fullname]
		FROM [dbo].[tbl_Organization] [o]
		INNER JOIN [dbo].[tbl_SEG_User] [u] ON [o].[usernameDeleted] = [u].[username]
		WHERE [deleted] = 1
		AND name like '%' + @whereClause + '%'
		ORDER BY [dateDeleted] DESC

	IF (@objectType = 'PROJECT')
		SELECT [projectID] as objectId
			  ,[name]
			  ,[dateDeleted]
			  ,[usernameDeleted]
			  ,[u].[fullname]
		FROM [dbo].[tbl_Project] [p]
		INNER JOIN [dbo].[tbl_SEG_User] [u] ON [p].[usernameDeleted] = [u].[username]
		WHERE [deleted] = 1
		AND name like '%' + @whereClause + '%'
		ORDER BY [dateDeleted] DESC

	IF (@objectType = 'PERSON')
		SELECT [personID] as objectId
			  ,[name]
			  ,[dateDeleted]
			  ,[usernameDeleted]
			  ,[u].[fullname]
		FROM [dbo].[tbl_People] [p]
		INNER JOIN [dbo].[tbl_SEG_User] [u] ON [p].[usernameDeleted] = [u].[username]
		WHERE [deleted] = 1
		AND name like '%' + @whereClause + '%'
		ORDER BY [dateDeleted] DESC
		
	IF (@objectType = 'ACTIVITY')
		SELECT [activityID] as objectId
			  ,[name]
			  ,[dateDeleted]
			  ,[usernameDeleted]
			  ,[u].[fullname]
		FROM [dbo].[tbl_Activity] [p]
		INNER JOIN [dbo].[tbl_SEG_User] [u] ON [p].[usernameDeleted] = [u].[username]
		WHERE [deleted] = 1
		AND name like '%' + @whereClause + '%'
		ORDER BY [dateDeleted] DESC

	IF (@objectType = 'KPI')
		SELECT [kpiID] as objectId
			  ,[name]
			  ,[dateDeleted]
			  ,[usernameDeleted]
			  ,[u].[fullname]
		FROM [dbo].[tbl_KPI] [p]
		INNER JOIN [dbo].[tbl_SEG_User] [u] ON [p].[usernameDeleted] = [u].[username]
		WHERE [deleted] = 1
		AND name like '%' + @whereClause + '%'
		ORDER BY [dateDeleted] DESC
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_TRASH_RestoreTrashObject]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 06/07/2016
-- Description:	Restore object from Trash
-- =============================================
CREATE PROCEDURE [dbo].[usp_TRASH_RestoreTrashObject]
	@objectType VARCHAR(25),
	@objectId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	IF (@objectType = 'ORGANIZATION')
		UPDATE [dbo].[tbl_Organization] 
		SET [deleted] = 0
		WHERE [organizationID] = @objectId
			  

	IF (@objectType = 'PROJECT')
		UPDATE [dbo].[tbl_Project] 
		SET [deleted] = 0
		WHERE [projectID] = @objectId

	IF (@objectType = 'PERSON')
		UPDATE [dbo].[tbl_People] 
		SET [deleted] = 0
		WHERE [personID] = @objectId
		
	IF (@objectType = 'ACTIVITY')
		UPDATE [dbo].[tbl_Activity]
		SET [deleted] = 0
		WHERE [activityID] = @objectId

	IF (@objectType = 'KPI')
		UPDATE [dbo].[tbl_KPI]
		SET [deleted] = 0
		WHERE [kpiID] = @objectId
		
END
GO
/****** Object:  StoredProcedure [dbo].[usp_TSK_DeleteManagerRecord]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_TSK_DeleteManagerRecord]
	@intTaskMgrId AS INT
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- Procedure called when there is an active transaction.
		-- Create a savepoint to be able to roll back only the work done
		-- in the procedure if there is an error.
		SAVE TRANSACTION DeleteManagerRecordPS;
	ELSE
		-- Procedure must start its own transaction.
		BEGIN TRANSACTION;

	BEGIN TRY	
	
		DELETE FROM [dbo].[tbl_TSK_Manager]
			WHERE 
			[ManagerId] = @intTaskMgrId

	-- Llegamos aquí si no hay errores;  debemos hacer un commit de la transacción
		-- que comenzamos, pero no debemos hacer un comit si hubo una transacción
		-- comenzada anteriormente.
		IF @TranCounter = 0
			-- @TranCounter = 0 significa que no se comenzó ninguna transacción antes de 
			-- esta transacción y por lo tando debemos hacer un comit de nuestra 
			-- stranacción.
			COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH

		-- Hubo un error. Debemos detemrinar que tipo de rollback debemos hacer.

		IF @TranCounter = 0
			-- Tenemos sólo la transacción que comenzamos en este SP.  Rollback
			-- toda la transacción.
			ROLLBACK TRANSACTION;
		ELSE
			-- Se comenzó una transacción antes de que llamen a este SP. Debemos hacer
			-- un rollback solo de las modificaciones que hicimos en este SP

			-- Vemos XACT_STATE y los posibles resultados son 0, 1, or -1.
			-- Si es 1, la transacción es válida y se puede hacer un comit. Pero como 
			-- estamos en el CATCH no hacemos comit.
			-- Si es -1 la transacción no es válida y se debe hacer un rollback
			-- Si es - Significa que no hay un transacción y que un rollback causaría un error
			-- Ver http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() <> -1
				-- Si la transacción es todavía válida, hacemos un rollback hasta el punto
				-- de restauración definido anteriormente.  
				-- Sólo podemos hacer un rollback si XACT_STATE() = -1
				-- OJO: Este es el mismo nombre utilizado anterioremente!!  
				ROLLBACK TRANSACTION DeleteManagerRecordPS;

				-- Si la transaccion no es válida no se puede hacer un commit ni un rollback, 
				-- por lo que un rollback al punto de restauración no es permitido por que 
				-- el rollback al punto de restauración escribiría en el log de la base de 
				-- datos.  Símplemente debemos retornar al que nos llamó y este será 
				-- responsable de hacer rollback a la transacción. 

		-- Luego de hacer el rollback correspondiente, debemos propagar la información de error
		-- al SP que nos llamó. 
		--
		-- Ver http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[usp_TSK_DeleteTaskRecord]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_TSK_DeleteTaskRecord]
	@varTaskId AS VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;
	IF @TranCounter > 0
		-- Procedure called when there is an active transaction.
		-- Create a savepoint to be able to roll back only the work done
		-- in the procedure if there is an error.
		SAVE TRANSACTION DeleteTaskRecordPS;
	ELSE
		-- Procedure must start its own transaction.
		BEGIN TRANSACTION;

	BEGIN TRY	
	
		DELETE FROM [dbo].[tbl_TSK_Task]
			WHERE 
			[TaskId] = @varTaskId

	-- Llegamos aquí si no hay errores;  debemos hacer un commit de la transacción
		-- que comenzamos, pero no debemos hacer un comit si hubo una transacción
		-- comenzada anteriormente.
		IF @TranCounter = 0
			-- @TranCounter = 0 significa que no se comenzó ninguna transacción antes de 
			-- esta transacción y por lo tando debemos hacer un comit de nuestra 
			-- stranacción.
			COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH

		-- Hubo un error. Debemos detemrinar que tipo de rollback debemos hacer.

		IF @TranCounter = 0
			-- Tenemos sólo la transacción que comenzamos en este SP.  Rollback
			-- toda la transacción.
			ROLLBACK TRANSACTION;
		ELSE
			-- Se comenzó una transacción antes de que llamen a este SP. Debemos hacer
			-- un rollback solo de las modificaciones que hicimos en este SP

			-- Vemos XACT_STATE y los posibles resultados son 0, 1, or -1.
			-- Si es 1, la transacción es válida y se puede hacer un comit. Pero como 
			-- estamos en el CATCH no hacemos comit.
			-- Si es -1 la transacción no es válida y se debe hacer un rollback
			-- Si es - Significa que no hay un transacción y que un rollback causaría un error
			-- Ver http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() <> -1
				-- Si la transacción es todavía válida, hacemos un rollback hasta el punto
				-- de restauración definido anteriormente.  
				-- Sólo podemos hacer un rollback si XACT_STATE() = -1
				-- OJO: Este es el mismo nombre utilizado anterioremente!!  
				ROLLBACK TRANSACTION DeleteTaskRecordPS;

				-- Si la transaccion no es válida no se puede hacer un commit ni un rollback, 
				-- por lo que un rollback al punto de restauración no es permitido por que 
				-- el rollback al punto de restauración escribiría en el log de la base de 
				-- datos.  Símplemente debemos retornar al que nos llamó y este será 
				-- responsable de hacer rollback a la transacción. 

		-- Luego de hacer el rollback correspondiente, debemos propagar la información de error
		-- al SP que nos llamó. 
		--
		-- Ver http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[usp_TSK_GetAllTasks]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_TSK_GetAllTasks]
AS
BEGIN
	SELECT [TaskId]
		,[TaskName]
		,[TaskDescription]
		,[StartDate]
		,[EndDate]
		,[PeriodLengthSeconds]
		,[Iterations]
		,[Enabled]
		,[IterationsExecuted]
		,[LastExecutionDate]
	FROM [tbl_TSK_Task] t

END


GO
/****** Object:  StoredProcedure [dbo].[usp_TSK_GetCurrentManager]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_TSK_GetCurrentManager]
AS
BEGIN
	SELECT [ManagerId]
      ,[Status]
      ,[SleepTimeSeconds]
      ,[NumberOfOverlapsAllowed]
  FROM [tbl_TSK_Manager]
END


GO
/****** Object:  StoredProcedure [dbo].[usp_TSK_GetManagerById]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_TSK_GetManagerById]
	@intTaskMgrId AS INT
AS
BEGIN
	SELECT [ManagerId]
      ,[Status]
      ,[SleepTimeSeconds]
      ,[NumberOfOverlapsAllowed]
  FROM [tbl_TSK_Manager]
	WHERE	
		[ManagerId] = @intTaskMgrId 
END


GO
/****** Object:  StoredProcedure [dbo].[usp_TSK_GetTaskById]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_TSK_GetTaskById]
	@varTaskId AS VARCHAR(50)
AS
BEGIN
	SELECT [TaskId]
		,[TaskName]
		,[TaskDescription]
		,[StartDate]
		,[EndDate]
		,[PeriodLengthSeconds]
		,[Iterations]
		,[Enabled]
		,[IterationsExecuted]
		,[LastExecutionDate]
  FROM [tbl_TSK_Task]
	WHERE	
		[TaskId] = @varTaskId 
END


GO
/****** Object:  StoredProcedure [dbo].[usp_TSK_GetTasksForExecution]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_TSK_GetTasksForExecution]
AS
BEGIN
	SELECT [TaskId]
		,[TaskName]
		,[TaskDescription]
		,[StartDate]
		,[EndDate]
		,[PeriodLengthSeconds]
		,[Iterations]
		,[Enabled]
		,[IterationsExecuted]
		,[LastExecutionDate]
	FROM [tbl_TSK_Task] t
	WHERE 
			t.[StartDate] <= GETDATE()
		AND DATEADD(ss, t.[PeriodLengthSeconds],CASE WHEN t.[LastExecutionDate] IS NULL THEN t.[StartDate] else t.[LastExecutionDate] END)<=GETDATE()
		AND t.[Enabled] = 1
		AND t.[Iterations] <> 0
		AND t.PeriodLengthSeconds > 0
		AND t.[EndDate] is null
		AND t.[IterationsExecuted] < t.[Iterations]
UNION

	SELECT [TaskId]
		,[TaskName]
		,[TaskDescription]
		,[StartDate]
		,[EndDate]
		,[PeriodLengthSeconds]
		,[Iterations]
		,[Enabled]
		,[IterationsExecuted]
		,[LastExecutionDate]
	FROM [tbl_TSK_Task] t
WHERE 
		t.[StartDate] <= GETDATE()
	AND DATEADD(ss, t.[PeriodLengthSeconds],CASE WHEN t.[LastExecutionDate] IS NULL THEN t.[StartDate] else t.[LastExecutionDate] END)<=GETDATE()
	AND t.[Enabled] = 1
	AND t.[PeriodLengthSeconds] > 0
	AND t.[EndDate] > GETDATE()
	AND t.[Iterations] = 0

END


GO
/****** Object:  StoredProcedure [dbo].[usp_TSK_InsertManagerRecord]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_TSK_InsertManagerRecord]
	@intStatus AS INT,
	@longSleepTime AS BIGINT,
	@intNumberOfOverlapsAllowed AS INT,
	@intTaskMgrId AS INT OUTPUT
AS
BEGIN
	SET NOCOUNT ON;

	-- Detectamos si el SP fue llamado desde una transacción activa y 
	-- la guardamos para usarla más tarde.  En el SP, @TranCounter = 0
	-- significa que no existen transacciones activas y que este SP
	-- comenzó una.  @TranCounter > 0 significa que se inició una transacción
	-- antes de la que empezaremos en este SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;

	IF @TranCounter > 0
		-- Se llamó a este SP cuando ya existe una transacción activa.
		-- Creamos un punto de restauración para poder hacer sólo rollback
		-- de esta transacción si hay algún error.
		-- OJO:  Este nombre tiene que cambiarse!!!  Debe ser único para la 
		-- cadena de transacciones.  También debe cambiarse al final del SP!!!
		SAVE TRANSACTION InsertManagerPS;
	ELSE
		-- Este SP comienza su propia transacción y no hay otra antes
		BEGIN TRANSACTION;
	BEGIN TRY
 	
	 INSERT INTO [dbo].[tbl_TSK_Manager]
           ([Status]
           ,[SleepTimeSeconds]
           ,[NumberOfOverlapsAllowed])
     VALUES
           (@intStatus
           ,@longSleepTime
           ,@intNumberOfOverlapsAllowed)

	SELECT @intTaskMgrId = SCOPE_IDENTITY()
	
	-- Llegamos aquí si no hay errores;  debemos hacer un commit de la transacción
		-- que comenzamos, pero no debemos hacer un comit si hubo una transacción
		-- comenzada anteriormente.
		IF @TranCounter = 0
			-- @TranCounter = 0 significa que no se comenzó ninguna transacción antes de 
			-- esta transacción y por lo tando debemos hacer un comit de nuestra 
			-- stranacción.
			COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH

		-- Hubo un error. Debemos detemrinar que tipo de rollback debemos hacer.

		IF @TranCounter = 0
			-- Tenemos sólo la transacción que comenzamos en este SP.  Rollback
			-- toda la transacción.
			ROLLBACK TRANSACTION;
		ELSE
			-- Se comenzó una transacción antes de que llamen a este SP. Debemos hacer
			-- un rollback solo de las modificaciones que hicimos en este SP

			-- Vemos XACT_STATE y los posibles resultados son 0, 1, or -1.
			-- Si es 1, la transacción es válida y se puede hacer un comit. Pero como 
			-- estamos en el CATCH no hacemos comit.
			-- Si es -1 la transacción no es válida y se debe hacer un rollback
			-- Si es - Significa que no hay un transacción y que un rollback causaría un error
			-- Ver http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() <> -1
				-- Si la transacción es todavía válida, hacemos un rollback hasta el punto
				-- de restauración definido anteriormente.  
				-- Sólo podemos hacer un rollback si XACT_STATE() = -1
				-- OJO: Este es el mismo nombre utilizado anterioremente!!  
				ROLLBACK TRANSACTION InsertManagerPS;

				-- Si la transaccion no es válida no se puede hacer un commit ni un rollback, 
				-- por lo que un rollback al punto de restauración no es permitido por que 
				-- el rollback al punto de restauración escribiría en el log de la base de 
				-- datos.  Símplemente debemos retornar al que nos llamó y este será 
				-- responsable de hacer rollback a la transacción. 

		-- Luego de hacer el rollback correspondiente, debemos propagar la información de error
		-- al SP que nos llamó. 
		--
		-- Ver http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[usp_TSK_InsertTaskRecord]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_TSK_InsertTaskRecord]
	@varTaskName AS VARCHAR(50),
	@varTaskDescription AS VARCHAR(50),
	@dtStartDate AS DATETIME,
	@dtEndDate AS DATETIME,
	@longPeriodLength as BIGINT,
	@intIterations AS int,
	@boolEnabled as bit,
	@intIterationsExec as int,
	@dtLastExDate as DATETIME,
	@varTaskId AS VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;

	DECLARE @varFinalTaskName AS VARCHAR(50);
	DECLARE @varFinalTaskDescription AS VARCHAR(50);

	IF(@varTaskName = '')
		SELECT @varFinalTaskName = NULL 
	ELSE
		SELECT @varFinalTaskName = @varTaskName
		
	IF(@varTaskDescription = '')
		SELECT @varFinalTaskDescription = NULL 
	ELSE
		SELECT @varFinalTaskDescription = @varTaskDescription

	-- Detectamos si el SP fue llamado desde una transacción activa y 
	-- la guardamos para usarla más tarde.  En el SP, @TranCounter = 0
	-- significa que no existen transacciones activas y que este SP
	-- comenzó una.  @TranCounter > 0 significa que se inició una transacción
	-- antes de la que empezaremos en este SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;

	IF @TranCounter > 0
		-- Se llamó a este SP cuando ya existe una transacción activa.
		-- Creamos un punto de restauración para poder hacer sólo rollback
		-- de esta transacción si hay algún error.
		-- OJO:  Este nombre tiene que cambiarse!!!  Debe ser único para la 
		-- cadena de transacciones.  También debe cambiarse al final del SP!!!
		SAVE TRANSACTION InsertTaskPS;
	ELSE
		-- Este SP comienza su propia transacción y no hay otra antes
		BEGIN TRANSACTION;
	BEGIN TRY
 	
	 INSERT INTO [dbo].[tbl_TSK_Task]
           ([TaskId],
           [TaskName]
           ,[TaskDescription]
           ,[StartDate]
           ,[EndDate]
           ,[PeriodLengthSeconds]
           ,[Iterations]
           ,[Enabled]
           ,[IterationsExecuted]
           ,[LastExecutionDate])
     VALUES
           (@varTaskId,
           @varFinalTaskName
           ,@varFinalTaskDescription,
           @dtStartDate
           ,@dtEndDate
           ,@longPeriodLength
           ,@intIterations
           ,@boolEnabled
           ,@intIterationsExec
           ,@dtLastExDate)
	
	-- Llegamos aquí si no hay errores;  debemos hacer un commit de la transacción
		-- que comenzamos, pero no debemos hacer un comit si hubo una transacción
		-- comenzada anteriormente.
		IF @TranCounter = 0
			-- @TranCounter = 0 significa que no se comenzó ninguna transacción antes de 
			-- esta transacción y por lo tando debemos hacer un comit de nuestra 
			-- stranacción.
			COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH

		-- Hubo un error. Debemos detemrinar que tipo de rollback debemos hacer.

		IF @TranCounter = 0
			-- Tenemos sólo la transacción que comenzamos en este SP.  Rollback
			-- toda la transacción.
			ROLLBACK TRANSACTION;
		ELSE
			-- Se comenzó una transacción antes de que llamen a este SP. Debemos hacer
			-- un rollback solo de las modificaciones que hicimos en este SP

			-- Vemos XACT_STATE y los posibles resultados son 0, 1, or -1.
			-- Si es 1, la transacción es válida y se puede hacer un comit. Pero como 
			-- estamos en el CATCH no hacemos comit.
			-- Si es -1 la transacción no es válida y se debe hacer un rollback
			-- Si es - Significa que no hay un transacción y que un rollback causaría un error
			-- Ver http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() <> -1
				-- Si la transacción es todavía válida, hacemos un rollback hasta el punto
				-- de restauración definido anteriormente.  
				-- Sólo podemos hacer un rollback si XACT_STATE() = -1
				-- OJO: Este es el mismo nombre utilizado anterioremente!!  
				ROLLBACK TRANSACTION InsertTaskPS;

				-- Si la transaccion no es válida no se puede hacer un commit ni un rollback, 
				-- por lo que un rollback al punto de restauración no es permitido por que 
				-- el rollback al punto de restauración escribiría en el log de la base de 
				-- datos.  Símplemente debemos retornar al que nos llamó y este será 
				-- responsable de hacer rollback a la transacción. 

		-- Luego de hacer el rollback correspondiente, debemos propagar la información de error
		-- al SP que nos llamó. 
		--
		-- Ver http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[usp_TSK_UpdateManagerRecord]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_TSK_UpdateManagerRecord]
	@intStatus AS INT,
	@longSleepTime AS BIGINT,
	@intNumberOfOverlapsAllowed AS INT,
	@intTaskMgrId AS INT
AS
BEGIN
	SET NOCOUNT ON;
		
	-- Detectamos si el SP fue llamado desde una transacción activa y 
	-- la guardamos para usarla más tarde.  En el SP, @TranCounter = 0
	-- significa que no existen transacciones activas y que este SP
	-- comenzó una.  @TranCounter > 0 significa que se inició una transacción
	-- antes de la que empezaremos en este SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;

	IF @TranCounter > 0
		-- Se llamó a este SP cuando ya existe una transacción activa.
		-- Creamos un punto de restauración para poder hacer sólo rollback
		-- de esta transacción si hay algún error.
		-- OJO:  Este nombre tiene que cambiarse!!!  Debe ser único para la 
		-- cadena de transacciones.  También debe cambiarse al final del SP!!!
		SAVE TRANSACTION UpdateManagerPS;
	ELSE
		-- Este SP comienza su propia transacción y no hay otra antes
		BEGIN TRANSACTION;
	BEGIN TRY
	
		UPDATE [dbo].[tbl_TSK_Manager]
	    SET [Status] = @intStatus
		  ,[SleepTimeSeconds] = @longSleepTime
		  ,[NumberOfOverlapsAllowed] = @intNumberOfOverlapsAllowed
		WHERE 
			[ManagerId] = @intTaskMgrId
	
	-- Llegamos aquí si no hay errores;  debemos hacer un commit de la transacción
		-- que comenzamos, pero no debemos hacer un comit si hubo una transacción
		-- comenzada anteriormente.
		IF @TranCounter = 0
			-- @TranCounter = 0 significa que no se comenzó ninguna transacción antes de 
			-- esta transacción y por lo tando debemos hacer un comit de nuestra 
			-- stranacción.
			COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH

		-- Hubo un error. Debemos detemrinar que tipo de rollback debemos hacer.

		IF @TranCounter = 0
			-- Tenemos sólo la transacción que comenzamos en este SP.  Rollback
			-- toda la transacción.
			ROLLBACK TRANSACTION;
		ELSE
			-- Se comenzó una transacción antes de que llamen a este SP. Debemos hacer
			-- un rollback solo de las modificaciones que hicimos en este SP

			-- Vemos XACT_STATE y los posibles resultados son 0, 1, or -1.
			-- Si es 1, la transacción es válida y se puede hacer un comit. Pero como 
			-- estamos en el CATCH no hacemos comit.
			-- Si es -1 la transacción no es válida y se debe hacer un rollback
			-- Si es - Significa que no hay un transacción y que un rollback causaría un error
			-- Ver http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() <> -1
				-- Si la transacción es todavía válida, hacemos un rollback hasta el punto
				-- de restauración definido anteriormente.  
				-- Sólo podemos hacer un rollback si XACT_STATE() = -1
				-- OJO: Este es el mismo nombre utilizado anterioremente!!  
				ROLLBACK TRANSACTION UpdateManagerPS;

				-- Si la transaccion no es válida no se puede hacer un commit ni un rollback, 
				-- por lo que un rollback al punto de restauración no es permitido por que 
				-- el rollback al punto de restauración escribiría en el log de la base de 
				-- datos.  Símplemente debemos retornar al que nos llamó y este será 
				-- responsable de hacer rollback a la transacción. 

		-- Luego de hacer el rollback correspondiente, debemos propagar la información de error
		-- al SP que nos llamó. 
		--
		-- Ver http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[usp_TSK_UpdateTaskRecord]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_TSK_UpdateTaskRecord]
	@varTaskName AS VARCHAR(50),
	@varTaskDescription AS VARCHAR(50),
	@dtStartDate AS DATETIME,
	@dtEndDate AS DATETIME,
	@longPeriodLength as BIGINT,
	@intIterations AS int,
	@boolEnabled as bit,
	@intIterationsExec as int,
	@dtLastExDate as DATETIME,
	@varTaskId AS VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;
	
	DECLARE @varFinalTaskName AS VARCHAR(50);
	DECLARE @varFinalTaskDescription AS VARCHAR(50);

	IF(@varTaskName = '')
		SELECT @varFinalTaskName = NULL 
	ELSE
		SELECT @varFinalTaskName = @varTaskName
		
	IF(@varTaskDescription = '')
		SELECT @varFinalTaskDescription = NULL 
	ELSE
		SELECT @varFinalTaskDescription = @varTaskDescription
	
	-- Detectamos si el SP fue llamado desde una transacción activa y 
	-- la guardamos para usarla más tarde.  En el SP, @TranCounter = 0
	-- significa que no existen transacciones activas y que este SP
	-- comenzó una.  @TranCounter > 0 significa que se inició una transacción
	-- antes de la que empezaremos en este SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;

	IF @TranCounter > 0
		-- Se llamó a este SP cuando ya existe una transacción activa.
		-- Creamos un punto de restauración para poder hacer sólo rollback
		-- de esta transacción si hay algún error.
		-- OJO:  Este nombre tiene que cambiarse!!!  Debe ser único para la 
		-- cadena de transacciones.  También debe cambiarse al final del SP!!!
		SAVE TRANSACTION UpdateTaskPS;
	ELSE
		-- Este SP comienza su propia transacción y no hay otra antes
		BEGIN TRANSACTION;
	BEGIN TRY
	
		UPDATE [dbo].[tbl_TSK_Task]
	    SET [TaskName] = @varFinalTaskName
		  ,[TaskDescription] = @varFinalTaskDescription
		  ,[StartDate] = @dtStartDate
		  ,[EndDate] = @dtEndDate
		  ,[PeriodLengthSeconds] = @longPeriodLength
		  ,[Iterations] = @intIterations
		  ,[Enabled] = @boolEnabled
		  ,[IterationsExecuted] = @intIterationsExec
		  ,[LastExecutionDate] = @dtLastExDate
		WHERE 
			[taskId] = @varTaskId
	
	-- Llegamos aquí si no hay errores;  debemos hacer un commit de la transacción
		-- que comenzamos, pero no debemos hacer un comit si hubo una transacción
		-- comenzada anteriormente.
		IF @TranCounter = 0
			-- @TranCounter = 0 significa que no se comenzó ninguna transacción antes de 
			-- esta transacción y por lo tando debemos hacer un comit de nuestra 
			-- stranacción.
			COMMIT TRANSACTION;
	END TRY
	BEGIN CATCH

		-- Hubo un error. Debemos detemrinar que tipo de rollback debemos hacer.

		IF @TranCounter = 0
			-- Tenemos sólo la transacción que comenzamos en este SP.  Rollback
			-- toda la transacción.
			ROLLBACK TRANSACTION;
		ELSE
			-- Se comenzó una transacción antes de que llamen a este SP. Debemos hacer
			-- un rollback solo de las modificaciones que hicimos en este SP

			-- Vemos XACT_STATE y los posibles resultados son 0, 1, or -1.
			-- Si es 1, la transacción es válida y se puede hacer un comit. Pero como 
			-- estamos en el CATCH no hacemos comit.
			-- Si es -1 la transacción no es válida y se debe hacer un rollback
			-- Si es - Significa que no hay un transacción y que un rollback causaría un error
			-- Ver http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() <> -1
				-- Si la transacción es todavía válida, hacemos un rollback hasta el punto
				-- de restauración definido anteriormente.  
				-- Sólo podemos hacer un rollback si XACT_STATE() = -1
				-- OJO: Este es el mismo nombre utilizado anterioremente!!  
				ROLLBACK TRANSACTION UpdateTaskPS;

				-- Si la transaccion no es válida no se puede hacer un commit ni un rollback, 
				-- por lo que un rollback al punto de restauración no es permitido por que 
				-- el rollback al punto de restauración escribiría en el log de la base de 
				-- datos.  Símplemente debemos retornar al que nos llamó y este será 
				-- responsable de hacer rollback a la transacción. 

		-- Luego de hacer el rollback correspondiente, debemos propagar la información de error
		-- al SP que nos llamó. 
		--
		-- Ver http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH
END


GO
/****** Object:  StoredProcedure [dbo].[usp_VIEWSTATE_ExpireViewState]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Vladimir Calderon
-- Create date: November 16 2011
-- Description:	Function that deletes all viewstates that have expired
-- =============================================
CREATE PROCEDURE [dbo].[usp_VIEWSTATE_ExpireViewState] 
AS
BEGIN
      SET NOCOUNT ON
      DELETE FROM dbo.tbl_ViewState
       WHERE GETUTCDATE() > DATEADD(minute, Timeout, LastAccessed)
END


GO
/****** Object:  StoredProcedure [dbo].[usp_VIEWSTATE_GetViewState]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Vladimir Calderon
-- Create date: November 16 2011
-- Description:	Obtains a viewstate by GUID
-- =============================================
CREATE PROCEDURE [dbo].[usp_VIEWSTATE_GetViewState] (@viewStateId UNIQUEIDENTIFIER) AS
      SET NOCOUNT ON
      DECLARE @textPtr VARBINARY(16)
      DECLARE @length INT
     
      UPDATE dbo.tbl_ViewState
         SET LastAccessed = GETUTCDATE(),
             @length = DATALENGTH(Value)
       WHERE ViewStateId = @viewStateId
     
      IF @length IS NOT NULL BEGIN
             SELECT @length AS Length, Value FROM tbl_ViewState WHERE ViewStateId = @viewStateId
      END
     
      RETURN 0


GO
/****** Object:  StoredProcedure [dbo].[usp_VIEWSTATE_SetViewState]    Script Date: 3/23/2021 5:58:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Vladimir Calderon
-- Create date: November 16 2011
-- Description:	Sets the viewstate for a session
-- =============================================
CREATE PROCEDURE [dbo].[usp_VIEWSTATE_SetViewState] (
	@viewStateId UNIQUEIDENTIFIER, 
	@value IMAGE, 
	@timeout INT = 180
) 
AS
    -- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	-- Detectamos si el SP fue llamado desde una transacción activa y 
	-- la guardamos para usarla más tarde.  En el SP, @TranCounter = 0
	-- significa que no existen transacciones activas y que este SP
	-- comenzó una.  @TranCounter > 0 significa que se inició una transacción
	-- antes de la que empezaremos en este SP
	DECLARE @TranCounter INT;
	SET @TranCounter = @@TRANCOUNT;

	IF @TranCounter > 0
		-- Se llamó a este SP cuando ya existe una transacción activa.
		-- Creamos un punto de restauración para poder hacer sólo rollback
		-- de esta transacción si hay algún error.
		-- OJO:  Este nombre tiene que cambiarse!!!  Debe ser único para la 
		-- cadena de transacciones.  También debe cambiarse al final del SP!!!
		SAVE TRANSACTION VIEWSTATESetViewState;
	ELSE
		-- Este SP comienza su propia transacción y no hay otra antes
		BEGIN TRANSACTION;
	
	BEGIN TRY
	
      IF @viewStateId IS NULL BEGIN
		RAISERROR ('Received NULL viewstate ID', -- Message text.
               16, -- Severity.
               1 -- State.
               );
      END ELSE IF @timeout < 1 BEGIN
		RAISERROR ('Received timeout less than one', -- Message text.
               16, -- Severity.
               1 -- State.
               );
      END ELSE IF @value IS NULL BEGIN
		RAISERROR ('Received NULL viewstate ID', -- Message text.
               16, -- Severity.
               1 -- State.
               );
      END
      IF EXISTS(SELECT * FROM tbl_ViewState WHERE ViewStateId = @viewStateID) BEGIN 
             UPDATE dbo.tbl_ViewState
                SET LastAccessed = GETUTCDATE()
                       ,Value = @value
              WHERE ViewStateID = @viewStateId
      END ELSE BEGIN
             INSERT INTO dbo.tbl_ViewState (ViewStateId, Value, LastAccessed, Timeout) VALUES (@viewStateId, @value, GETUTCDATE(), @timeout)
      END
       
      IF @TranCounter = 0
			COMMIT TRANSACTION;

      RETURN 0
	END TRY
	BEGIN CATCH

		-- Hubo un error. Debemos detemrinar que tipo de rollback debemos hacer.

		IF @TranCounter = 0
			-- Tenemos sólo la transacción que comenzamos en este SP.  Rollback
			-- toda la transacción.
			ROLLBACK TRANSACTION;
		ELSE
			-- Se comenzó una transacción antes de que llamen a este SP. Debemos hacer
			-- un rollback solo de las modificaciones que hicimos en este SP

			-- Vemos XACT_STATE y los posibles resultados son 0, 1, or -1.
			-- Si es 1, la transacción es válida y se puede hacer un comit. Pero como 
			-- estamos en el CATCH no hacemos comit.
			-- Si es -1 la transacción no es válida y se debe hacer un rollback
			-- Si es - Significa que no hay un transacción y que un rollback causaría un error
			-- Ver http://msdn.microsoft.com/en-us/library/ms189797(SQL.90).aspx
			IF XACT_STATE() <> -1
				-- Si la transacción es todavía válida, hacemos un rollback hasta el punto
				-- de restauración definido anteriormente.  
				-- Sólo podemos hacer un rollback si XACT_STATE() = -1
				-- OJO: Este es el mismo nombre utilizado anterioremente!!  
				ROLLBACK TRANSACTION VIEWSTATESetViewState;

				-- Si la transaccion no es válida no se puede hacer un commit ni un rollback, 
				-- por lo que un rollback al punto de restauración no es permitido por que 
				-- el rollback al punto de restauración escribiría en el log de la base de 
				-- datos.  Símplemente debemos retornar al que nos llamó y este será 
				-- responsable de hacer rollback a la transacción. 

		-- Luego de hacer el rollback correspondiente, debemos propagar la información de error
		-- al SP que nos llamó. 
		--
		-- Ver http://msdn.microsoft.com/en-us/library/ms175976(SQL.90).aspx

		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT @ErrorMessage = ERROR_MESSAGE();
		SELECT @ErrorSeverity = ERROR_SEVERITY();
		SELECT @ErrorState = ERROR_STATE();

		-- The database can return values from 0 to 256 but raise error
		-- will only allow us to use values from 1 to 127
		IF(@ErrorState < 1 OR @ErrorState > 127)
			SELECT @ErrorState = 1
			
		RAISERROR (@ErrorMessage, -- Message text.
				   @ErrorSeverity, -- Severity.
				   @ErrorState -- State.
				   );
	END CATCH


GO
USE [master]
GO
ALTER DATABASE [KPIDB] SET  READ_WRITE 
GO
