INSERT INTO addresses(address_id, address_line1, address_line2, city, state, country, zipcode)
VALUES 
	 (1,49, 'Dave Street', 'Kitchener','ON','Canada','N2C 2P6'),
	 (2,64, 'Victoria Street', 'Kitchener','ON','Canada','N2C 2M6'),
	 (3,79, 'Connaught Street', 'London','ON','Canada','N2C 2K3'),
	 (4,45, 'Sweden St. Street', 'London','ON','Canada','N2A 0E4'),
	 (5,60, 'Lincoln Street', 'Guelph','ON','Canada','N2C 2E8'),
	 (6,20400, 'Phoenix', 'Paris','AZ','USA','AZ85027'),
	 (7,8033, 'King George Boulevard', 'Surrey','BC','Canada','V3W 5B4'),
	 (8,1565, 'E South St', 'Globe','AZ','USA','85501'),
	 (9,32, ' Gandhi Road', 'Mumbai','Maharashtra','India','534076'),
	 (10,706, 'Idle rd', 'Saskatoon','SK','Bangladesh','S2L 562'),
	 (11,45, 'Vanier Park', 'Kitchener','ON','Canada','Sd3 d35'),
	 (12,41, 'Greenfield', 'London','ON','Canada','234 987'),
	 (13,89, 'Jacob Rd', 'Paris','ON','Canada','467 289'),
	 (14,85, 'Martin Street', 'Ottawa','BC','Canada','263 987'),
	 (15,78, 'Josseph St. Street', 'Guelph','BC','Canada','267 387'),
	 (16,156, 'James Road', 'Kitchener','AZ','USA','263 762'),
	 (17,7598, 'Atomic Street', 'Ottawa','New York','USA','756 145'),
	 (18,5476, 'Saint Jake Rd', 'London','San Jose','USA','675 846'),
	 (19,7465, 'Thames Rd', 'Paris','Gujarat','India','145 895');

INSERT INTO star_ratings(star_rating, star_rating_image) 
VALUES
	(1,'/images/one_star.jpg'),
	(2,'/images/two_star.jpg'),
	(3,'/images/three_star.jpg'),
	(4,'/images/four_star.jpg'),
	(5,'/images/five_star.jpg');

INSERT INTO department(department_id,department_name, department_description)
VALUES
	(1,'Kitchen','cooking'),
	(2,'Cleaning','sweep and mop'),
	(3,'Front Staff','handle bookings and query resolution'),
	(4,'Management','handles customer and resolve complaints'),
	(5,'Commute','pick up and drop');
	
INSERT INTO room_type(room_type_id, room_type_name, room_cost, room_type_description, smoke_friendly, pet_friendly)
 VALUES 
	(1, 'Standard Room','103','1 King Bed 323-sq-foot (30-sq-meter) room with city views',0,1),
	(2, 'Standard Twin Room','123','Two Twin Bed 323-sq-foot (30-sq-meter) room with city views',1,1),
	(3, 'Executive Room','130','1 King Bed 323-sq-foot (30-sq-meter) room with city views',0,0),
	(4, 'Club Room','159','2 King Bed 323-sq-foot (30-sq-meter) room with city views',1,1);
	
INSERT INTO guests(guest_id, guest_first_name, guest_last_name, guest_contact_number, guest_email_address, guest_credit_card, guest_id_proof, addresses_address_id)
VALUES 
	(1,'Jane','Doe','132-456-8564','jane.doe@gmail.com',NULL,'/images/drivingLicense1023',1),
	(2,'Jerry','Thachter','564-896-4752','jerry.ytsvg@gmail.com',NULL,'/images/passport45612',2),
	(3,'Rihanna','Perry','745-986-7451','rih.vfdj89@gmail.com',NULL,'/images/drivingLicense4889',3),
	(4,'Mathew','Jose','489-624-8633','mathew.jose@gmail.com',NULL,'/images/drivingLicense8945',4),
	(5,'Jessica','Smith','487-956-8963','jess.smith@gmail.com',NULL,'/images/passport7896',5);

