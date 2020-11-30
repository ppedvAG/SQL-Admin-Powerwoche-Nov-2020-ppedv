create database testdb

--DB besteht (normalerweise) aus 2 Dateien  
/*
.. mdf  master data file  (daten)

  ldf Datei (Transaktionsprotokoll , alle Anweisungen, die "ändern")

Startgröße: 8MB pro Datei.. Wachstum 64 MB pro Datei??

Startgröße 1 MB  Wachstum 1 MB

SQL 2014: 5MB + 2MB = 7 MB.. Daten um 1 MB.. und Logfile +10%

sinnvolle einstellungen suchen: Wie sieht die DB in einígen Monaten oder Jahren aus..?

Startgröße und Wachstum.. wenn schon Wachstum ,dann kurz und schmerzlos, aber 
auch selten


---HDD vermeiden!!!!!!!!!!

-im Laufenden Betrieb können wir die Dateigrößen ändern

--Was sollte man denn eintragen...:


*/

use testdb;
GO

create table t1 (id int identity, sp1 char(4100))
GO
insert into t1
select 'XY'
GO 20000

--dauer ? 
--14 Sek 40 Sek  49 Sek




*/