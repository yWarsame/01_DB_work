/* USER TAB. Version 2 */
/* Table users */

-- Tabelle löschen, falls vorhanden
DROP TABLE IF EXISTS boo.users;

-- Tabelle erstellen
CREATE TABLE IF NOT EXISTS boo.users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    userName VARCHAR(20) NOT NULL UNIQUE,
    userPwd VARCHAR(40) NOT NULL,
    first_name VARCHAR(20) NOT NULL DEFAULT "TBA",
    last_name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
);

/* Struktur anzeigen */
DESCRIBE boo.users;

/* Daten einfügen */
-- pwd ergänzen (hier als Klartext - in der Praxis besser gehasht!)
INSERT INTO boo.users (userName, userPwd, first_name, last_name, age) 
VALUES 
    ("maxm", "geheim123", "Max", "Mustermann", 35),
    ("maxine", "sicher!456", "Maxine", "Musterfrau", 29),
    ("j_doe", "passwort789", "John", "Doe", 42);

-- Beispiel mit DEFAULT-Werten
INSERT INTO boo.users (userName, userPwd) 
VALUES ("newuser", "neuespasswort");

/* Inhalte : Ergebnisstabelle anzeigen */
SELECT * FROM boo.users;

-- Nur bestimmte Spalten anzeigen
SELECT userName, first_name, last_name, age FROM boo.users;

-- Mit WHERE-Bedingung
SELECT * FROM boo.users WHERE age > 30;