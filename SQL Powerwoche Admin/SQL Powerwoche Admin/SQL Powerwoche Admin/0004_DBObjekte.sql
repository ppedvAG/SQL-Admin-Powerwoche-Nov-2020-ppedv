
--Datenbankdesign




--DB Design---------

--rel DB
--Schlüssel  PK Primär-->Fremdschlüssel FK

--- 1:N Beziehung

--ref. Integrität...  FK Werte müssen immer auflösbar

--Normalisierung



--SHOP (1.!!!!   jede Zelle besitzt nur einen Wert
	--2.  PK
	-- 3 NF
	-- Ziel: Normalisierung ist gut, aber leider langsam

	--Redundanz


	--KdNR, BestNr, ANr: int (+-2,1 Mrd) smallint (32000), tinyint 255, big_int
	--Famname, vorname, Bezeichnung:

	'otto'
	varchar(50)... 'otto'   4.. --max 50 Zeichen
	char(50) ...  'otto                       ' 50  --fixe Länge
	nvarchar(50) .. N = Unicode   braucht Menge mal 2:    'otto' *2  8 
	nchar(50)   ...                                       'Otto     ' 50 *2 100
	text() --nie text().. seit 2005 deprictated.. 2 GB 

	Datum:
	
select * from orders where year(orderdate) = 1997 --408

select * from orders where 
		orderdate >= '1.1.1997' and orderdate <= '31.12.1997' --falsch
		--orderdate is ms genau..der gemsat zeitraum bis 23:59:59.999

--Vorsicht datetime ist ungenau:  2 -3 ms

--hier ist auch 1998 dabei
select * from orders where  --411
		orderdate >= '1.1.1997' and orderdate <= '31.12.1997 23:59:59.999' --falsch
		--orderdate is ms genau..der gemsat zeitraum bis 23:59:59.999

select * from kundeKauf

	--SQL speichert Ds in Seiten. Seiutne haben 8192bytes, davon sind ca 8078 Nutzlast
	-- 1 DS <= 8060

	Blöcke / extents.. 8 Seiten am Stück

	--Seiten werden 1:1 in RAM gelegt


	--Datum: seit SQL 2008 R2 date, time, datetime (ms) , smalldatetime (sek), datetime2(ns)
	--datetieoffset: inkl Zeitzone auf ms
	  

Kunden				
KdNr    
FamName
Vorname
GebDat
PLZ
ORT
Strasse


Bestellungen
BNr
Bdatum
Lieferkosten


BPositionen
BPNr
BNr
Bez
PNr
Menge
Preis


Artikel
ANr
Preis
Bez





--Tabellen
--Sichten Views
--Prozeduren
--function ()



--Sichten
--gemerkte Abfrage.. werden wir Tabelle behandelt
--Berechtigungen, Update, insert, delete möglich
--Einsatz: komfortabel , weil kommplexe Statements nicht mehr neu geschrieben werden müssen
--Security... Zugriff auf best Sp und Zeilen per Sicht
--Tipp  --nicht zweckentfremden: Sicht wird immer alle tabellen laden, 
-----die in der Sicht bechrieben wurden



--Prozeduren

--werden ausgeführt
--Ausfürhungsplan wird aufgehoben.. auch nach Neustart und muss nicht neu errechnet werden
--Code liegt auf SQL Server
--SQL Injection geringer


create proc dpdemo @Land varchar(50)
as
select * from customers where country = @land


exec dpdemo 'USA'

--nich tmischbar mit Select



--Funktion : universell überall einsetzbar

create function fbrutto(@Land varchar(50)) returns money --table
as
return
Begin

end

select spalte, f(spalte) from f(wert) where f(Spalte) > Wert
--kann aber leider schlecht vorab geschätzt werden
--Plan ist meist grob geschätzt...




a) adhoc
b) Sicht
c) proc
d) f()

--langsam---------------------------> schnell
-- f()        Sicht/adhoc			Proz (Plan ist auch nach dem Neustart präsent)









































