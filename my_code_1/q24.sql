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
# Write your query here. Please note the commands wrapping your query for safe update. Lab 6 - Query (d)
#
SET SQL_SAFE_UPDATES = 0;
#
UPDATE booking
SET guestNo = 10 
WHERE guestNo = 1;


#
SET SQL_SAFE_UPDATES = 1;
#
# The queries below are used to check your query above.
#
SELECT *
FROM booking
;
#
#