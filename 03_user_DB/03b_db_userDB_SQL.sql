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
("sascha", "sascha123", "Sascha", "Müller", 28),
("lio", "lio456", "Lio", "Schmidt", 24),
("alex", "alex789", "Alex", "Fischer", 31);

-- Beispiel mit DEFAULT-Werten
INSERT INTO boo.users (userName, userPwd) 
VALUES ("newuser", "neuespasswort");

/* Inhalte : Ergebnisstabelle anzeigen */
-- Passwörter als ***** anzeigen
SELECT 
    id,
    userName,
    REPEAT('*', CHAR_LENGTH(userPwd)) AS userPwd,
    first_name,
    last_name,
    age 
FROM boo.users;

-- Nur bestimmte Spalten anzeigen
SELECT 
    userName, 
    REPEAT('*', CHAR_LENGTH(userPwd)) AS userPwd,
    first_name, 
    last_name, 
    age 
FROM boo.users;

-- Mit WHERE-Bedingung
SELECT 
    userName, 
    REPEAT('*', CHAR_LENGTH(userPwd)) AS userPwd,
    first_name, 
    last_name, 
    age 
FROM boo.users 
WHERE age > 30;