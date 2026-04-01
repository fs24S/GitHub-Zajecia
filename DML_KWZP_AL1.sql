USE DronPol;
GO
-- ==========================================
-- 1. JEDNOSTKI
-- ==========================================
INSERT INTO Jednostka (Skrot, Nazwa_Jednostki) VALUES 
('szt.', 'Sztuka'),
('kr.', 'Kropla'),
('kpl.', 'Komplet'),
('zest.', 'Zestaw'),
('m', 'Metr'),
('ml', 'Mililitr');

-- ==========================================
-- 2. DRONY I MODELE
-- ==========================================
INSERT INTO Rodzaj_Dronu (Nazwa_Rodzaju, Liczba_Silnikow, Rozmiar) VALUES 
('Quadcopter', 4, 50),
('Hexacopter', 6, 90),
('Octocopter', 8, 120);

INSERT INTO Model_Dronu (Nazwa, Id_Rodzaj_Dronu, Data_Wprowadzenia) VALUES 
('Sigma', 1, '2026-03-23'),          
('Raptor', 2, '2026-03-23'),         
('SilentDeath', 3, '2026-03-23'),    
('DJI Mini 3', 1, '2026-03-24'),     
('MIAUMIAU', 1, '2026-03-24');       

-- ==========================================
-- 3. KATEGORIE, RODZAJE I PODZESPOŁY
-- ==========================================
INSERT INTO Kategoria_Podzespolu (Nazwa_Kategorii) VALUES 
('Elektryczne'),   
('Elektroniczne'), 
('Mechaniczne');   

INSERT INTO Rodzaj_Podzespolu (Nazwa_Rodzaju_Podzespolu, Id_Kategorii) VALUES 
('Silnik', 1),       
('Bateria', 1),      
('Konektor', 1),     
('Moduł ESC', 2),    
('Moduł VTX', 2),    
('Antena', 2),       
('Kamera', 2),       
('Rama', 3),         
('Śmigło', 3);       

INSERT INTO Podzespol (Nazwa, Producent, Id_Rodzaj_Podzespolu) VALUES 
('Silnik T-motor AS2814 KV900', 'T-Motor', 1),        
('Silnik M1 kV 3500', 'DJI', 1),                      
('Silnik Tytan kV 1300', 'Firma B', 1),               
('Bateria 6S1P 1300mAh', 'UAngel', 2),                
('Bateria 4S1P 1500mAh', 'Tattu', 2),                 
('Konektor XT60', 'Amass', 3),                        
('Konektor XT30', 'Amass', 3),                        
('UAngel 4in1 50A', 'UAngel', 4),                     
('ESC pojedyncze 35A', 'Firma C', 4),                 
('VTX Rush Tank 800mW', 'RushFPV', 5),                
('VTX TBS Unify Pro', 'TBS', 5),                      
('Antena Foxeer Lollipop', 'Foxeer', 6),              
('Antena TBS Triumph', 'TBS', 6),                     
('Kamera RunCam Phoenix 2', 'RunCam', 7),             
('Kamera Caddx Ratel 2', 'Caddx', 7),                 
('Rama R1 5 inch Carbon', 'DJI', 8),                  
('Rama X-Class 10 inch', 'iFlight', 8),               
('Rama R2 7 inch', 'Firma A', 8),                     
('Śmigło P1 51466', 'Propel', 9),                     
('Śmigło P2 7040', 'Propel', 9);                      

INSERT INTO Zakup_Podzespolu (Id_Podzespolu, Data_Zakupu, Liczba_Sztuk) VALUES 
(1, '2026-03-24', 500),
(4, '2026-03-24', 200),
(16, '2026-03-24', 150);

INSERT INTO Specyfikacja_Modelu (Id_Modelu, Id_Podzespolu, Liczba_Podzespolow) VALUES 
(1, 1, 4), (1, 5, 1), (1, 6, 1), (1, 8, 1), (1, 10, 1), (1, 12, 1), (1, 14, 1), (1, 16, 1), (1, 19, 4),
(2, 2, 6), (2, 4, 1), (2, 6, 1), (2, 9, 6), (2, 11, 1), (2, 13, 1), (2, 15, 1), (2, 18, 1), (2, 20, 6),
(3, 3, 8), (3, 4, 2), (3, 6, 2), (3, 8, 2), (3, 10, 1), (3, 12, 2), (3, 15, 1), (3, 17, 1), (3, 20, 8); 

