
USE GameShop;

DROP TABLE IF EXISTS Order_Details;
DROP TABLE IF EXISTS [Order];
DROP TABLE IF EXISTS Game;
DROP TABLE IF EXISTS Developer;
DROP TABLE IF EXISTS Customer;

-- Customer table
CREATE TABLE Customer (
    Customer_ID INT PRIMARY KEY,
    Name VARCHAR(255),
    Email VARCHAR(255),
    Steam_Account VARCHAR(255),
    Address VARCHAR(255)
);

-- Order table
CREATE TABLE [Order] (
    Order_ID INT PRIMARY KEY,
    Customer_ID INT,
    Order_Date DATE,
    FOREIGN KEY (Customer_ID) REFERENCES Customer(Customer_ID) ON DELETE CASCADE
);

-- Game table
CREATE TABLE Game (
    Game_ID INT PRIMARY KEY,
    Title VARCHAR(255),
    Genre VARCHAR(255),
    Price DECIMAL(10, 2),
    Developer_ID INT
);

CREATE TABLE Developer (
	Developer_ID INT PRIMARY KEY,
	Name VARCHAR(255)
);

CREATE TABLE Order_Details (
	Detail_ID INT PRIMARY KEY,
	Order_ID INT,
	Game_ID INT,
	Quantity INT,
	FOREIGN KEY (Order_ID) REFERENCES [Order](Order_ID) ON DELETE CASCADE,
	FOREIGN KEY (Game_ID) REFERENCES Game(Game_ID) ON DELETE CASCADE
);

INSERT INTO Customer (Customer_ID, Name, Email, Steam_Account, Address) VALUES
(1, 'Alya', 'alya123@gmail.com', 'alya_steam', '123 Maple St'),
(2, 'Brian', 'brian456@gmail.com', 'brian456_steam', '456 Oak St'),
(3, 'Anin', 'anin@gmail.com', 'anin_steam', '789 Pine St'),
(4, 'Meta', 'meta99@gmail.com', 'meta99_steam', '1010 Elm St'),
(5, 'Ellen', 'ellen073@gmail.com', 'cato_steam', 'Jl.TAL'),
(6, 'Sato', 'sato24@gmail.com', 'sato_steam', 'Jl. Gandaria'),
(7, 'Sana', 'minatozaki@gmail.com', 'shasha_steam', 'Jl. Panggungjati'),
(8, 'Nayeon', 'nayeon12@gmail.com', 'nayeonie_steam', 'Jl. Purnabakti'),
(9, 'Mina', 'minari@gmail.com', 'minaminari_steam', 'Jl.Snow '),
(10, 'Dahyun', 'dubu@gmail.com', 'dubu11_steam', 'Jl. Tofu'),
(11, 'Irene', 'tokkie@gmail.com', 'renebaebae_steam', 'Jl.Daegu'),
(12, 'Seulgi', 'gomseul@gmail.com', 'seulgom_steam', 'Jl. Seni'),
(13, 'Wendy', 'underwater@gmail.com', 'wennie_steam', 'Jl. Canadian'),
(14, 'Joy', 'joybangs@gmail.com', 'moojoy_steam', 'Jl. Hello'),
(15, 'Yeri', 'yerimiese@gmail.com', 'mieseyeri_steam', 'Jl. Birthday'),
(16, 'Akutagawa', 'akutagawaa@gmail.com', 'akuta_steam', 'Jl. Port'),
(17, 'Ranpo', 'ranposan@gmail.com', 'poranpo_steam', 'Jl. Bungou'),
(18, 'Dazai', 'dazai55@gmail.com', 'zaida_steam', 'Jl. BSD'),
(19, 'Atsushi', 'tiger@gmail.com', 'atsushi_steam', 'Jl. Cool Stuff'),
(20, 'Chuuya', 'chuuya88@gmail.com', 'yaya_steam', 'Jl. Gravity'),
(21, 'Tobio', 'bread@gmail.com', 'tobiobio_steam', 'Jl. High School'),
(22, 'Oikawa', 'oiking@gmail.com', 'oikawa00l_steam', 'Jl. Setter'),
(23, 'Akaashi', 'akaashi89@gmail.com', 'akaa_steam', 'Jl. Onigiri'),
(24, 'Iwaizume', 'iwaizume127@gmail.com', 'iwai_steam', 'Jl. Seaweed'),
(25, 'Kita', 'shinsuke@gmail.com', 'kita00_steam', 'Jl. Harvest'),
(26, 'Bokuto', 'bokutoo@gmail.com', 'bokuto128_steam', 'Jl. Hey'),
(27, 'Hinata', 'shoyo@gmail.com', 'tangerine_steam', 'Jl. Bycycle'),
(28, 'Choso', 'chosochoso@gmail.com', 'cho50_steam', 'Jl. Shibuya'),
(29, 'Megumi', 'gumi@gmail.com', 'megum1_steam', 'Jl. Jujutsu '),
(30, 'Yuji', 'itadori@gmail.com', 'yujiyuji_steam', 'Jl. Jujutsu');

INSERT INTO Developer (Developer_ID, Name) VALUES
(1, 'Electronic Arts'),
(2, 'Nintendo'),
(3, 'Valve'),
(4, 'Rockstar Games'),
(5, 'Ubisoft'),
(6, 'Bandai Namco Entertainment'),
(7, 'Capcom'),
(8, 'Riot Games'),
(9, 'Activision'),
(10, 'Bethesda Game Studios'),
(11, 'Bungie'),
(12, 'Insomniac Games'),
(13, 'Sucker Punch Productions'),
(14, 'FunPlus'),
(15, 'Gameloft'),
(16, 'NetEase Games'),
(17, 'Supercell'),
(18, 'Halfbrick Studios'),
(19, 'Roblox Studio'),
(20, 'Nexon'),
(21, 'Green Panda Games'),
(22, 'Telltale Games'),
(23, 'FromSoftware'),
(24, 'Naughty Dog'),
(25, 'Respawn Entertainment'),
(26, 'Kojima Production'),
(27, 'Zynga'),
(28, 'Obsidian Entertainment'),
(29, 'Gearbox Software'),
(30, 'Illusion Labs');

