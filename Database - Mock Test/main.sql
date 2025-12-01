-- describe all tables;


-- 3.1
-- SELECT eventName AS 'Event Name', name AS 'Shop Name', maxAttendees AS 'Max Attendees', eventDate AS 'Event Date' FROM Event
-- JOIN Shop ON Event.shopID = Shop.shopID;

-- 3.2
-- SELECT name AS 'Shop Name', eventName AS 'Event Name' FROM Event
-- JOIN Shop ON Event.shopID = Shop.shopID
-- WHERE eventDate = '2024-12-25';

-- 3.3

-- UPDATE OpeningTime
-- SET closeTime = '19:00'
-- WHERE shopID = '2';

-- 4.1
SELECT name AS 'Shop Name' FROM Shop
JOIN Event ON Shop.shopID = Event.shopID;
SELECT bookingID AS 'Total Bookings'
JOIN Booking ON Event.eventID = Booking.eventID