-- ==========================================
-- 4. MATERIAŁY
-- ==========================================
INSERT INTO Material (Nazwa_Materialu, Id_Jednostki) VALUES 
('Śruba M3x10', 1),            
('Klej do gwintów', 2),        
('Opaska zaciskowa', 1),       
('Taśma termoprzewodząca', 5), 
('Przewody 3x1mm', 5),         
('Cyna lutownicza', 5),        
('Rurka termokurczliwa', 1),   
('Podkładka antywibracyjna', 3),
('Rzep do baterii', 1),        
('Zestaw montażowy VTX', 4);   

INSERT INTO Zakup_Materialu (Id_Materialu, Data_Zakupu, Ilosc) VALUES 
(1, '2026-03-24', 10000.00), (2, '2026-03-24', 5000.00), (3, '2026-03-24', 20000.00),
(4, '2026-03-24', 500.00), (5, '2026-03-24', 1000.00), (6, '2026-03-24', 250.00),
(7, '2026-03-24', 8000.00), (8, '2026-03-24', 1000.00), (9, '2026-03-24', 1500.00),
(10, '2026-03-24', 300.00);

INSERT INTO Material_Modelu (Id_Modelu, Id_Materialu, Ilosc) VALUES 
(1, 1, 16.00), (1, 2, 4.00), (1, 3, 5.00), (1, 5, 0.50), (1, 8, 1.00),
(2, 1, 24.00), (2, 2, 6.00), (2, 3, 8.00), (2, 6, 0.20), (2, 9, 2.00);

-- ==========================================
-- 5. PRACOWNICY I STANOWISKA
-- ==========================================
INSERT INTO Pracownik (Imie, Nazwisko, Data_Zatrudnienia, Data_Zwolnienia) VALUES 
('Adam', 'Spadam', '2026-03-23', NULL),
('Marek', 'Towarek', '2026-03-23', NULL),
('Oskar', 'Adamski', '2026-03-23', NULL),
('Jakub', 'Abucewicz', '2026-03-23', NULL),
('Filip', 'Grzeszczyk', '2026-03-23', NULL),
('Aleksander', 'Szopinski', '2026-03-23', '2026-03-25'),
('Adam', 'Kowalski', '2026-03-23', NULL),
('Ewa', 'Nowak', '2026-03-23', NULL),
('Piotr', 'Zielinski', '2026-03-23', NULL);

INSERT INTO Stanowisko (Nazwa, Lokalizacja) VALUES 
('Montaż ręczny', 'Hala A'),        
('Testowanie i Kalibracja', 'Hala B'), 
('Kontrola Jakości', 'Hala C');     

INSERT INTO Montaz (Numer_Seryjny, Id_Modelu, Id_Pracownika, Id_Stanowiska, Data_Rozpoczecia, Data_Zakonczenia) VALUES 
('SN-QUAD-001', 1, 1, 1, '2026-03-25', '2026-03-26'),
('SN-QUAD-002', 1, 2, 1, '2026-03-25', '2026-03-26'),
('SN-QUAD-003', 1, 3, 1, '2026-03-26', '2026-03-27'),
('SN-QUAD-004', 1, 4, 1, '2026-03-26', '2026-03-27'),
('SN-QUAD-005', 1, 5, 1, '2026-03-27', '2026-03-28'),
('SN-HEXA-001', 2, 7, 2, '2026-03-25', '2026-03-27'),
('SN-HEXA-002', 2, 8, 2, '2026-03-26', '2026-03-28'),
('SN-HEXA-003', 2, 9, 2, '2026-03-27', '2026-03-29'),
('SN-HEXA-004', 2, 1, 3, '2026-03-27', '2026-03-29'),
('SN-HEXA-005', 2, 2, 3, '2026-03-28', '2026-03-29');

-- ==========================================
-- 6. NARZĘDZIA I URZĄDZENIA
-- ==========================================
INSERT INTO Narzedzie (Nazwa, Producent, Liczba_Poczatkowa) VALUES 
('Lutownica grotowa', 'Yato', 20),
('Zestaw wkrętaków precyzyjnych', 'iFixit', 15),
('Pęseta antystatyczna', 'Vetus', 30),
('Szczypce boczne', 'Neo', 25),
('Klucz nasadowy M8', 'Stanley', 10),
('Mata silikonowa lutownicza', 'Mechanic', 15),
('Ściągacz izolacji', 'Yato', 10),
('Trzecia ręka lutownicza', 'HobbyKing', 12),
('Lupa stołowa', 'Bresser', 8),
('Nożyk introligatorski', 'Stanley', 40);