INSERT INTO Game (Game_ID, Title, Genre, Price, Developer_ID) VALUES
(1, 'FIFA 23', 'Sports', 59.99, 1),
(2, 'The Sims 4', 'Simulation', 49.99, 1),
(3, 'Animal Crossing: New Horizons', 'Simulation', 59.99, 2),
(4, 'The Legend of Zelda: Breath of the Wild', 'Adventure', 59.99, 2),
(5, 'Half-Life: Alyx', 'FPS', 39.99, 3),
(6, 'Portal 2', 'Puzzle', 19.99, 3),
(7, 'Grand Theft Auto V', 'Action', 29.99, 4),
(8, 'Red Dead Redemption 2', 'Adventure', 59.99, 4),
(9, 'Assassin Creed Valhalla', 'RPG', 59.99, 5),
(10, 'Far Cry 6', 'Shooter', 49.99, 5),
(11, 'Tekken 7', 'Fighting', 29.99, 6),
(12, 'Dark Souls III', 'RPG', 39.99, 6),
(13, 'Resident Evil Village', 'Horror', 59.99, 7),
(14, 'Monster Hunter World', 'Action', 49.99, 7),
(15, 'League of Legends', 'MOBA', 0.00, 8),
(16, 'Valorant', 'Shooter', 0.00, 8),
(17, 'Call of Duty: Modern Warfare', 'FPS', 59.99, 9),
(18, 'Overwatch', 'Shooter', 39.99, 9),
(19, 'The Elder Scrolls V: Skyrim', 'RPG', 39.99, 10),
(20, 'Fallout 76', 'RPG', 29.99, 10),
(21, 'Destiny 2', 'Shooter', 0.00, 11),
(22, 'Halo Reach', 'Shooter', 19.99, 11),
(23, 'Ratchet & Clank: Rift Apart', 'Action', 69.99, 12),
(24, 'Spider-Man: Miles Morales', 'Action', 49.99, 12),
(25, 'Ghost f Tsushima', 'Action', 59.99, 13),
(26, 'inFAMous Second Son', 'Action', 19.99, 13),
(27, 'King of Avalon', 'Strategy', 0.00, 14),
(28, 'Call of Antia', 'Puzzle', 00.00, 14),
(29, 'Ashalt 9: Legends', 'Racing', 0.00, 15),
(30, 'Modern Combat 5', 'Shooter', 0.00, 15);

INSERT INTO [Order] (Order_ID, Customer_ID, Order_Date) VALUES
(1, 1, '2024-01-15'),
(2, 2, '2024-01-18'),
(3, 3, '2024-01-31'),
(4, 4, '2024-02-05'),
(5, 5, '2024-02-10'),
(6, 6, '2024-02-15'),
(7, 7, '2024-03-01'),
(8, 8, '2024-03-29'),
(9, 9, '2024-03-10'),
(10, 10, '2024-04-15'),
(11, 11, '2024-04-18'),
(12, 12, '2024-04-23'),
(13, 13, '2024-05-01'),
(14, 14, '2024-05-03'),
(15, 15, '2024-05-09'),
(16, 16, '2024-06-18'),
(17, 17, '2024-06-16'),
(18, 18, '2024-06-15'),
(19, 19, '2024-07-08'),
(20, 20, '2024-07-12'),
(21, 21, '2024-07-25'),
(22, 22, '2024-08-01'),
(23, 23, '2024-08-14'),
(24, 24, '2024-08-24'),
(25, 25, '2024-09-02'),
(26, 26, '2024-09-23'),
(27, 27, '2024-09-25'),
(28, 28, '2024-10-01'),
(29, 29, '2024-10-04'),
(30, 30, '2024-10-05');

DELETE FROM Order_Details;

INSERT INTO Order_Details (Detail_ID, Order_ID, Game_ID, Quantity) VALUES
(1, 1, 1, 2),
(2, 1, 5, 1), 
(3, 2, 8, 3),
(4, 3, 10, 1),
(5, 4, 20, 2),
(6, 5, 7, 3),
(7, 6, 9, 4),
(8, 7, 15, 2),
(9, 8, 19, 1),
(10, 8, 28, 1),
(11, 10, 1, 5),
(12, 12, 3, 4),
(13, 15, 23, 2),
(14, 16, 5, 6),
(15, 17, 22, 1),
(16, 19, 24, 3),
(17, 20, 29, 1),
(18, 22, 17, 2),
(19, 24, 27, 3),
(20, 25, 6, 5); 

SELECT * FROM Customer;
SELECT * FROM Developer;
SELECT * FROM Game;
SELECT * FROM [Order];
SELECT * FROM Order_Details;


ALTER TABLE Order_Details NOCHECK CONSTRAINT ALL;

USE GameShop;

SELECT TOP 10 
    C.Customer_ID,
    C.Name AS Customer_Name,
    SUM(OD.Quantity) AS Total_Games_Purchased
FROM 
    Customer C
JOIN 
    [Order] O ON C.Customer_ID = O.Customer_ID
JOIN 
    Order_Details OD ON O.Order_ID = OD.Order_ID
GROUP BY 
    C.Customer_ID, C.Name
ORDER BY 
    Total_Games_Purchased DESC;