INSERT INTO room_rate_discount(discount_id, discount_rate, start_month, end_month, room_type_room_type_id)
 VALUES
	(1,50,1,3,1),
	(2,15,6,8,1),
	(3,15,9,12,1),
	(4,0,4,6,1),
	(1,50,1,3,2),
	(2,80,6,8,2),
	(3,15,9,12,2),
	(4,0,4,6,2),
	(1,50,1,3,3),
	(2,80,6,8,3),
	(3,15,9,12,3),
	(4,0,4,6,3);

INSERT INTO hotel_chain(hotel_chain_id, hotel_chain_name, hotel_chain_contact_number, hotel_chain_email_address, hotel_chain_website, hotel_chain_head_office_address_id) 
VALUES
	(1,'Best Western Hotels','456-865-8956','bw123@gmail.com','https://www.bestwestern.com/',6),
	(2,'China Town Hotels','110-526-5647','chinatown123@gmail.com','https://www.chinatown.com/',16),
	(3,'Elite Hotels','546-874-6547','elite.tea213@gmail.com','https://www.elitendhe.com/',17),
	(4,'Cosmopolitan Hotels','852-741-9765','cosmo.hotels123@gmail.com','https://www.cosmopolitan.com/',18),
	(5,'Prestige Hotels','657-784-3647','prestige2453@gmail.com','https://www.prestige.com/',19);
	
INSERT INTO hotel(hotel_id, hotel_name, hotel_contact_number, hotel_email_address, hotel_website, hotel_description, hotel_floor_count, hotel_room_capacity, hotel_chain_id, addresses_address_id, star_ratings_star_rating, check_in_time, check_out_time)
	VALUES 
		(1,'King George Inn & Suites','604-502-9564','kgi123@gmail.com','https://www.kgi123.com/','A 2-mile drive from Besh Ba Gowah Archaeological Park.',5,45,1,7,4,'12:00:00','23:00:00'),
		(2,'Copper Hills Inn','547-964-9564','chinni123@gmail.com','https://www.chin23.com/','A 2-mile drive from Besh Ba Gowah Archaeological Park.',6,55,1,8,5,'12:00:00','23:00:00'),
		(3,'Sawmill Inn','547-964-3452','sawmill.inn@gmail.com','https://www.chin23.com/','A 3-mile drive from Fairview Park.',4,50,1,9,5,'12:00:00','23:00:00'),
		(4,'Northgate Inn','547-876-5422','northgate.inn@gmail.com','https://www.chin23.com/','A 4-mile drive from Conestoga Mall',3,40,1,10,5,'12:00:00','23:00:00');

INSERT INTO rooms(room_id, room_number, rooms_type_rooms_type_id, hotel_hotel_id)
 VALUES 
	(1,1101,1,1),
	(2,1102,1,1),
	(3,1103,1,1),
	(4,1104,1,1),
	(5,1105,1,1),
	(6,1106,1,1),
	(7,1107,1,1),
	(8,1108,1,1),
	(9,1109,1,1),
	(10,1110,1,1),
	(11,1111,1,1),
	(12,1112,1,1),
	(13,1113,1,1),
	(14,1114,1,1),
	(15,1115,1,1),
	(16,1116,1,1),
	(17,1117,2,1),
	(18,1118,2,1),
	(19,1119,2,1),
	(20,1120,2,1),
	(21,1121,2,1),
	(22,1122,2,1),
	(23,1123,2,1),
	(24,1124,2,1),
	(25,1125,2,1),
	(26,1126,2,1),
	(27,1127,2,1),
	(28,1128,2,1),
	(29,1129,2,1),
	(30,1130,2,1),
	(31,1131,2,1),
	(32,1132,2,1),
	(33,1133,2,1),
	(34,1134,2,1),
	(35,1135,2,1);
	
INSERT INTO hotel_services(service_id, service_name, service_description, service_cost, hotel_hotel_id)
 VALUES
	(1,'24-hour Room Service','There will be 24-hour Room Service to take care of customers needs',20,1),
	(2,'Currency Exchange','Foreign Currency Exchange facility available',80,1),
	(3,'Laundry','Laundry/Dry Cleaning available same day',10,1),
	(4,'Entertainment Room','Book and watch movies',50,2),
	(5,'Swimming Pool','Pool access to all the guests',100,2),
	(6,'Gym','24 Hour Gym',140,2);
	
