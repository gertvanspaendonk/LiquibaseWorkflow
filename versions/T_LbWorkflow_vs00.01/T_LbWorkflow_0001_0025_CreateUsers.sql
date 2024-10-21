/*****************************************************************************************
Description: Create database Users, map them to Logins and add them to database Roles
Remarks
	* check on existence of login, user and role for easy redeploy
Creation: 21/10/2023, GVS
Modifications:
*****************************************************************************************/ 
PRINT 'Create database Users, map them to Logins and add them to database Roles';

/*======================================================================================== 
Create Users 
========================================================================================*/
/*----------------------------------------------------------------------------------------
SQL Users
----------------------------------------------------------------------------------------*/
IF EXISTS (SELECT * FROM sys.server_principals WHERE name = N'T_LbWorkflow_Writer')
	AND NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'T_LbWorkflow_Writer')
CREATE USER [T_LbWorkflow_Writer] FOR LOGIN [T_LbWorkflow_Writer] WITH default_schema=[dbo];

IF EXISTS (SELECT * FROM sys.server_principals WHERE name = N'T_LbWorkflow_Reader')
	AND NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'T_LbWorkflow_Reader')
CREATE USER [T_LbWorkflow_Reader] FOR LOGIN [T_LbWorkflow_Reader] WITH default_schema=[dbo];
