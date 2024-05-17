CREATE DATABASE Hotel_Reservation
GO 

CREATE SCHEMA DWH
GO


CREATE TABLE DWH.date (
   [S_Date_Key] [int] NOT NULL,
   [Date] [datetime] NOT NULL,
   [Day] [tinyint] NOT NULL,
   [Month] [tinyint] NOT NULL,
   [Quarter] [tinyint] NOT NULL,
   [Year] [int] NOT NULL,
   [IsWeekend] BIT NOT NULL,
   PRIMARY KEY (S_Date_Key)
);
CREATE TABLE DWH.guests (
  S_Guest_key INT identity(1,1) NOT NULL, 
  guest_id INT,
  guest_first_name VARCHAR(45) NULL,
  guest_last_name VARCHAR(45) NULL,
  guest_contact_number VARCHAR(12) NULL,
  PRIMARY KEY (S_Guest_key),
)

CREATE TABLE DWH.rooms (
  S_Room_key INT identity(1,1) NOT NULL, 
  room_id INT,
  room_number INT NULL,
  room_type_name VARCHAR(45) NULL,
  room_cost DECIMAL(10,2) NULL,
  room_type_description VARCHAR(100) NULL,
  smoke_friendly INT NULL,
  pet_friendly INT NULL,  
  PRIMARY KEY (S_Room_key),
)

ALTER TABLE DWH.rooms
ADD is_active INT , 
  Valid_From datetime , 
  Valid_To datetime ;  

SELECT * FROM DWH.rooms

CREATE TABLE DWH.hotel (
  S_Hotel_key INT identity(1,1) NOT NULL, 
  hotel_id INT,
  hotel_name VARCHAR(45) NULL,
  hotel_contact_number VARCHAR(12) NULL,
  hotel_website VARCHAR(45) NULL,
  hotel_description VARCHAR(100) NULL,
  hotel_floor_count INT NULL,
  hotel_star_rating INT NOT NULL

  PRIMARY KEY (S_Hotel_key),
)

CREATE TABLE DWH.addresses (
  S_Addresses_key INT identity(1,1) NOT NULL, 
  address_id INT,
  city VARCHAR(45) NULL,
  state VARCHAR(45) NULL,
  country VARCHAR(45) NULL,
  PRIMARY KEY (S_Addresses_key)
)
ALTER TABLE DWH.addresses
ADD		address_line1 VARCHAR(100) NULL,
		address_line2 VARCHAR(100) NULL; 

CREATE TABLE DWH.department (
  S_Department_key INT identity(1,1) NOT NULL, 
  department_id INT NOT NULL,
  department_name VARCHAR(45) NULL,
  department_description VARCHAR(100) NULL,
  PRIMARY KEY (S_Department_key)
) 
CREATE TABLE DWH.Duration(
	S_Duration_Key	INT identity(1,1) NOT NULL, 
	Guest_ID		INT REFERENCES DWH.guests(S_Guest_key),
	Room_ID			INT REFERENCES DWH.rooms(S_Room_key),
	Date_From_Key	INT REFERENCES DWH.date(S_Date_Key) ,
	Date_To_Key		INT REFERENCES DWH.date(S_Date_Key) ,
	Duration_Days decimal(5,2),
	PRIMARY KEY (S_Duration_Key)
)

CREATE TABLE DWH.Occupency (
	S_Occupency_Key INT identity(1,1) NOT NULL, 
	hotel_id		INT REFERENCES DWH.hotel(S_Hotel_key) ,
	Date_id			INT REFERENCES DWH.date(S_Date_Key),
	Hotel_capacity INT ,
	Occupied_rooms INT ,
	Occupancy_rate decimal(5,2),
	PRIMARY KEY (S_Occupency_Key)

)

CREATE TABLE DWH.Reveneue(
	S_Reveneue_Key INT identity(1,1) NOT NULL, 
	hotel_id   INT REFERENCES DWH.hotel(S_Hotel_key) , 
	address_id INT REFERENCES DWH.addresses(S_Addresses_key) , 
	Date_id    INT REFERENCES DWH.date(S_Date_Key) , 
	hotel_revenue decimal(10,2),
	PRIMARY KEY (S_Reveneue_Key)
)



CREATE TABLE DWH.Employees(
	S_Employees_Key INT identity(1,1) NOT NULL, 
	hotel_id  INT REFERENCES DWH.hotel(S_Hotel_key)  , 
	department_id INT REFERENCES DWH.department(S_Department_Key) , 
	Date_id  INT REFERENCES DWH.date(S_Date_Key) , 
	Number_of_employees INT ,
	PRIMARY KEY (S_Employees_Key)
)

----------------------------------------------------

SET NOCOUNT ON

DECLARE @CurrentDate DATETIME = '2018-01-01'
DECLARE @EndDate DATETIME = '2030-12-31'

WHILE @CurrentDate <= @EndDate
BEGIN
   INSERT INTO DWH.date(
		S_Date_Key,
		[Date] ,
		[Day] ,
		[Month] ,
		[Quarter] ,
		[Year] ,
		[IsWeekend]
      )
   SELECT 
	  S_Date_Key = YEAR(@CurrentDate) * 10000 + MONTH(@CurrentDate) * 100 + DAY(@CurrentDate),
      DATE = @CurrentDate,
      Day = DAY(@CurrentDate),
      [Month] = MONTH(@CurrentDate),
      [Quarter] = DATEPART(q, @CurrentDate),
      [Year] = YEAR(@CurrentDate),
      [IsWeekend] = CASE 
         WHEN DATENAME(dw, @CurrentDate) = 'Sunday'
            OR DATENAME(dw, @CurrentDate) = 'Saturday'
            THEN 1
         ELSE 0
         END
   SET @CurrentDate = DATEADD(DD, 1, @CurrentDate)
END

SELECT * FROM DWH.date
SELECT * FROM DWH.hotel
SELECT * FROM DWH.addresses
SELECT * FROM DWH.department
SELECT * FROM DWH.guests
SELECT * FROM DWH.rooms
SELECT * FROM DWH.Duration

SELECT * FROM DWH.Employees
SELECT * FROM DWH.Reveneue
SELECT * FROM DWH.Duration
SELECT * FROM DWH.Occupency