INSERT INTO employees(emp_id,emp_first_name,emp_last_name,emp_designation,emp_contact_number,emp_email_address,department_department_id, addresses_address_id, hotel_hotel_id)
 VALUES 
 (1,'Jen','Fen','Waiter','123-789-7896','jen.rds@gmail.com',1,11,1),
 (2,'Tom','Pitt','Manager','565-789-7896','tom.pit@gmail.com',3,12,1),
 (3,'David','Lawrence','Cashier','852-789-7896','david.lawr@gmail.com',2,13,1),
 (4,'Joseph','Aniston','Cook','765-789-7896','joseph.anis@gmail.com',2,14,1),
 (5,'Jeny','Patel','Manager','531-789-7896','jeny.patel@gmail.com',3,15,1);
 
INSERT INTO hotel_chain_has_hotel(hotel_chains_hotel_chain_id, hotels_hotel_id)
 VALUES
 (1,1),
 (1,2),
 (1,3),
 (1,4),
 (2,3),
 (2,4);
 
INSERT INTO bookings (booking_id, booking_date, duration_of_stay, check_in_date, check_out_date, booking_payment_type, total_rooms_booked, hotel_hotel_id, guests_guest_id, employees_emp_id, total_amount)
 VALUES
	(1, '2018-08-08 00:00:00', '5', '2018-08-10 12:00:00', '2018-08-15 23:00:00', 'cash', 1, 1, 1, 2, 590),
	(2, '2018-06-08 00:00:00', '20', '2018-06-08 12:00:00', '2018-06-28 23:00:00', 'card',1, 1, 2, 1, 2300),
	(3, '2018-06-08 00:00:00', '10', '2018-06-08 12:00:00', '2018-06-18 23:00:00', 'card',1, 1, 1, 3, 1100),
	(4, '2018-06-08 00:00:00', '2', '2018-06-08 12:00:00', '2018-06-10 23:00:00', 'card', 1, 1, 4, 1, 290),
	(5, '2018-06-08 00:00:00', '3', '2018-06-08 12:00:00', '2018-06-11 23:00:00', 'card', 1, 1, 2, 3, 350),
	(6, '2018-06-08 00:00:00', '5', '2018-06-08 12:00:00', '2018-06-13 23:00:00', 'card', 1, 1, 3, 3, 570),
	(7, '2018-08-13 00:00:00', '2', '2018-06-13 12:00:00', '2018-06-15 23:00:00', 'cash', 2, 1, 5, 4, 280),
	(8, '2018-08-10 00:00:00', '3', '2018-08-11 12:00:00', '2018-08-13 23:00:00', 'card', 1, 1, 3, 3, 350),
	(9, '2018-08-10 00:00:00', '5', '2018-08-12 12:00:00', '2018-08-16 23:00:00', 'card', 1, 1, 4, 3, 570),
	(10, '2018-08-14 00:00:00', '2', '2018-08-15 12:00:00', '2018-08-17 23:00:00', 'cash',2, 1, 5, 4, 280),
	(11, '2018-08-14 00:00:00', '5', '2018-08-16 12:00:00', '2018-08-21 23:00:00', 'cash',1, 1, 1, 3, 590),
	(12, '2018-08-14 00:00:00', '20', '2018-08-17 12:00:00', '2018-09-07 23:00:00','card',1, 1, 2, 1, 2300),
	(13, '2018-08-14 00:00:00', '10', '2018-08-15 12:00:00', '2018-08-25 23:00:00','card',1, 1, 1, 3, 1100),
	(14, '2018-08-14 00:00:00', '2', '2018-08-16 12:00:00', '2018-08-18 23:00:00', 'card',2, 1, 4, 1, 290),
	(15, '2018-08-14 00:00:00', '3', '2018-08-17 12:00:00', '2018-08-20 23:00:00', 'card',3, 1, 1, 3, 350);

INSERT INTO rooms_booked (rooms_booked_id,bookings_booking_id, rooms_room_id) 
VALUES 
(1,  1,   1),
(2,  2,   2),
(3,  2,   3),
(4,  2,   4),
(5,  2,   5),
(6,  2,   6),
(7,  7,   7),
(8,  7,   8),
(9,  6,   9),
(10, 8,  10),
(11, 9,  11),
(12, 10, 12),
(13, 10, 13),
(14, 11, 14),
(15, 12, 15),
(16, 13, 16),
(17, 14, 17),
(18, 14, 18),
(19, 15, 19),
(20, 15, 20),
(21, 15, 21);

