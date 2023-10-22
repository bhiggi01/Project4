#
#------------------------------------------
# USE
#------------------------------------------
#
USE hoteldb;
#
#------------------------------------------
# QUERY
#------------------------------------------
#
# Write your query here. One query for the insertion of each row - Lab 6 - Query (b)
#
# insert info into hotel table.
INSERT INTO hotel (hotelNo, hotelName, city)
VALUES 
(1, "Grand Hotel", "Paris"),
(2, "Windsor Towers", "London"),
(3, "Apollo Hotel", "Athens"),
(4, "Michelangelo Hotel", "Rome");

# insert info into rooms
INSERT INTO room (roomNo,hotelNo,type,price)
VALUES
(101, 1, "Double", 100);

INSERT INTO room (roomNo,hotelNo,type,price)
VALUES(101, 2, "Family", 140),
(102, 1, "Twin", 125),
(222, 3, "Single", "50"),
(234, 2, "Single", 80),
(310, 4, "Double", 140);
 
 # insert data into guest
 INSERT INTO guest
 VALUES
(1, "John", "Smith", "11 The Mews", "Brighton"),
(2, "Lucy", "Lee", "45 Post Streetr", "Manchester"),
(3, "Marcia", "Davies", "12 Bay View ", "Swansea"),
(4, "Julia", "Roberts", "88 High Street", "London");

# insert data into booking
INSERT INTO booking
VALUES
(1, 3, "2006-05-05", "2006-05-19", 222),
(2, 1, "2006-05-10", "2006-05-12", 101),
(3, 4, "2006-05-01", "2006-05-03", 310),
(4, 2, "2006-06-11", "2006-06-14", 101);


#
# The queries below are used to check your query above.
#
SELECT *
FROM hotel
;
#
SELECT *
FROM room
;
#
SELECT *
FROM guest
;
#
SELECT *
FROM booking
;
#