CREATE DATABASE GamingDB;
USE GamingDB;

-- 1. Players Table
CREATE TABLE Players (
    PlayerID INT PRIMARY KEY,
    PlayerName VARCHAR(50) NOT NULL,
    Age INT,
    TeamName VARCHAR(50)
);

-- 2. Cricket Statistics
CREATE TABLE Cricket (
    PlayerID INT PRIMARY KEY,
    MatchesPlayed INT,
    Runs INT,
    Fours INT,
    Sixes INT,
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);

-- 3. Volleyball Statistics
CREATE TABLE Volleyball (
    PlayerID INT PRIMARY KEY,
    MatchesPlayed INT,
    Points INT,
    Blocks INT,
    SuccessfulServes INT,
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);

-- 4. Kabaddi Statistics
CREATE TABLE Kabaddi (
    PlayerID INT PRIMARY KEY,
    MatchesPlayed INT,
    RaidPoints INT,
    TacklePoints INT,
    SuccessfulRaids INT,
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);

-- 5. Basketball Statistics
CREATE TABLE Basketball (
    PlayerID INT PRIMARY KEY,
    MatchesPlayed INT,
    Points INT,
    Rebounds INT,
    Assists INT,
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);

-- 6. Football Statistics
CREATE TABLE Football (
    PlayerID INT PRIMARY KEY,
    MatchesPlayed INT,
    Goals INT,
    Assists INT,
    Shots INT,
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID)
);


-- INSERT PLAYERS
INSERT INTO Players VALUES
(101, 'Rahul', 22, 'India'),
(102, 'Arjun', 23, 'Warriors'),
(103, 'Vijay', 21, 'Titans'),
(104, 'Rohit', 24, 'United'),
(105, 'Kiran', 22, 'Champions');


-- INSERT CRICKET DATA
INSERT INTO Cricket VALUES
(101, 50, 2200, 180, 75),
(102, 45, 1800, 150, 55),
(103, 40, 1500, 120, 45),
(104, 35, 1200, 100, 35),
(105, 30, 950, 80, 25);


-- INSERT VOLLEYBALL DATA
INSERT INTO Volleyball VALUES
(101, 30, 250, 40, 65),
(102, 28, 220, 35, 55),
(103, 25, 190, 30, 48),
(104, 32, 280, 45, 70),
(105, 20, 150, 25, 40);


-- INSERT KABADDI DATA
INSERT INTO Kabaddi VALUES
(101, 25, 120, 45, 80),
(102, 30, 150, 55, 95),
(103, 22, 100, 35, 65),
(104, 28, 135, 50, 85),
(105, 20, 90, 30, 55);


-- INSERT BASKETBALL DATA
INSERT INTO Basketball VALUES
(101, 35, 520, 180, 120),
(102, 40, 650, 210, 150),
(103, 30, 400, 140, 100),
(104, 38, 580, 190, 135),
(105, 25, 300, 110, 80);


-- INSERT FOOTBALL DATA
INSERT INTO Football VALUES
(101, 40, 18, 12, 65),
(102, 45, 25, 15, 80),
(103, 35, 12, 10, 50),
(104, 42, 20, 18, 75),
(105, 30, 10, 8, 45);


-- DISPLAY ALL PLAYERS
SELECT * FROM Players;

-- DISPLAY CRICKET STATISTICS
SELECT * FROM Cricket;

-- DISPLAY VOLLEYBALL STATISTICS
SELECT * FROM Volleyball;

-- DISPLAY KABADDI STATISTICS
SELECT * FROM Kabaddi;

-- DISPLAY BASKETBALL STATISTICS
SELECT * FROM Basketball;

-- DISPLAY FOOTBALL STATISTICS
SELECT * FROM Football;