INSERT INTO hotel_services_used_by_guests (service_used_id, hotel_services_service_id, bookings_booking_id) 
VALUES (1, 1, 2),
 (2, 2, 2),
 (3, 3, 2);

------------------------------------------------------------------------------
----------ADDING NEW EXTRA RECORDS FOR TESTING-----------------------------------
INSERT INTO addresses(address_id, address_line1, address_line2, city, state, country, zipcode)
VALUES 
	(20, 123, 'Elm Street', 'New York', 'NY', 'USA', '10001'),
    (21, 456, 'Oak Avenue', 'Los Angeles', 'CA', 'USA', '90001'),
    (22, 789, 'Maple Drive', 'Chicago', 'IL', 'USA', '60601'),
    (23, 321, 'Pine Street', 'Miami', 'FL', 'USA', '33101'),
    (24, 654, 'Cedar Road', 'Sydney', 'NSW', 'Australia', '2000'),
    (25, 987, 'Birch Avenue', 'Melbourne', 'VIC', 'Australia', '3000'),
    (26, 45, 'Willow Street', 'Boston', 'MA', 'USA', '02101'),
    (27, 78, 'Sycamore Lane', 'San Francisco', 'CA', 'USA', '94101'),
    (28, 98, 'Cypress Avenue', 'Toronto', 'ON', 'Canada', 'M5V 1B6'),
    (29, 65, 'Hickory Drive', 'Vancouver', 'BC', 'Canada', 'V6B 1P1'),
    (30, 32, 'Spruce Street', 'Montreal', 'QC', 'Canada', 'H2Z 1A2');

INSERT INTO hotel(hotel_id, hotel_name, hotel_contact_number, hotel_email_address, hotel_website, hotel_description, hotel_floor_count, hotel_room_capacity, hotel_chain_id, addresses_address_id, star_ratings_star_rating, check_in_time, check_out_time)
	VALUES 
		(5,'Grand Plaza','604-502-9564','grandplaza@gmail.com','https://www.grandplaza.com/','In the heart of downtown, 5-star luxury.',12,120,2,28,5,'12:00:00','23:00:00'),
        (6,'Ocean View Resort','547-964-9564','oceanviewresort@gmail.com','https://www.oceanviewresort.com/','Overlooking the Pacific Ocean, perfect for a beach holiday.',8,80,2,29,4,'12:00:00','23:00:00'),
        (7,'Mountain Lodge','547-964-3452','mountainlodge@gmail.com','https://www.mountainlodge.com/','Nestled in the mountains, ideal for skiing and hiking.',6,60,2,30,4,'12:00:00','23:00:00'),
        (8,'City Lights Hotel','547-876-5422','citylights@gmail.com','https://www.citylights.com/','Located in the bustling city center, offering urban luxury.',10,100,2,1,3,'12:00:00','23:00:00'),
		(9,'Sawmill Inn','547-964-3452','sawmill.inn@gmail.com','https://www.chin23.com/','A 3-mile drive from Fairview Park.',4,50,1,9,5,'12:00:00','23:00:00'),
        (10,'Northgate Inn','547-876-5422','northgate.inn@gmail.com','https://www.chin23.com/','A 4-mile drive from Conestoga Mall',3,40,1,10,5,'12:00:00','23:00:00');

INSERT INTO guests(guest_id, guest_first_name, guest_last_name, guest_contact_number, guest_email_address, guest_credit_card, guest_id_proof, addresses_address_id)
VALUES
	(6, 'Michael', 'Johnson', '321-654-9870', 'michael.johnson@gmail.com', NULL, '/images/passport12345', 6),
    (7, 'Sarah', 'Williams', '654-321-0987', 'sarah.williams@gmail.com', NULL, '/images/drivingLicense56789', 7),
    (8, 'David', 'Brown', '789-654-3210', 'david.brown@gmail.com', NULL, '/images/passport98765', 8),
    (9, 'Emily', 'Davis', '432-987-6543', 'emily.davis@gmail.com', NULL, '/images/drivingLicense12389', 9),
    (10, 'James', 'Wilson', '123-987-4567', 'james.wilson@gmail.com', NULL, '/images/passport87654', 10),
    (11, 'Oliver', 'Miller', '456-123-7890', 'oliver.miller@gmail.com', NULL, '/images/passport32145', 20),
    (12, 'Sophia', 'Taylor', '789-456-1230', 'sophia.taylor@gmail.com', NULL, '/images/drivingLicense65432', 21),
    (13, 'Ethan', 'Anderson', '654-789-3210', 'ethan.anderson@gmail.com', NULL, '/images/passport78945', 22),
    (14, 'Ava', 'Thomas', '987-654-1230', 'ava.thomas@gmail.com', NULL, '/images/drivingLicense98765', 23),
    (15, 'Noah', 'Moore', '321-456-7890', 'noah.moore@gmail.com', NULL, '/images/passport45678', 24);

