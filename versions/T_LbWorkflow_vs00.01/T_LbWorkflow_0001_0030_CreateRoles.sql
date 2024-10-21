/*****************************************************************************************
Description: Create database roles and add permissions to the roles
	These are the typical roles for a project or team database
Creation: 21/10/2023, GVS
Modifications:
*****************************************************************************************/ 
PRINT 'Create database roles and add permissions to the roles';

/*======================================================================================== 
Create Roles
========================================================================================*/
CREATE ROLE [DR_Writer];
CREATE ROLE [DR_Reader];

/*======================================================================================== 
Add Permissions TO database roles
========================================================================================*/

/*----------------------------------------------------------------------------------------
DR_Writer
----------------------------------------------------------------------------------------*/
GRANT DELETE			TO [DR_Writer];
GRANT EXECUTE			TO [DR_Writer];
GRANT INSERT			TO [DR_Writer];
GRANT SELECT			TO [DR_Writer];
GRANT UPDATE			TO [DR_Writer];

/*----------------------------------------------------------------------------------------
DR_Reader
----------------------------------------------------------------------------------------*/
--GRANT SELECT TO [DR_Reader];
GRANT SELECT ON schema::[dbo] TO [DR_Reader];
--GRANT SELECT ON schema::[log] TO [DR_Reader];
