DROP PROCEDURE IF EXISTS CheckBooking;

DELIMITER //

CREATE PROCEDURE CheckBooking(booking_date DATE, table_number INT)
BEGIN

SELECT CONCAT('Table ', table_number, ' is already booked') AS 'Booking status'
FROM Bookings
WHERE Date = booking_date AND TableNumber = table_number;

END //

DELIMITER ;

CALL CheckBooking("2022-11-12", 3);