INSERT INTO employees(emp_id,emp_first_name,emp_last_name,emp_designation,emp_contact_number,emp_email_address,department_department_id, addresses_address_id, hotel_hotel_id)
VALUES 
	(6,'John','Doe','Receptionist','123-456-7890','john.doe@gmail.com',1,16,2),
    (7,'Emily','Smith','Waitress','234-567-8901','emily.smith@gmail.com',1,17,2),
    (8,'Michael','Johnson','Chef','345-678-9012','michael.johnson@gmail.com',2,18,2),
    (9,'Jessica','Brown','Manager','456-789-0123','jessica.brown@gmail.com',3,19,2),
    (10,'Daniel','Lee','Concierge','567-890-1234','daniel.lee@gmail.com',1,20,3),
    (11,'Sophia','Clark','Housekeeper','678-901-2345','sophia.clark@gmail.com',1,21,3),
    (12,'William','Lewis','Manager','789-012-3456','william.lewis@gmail.com',3,22,3),
    (13,'Emma','Martinez','Chef','890-123-4567','emma.martinez@gmail.com',2,23,3),
    (14,'Oliver','Harris','Receptionist','901-234-5678','oliver.harris@gmail.com',1,24,4),
    (15,'Isabella','Young','Waitress','123-456-7890','isabella.young@gmail.com',1,25,4),
    (16,'Benjamin','Scott','Manager','234-567-8901','benjamin.scott@gmail.com',3,26,4),
    (17,'Mia','Turner','Housekeeper','345-678-9012','mia.turner@gmail.com',1,27,4),
    (18,'Ethan','White','Concierge','456-789-0123','ethan.white@gmail.com',1,28,5),
    (19,'Charlotte','King','Manager','567-890-1234','charlotte.king@gmail.com',3,29,5),
    (20,'Alexander','Hill','Chef','678-901-2345','alexander.hill@gmail.com',2,30,5);

