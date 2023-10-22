#
#------------------------------------------
# USE
#------------------------------------------
#
USE salesdb;
#
#------------------------------------------
# QUERY
#------------------------------------------
#
# Write your query here. Lab 5 - Query 4.
#
SELECT * 
FROM part
WHERE U_price = (SELECT MAX(U_price) FROM part);
#