/*******************************************************************************
SSCRIPT INITIALIZATION: DATA WAREHOUSE ENVIRONMENT
--------------------------------------------------------------------------------
Purpose:
1. Ensure a clean slate by dropping the 'DataWarehouse' database if it exists.
2. Re-create the 'DataWarehouse' database from scratch.
3. Establish the Medallion Architecture schema layers (Bronze, Silver, Gold).
*******************************************************************************/

USE master;
GO

-- Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE Datawarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO
-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