INSERT INTO Wyposazenie_Stanowiska (Id_Stanowiska, Id_Narzedzia, Liczba_Sztuk) VALUES 
(1, 1, 5), (1, 2, 5), (1, 3, 10), (1, 4, 5), (1, 6, 5), 
(2, 5, 2), (2, 7, 2), (2, 8, 4),                        
(3, 9, 3), (3, 10, 5);                                  

INSERT INTO Kategoria_Urzadzenia (Nazwa_Kategorii_Urzadzenia) VALUES 
('Elektryczne'), ('Mechaniczne'), ('Diagnostyczne');

INSERT INTO Model_Urzadzenia (Nazwa, Producent, Id_Kategorii_Urzadzenia) VALUES 
('Zasilacz warsztatowy 30V', 'Korad', 1),        
('Stacja lutownicza BGA', 'Quick', 1),           
('Ładowarka mikroprocesorowa', 'ISDT', 1),       
('Kompresor cichy', 'Stanley', 2),               
('Wiertarka stołowa', 'Bosch', 2),               
('Drukarka 3D', 'Creality', 2),                  
('Oscyloskop cyfrowy', 'Rigol', 3),              
('Multimetr TrueRMS', 'Fluke', 3),               
('Waga precyzyjna', 'Radwag', 3),                
('Kamera termowizyjna', 'Flir', 3);              

INSERT INTO Urzadzenie (Numer_Seryjny, Id_Modelu_Urzadzenia, Data_Wprowadzenia, Data_Zbycia) VALUES 
('URZ-EL-001', 1, '2026-03-23', NULL),
('URZ-EL-002', 1, '2026-03-23', NULL),
('URZ-EL-003', 2, '2026-03-23', NULL),
('URZ-EL-004', 2, '2026-03-23', NULL),
('URZ-EL-005', 3, '2026-03-23', NULL),
('URZ-EL-006', 3, '2026-03-23', NULL),
('URZ-ME-007', 4, '2026-03-23', NULL),
('URZ-ME-008', 4, '2026-03-23', NULL),
('URZ-ME-009', 5, '2026-03-23', NULL),
('URZ-ME-010', 5, '2026-03-23', NULL),
('URZ-ME-011', 6, '2026-03-23', NULL),
('URZ-ME-012', 6, '2026-03-23', NULL),
('URZ-DI-013', 7, '2026-03-23', NULL),
('URZ-DI-014', 7, '2026-03-23', NULL),
('URZ-DI-015', 8, '2026-03-23', NULL),
('URZ-DI-016', 8, '2026-03-23', NULL),
('URZ-DI-017', 8, '2026-03-23', NULL),
('URZ-DI-018', 9, '2026-03-23', NULL),
('URZ-DI-019', 10, '2026-03-23', NULL),
('URZ-DI-020', 10, '2026-03-23', NULL);

INSERT INTO Dokompletowanie_Stanowiska (Id_Stanowiska, Id_Urzadzenia, Data_Dokompletowania, Data_Rozkompletowania) VALUES 
(1, 1, '2026-03-24', NULL), (1, 3, '2026-03-24', NULL), (1, 9, '2026-03-24', NULL), 
(1, 11, '2026-03-24', NULL), (1, 15, '2026-03-24', NULL), (1, 18, '2026-03-24', NULL),
(2, 2, '2026-03-24', NULL), (2, 5, '2026-03-24', NULL), (2, 7, '2026-03-24', NULL), 
(2, 13, '2026-03-24', NULL), (2, 16, '2026-03-24', NULL), (2, 19, '2026-03-24', NULL),
(3, 4, '2026-03-24', NULL), (3, 6, '2026-03-24', NULL), (3, 8, '2026-03-24', NULL), 
(3, 10, '2026-03-24', NULL), (3, 12, '2026-03-24', NULL), (3, 14, '2026-03-24', NULL), 
(3, 17, '2026-03-24', NULL), (3, 20, '2026-03-24', NULL);