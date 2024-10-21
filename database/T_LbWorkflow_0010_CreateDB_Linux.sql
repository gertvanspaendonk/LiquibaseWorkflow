/*****************************************************************************************
Description: Create database T_LbWorkflow on Linux
Creation: 21/10/2024, GVS
Modifications:
*****************************************************************************************/ 
PRINT 'Description: Create database T_LbWorkflow on Linux';

/*======================================================================================== 
Create database T_LbWorkflow
========================================================================================*/
CREATE DATABASE T_LbWorkflow
ON PRIMARY
     (
       NAME = PrimaryFile
     , FILENAME = N'/var/opt/mssql/data/T_LbWorkflow_Primary.mdf'
     , SIZE = 5120KB
     , MAXSIZE = UNLIMITED
     , FILEGROWTH = 1024KB
     )
, FILEGROUP DATA DEFAULT
     ( 
       NAME = DataFile
     , FILENAME = N'/var/opt/mssql/data/T_LbWorkflow_Data.ndf'
     , SIZE = 5120KB
     , MAXSIZE = UNLIMITED
     , FILEGROWTH = 1024KB
     )
, FILEGROUP DATABIN
     ( 
       NAME = DatabinFile
     , FILENAME = N'/var/opt/mssql/data/T_LbWorkflow_Databin.ndf'
     , SIZE = 5120KB
     , MAXSIZE = UNLIMITED
     , FILEGROWTH = 1024KB
     )
, FILEGROUP INDEXES
     ( 
       NAME = IndexesFile
     , FILENAME = N'/var/opt/mssql/data/T_LbWorkflow_Indexes.ndf'
     , SIZE = 5120KB
     , MAXSIZE = UNLIMITED
     , FILEGROWTH = 1024KB
     )
LOG ON
	( 
       NAME = LogFile
     , FILENAME = N'/var/opt/mssql/data/T_LbWorkflow_Log.ldf'
     , SIZE = 2048KB
     , MAXSIZE = UNLIMITED
     , FILEGROWTH = 10%
     )
;
