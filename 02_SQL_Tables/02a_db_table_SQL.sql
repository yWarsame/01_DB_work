/* ------  Strukturen ----- */
\! cls
/* Kommentar 1 */
#  Kommentar 2
-- Kommentar 3

/* Datenbanken auf Server anzeigen */

SHOW DATABASES;
/* DB boo löschen, falls vorhanden*/

DROP DATABASE IF EXISTS boo;
/* DB boo anlegen, falls noch nicht vorhanden*/
CREATE DATABASE IF NOT EXISTS boo;

/* DB auswählen */
USE boo;
/* Tabelle anlegen */
CREATE TABLE if NOT EXISTS test(
    first_name VARCHAR(20),
    age INT
);

/* Alle Tabellen in der DB anzeigen */

SHOW TABLES;
/* Struktur der Tabelle anzeigen */

DESCRIBE test;
/* ----- Daten ------- */
INSERT INTO test(first_name,age) VALUES("Max",35);
INSERT INTO test(age,first_name) VALUES(29,"Maxine");
INSERT INTO test VALUES();


/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM test;