INSERT INTO bookings (booking_id, booking_date, duration_of_stay, check_in_date, check_out_date, booking_payment_type, total_rooms_booked, hotel_hotel_id, guests_guest_id, employees_emp_id, total_amount)
    VALUES
        (16, '2018-08-15 00:00:00', '7', '2018-08-18 12:00:00', '2018-08-25 23:00:00', 'cash',1, 2, 2, 6, 800),
        (17, '2018-08-16 00:00:00', '4', '2018-08-18 12:00:00', '2018-08-22 23:00:00', 'cash',2, 2, 3, 7, 460),
        (18, '2018-08-17 00:00:00', '5', '2018-08-19 12:00:00', '2018-08-24 23:00:00', 'card',1, 2, 4, 8, 670),
        (19, '2018-08-18 00:00:00', '3', '2018-08-20 12:00:00', '2018-08-23 23:00:00', 'card',2, 2, 5, 9, 520),
        (20, '2018-08-19 00:00:00', '6', '2018-08-21 12:00:00', '2018-08-27 23:00:00', 'cash',1, 2, 2, 6, 930),
        (21, '2018-08-20 00:00:00', '4', '2018-08-22 12:00:00', '2018-08-26 23:00:00', 'card',2, 2, 3, 7, 600),
        (22, '2018-08-21 00:00:00', '5', '2018-08-23 12:00:00', '2018-08-28 23:00:00', 'card',1, 2, 4, 8, 670),
        (23, '2018-08-22 00:00:00', '3', '2018-08-24 12:00:00', '2018-08-27 23:00:00', 'card',2, 2, 5, 9, 520),
        (24, '2018-08-23 00:00:00', '6', '2018-08-25 12:00:00', '2018-08-31 23:00:00', 'cash',1, 2, 2, 6, 930),
        (25, '2018-08-24 00:00:00', '4', '2018-08-26 12:00:00', '2018-08-30 23:00:00', 'card',2, 2, 3, 7, 600),
        (26, '2018-08-25 00:00:00', '5', '2018-08-27 12:00:00', '2018-09-01 23:00:00', 'card',1, 2, 4, 8, 670),
        (27, '2018-08-26 00:00:00', '3', '2018-08-28 12:00:00', '2018-08-31 23:00:00', 'card',2, 2, 5, 9, 520),
        (28, '2018-08-27 00:00:00', '6', '2018-08-29 12:00:00', '2018-09-04 23:00:00', 'cash',1, 2, 2, 6, 930),
        (29, '2018-08-28 00:00:00', '4', '2018-08-30 12:00:00', '2018-09-03 23:00:00', 'card',2, 2, 3, 7, 600),
        (30, '2018-08-29 00:00:00', '5', '2018-08-31 12:00:00', '2018-09-05 23:00:00', 'card',1, 2, 4, 8, 670),
        (31, '2018-08-30 00:00:00', '3', '2018-09-01 12:00:00', '2018-09-04 23:00:00', 'card',2, 2, 5, 9, 520),
        (32, '2018-08-31 00:00:00', '6', '2018-09-02 12:00:00', '2018-09-08 23:00:00', 'cash',1, 2, 2, 6, 930),
        (33, '2018-09-01 00:00:00', '4', '2018-09-03 12:00:00', '2018-09-07 23:00:00', 'card',2, 2, 3, 7, 600),
        (34, '2018-09-02 00:00:00', '5', '2018-09-04 12:00:00', '2018-09-09 23:00:00', 'card',1, 2, 4, 8, 670),
        (35, '2018-09-03 00:00:00', '3', '2018-09-05 12:00:00', '2018-09-08 23:00:00', 'card',2, 2, 5, 9, 520),
        (36, '2018-09-04 00:00:00', '6', '2018-09-06 12:00:00', '2018-09-12 23:00:00', 'cash',1, 2, 2, 6, 930),
        (37, '2018-09-05 00:00:00', '4', '2018-09-07 12:00:00', '2018-09-11 23:00:00', 'card',2, 2, 3, 7, 600),
        (38, '2018-09-06 00:00:00', '5', '2018-09-08 12:00:00', '2018-09-13 23:00:00', 'card',1, 2, 4, 8, 670),
        (39, '2018-09-07 00:00:00', '3', '2018-09-09 12:00:00', '2018-09-12 23:00:00', 'card',2, 2, 5, 9, 520),
        (40, '2018-09-08 00:00:00', '6', '2018-09-10 12:00:00', '2018-09-16 23:00:00', 'cash',1, 2, 2, 6, 930),
        (41, '2018-09-09 00:00:00', '4', '2018-09-11 12:00:00', '2018-09-15 23:00:00', 'card',2, 2, 3, 7, 600),
        (42, '2018-09-10 00:00:00', '5', '2018-09-12 12:00:00', '2018-09-17 23:00:00', 'card',1, 2, 4, 8, 670),
        (43, '2018-09-11 00:00:00', '3', '2018-09-13 12:00:00', '2018-09-16 23:00:00', 'card',2, 2, 5, 9, 520),
        (44, '2018-09-12 00:00:00', '6', '2018-09-14 12:00:00', '2018-09-20 23:00:00', 'cash',1, 2, 2, 6, 930),
        (45, '2020-09-13 00:00:00', '4', '2020-09-15 12:00:00', '2020-09-19 23:00:00', 'card',2, 2, 3, 7, 600),
        (46, '2020-09-14 00:00:00', '5', '2020-09-16 12:00:00', '2020-09-21 23:00:00', 'card',1, 2, 4, 8, 670),
        (47, '2020-09-15 00:00:00', '3', '2020-09-17 12:00:00', '2020-09-20 23:00:00', 'card',2, 2, 5, 9, 520),
        (48, '2020-09-16 00:00:00', '6', '2020-09-18 12:00:00', '2020-09-24 23:00:00', 'cash',1, 2, 2, 6, 930),
        (49, '2020-09-17 00:00:00', '4', '2020-09-19 12:00:00', '2020-09-23 23:00:00', 'card',2, 2, 3, 7, 600),
        (50, '2020-09-18 00:00:00', '5', '2020-09-20 12:00:00', '2020-09-25 23:00:00', 'card',1, 2, 4, 8, 670),
        (51, '2020-09-19 00:00:00', '3', '2020-09-21 12:00:00', '2020-09-24 23:00:00', 'card',2, 2, 5, 9, 520),
        (52, '2020-09-20 00:00:00', '6', '2020-09-22 12:00:00', '2020-09-28 23:00:00', 'cash',1, 2, 2, 6, 930),
        (53, '2020-09-21 00:00:00', '4', '2020-09-23 12:00:00', '2020-09-27 23:00:00', 'card',2, 2, 3, 7, 600),
        (54, '2020-09-22 00:00:00', '5', '2020-09-24 12:00:00', '2020-09-29 23:00:00', 'card',1, 2, 4, 8, 670),
        (55, '2019-09-23 00:00:00', '3', '2019-09-25 12:00:00', '2019-09-28 23:00:00', 'card',2, 2, 5, 9, 520),
        (56, '2019-09-24 00:00:00', '6', '2019-09-26 12:00:00', '2019-10-02 23:00:00', 'cash',1, 2, 2, 6, 930),
        (57, '2019-09-25 00:00:00', '4', '2019-09-27 12:00:00', '2019-10-01 23:00:00', 'card',2, 2, 3, 7, 600),
        (58, '2019-09-26 00:00:00', '5', '2019-09-28 12:00:00', '2019-10-03 23:00:00', 'card',1, 2, 4, 8, 670),
        (59, '2019-09-27 00:00:00', '3', '2019-09-29 12:00:00', '2019-10-02 23:00:00', 'card',2, 2, 5, 9, 520),
        (60, '2019-09-28 00:00:00', '6', '2019-09-30 12:00:00', '2019-10-06 23:00:00', 'cash',1, 2, 2, 6, 930),
        (61, '2019-09-29 00:00:00', '4', '2019-10-01 12:00:00', '2019-10-05 23:00:00', 'card',2, 2, 3, 7, 600),
        (62, '2019-09-30 00:00:00', '5', '2019-10-02 12:00:00', '2019-10-07 23:00:00', 'card',1, 2, 4, 8, 670);

