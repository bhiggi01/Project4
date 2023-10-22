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
# Write your query here. Please note the commands wrapping your query for safe update. Lab 6 - Query (c)
#
SET SQL_SAFE_UPDATES = 0;
#
UPDATE guest
SET fname = "Serena", lName = "Williams", city =  "Los Angeles"
WHERE guestNo = 4;



#
SET SQL_SAFE_UPDATES = 1;
#
# The queries below are used to check your query above.
#
SELECT *
FROM guest
;
#