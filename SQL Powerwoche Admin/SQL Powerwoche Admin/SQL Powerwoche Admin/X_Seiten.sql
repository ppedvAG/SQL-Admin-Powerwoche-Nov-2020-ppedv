--
/*
Seite besteht aus 8192 bytes
1 DS muss in Seite passen, kann aber nicht mehr als 8060 bytes in Seiten belegen

in eine Seite passen nicht mehr als 700 DS

Seiten werden 1:1 von HDD in RAM gelesen..
Seiten werden auch mit "Leerraum" gelesen

Ziel: optimierung der Seitenauslastung
--- Datentypen zb

--weniger Seiten --> weniger IO --- weniger CPU --> weniger RAM