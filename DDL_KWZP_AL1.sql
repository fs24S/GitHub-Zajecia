CREATE DATABASE DronPol;
GO
--DROP DATABASE DronPol;
GO
USE DronPol;
GO

-- ==========================================
-- 1. Drony i ich klasyfikacja
-- ==========================================
CREATE TABLE Rodzaj_Dronu (
    Id_Rodzaj_Dronu INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa_Rodzaju NVARCHAR(50) NOT NULL,
    Liczba_Silnikow INT NOT NULL,
    Rozmiar INT NOT NULL
);

CREATE TABLE Model_Dronu (
    Id_Modelu INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa NVARCHAR(50) NOT NULL,
    Id_Rodzaj_Dronu INT NOT NULL FOREIGN KEY REFERENCES Rodzaj_Dronu(Id_Rodzaj_Dronu),
    Data_Wprowadzenia DATE NOT NULL
);

-- ==========================================
-- 2. Podzespoły i specyfikacja materiałowa
-- ==========================================
CREATE TABLE Kategoria_Podzespolu (
    Id_Kategorii INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa_Kategorii NVARCHAR(50) NOT NULL
);

CREATE TABLE Rodzaj_Podzespolu (
    Id_Rodzaj_Podzespolu INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa_Rodzaju_Podzespolu NVARCHAR(50) NOT NULL,
    Id_Kategorii INT NOT NULL FOREIGN KEY REFERENCES Kategoria_Podzespolu(Id_Kategorii)
);

CREATE TABLE Podzespol (
    Id_Podzespolu INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa NVARCHAR(100) NOT NULL,
    Producent NVARCHAR(50) NULL,
    Id_Rodzaj_Podzespolu INT NOT NULL FOREIGN KEY REFERENCES Rodzaj_Podzespolu(Id_Rodzaj_Podzespolu)
);

CREATE TABLE Specyfikacja_Modelu (
    Id_Specyfikacji INT IDENTITY(1,1) PRIMARY KEY,
    Id_Modelu INT NOT NULL FOREIGN KEY REFERENCES Model_Dronu(Id_Modelu),
    Id_Podzespolu INT NOT NULL FOREIGN KEY REFERENCES Podzespol(Id_Podzespolu),
    Liczba_Podzespolow INT NOT NULL
);

CREATE TABLE Zakup_Podzespolu (
    Id_Zakupu INT IDENTITY(1,1) PRIMARY KEY,
    Id_Podzespolu INT NOT NULL FOREIGN KEY REFERENCES Podzespol(Id_Podzespolu),
    Data_Zakupu DATE NOT NULL,
    Liczba_Sztuk INT NOT NULL
);

CREATE TABLE Jednostka (
    Id_Jednostki INT IDENTITY(1,1) PRIMARY KEY,
    Skrot NVARCHAR(10) NOT NULL,
    Nazwa_Jednostki NVARCHAR(50) NOT NULL
);

CREATE TABLE Material (
    Id_Materialu INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa_Materialu NVARCHAR(50) NOT NULL,
    Id_Jednostki INT NOT NULL FOREIGN KEY REFERENCES Jednostka(Id_Jednostki)
);

CREATE TABLE Zakup_Materialu (
    Id_Zakupu_Materialu INT IDENTITY(1,1) PRIMARY KEY,
    Id_Materialu INT NOT NULL FOREIGN KEY REFERENCES Material(Id_Materialu),
    Data_Zakupu DATE NOT NULL,
    Ilosc DECIMAL(10,2) NOT NULL
);

CREATE TABLE Material_Modelu (
    Id_Material_Modelu INT IDENTITY(1,1) PRIMARY KEY,
    Id_Modelu INT NOT NULL FOREIGN KEY REFERENCES Model_Dronu(Id_Modelu),
    Id_Materialu INT NOT NULL FOREIGN KEY REFERENCES Material(Id_Materialu),
    Ilosc DECIMAL(10,2) NOT NULL
);

-- ==========================================
-- 3. Pracownicy, stanowiska i produkcja
-- ==========================================
CREATE TABLE Pracownik (
    Id_Pracownika INT IDENTITY(1,1) PRIMARY KEY,
    Imie NVARCHAR(50) NOT NULL,
    Nazwisko NVARCHAR(50) NOT NULL,
    Data_Zatrudnienia DATE NOT NULL,
    Data_Zwolnienia DATE NULL
);

