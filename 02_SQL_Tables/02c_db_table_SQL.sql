/* ------  Strukturen ----- */

/* 	 
	Doppelte DS werden nicht mehr zugelassen
    UNIQUE
*/

/* DB boo löschen, falls vorhanden*/
DROP DATABASE IF EXISTS boo;

/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
USE boo;

/* Tabelle test löschen, falls vorhanden*/
DROP TABLE IF EXISTS test;

/* Tab. test anlegen, falls noch nicht vorhanden*/
CREATE TABLE IF NOT EXISTS test
(  
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0,
    -- Beide Spalten zusammen müssen UNIQUE sein (keine doppelten Kombinationen)
    UNIQUE(name, age)
);

/* Alle Tabellen in der DB anzeigen */
SHOW TABLES;

/* Struktur der Tabelle anzeigen */
DESCRIBE test;

/* ----- Daten ------- */
INSERT INTO test(name,age) VALUES("Max",35);
INSERT INTO test(age,name) VALUES(29,"Maxine");
INSERT INTO test VALUES(DEFAULT, DEFAULT);
INSERT INTO test(name,age) VALUES("Max",35);

-- ABER: Doppelte Datensätze werden NICHT mehr zugelassen !
-- Der nächste INSERT wird fehlschlagen, weil "Max",35 bereits existiert!
INSERT INTO test(name,age) VALUES("Max",35);

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM test;