INSERT INTO rooms_booked (rooms_booked_id, bookings_booking_id, rooms_room_id) 
VALUES 
(22, 16, 22),
(23, 17, 23),
(24, 17, 24),
(25, 18, 25),
(26, 19, 26),
(27, 19, 27),
(28, 20, 28),
(29, 21, 29),
(30, 21, 30),
(31, 22, 31),
(32, 23, 32),
(33, 23, 33),
(34, 24, 34),
(35, 25, 35),
(36, 25, 22),
(37, 26, 23),
(38, 27, 24),
(39, 27, 25),
(40, 28, 26),
(41, 29, 27),
(42, 29, 28),
(43, 30, 29),
(44, 31, 30),
(45, 31, 31),
(46, 32, 32),
(47, 33, 33),
(48, 33, 34),
(49, 34, 35),
(50, 35, 22),
(51, 36, 23),
(52, 37, 24),
(53, 37, 25),
(54, 38, 26),
(55, 39, 27),
(56, 39, 28),
(57, 40, 29),
(58, 41, 30),
(59, 41, 31),
(60, 42, 32),
(61, 43, 33),
(62, 43, 34),
(63, 44, 35),
(64, 45, 22),
(65, 45, 23),
(66, 46, 24),
(67, 47, 25),
(68, 47, 26),
(69, 48, 27),
(70, 49, 28),
(71, 49, 29),
(72, 50, 30),
(73, 51, 31),
(74, 51, 32),
(75, 52, 33),
(76, 53, 34),
(77, 53, 35),
(78, 54, 22),
(79, 55, 23),
(80, 55, 24),
(81, 56, 25),
(82, 57, 26),
(83, 57, 27),
(84, 58, 28),
(85, 59, 29),
(86, 59, 30),
(87, 60, 31),
(88, 61, 32),
(89, 61, 33),
(90, 62, 34);