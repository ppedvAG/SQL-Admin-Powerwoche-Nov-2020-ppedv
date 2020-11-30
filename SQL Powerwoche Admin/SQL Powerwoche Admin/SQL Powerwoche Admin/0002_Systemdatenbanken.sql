/*

Systemdatenbanken

model
 create database dbname --> Kopie der model
 Warum Model anpassen? ...

 muss man die model sichern?.. bei Änderungen theoretisch
 evtl Script die bessere Idee

ALTER DATABASE [model] SET RECOVERY BULK_LOGGED WITH NO_WAIT
GO


master
Herzstück (Login, Datenbanken, Konf)

backup der master:  ja


tempdb
	#tabelle, ##tabelle temp tabelle
	Zeilenversionierung
	Speicherauslagerung
	Wartung 

	Muss man tempdb sichern? neee..niee...


---Wartungspläne



select * from sysdatabases


msdb
--> db für den Agent(Jobs, Zeitpläne, SSIS, Emailsystem, Historie)

backup der msdb? auf jeden Fall
der Verlust ist hier admin Zeitaufwand

einmal am tag 












tempdb