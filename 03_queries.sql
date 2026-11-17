-- 03_queries.sql

USE airline_db;

-- READ + JOIN: Yanice Murangwa Shami (Query lead)


-- UPDATE + DELETE: Vainqueur Ishimwe (QA)

-- UPDATE: change passenger 1's seat preference
SELECT passenger_id, name, seat_preference FROM passengers WHERE passenger_id = 1;
UPDATE passengers SET seat_preference = 'Aisle' WHERE passenger_id = 1;
SELECT passenger_id, name, seat_preference FROM passengers WHERE passenger_id = 1;

-- DELETE: remove a booking (the child row); deleting the passenger first would break the foreign key
SELECT * FROM bookings;
DELETE FROM bookings WHERE booking_id = 4;
SELECT * FROM bookings;

