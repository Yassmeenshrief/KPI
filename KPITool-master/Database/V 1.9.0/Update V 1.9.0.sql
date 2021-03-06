/* 
	Updates de the KPIDB database to version 1.9.0 
*/

Use [Master]
GO 

IF  NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'KPIDB')
	RAISERROR('KPIDB database Doesn´t exists. Create the database first',16,127)
GO

PRINT 'Updating KPIDB database to version 1.9.0'

Use [KPIDB]
GO
PRINT 'Verifying database version'

/*
 * Verify that we are using the right database version
 */

IF  NOT ((EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetVersionMajor]') AND type in (N'P', N'PC'))) 
	AND 
	(EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_GetVersionMinor]') AND type in (N'P', N'PC'))))
		RAISERROR('KPIDB database has not been initialized.  Cant find version stored procedures',16,127)


declare @smiMajor smallint 
declare @smiMinor smallint

exec [dbo].[usp_GetVersionMajor] @smiMajor output
exec [dbo].[usp_GetVersionMinor] @smiMinor output

IF NOT (@smiMajor = 1 AND @smiMinor = 8) 
BEGIN
	RAISERROR('KPIDB database is not in version 1.8 This program only applies to version 1.8',16,127)
	RETURN;
END

PRINT 'KPIDB Database version OK'
GO

-----------------------------------------

USE [KPIDB]
GO

BEGIN TRAN

DECLARE @tbl_KPITarget AS TABLE
(targetID INT, kpiID INT, [target] DECIMAL(21,3))

INSERT @tbl_KPITarget
SELECT targetID, kpiID, [target]
FROM dbo.tbl_KPITarget

IF EXISTS(SELECT dc.Name
			FROM sys.tables t
			INNER JOIN sys.default_constraints dc ON t.object_id = dc.parent_object_id
			INNER JOIN sys.columns c ON dc.parent_object_id = c.object_id AND c.column_id = dc.parent_column_id
			WHERE t.name = 'tbl_KPITarget'
			and C.name = 'target')
BEGIN
	DECLARE @SQL VARCHAR(MAX)
	
	SELECT @SQL = 'ALTER TABLE dbo.tbl_KPITarget DROP CONSTRAINT ' + dc.Name
	FROM sys.tables t
	INNER JOIN sys.default_constraints dc ON t.object_id = dc.parent_object_id
	INNER JOIN sys.columns c ON dc.parent_object_id = c.object_id AND c.column_id = dc.parent_column_id
	WHERE t.name = 'tbl_KPITarget'
	AND c.name = 'target'
			
	EXEC (@SQL)
END

ALTER TABLE dbo.tbl_KPITarget DROP COLUMN [target]

ALTER TABLE dbo.tbl_KPITarget ADD [target] DECIMAL(21,9) NOT NULL DEFAULT(0)

UPDATE k
SET target = t.target
FROM dbo.tbl_KPITarget k
INNER JOIN @tbl_KPITarget t on k.targetID = t.targetID AND k.kpiID = t.kpiID

COMMIT TRAN
GO

--======================================================================================

/****** Object:  StoredProcedure [dbo].[usp_PROJ_GetProjectsBySearch]    Script Date: 05/03/2016 12:13:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: April 29 2016
-- Description:	List all projects by organization
-- =============================================
ALTER PROCEDURE [dbo].[usp_PROJ_GetProjectsBySearch]
	@varUsername VARCHAR(50),
	@varWhereClause VARCHAR(1000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	CREATE TABLE #tblKPI
		(kpiId INT)

	INSERT INTO #tblKPI
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername

	DECLARE @varSQL AS VARCHAR(MAX)

	SET @varSQL = 'SELECT DISTINCT [p].[projectID]
						,[p].[name]
						,[p].[organizationID]
						,[p].[areaID]
						,(SELECT TOP 1 username FROM dbo.tbl_SEG_ObjectPermissions
                          WHERE [objectTypeID] = ''PROJECT'' AND   [objectID] = [p].[projectID]
                          AND   [objectActionID] = ''OWN'') as owner
					FROM [dbo].[tbl_Project] [p]
					INNER JOIN [dbo].[tbl_KPI] [k] ON [p].[projectID] = [k].[projectID]
					INNER JOIN #tblKPI [tk] ON [k].[KPIId] = [tk].[KPIId]
					WHERE ' + @varWhereClause + '
					ORDER BY [p].[name]'
	
	EXEC (@varSQL)

	DROP TABLE #tblKPI

END
GO

--=======================================================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: April 29 2016
-- Description:	List all projects by organization
-- =============================================
ALTER PROCEDURE [dbo].[usp_PROJ_GetProjectsByOrganization]
	@intOrganizationId INT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	SELECT [projectID]
		,[name]
		,[organizationID]
		,[areaID]
		,(SELECT TOP 1 username
		  FROM dbo.tbl_SEG_ObjectPermissions
		  WHERE [objectTypeID] = 'PROJECT'
		  AND   [objectID] = [p].[projectID]
		  AND   [objectActionID] = 'OWN') as owner
	FROM [dbo].[tbl_Project] [p]
	WHERE [organizationID] = @intOrganizationId

END
GO
--=======================================================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 29/04/2016
-- Description:	Get projects for autocomplete
-- =============================================
ALTER PROCEDURE [dbo].[usp_AUTOCOMPLETE_SearchProjects]
	@varUserName AS VARCHAR(50),
	@intOrganizationId AS INT,
	@intAreaId AS INT,
	@varFilter AS VARCHAR(250)
AS
BEGIN
	
	SET NOCOUNT ON;

    IF(@varFilter IS NULL)
		SELECT @varFilter = ''
	
	SELECT [p].[projectID]
		  ,[p].[name]
		  ,[p].[organizationID]
		  ,[p].[areaID]
		  , NULL [owner]
	FROM [dbo].[tbl_Project] [p] 
	INNER JOIN [dbo].[tbl_SEG_ObjectPermissions] [op] ON [p].[projectID] = [op].[objectID] 
	WHERE [op].[objectTypeID] = 'PROJECT' 
	AND [op].[username] = @varUserName
	AND [p].[name] LIKE CASE @varFilter WHEN '' THEN [p].[name] ELSE '%' + @varFilter + '%' END 
	AND [p].[organizationID] = @intOrganizationId 
	AND ISNULL([p].[areaID],0) = CASE WHEN ISNULL(@intAreaId,0) = 0 THEN ISNULL([p].[areaID],0) ELSE ISNULL(@intAreaId,0) END 
	ORDER BY [p].[name]
    
END
GO

--=======================================================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Marcela Martinez
-- Create date: 29/04/2016
-- Description:	Get Project by id
-- =============================================
ALTER PROCEDURE [dbo].[usp_PROJ_GetProjectById]
	@intProjectId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [projectID]
		,[name]
		,[organizationID]
		,[areaID]
		,(SELECT TOP 1 username
		  FROM dbo.tbl_SEG_ObjectPermissions
		  WHERE [objectTypeID] = 'PROJECT'
		  AND   [objectID] = @intProjectId
		  AND   [objectActionID] = 'OWN') as owner
	FROM [dbo].[tbl_Project]
	WHERE [projectID] = @intProjectId
    
END
GO

--=======================================================================================
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
ALTER PROCEDURE [dbo].[usp_PROJ_DeleteProject]
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

		-- Delete all measurements for the KPIs selected

		-- Delete all permissions for the KPIs selected
		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and [objectID] in (select kpiID from @KPITable)

		-- Delete the KPIs selected
		DELETE FROM [dbo].[tbl_KPI]
		where [kpiID] in (select kpiID from @KPITable)

		-- Now lets delete all activities for the project
		-- Get the IDs of all the activities we will delete
		-- Delete all the permissios for these activities
		-- Delete the activities

		-- Now lets delete the permissions for the project

		-- And finally lets delete the project

		-- =============================================================
		-- INSERT THE SQL STATEMENTS HERE
		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'PROJECT'
		AND   [objectID] = @projectID
		
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

--=======================================================================================
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

	DECLARE @SQL VARCHAR(MAX)

	SET @SQL = 'SELECT [a].[activityID]
		  ,[a].[name]
		  ,[a].[organizationID]
		  ,[a].[areaID]
		  ,[a].[projectID]
	  FROM [dbo].[tbl_Activity] [a]
	  INNER JOIN [dbo].[tbl_SEG_ObjectPermissions] [o] ON [a].[activityID] = [o].[objectID]
	  INNER JOIN [dbo].[tbl_Organization] [g] ON [a].[organizationID] = [g].[organizationID]
	  LEFT JOIN [dbo].[tbl_Area] [r] ON [a].[areaID] = [r].[areaID]
	  LEFT JOIN [dbo].[tbl_Project] [p] ON [p].[projectID] = [a].[projectID]
	  WHERE [o].[objectTypeID]=''ACTIVITY''
	  AND   [o].[username] = ''' + @varUsername + '''
	  AND ' + @varWhereClause + '
	  ORDER BY [a].[name]'
	  
	 EXEC (@SQL)
	 
END
GO


--=======================================================================================
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

--=======================================================================================
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
CREATE PROCEDURE [dbo].[usp_ACT_DeleteActivity]
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
		
		-- We basically have to delete everything related to that project.
		
		-- Start with KPIs. 
		-- Get the IDs of all the KPIs we will delete
		DECLARE @KPITable as TABLE (kpiID int)
		INSERT INTO @KPITable
		SELECT [kpiID] from [dbo].[tbl_KPI]
		where [activityID] = @activityID

		-- Delete all measurements for the KPIs selected

		-- Delete all permissions for the KPIs selected
		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'KPI' and [objectID] in (select kpiID from @KPITable)

		-- Delete the KPIs selected
		DELETE FROM [dbo].[tbl_KPI]
		where [kpiID] in (select kpiID from @KPITable)

		-- Now lets delete all activities for the project
		-- Get the IDs of all the activities we will delete
		-- Delete all the permissios for these activities
		-- Delete the activities

		-- Now lets delete the permissions for the project

		-- And finally lets delete the project

		-- =============================================================
		-- INSERT THE SQL STATEMENTS HERE
		DELETE FROM [dbo].[tbl_SEG_ObjectPermissions]
		WHERE [objectTypeID] = 'ACTIVITY'
		AND   [objectID] = @activityID
		
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

--=======================================================================================
/****** Object:  StoredProcedure [dbo].[usp_KPI_GetKPIsBySearch]    Script Date: 05/18/2016 10:41:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_KPI_GetKPIsBySearch]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_KPI_GetKPIsBySearch]
GO


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
	@varWhereClause VARCHAR(MAX)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	CREATE TABLE #tblKPI
		(kpiId INT)

	INSERT INTO #tblKPI
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername
	
	DECLARE @varSQL VARCHAR(MAX)

	SET @varSQL = 'SELECT [kpiID]
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
			  FROM [dbo].[tbl_KPI] [k]
			  INNER JOIN #tblKPI [tk] ON [k].[KPIId] = [tk].[KPIId]
			  WHERE ' + @varWhereClause
			  
	 EXEC (@varSQL)
	 
	 DROP TABLE #tblKPI
	 
END
GO

--=======================================================================================
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_PEOPLE_GetPersonByOrganization]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_PEOPLE_GetPersonByOrganization]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Marcela Martinez
-- Create date: 30/04/2016
-- Description:	Get persona by id
-- =============================================
CREATE PROCEDURE [dbo].[usp_PEOPLE_GetPersonByOrganization]
	@intOrganizationId AS INT
AS
BEGIN
	
	SET NOCOUNT ON;

    SELECT [personID]
		  ,[id]
		  ,[name]
		  ,[organizationID]
		  ,[areaID]
	FROM [dbo].[tbl_People] 
	WHERE [organizationID] = @intOrganizationId
    
END
GO

--=======================================================================================

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_ACT_GetActivityByProject]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_ACT_GetActivityByProject]
GO

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
		  ,[a].[areaID]
		  ,[a].[projectID]
		  ,[kpi].[numberKPIs]
	FROM [dbo].[tbl_Activity] [a] 
	LEFT OUTER JOIN (SELECT COUNT([kpiID]) [numberKPIs]
						   ,[organizationID]
						   ,[activityID]
					 FROM [dbo].[tbl_KPI] 
					 GROUP BY [organizationID], [activityID]) [kpi] 
	ON [a].[organizationID] = [kpi].[organizationID] AND [a].[activityID] = [kpi].[activityID] 
	WHERE [a].[projectID] = @intProjectId
    
END
GO

--=======================================================================================

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_KPI_GetKPIsByProject]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_KPI_GetKPIsByProject]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez V.
-- Create date: 10/05/2016
-- Description:	Get KPIs by project
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPIsByProject]
	 @intProjectId INT
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
	WHERE [projectID] = @intProjectId

END
GO

--=======================================================================================

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_KPI_GetKPIsByActivity]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_KPI_GetKPIsByActivity]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sánchez V.
-- Create date: 11/05/2016
-- Description:	Get KPIs by activity
-- =============================================
CREATE PROCEDURE [dbo].[usp_KPI_GetKPIsByActivity]
	 @intActivityId INT
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
	WHERE [activityID] = @intActivityId
	
    
END
GO

--=======================================================================================
/****** Object:  StoredProcedure [dbo].[usp_SEARCH_GetSavedSearch]    Script Date: 05/11/2016 11:10:04 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_SEARCH_GetSavedSearch]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_SEARCH_GetSavedSearch]
GO

/****** Object:  StoredProcedure [dbo].[usp_SEARCH_GetSavedSearch]    Script Date: 05/11/2016 11:10:04 ******/
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

--=======================================================================================
/****** Object:  StoredProcedure [dbo].[usp_ORG_GetOrganizationsByUser]    Script Date: 05/16/2016 10:12:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Gabriela Sanchez
-- Create date: April 27 2016
-- Description:	List organizations by user
-- =============================================
ALTER PROCEDURE [dbo].[usp_ORG_GetOrganizationsByUser] 
	@varUsername VARCHAR(50),
	@varWhereClause VARCHAR(1000)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	CREATE TABLE #tblKPI
		(kpiId INT)

	INSERT INTO #tblKPI
	EXEC [dbo].[usp_KPI_GetKPIListForUser] @varUsername

	DECLARE @varSQL AS VARCHAR(MAX)

	SET @varSQL = '	SELECT DISTINCT [o].[organizationID], [o].[name]
					FROM [dbo].[tbl_Organization] [o]
					INNER JOIN [dbo].[tbl_KPI] [k] ON [o].[organizationID] = [k].[organizationID]
					INNER JOIN #tblKPI [tk] ON [k].[KPIId] = [tk].[KPIId]
					WHERE ' + @varWhereClause + '
					ORDER BY [o].[name]'
	
	EXEC (@varSQL)
	DROP TABLE #tblKPI

END
GO
--=======================================================================================
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_KPITYPE_GetKPITypes]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[usp_KPITYPE_GetKPITypes]
GO

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

--=======================================================================================
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CLA_GetReportingUnits]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[usp_CLA_GetReportingUnits]
GO

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

--=======================================================================================
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_KPITYPE_GetKPITypeById]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[usp_KPITYPE_GetKPITypeById]
GO

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

--=======================================================================================
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CLA_GetDirections]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[usp_CLA_GetDirections]
GO

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

--=======================================================================================
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CLA_GetStrategies]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[usp_CLA_GetStrategies]
GO

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

--=======================================================================================
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CLA_GetUnits]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[usp_CLA_GetUnits]
GO

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
--=======================================================================================
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CLA_GetCurrency]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[usp_CLA_GetCurrency]
GO

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

--=======================================================================================
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_CLA_GetCurrencyUnitByCurrency]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[usp_CLA_GetCurrencyUnitByCurrency]
GO

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
	
	SELECT [a].[currencyID], [d].[currencyUnitID], [l].[name]
    FROM [dbo].[tbl_CurrencyUnits] d 
    INNER JOIN [dbo].[tbl_CurrencyUnitsLabels] [l] ON [d].[currencyUnitID] = [l].[currencyUnitID]
    INNER JOIN [dbo].[tbl_UnitsAllowedForCurrency] [a] ON [a].[currencyUnitID] = [d].[currencyUnitID] 
    WHERE [l].[language] = @varLanguage
    AND   [a].[currencyID] = @varCurrencyID
    
END
GO


--=======================================================================================

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_KPI_GetKPITargetById]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_KPI_GetKPITargetById]
GO

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

--=======================================================================================
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_KPI_UpdateKPI]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[usp_KPI_UpdateKPI]
GO

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

	UPDATE [KPIDB].[dbo].[tbl_KPI]
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

--=======================================================================================

/****** Object:  StoredProcedure [dbo].[usp_KPI_AddKPITargetNoCategories]    Script Date: 05/23/2016 17:15:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_KPI_UpdateKPITargetNoCategories]') AND type in (N'P', N'PC'))
	DROP PROCEDURE  [dbo].[usp_KPI_UpdateKPITargetNoCategories]
GO

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

	SELECT @targetID = [targetID]
	FROM [dbo].[tbl_KPITarget]
	WHERE [kpiID] = @kpiID

	DELETE FROM [dbo].[tbl_KPITargetCategories]
	WHERE [targetID] = @targetID
	
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

--=======================================================================================
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_KPI_GetNumberFromTime]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[usp_KPI_GetNumberFromTime]
GO

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
	@valor FLOAT OUTPUT
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	DECLARE @fechaBase AS DATETIME
	DECLARE @fechaCalculada AS DATETIME
	
	SET @fechaBase = '1900-01-01'
	SET @fechaCalculada = DATEADD(MINUTE,@minute,DATEADD(HH,@hour,DATEADD(DD,@day,DATEADD(MM,@month,DATEADD(YY,@year, @fechaBase)))))
	SET @valor = CAST(@fechaCalculada AS FLOAT)

END
GO

--=======================================================================================
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[usp_KPI_GetKPITargetTimeFromKpi]') AND type in (N'P', N'PC'))
	DROP PROCEDURE [dbo].[usp_KPI_GetKPITargetTimeFromKpi]
GO

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

	SELECT @kpiID as kpiID,
	       @targetID as targetID,
	       @year as [year],
	       @month as [month],
	       @day as [day],
	       @hour as [hour],
	       @minute as [minute]

END
GO

/*
 * We are done, mark the database as a 1.9.0 database.
 */

DELETE FROM [dbo].[tbl_DatabaseInfo] 
INSERT INTO [dbo].[tbl_DatabaseInfo] 
	([majorversion], [minorversion], [releaseversion])
	VALUES (1,9,0)
GO
