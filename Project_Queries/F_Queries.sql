---------------------------------
--- Queries on Revenue Fact table:
---------------------------------
----1- Total Revenue by hotel:
SELECT h.hotel_name, SUM(r.hotel_revenue) AS total_revenue
FROM DWH.Reveneue r JOIN DWH.hotel h ON r.hotel_id = h.hotel_id
GROUP BY h.hotel_name
ORDER BY total_revenue DESC;

---- 2- Time-base Revenue analysis:
-------- a. Monthly revenue trend:
SELECT d.year, d.month, SUM(r.hotel_revenue) AS monthly_revenue
FROM DWH.Reveneue r JOIN DWH.date d 
ON r.date_id = d.S_Date_Key
GROUP BY d.year, d.month
ORDER BY d.year, d.month;
-------- b. Revenue comparison by year:
SELECT  d.year, SUM(r.hotel_revenue) AS annual_revenue
FROM DWH.Reveneue r JOIN DWH.date d 
ON r.date_id = d.S_Date_Key
GROUP BY d.year
ORDER BY  d.year;

---- 3- Geographic revenue analysis:
-------- a.Revenue by city:
SELECT a.city, SUM(r.hotel_revenue) AS total_revenue
FROM DWH.Reveneue r JOIN  DWH.addresses a
ON r.address_id = a.address_id
GROUP BY a.city
ORDER BY  total_revenue DESC;
-------- b.Revenue by state:
SELECT a.state, SUM(r.hotel_revenue) AS total_revenue
FROM DWH.Reveneue r JOIN DWH.addresses a 
ON r.address_id = a.address_id
GROUP BY a.state
ORDER BY total_revenue DESC;

---- 4- Hotel performance over time:
-------- a. Yearly revenue for each hotel
SELECT h.hotel_name,  d.year, SUM(r.hotel_revenue) AS annual_revenue
FROM DWH.Reveneue r JOIN DWH.hotel h 
ON r.hotel_id = h.hotel_id JOIN DWH.date d 
ON r.date_id = d.S_Date_Key
GROUP BY  h.hotel_name, d.year
ORDER BY h.hotel_name, d.year;



---------------------------------
--- Queries on Employees Fact table:
---------------------------------
---- 1- Total number of employees by hotel:
SELECT h.hotel_name, SUM(f.number_of_employees) AS total_employees 
FROM DWH.Employees f JOIN DWH.hotel h 
ON f.hotel_id = h.hotel_id 
GROUP BY h.hotel_name 
ORDER BY total_employees DESC;

---- 2- Total number of employees by department:
SELECT d.department_name, SUM(f.number_of_employees) AS total_employees 
FROM DWH.Employees f 
JOIN DWH.department d 
ON f.department_id = d.department_id 
GROUP BY d.department_name 
ORDER BY total_employees DESC;

---- 3- Total number of employees by hotel and department:
SELECT h.hotel_name, d.department_name, SUM(f.number_of_employees) AS total_employees 
FROM DWH.Employees f JOIN DWH.hotel h 
ON f.hotel_id = h.hotel_id JOIN DWH.department d 
ON f.department_id = d.department_id 
GROUP BY h.hotel_name, d.department_name 
ORDER BY h.hotel_name , total_employees DESC;

---------------------------------
--- Queries on Duration Fact table:
---------------------------------
---- 1- Total duration of bookings by guest:
SELECT g.guest_first_name, g.guest_last_name, SUM(f.Duration_Days) AS total_duration 
FROM DWH.Duration f JOIN DWH.guests g 
ON f.guest_id = g.guest_id 
GROUP BY g.guest_first_name, g.guest_last_name 
ORDER BY total_duration DESC;

---- 2- Total duration of booking by room type:
SELECT r.room_type_name, SUM(f.Duration_Days) AS total_duration 
FROM DWH.Duration f JOIN DWH.rooms r 
ON f.room_id = r.S_Room_key 
GROUP BY r.room_type_name 
ORDER BY total_duration DESC;

---- 3- Average duration of bookings by month:
SELECT d.month, d.year, AVG(f.Duration_Days) AS total_duration 
FROM DWH.Duration f JOIN DWH.date d 
ON f.date_from_key = d.S_Date_Key GROUP BY d.month, d.year ORDER BY d.year, d.month;

---- 4- Total duration of bookings by guest and room type:
SELECT g.guest_first_name, g.guest_last_name, r.room_type_name, SUM(f.Duration_Days) AS total_duration 
FROM DWH.Duration f JOIN DWH.guests g 
ON f.guest_id = g.guest_id JOIN DWH.rooms r 
ON f.room_id = r.S_Room_key 
GROUP BY g.guest_first_name, g.guest_last_name, r.room_type_name 
ORDER BY  g.guest_first_name , total_duration DESC;