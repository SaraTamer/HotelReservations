CREATE DATABASE Hotel_Reservation
GO 

CREATE SCHEMA STG
GO

CREATE TABLE STG.guests (
  guest_id INT NOT NULL,
  guest_first_name VARCHAR(45) NULL,
  guest_last_name VARCHAR(45) NULL,
  guest_contact_number VARCHAR(12) NULL,

  PRIMARY KEY (guest_id),
)

CREATE TABLE STG.rooms (
  room_id INT NOT NULL,
  room_number INT NULL,
  room_type_name VARCHAR(45) NULL,
  room_cost DECIMAL(10,2) NULL,
  room_type_description VARCHAR(100) NULL,
  smoke_friendly INT NULL,
  pet_friendly INT NULL,  
  PRIMARY KEY (room_id),
)

CREATE TABLE STG.hotel (
  hotel_id INT NOT NULL,
  hotel_name VARCHAR(45) NULL,
  hotel_contact_number VARCHAR(12) NULL,
  hotel_website VARCHAR(45) NULL,
  hotel_description VARCHAR(100) NULL,
  hotel_floor_count INT NULL,
  hotel_star_rating INT NOT NULL
  PRIMARY KEY (hotel_id),
)

CREATE TABLE STG.addresses (
  address_id INT NOT NULL,
  city VARCHAR(45) NULL,
  state VARCHAR(45) NULL,
  country VARCHAR(45) NULL,
  PRIMARY KEY (address_id)
)
ALTER TABLE STG.addresses
ADD		address_line1 VARCHAR(100) NULL,
		address_line2 VARCHAR(100) NULL; 

CREATE TABLE STG.department (
  department_id INT NOT NULL,
  department_name VARCHAR(45) NULL,
  department_description VARCHAR(100) NULL,
  PRIMARY KEY (department_id)
)

CREATE TABLE STG.Duration(
	Guest_ID INT,
	Room_ID INT,
	Date_From_Key DATETIME,
	Date_To_Key DATETIME,
	Duration_Days decimal(5,2),
)

CREATE TABLE STG.Occupency (
	hotel_id  INT ,
	Date_id   DATETIME,
	Hotel_capacity INT ,
	Occupied_rooms INT ,
	Occupancy_rate decimal(5,2),
)

CREATE TABLE STG.Reveneue(
	hotel_id  INT , 
	address_id INT , 
	Date_id  DATETIME , 
	hotel_revenue decimal(5,2),
)

CREATE TABLE STG.Employees(
	hotel_id  INT , 
	department_id INT , 
	Date_id  DATETIME , 
	Number_of_employees INT ,
)
