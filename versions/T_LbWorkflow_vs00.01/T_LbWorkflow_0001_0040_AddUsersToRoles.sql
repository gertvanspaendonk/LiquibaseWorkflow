/*****************************************************************************************
Description: Add users to database Roles
	Check for existence for easier redeploy
Creation: 21/10/2023, GVS
Modifications:

*****************************************************************************************/ 
PRINT 'Add users to roles';


/*======================================================================================== 
Add Users to Roles
========================================================================================*/
/*----------------------------------------------------------------------------------------
SQL Users
----------------------------------------------------------------------------------------*/

IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'DR_Reader')
	AND EXISTS (SELECT * FROM sys.database_principals WHERE name = N'T_LbWorkflow_Reader')
ALTER ROLE [DR_Reader] ADD MEMBER [T_LbWorkflow_Reader];
IF EXISTS (SELECT * FROM sys.database_principals WHERE name = N'DR_Writer')
	AND EXISTS (SELECT * FROM sys.database_principals WHERE name = N'T_LbWorkflow_Writer')
ALTER ROLE [DR_Writer] ADD MEMBER [T_LbWorkflow_Writer];



