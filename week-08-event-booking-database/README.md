# Event Ticket Booking Database
This is an SQL database for an events company to keep track of:
- customers
- events 
- ticket bookings

Tables consists of:

### customers
- id
- name
- mail
- phone

### events
- id
- name
- location
- date
- price
- total_available_tickets

### bookings
- id
- customer_id (links to customers)
- event_id (links to events)
- status ("confirmed", "pending" or "cancelled")
- total_ticket_purchased
- total_amount_paid


### What the queries do
- Table creation — sets up the three tables.
- Inserts data — adds customers, events and bookings.
- Queries — covers things like:

1. Display all confirmed bookings
2. Display all bookings for a particular event
3. Display all events at a selected location
4. Update a pending booking to confirmed
5. Update the number of tickets purchased and total amount paid for a particular booking
6. Cancel one booking by changing its status
7. Delete one booking that was entered by mistake
8. Count total customers in the database
9. Count total events in the database
10. Count total bookings made
11. Count confirmed bookings


- A final summary report showing tickets sold, tickets remaining and revenue for every event







