-- SELECT MAX(num_seats) FROM tables;
-- SELECT MIN(num_seats) FROM tables;
-- SELECT MAX(*) FROM tables; -- Query with errors. Please, check the error below. function max() does not exist
-- SELECT MAX(amount_billed) AS max_billed , MAX(amount_tipped) AS max_tipped FROM bookings;
-- SELECT MIN(category), MAX(category) FROM tables; -- for text it will go like ascending to descending
SELECT MIN(booking_date), MAX(booking_date) FROM bookings;