CREATE TABLE Stanowisko (
    Id_Stanowiska INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa NVARCHAR(50) NOT NULL,
    Lokalizacja NVARCHAR(50) NOT NULL
);

CREATE TABLE Montaz (
    Id_Montazu INT IDENTITY(1,1) PRIMARY KEY,
    Numer_Seryjny NVARCHAR(50) NOT NULL UNIQUE,
    Id_Modelu INT NOT NULL FOREIGN KEY REFERENCES Model_Dronu(Id_Modelu),
    Id_Pracownika INT NOT NULL FOREIGN KEY REFERENCES Pracownik(Id_Pracownika),
    Id_Stanowiska INT NOT NULL FOREIGN KEY REFERENCES Stanowisko(Id_Stanowiska),
    Data_Rozpoczecia DATE NOT NULL,
    Data_Zakonczenia DATE NULL
);

-- ==========================================
-- 4. Wyposażenie stanowisk (narzędzia/urządzenia)
-- ==========================================
CREATE TABLE Narzedzie (
    Id_Narzedzia INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa NVARCHAR(50) NOT NULL,
    Producent NVARCHAR(50) NULL,
    Liczba_Poczatkowa INT NOT NULL
);

CREATE TABLE Wyposazenie_Stanowiska (
    Id_Wyposazenia INT IDENTITY(1,1) PRIMARY KEY,
    Id_Stanowiska INT NOT NULL FOREIGN KEY REFERENCES Stanowisko(Id_Stanowiska),
    Id_Narzedzia INT NOT NULL FOREIGN KEY REFERENCES Narzedzie(Id_Narzedzia),
    Liczba_Sztuk INT NOT NULL
);

CREATE TABLE Utylizacja_Narzedzia (
    Id_Utylizacji_Narzedzia INT IDENTITY(1,1) PRIMARY KEY,
    Id_Narzedzia INT NOT NULL FOREIGN KEY REFERENCES Narzedzie(Id_Narzedzia),
    Liczba_Sztuk INT NOT NULL,
    Data_Utylizacji DATE NOT NULL
);

CREATE TABLE Zakup_Narzedzia (
    Id_Zakupu_Narzedzia INT IDENTITY(1,1) PRIMARY KEY,
    Id_Narzedzia INT NOT NULL FOREIGN KEY REFERENCES Narzedzie(Id_Narzedzia),
    Liczba_Sztuk INT NOT NULL,
    Data_Zakupu DATE NOT NULL
);

CREATE TABLE Kategoria_Urzadzenia (
    Id_Kategorii_Urzadzenia INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa_Kategorii_Urzadzenia NVARCHAR(50) NOT NULL
);

CREATE TABLE Model_Urzadzenia (
    Id_Modelu_Urzadzenia INT IDENTITY(1,1) PRIMARY KEY,
    Nazwa NVARCHAR(50) NOT NULL,
    Producent NVARCHAR(50) NULL,
    Id_Kategorii_Urzadzenia INT NOT NULL FOREIGN KEY REFERENCES Kategoria_Urzadzenia(Id_Kategorii_Urzadzenia)
);

CREATE TABLE Urzadzenie (
    Id_Urzadzenia INT IDENTITY(1,1) PRIMARY KEY,
    Numer_Seryjny NVARCHAR(50) NOT NULL UNIQUE,
    Id_Modelu_Urzadzenia INT NOT NULL FOREIGN KEY REFERENCES Model_Urzadzenia(Id_Modelu_Urzadzenia),
    Data_Wprowadzenia DATE NOT NULL,
    Data_Zbycia DATE NULL
);

CREATE TABLE Dokompletowanie_Stanowiska (
    Id_Dokompletowanie_Stanowiska INT IDENTITY(1,1) PRIMARY KEY,
    Id_Stanowiska INT NOT NULL FOREIGN KEY REFERENCES Stanowisko(Id_Stanowiska),
    Id_Urzadzenia INT NOT NULL FOREIGN KEY REFERENCES Urzadzenie(Id_Urzadzenia),
    Data_Dokompletowania DATE NOT NULL,
    Data_Rozkompletowania DATE NULL
);