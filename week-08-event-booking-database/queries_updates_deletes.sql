--QUERY THAT DISPLAYS ALL CONFIRMED BOOKINGS
SELECT * FROM bookings
WHERE status = "confirmed";

--QUERY THAT DISPLAYS ALL BOOKINGS FOR A PARTICULAR EVENT
SELECT * FROM bookings
WHERE event_id = 1;

--QUERY THAT DISPLAYS ALL EVENTS AT ONE SELECTED LOCATION
SELECT * FROM events
WHERE location = "Accra Digital Centre";

--UPDATE ONE PENDING BOOKING TO CONFIRMED
UPDATE bookings
SET status = "confirmed"
WHERE customer_id = 2 AND event_id = 1;

 -- UPDATE THE NUMBER OF TICKETS PURCHASED AND THE TOTAL AMOUNT PAID FOR A PARTICULAR BOOKING
UPDATE bookings
SET total_ticket_purchased = 4,
    total_amount_paid = 280.00
WHERE customer_id = 1 AND event_id = 1;  

 -- CANCEL ONE BOOKING BY CHANGING ITS STATUS
UPDATE bookings
SET status = "cancelled"
WHERE id = 8;   

 -- DELETE ONE BOOKING THAT WAS ENTERED BY MISTAKE
DELETE FROM bookings
WHERE id = 6; 


--How many customers are in the database?
SELECT COUNT(*) AS total_customers FROM customers;

--How many events are in the database?
SELECT COUNT(*) AS total_events FROM events;

--How many  total bookings have been made?
SELECT COUNT(*) AS total_bookings FROM bookings;

--How many confirmed bookings are there?
SELECT COUNT(*) AS total_confirmed_bookings FROM bookings
WHERE status = "confirmed";

