
INSERT INTO customers (name, email, phone) VALUES ("Apple Bee", "apple@example.com", 0344409009);
INSERT INTO customers (name, email, phone) VALUES ("Kweku Ashanti", "k@example.com", 0500000008);
INSERT INTO customers (name, email, phone) VALUES ("Yaa Asamoah", "yaa@example.com", 0255667899);
INSERT INTO customers (name, email, phone) VALUES ("Pea Pie", "yaw@example.com", 0390887883);
INSERT INTO customers (name, email, phone) VALUES ("Adwoa Orange", "o@gmail.com", 0244889099);


INSERT INTO events (name, location, date, ticket_price, total_available_tickets)
VALUES ("Training on MIS", "Accra Digital Centre", "2026-08-06", 70.00, 200);

INSERT INTO events (name, location, date, ticket_price, total_available_tickets)
VALUES ("Backend development Expo", "Kempinski Hotel", "2026-08-08", 80.00, 150);

INSERT INTO events (name, location, date, ticket_price, total_available_tickets)
VALUES ("Database Fundamentals Workshop", "National Theatre", "2026-08-04", 40.00, 80);

INSERT INTO events (name, location, date, ticket_price, total_available_tickets)
VALUES ("Python Conference", "Aviation Social Centre", "2026-09-12", 120.00, 200);


INSERT INTO bookings (customer_id, event_id, status, total_ticket_purchased, total_amount_paid)
VALUES (1, 1, "confirmed", 2, 140.00);

INSERT INTO bookings (customer_id, event_id, status, total_ticket_purchased, total_amount_paid)
VALUES (2, 1, "pending", 1, 70.00);

INSERT INTO bookings (customer_id, event_id, status, total_ticket_purchased, total_amount_paid)
VALUES (3, 2, "confirmed", 3, 240.00);

INSERT INTO bookings (customer_id, event_id, status, total_ticket_purchased, total_amount_paid)
VALUES (4, 3, "cancelled", 1, 40.00);

INSERT INTO bookings (customer_id, event_id, status, total_ticket_purchased, total_amount_paid)
VALUES (5, 4, "confirmed", 4, 480.00);

INSERT INTO bookings (customer_id, event_id, status, total_ticket_purchased, total_amount_paid)
VALUES (1, 2, "pending", 2, 160.00);

INSERT INTO bookings (customer_id, event_id, status, total_ticket_purchased, total_amount_paid)
VALUES (2, 3, "confirmed", 5, 200.00);

INSERT INTO bookings (customer_id, event_id, status, total_ticket_purchased, total_amount_paid)
VALUES (3, 4, "pending", 2, 240.00);