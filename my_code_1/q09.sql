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
# Write your query here. Lab 5 - Query 2.
#
SELECT Cust_No, Cust_Name
FROM customer
WHERE NOT Cust_No = 522 AND Curr_Bal > 49.50;

#