create table projekt (
id_projektu INT AUTO_INCREMENT PRIMARY KEY,
nazwa_projektu varchar(150),
data_rozpoczecia DATE,
data_zakonczenia DATE NULL
);
ALTER TABLE projekt
ADD COLUMN menadzer_projektu INT;

ALTER TABLE projekt
ADD CONSTRAINT fk_menadzer
FOREIGN KEY (menadzer_projektu)
REFERENCES pracownik(id_pracownika);

INSERT INTO projekt
(nazwa_projektu, data_rozpoczecia, data_zakonczenia, menadzer_projektu)
VALUES
('projekt informatyczny', '2026-01-01', '2026-06-30', 1),
('projekt bez danych', '2026-05-30', NULL, 2);
SELECT * FROM projekt;