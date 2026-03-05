/* ------  Strukturen ----- */

/* 	 
	NULL wird nicht mehr zugelassen
    DEFAULT-Werte eintragen
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
     -- Constraints (Einschränkungen):
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
);


/* Alle Tabellen in der DB anzeigen */
SHOW TABLES;

/* Struktur der Tabelle anzeigen */
DESCRIBE test;

/* ----- Daten ------- */
INSERT INTO test(name,age) VALUES("Max",35);
INSERT INTO test(age,name) VALUES(29,"Maxine");
INSERT INTO test VALUES(DEFAULT, DEFAULT);  -- ← KORRIGIERT: Mit DEFAULT-Werten
INSERT INTO test(name,age) VALUES("Max",35);

-- ABER: Doppelte Datensätze werden zugelassen !
INSERT INTO test(name,age) VALUES("Max",35);

/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM test;