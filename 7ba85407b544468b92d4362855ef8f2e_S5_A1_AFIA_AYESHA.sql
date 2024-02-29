# Task 2 create database by Ayesha Afia
DROP DATABASE IF EXISTS S5_A1_Afia_Ayesha;
CREATE DATABASE IF NOT EXISTS S5_A1_Afia_Ayesha;
USE S5_A1_Afia_Ayesha;


SHOW DATABASES;
SHOW TABLES;
 # TASK 2 CREATE TABLES by Ayesha Afia
 
 
 CREATE TABLE SEASON_AA(
 SEASON_ID_AA INT PRIMARY KEY,
 NAME_AA VARCHAR (12) NOT NULL,
 YEAR_AA DATE NOT NULL,
 REG_STARTING_DATE_AA DATE NOT NULL,
 REG_ENDING_DATE_AA DATE NOT NULL
 );
 
CREATE TABLE DIVISION_AA(
 DIVISION_ID_AA INT PRIMARY KEY,
 AGE_AA INT NOT NULL,
 SEX_AA CHAR(1) NOT NULL,
 RANK_AA INT NOT NULL,
 EMAIL_AA VARCHAR (25) NOT NULL,
 PHONE_AA CHAR(12) NOT NULL,
FOREIGN KEY(DIVISION_AA_DIVISION_ID_AA) REFERENCES DIVISION_AA(SEASON_ID_AA)
 );
 CREATE TABLE CLUB_AA(
 CLUB_ID_AA INT PRIMARY KEY,
 NAME_AA VARCHAR(21) NOT NULL,
 EMAIL_AA VARCHAR(25) NOT NULL,
ABBREVIATION_AA CHAR(5)

 );
 CREATE TABLE TEAM_AA(
TEAM_ID_AA INT PRIMARY KEY,
 BIRTH_YEAR_AA DATE NOT NULL,
 SEX_AA CHAR(1) NOT NULL,
 NAME_AA VARCHAR(21) NOT NULL,
 EMAIL_AA VARCHAR (25) NOT NULL,
 PHONE_AA CHAR(12) NOT NULL,
FOREIGN KEY(TEAM_AA_TEAM_ID_AA) REFERENCES TEAM_AA(CLUB_ID_AA)
 );
 
 #TASK 3 ADD DATA by Ayesha Afia
DESCRIBE SEASON;
DESCRIBE DIVISION;
DESCRIBE CLUB;
DESCRIBE MANAGER;
DESCRIBE TEAM;
DESCRIBE ASSIGNMENT;
#Task 4 Ayesha Afia
INSERT INTO SEASON VALUES
('100', '2018-06-01', '2018-07-25', '2018-03-25', '2018-04-12', 'Summer', '2018'),
('101', '2018-09-04', '2018-10-31', '2018-07-25', '2018-08-15', 'FALL', '2018'),
('102', '2018-07-05', '2018-08-25', '2018-04-25', '2018-05-12', 'Summer', '2018'),
('103', '2019-02-16', '2019-04-25', '2018-12-21', '2018-01-12', 'Spring', '2019'),
('104', '2018-11-01', '2018-12-23', '2018-09-25', '2018-10-12', 'Winter', '2020');

INSERT INTO DIVISION VALUES
('105', 'U14', 'Boys', '1', '123@email.com', '111-222-3333', '100'),
('106', 'U17', 'Girls', '1', '1234@email.com', '222-333-4444', '104'),
('107', 'U14', 'Boys', '4', '12345@email.com', '333-444-5555', '100'),
('108', 'U17', 'Girls', '2', '123456@email.com', '444-555-6666', '103'),
('109', 'U21', 'Girls', '5', '1234567@email.com', '555-667-7777', '101');

INSERT INTO CLUB VALUES
('110', 'FC ', 'FCB@email.com', '999-888-7777', 'FCB'),
('111', 'RO', 'RMA@email.com', '777-888-9999', 'RMA'),
('112', 'MI', 'MANU@email.com', '333-999-1111', 'MAN_U'),
('113', 'BM', 'LV@email.com', '888-222-3333', 'LV' ),
('114', 'AC', 'ACM@email.com', '555-777-2345', 'ACM' );

INSERT INTO SEASON VALUES
('115', '2018-06-01', '2018-07-25', '2018-03-25', '2018-04-12', 'Summer', '2018'),
('116', '2018-09-04', '2018-10-31', '2018-07-25', '2018-08-15', 'FALL', '2018'),
('117', '2018-07-05', '2018-08-25', '2018-04-25', '2018-05-12', 'Summer', '2018'),
('118', '2019-02-16', '2019-04-25', '2018-12-21', '2018-01-12', 'Spring', '2019'),
('119', '2018-11-01', '2018-12-23', '2018-09-25', '2018-10-12', 'Winter', '2020');

INSERT INTO MANAGER VALUES
('120', 'Ronald Koeman', '234-567-8901', 'RK@email.com' ),
('121', ' Mary Markson', '703-000-1111', 'ZZ@email.com' ),
('122', 'Oliver Gunner', '917-000-2345', 'OLGS@mail.com' ),
('123', 'George Klopp', '111-222-3333', 'JK@mail.com' ),
('124', 'Stefano Pioli', '999-000-3335', 'SP@mail.com' );

INSERT INTO TEAM VALUES
('125', '2005', 'Boys', '', '110', '120'),
('126', '2002', 'Girls', '', '110', '121'),
('127', '2006', 'Boys', '', '113', '122'),
('128', '2003', 'Girls', '', '114', '123'),
('129', '2000', 'Girls', '', '112', '124');

INSERT INTO ASSIGNMENT VALUES
();

SELECT * FROM SEASON;
SELECT * FROM DIVISION;
SELECT * FROM CLUB;
SELECT * FROM MANAGER;
SELECT * FROM TEAM;
SELECT * FROM ASSIGNMENT;
#Task 5 Ayesha Afia
select count(*) as "number of games" from (select distinct season_start_date from season) as something; 
select count(*) as "total number of teams playing " from (select distinct Club_club_id from team) as different_clubs;
select count(*) as "total number of teams enrolled" from (select distinct team_name from team) as something;
select count(*) as "total numbers of wins" from division where division_rank <4;

