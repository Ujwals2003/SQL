
CREATE DATABASE SportsDB;
USE SportsDB;


CREATE TABLE Cricket_info (
    Player_ID INT PRIMARY KEY,
    Player_Name VARCHAR(50),
    Age INT,
    Country VARCHAR(50),
    Matches_Played INT,
    Career_Runs INT,
    Career_Wickets INT,
    Batting_Avg FLOAT,
    Bowling_Avg FLOAT,
    Strike_Rate FLOAT
);

CREATE TABLE FootBall_info (
    Player_ID INT PRIMARY KEY,
    Player_Name VARCHAR(50),
    Age INT,
    Country VARCHAR(50),
    Matches_Played INT,
    Career_Goals INT,
    Career_Assists INT,
    Yellow_Cards INT,
    Red_Cards INT,
    Pass_Accuracy FLOAT
);


INSERT INTO Cricket_info VALUES
(1, 'Virat Kohli', 34, 'India', 250, 12000, 4, 55.5, 32.4, 89.2),
(2, 'Rohit Sharma', 36, 'India', 240, 9800, 2, 51.1, 33.7, 86.5),
(3, 'Shubman Gill', 25, 'India', 90, 3200, 0, 47.2, 0.0, 82.3),
(4, 'KL Rahul', 32, 'India', 180, 7200, 1, 45.6, 30.4, 84.1),
(5, 'Shreyas Iyer', 29, 'India', 160, 6100, 0, 43.8, 0.0, 81.9),
(6, 'Hardik Pandya', 30, 'India', 150, 3700, 90, 35.2, 28.9, 88.5),
(7, 'Ravindra Jadeja', 35, 'India', 230, 5500, 250, 37.9, 24.3, 80.7),
(8, 'Ravichandran Ashwin', 38, 'India', 250, 3800, 450, 29.5, 22.1, 78.9),
(9, 'Jasprit Bumrah', 30, 'India', 190, 1200, 250, 15.5, 21.8, 90.5),
(10, 'Yuzvendra Chahal', 33, 'India', 170, 700, 180, 10.2, 22.9, 88.3),
(11, 'Mohammed Shami', 34, 'India', 210, 900, 280, 12.8, 24.5, 85.7),
(12, 'Bhuvneshwar Kumar', 34, 'India', 220, 1100, 290, 13.6, 23.8, 83.2),
(13, 'Ishan Kishan', 26, 'India', 80, 2200, 0, 39.7, 0.0, 79.5),
(14, 'Suryakumar Yadav', 33, 'India', 120, 3400, 0, 41.3, 0.0, 87.1),
(15, 'Rinku Singh', 27, 'India', 50, 1500, 0, 36.8, 0.0, 81.4);

INSERT INTO FootBall_info VALUES
(1, 'Sunil Chhetri', 39, 'India', 140, 85, 40, 10, 1, 82.5),
(2, 'Gurpreet Singh Sandhu', 33, 'India', 120, 0, 5, 3, 0, 75.8),
(3, 'Sandesh Jhingan', 31, 'India', 115, 8, 10, 5, 0, 78.9),
(4, 'Anirudh Thapa', 27, 'India', 95, 12, 25, 6, 0, 80.3),
(5, 'Udanta Singh', 29, 'India', 105, 18, 30, 7, 1, 79.6),
(6, 'Sahal Abdul Samad', 27, 'India', 85, 15, 20, 5, 0, 81.2),
(7, 'Manvir Singh', 28, 'India', 90, 20, 15, 4, 1, 83.7),
(8, 'Liston Colaco', 26, 'India', 70, 13, 12, 3, 0, 80.9),
(9, 'Brandon Fernandes', 29, 'India', 98, 10, 35, 4, 0, 84.1),
(10, 'Jeje Lalpekhlua', 32, 'India', 110, 26, 15, 6, 0, 78.5),
(11, 'Rahul Bheke', 33, 'India', 105, 5, 8, 4, 0, 76.9),
(12, 'Lallianzuala Chhangte', 27, 'India', 85, 22, 18, 3, 0, 82.4),
(13, 'Pritam Kotal', 30, 'India', 108, 6, 10, 5, 0, 77.1),
(14, 'Subhasish Bose', 29, 'India', 95, 4, 12, 3, 0, 78.8),
(15, 'Nikhil Poojary', 28, 'India', 85, 3, 14, 2, 0, 79.3);

ALTER TABLE Cricket_info ADD COLUMN Highest_Score INT;
ALTER TABLE Cricket_info ADD COLUMN Best_Bowling_Figure VARCHAR(10);

ALTER TABLE FootBall_info ADD COLUMN Position VARCHAR(30);
ALTER TABLE FootBall_info ADD COLUMN Club VARCHAR(50);


ALTER TABLE Cricket_info RENAME COLUMN Career_Runs TO Total_Runs;
ALTER TABLE Cricket_info RENAME COLUMN Career_Wickets TO Total_Wickets;
ALTER TABLE FootBall_info RENAME COLUMN Career_Goals TO Total_Goals;
ALTER TABLE FootBall_info RENAME COLUMN Career_Assists TO Total_Assists;


UPDATE Cricket_info SET Total_Runs = 12500 WHERE Player_Name = 'Virat Kohli' AND Age = 34;
UPDATE FootBall_info SET Total_Goals = 90 WHERE Player_Name = 'Sunil Chhetri' OR Country = 'India';


DELETE FROM Cricket_info WHERE Player_ID IN (13, 14, 15);
DELETE FROM FootBall_info WHERE Player_ID NOT IN (1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12);


SELECT * FROM Cricket_info WHERE Age > 30;
SELECT * FROM FootBall_info WHERE Country = 'India' AND Total_Goals > 10;
SELECT * FROM Cricket_info WHERE Country = 'India' OR Batting_Avg > 45;
SELECT * FROM FootBall_info WHERE Country IN ('India');
SELECT * FROM Cricket_info WHERE Country NOT IN ('Pakistan', 'Australia');
SELECT * FROM FootBall_info WHERE Total_Goals BETWEEN 10 AND 50;
SELECT * FROM Cricket_info WHERE Total_Runs NOT BETWEEN 2000 AND 10000;
SELECT * FROM FootBall_info WHERE Player_Name LIKE 'S%';
SELECT * FROM Cricket_info WHERE Player_Name NOT LIKE 'R%';

SELECT COUNT(*) AS Total_Cricket_Players FROM Cricket_info;











