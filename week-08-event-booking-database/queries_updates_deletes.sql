--Write a query that displays every booking with: customer name, event name, event date, number of tickets,booking status,total amount paid
SELECT bookings.id AS booking_id, customers.name AS customer_name, events.name AS event_name, events.date AS event_date, bookings.total_ticket_purchased AS number_of_tickets, bookings.status AS booking_status, bookings.total_amount_paid AS total_amount_paid
FROM bookings
JOIN customers ON bookings.customer_id = customers.id
JOIN events ON bookings.event_id = events.id;

--QUERY THAT DISPLAYS ALL CONFIRMED BOOKINGS
SELECT bookings.id AS booking_id, customers.name AS customer_name, events.name AS event_name, events.date AS event_date, bookings.total_ticket_purchased AS number_of_tickets, bookings.status AS booking_status, bookings.total_amount_paid AS total_amount_paid
FROM bookings
JOIN customers ON bookings.customer_id = customers.id
JOIN events ON bookings.event_id = events.id
WHERE bookings.status = "confirmed";

--QUERY THAT DISPLAYS ALL BOOKINGS FOR A PARTICULAR EVENT
SELECT bookings.id AS booking_id, customers.name AS customer_name, events.name AS event_name, events.date AS event_date, bookings.total_ticket_purchased AS number_of_tickets, bookings.status AS booking_status, bookings.total_amount_paid AS total_amount_paid
FROM bookings
JOIN customers ON bookings.customer_id = customers.id
JOIN events ON bookings.event_id = events.id
WHERE bookings.event_id = 1;

--QUERY THAT DISPLAYS ALL EVENTS AT ONE SELECTED LOCATION
SELECT events.id AS event_id, events.name AS event_name, events.date AS event_date, events.location AS location
FROM events
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

--How many tickets have been sold for each event?
SELECT events.name AS event_name, SUM(bookings.total_ticket_purchased) AS total_tickets_sold
FROM events
LEFT JOIN bookings ON events.id = bookings.event_id
GROUP BY events.id, events.name;

--How much revenue has each event generated from confirmed bookings?
SELECT events.name AS event_name, SUM(bookings.total_amount_paid) AS total_revenue
FROM events
LEFT JOIN bookings ON events.id = bookings.event_id
WHERE bookings.status = "confirmed"
GROUP BY events.id, events.name;#

-- Which event has sold the most tickets?
SELECT events.name AS event_name, SUM(bookings.total_ticket_purchased) AS total_tickets_sold
FROM events 
LEFT JOIN bookings ON events.id = bookings.event_id
GROUP BY events.id, events.name
ORDER BY total_tickets_sold DESC
LIMIT 1;

-- Which customer has spent the most money on bookings?
SELECT customers.name AS customer_name, SUM(bookings.total_amount_paid) AS total_spent
FROM customers 
LEFT JOIN bookings ON customers.id = bookings.customer_id
GROUP BY customers.id, customers.name
ORDER BY total_spent DESC
LIMIT 1;

-- What is the average number of tickets purchased per booking?
SELECT AVG(total_ticket_purchased) AS average_tickets_per_booking
from bookings;


-- Write a query that displays events with fewer than a selected number of tickets remaining.
SELECT events.name AS event_name, events.total_available_tickets - SUM(bookings.total_ticket_purchased) AS tickets_remaining
FROM events
LEFT JOIN bookings ON events.id = bookings.event_id
GROUP BY events.id, events.name, events.total_available_tickets
HAVING tickets_remaining < 90; 

-- Add one new event and create at least two bookings for it.
SELECT * FROM events;
INSERT INTO events (name, location, date, ticket_price, total_available_tickets)
VALUES ("Frontend Conference", "Bank of Ghana", "2026-08-10", 50.00, 100);

INSERT INTO bookings (customer_id, event_id, total_ticket_purchased, total_amount_paid, status)
VALUES (1, 3, 2, 100.00, "confirmed"),
       (2, 3, 3, 150.00, "confirmed");

-- Produce a final summary query that displays, for every event: event name, location, event date, total tickets available, total tickets sold, tickets remaining, confirmed revenue
SELECT events.name AS event_name, events.location AS location, events.date AS event_date, events.total_available_tickets AS total_tickets_available, 
       SUM(bookings.total_ticket_purchased) AS total_tickets_sold,
       (events.total_available_tickets - SUM(bookings.total_ticket_purchased)) AS tickets_remaining,
       SUM(CASE WHEN bookings.status = "confirmed" THEN bookings.total_amount_paid ELSE 0 END) AS confirmed_revenue
FROM events
LEFT JOIN bookings ON events.id = bookings.event_id
GROUP BY events.id, events.name, events.location, events.date, events.total_available_tickets;