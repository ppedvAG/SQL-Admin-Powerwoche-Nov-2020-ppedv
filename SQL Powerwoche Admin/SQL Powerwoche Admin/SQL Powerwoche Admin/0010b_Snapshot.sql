USE master
GO


-- Create the database snapshot
CREATE DATABASE Nwind1400 ON --neue SN DB
( NAME = Northwind,
FILENAME = 'D:\_SQLDB\Nwind1400.mdf' ) --neue Datei des Snapshot
AS SNAPSHOT OF Northwind; --Orig DB
GO


create database sn_testdb_1402
on  (name=testdb, filename='D:\testdbdaten2.mdf'),
	 (name=Stamm_datenxx, filename='d:\stammdatenxxsn2.ndf'),
	 (name=Umsatz_datenxx, filename='d:\umsatzdatensn2.ndf')
as snapshot of testdb


-- master verwenden
use master
restore database testdb from 
	database_snapshot='sn_testdb_1402'


select * from sysprocesses where dbid = db_id('Northwind')
select * from sysprocesses where dbid = db_id('Nwind_1200')
kill 56