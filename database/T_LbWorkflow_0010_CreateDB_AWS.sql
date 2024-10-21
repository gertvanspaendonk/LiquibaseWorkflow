/*****************************************************************************************
Description: Create database T_LbWorkflow
Creation: 21/10/2024, GVS
Modifications:
*****************************************************************************************/ 
PRINT 'Description: Create database T_LbWorkflow on AWS'

/*======================================================================================== 
Create database T_LbWorkflow
========================================================================================*/
CREATE DATABASE T_LbWorkflow
ON PRIMARY
     (
       NAME = PrimaryFile
     , FILENAME = N'E:\LIVE\MSSQL\DATA\T_LbWorkflow_Primary.mdf'
     , SIZE = 5120KB
     , MAXSIZE = UNLIMITED
     , FILEGROWTH = 1024KB
     )
, FILEGROUP DATA DEFAULT
     ( 
       NAME = DataFile
     , FILENAME = N'E:\LIVE\MSSQL\DATA\T_LbWorkflow_Data.ndf'
     , SIZE = 5120KB
     , MAXSIZE = UNLIMITED
     , FILEGROWTH = 1024KB
     )
, FILEGROUP DATABIN
     ( 
       NAME = DatabinFile
     , FILENAME = N'F:\LIVE\MSSQL\DATABIN\T_LbWorkflow_Databin.ndf'
     , SIZE = 5120KB
     , MAXSIZE = UNLIMITED
     , FILEGROWTH = 1024KB
     )
, FILEGROUP INDEXES
     ( 
       NAME = IndexesFile
     , FILENAME = N'G:\LIVE\MSSQL\INDEX\T_LbWorkflow_Indexes.ndf'
     , SIZE = 5120KB
     , MAXSIZE = UNLIMITED
     , FILEGROWTH = 1024KB
     )
LOG ON
	( 
       NAME = LogFile
     , FILENAME = N'H:\LIVE\MSSQL\LOG\T_LbWorkflow_Log.ldf'
     , SIZE = 2048KB
     , MAXSIZE = UNLIMITED
     , FILEGROWTH = 10%
     )
;
