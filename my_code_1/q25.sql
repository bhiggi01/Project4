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
# Write your query here. Please note the commands wrapping your query for safe delete. Lab 6 - Query (e)
#
SET SQL_SAFE_UPDATES = 0;
#

DELETE FROM hotel WHERE hotelNo = 2;
DELETE FROM booking WHERE hotelNo = 2;
DELETE FROM room WHERE hotelNo = 2;
 

#
SET SQL_SAFE_UPDATES = 1;
#
# The queries below are used to check your query above.
#
SELECT *
FROM room
;
#
SELECT *
FROM booking
;
#