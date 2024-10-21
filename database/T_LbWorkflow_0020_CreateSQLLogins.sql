/*****************************************************************************************
Description: Create SQL Server Logins
Attention: 
	* use master !
	* don't keep pwds in this file; use Keepass
Remarks: upon creation of login, one can:
	* deny connect: deny connect sql to [D0155_xxx]
	* disable the account: alter login [D0155_xxx] disable;
	* check on existance of login for easier redeploy
Creation: 21/10/2024, GVS
Modifications:
*****************************************************************************************/ 
PRINT 'Create SQL Server Logins';

/*======================================================================================== 
Create SQL Logins
========================================================================================*/
/*---------------------------------------------------------------------------------------- 
writer
----------------------------------------------------------------------------------------*/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'T_LbWorkflow_Writer')
CREATE LOGIN [T_LbWorkflow_Writer] WITH PASSWORD=N'[IN KEEPASS]'
	, default_database=[T_LbWorkflow]
	, check_expiration=OFF
	, check_policy=OFF;
/*---------------------------------------------------------------------------------------- 
reader 
----------------------------------------------------------------------------------------*/
IF NOT EXISTS (SELECT * FROM sys.server_principals WHERE name = N'T_LbWorkflow_Reader')
create login [T_LbWorkflow_Reader] with password=N'[IN KEEPASS]'
	, default_database=[T_LbWorkflow]
	, check_expiration=OFF
	, check_policy=OFF;
