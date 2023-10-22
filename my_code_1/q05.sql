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
# Write your query here. Lab 4 - Query 23.
#
SELECT Rep_No 
FROM customer
GROUP BY Cust_Name
HAVING COUNT(Cust_Name)=2;
#