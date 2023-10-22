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
# Write your query here. Lab 5 - Query 1.
#
SELECT Ord_no
FROM Order_inx 
WHERE Cust_No IN (SELECT Cust_No FROM customer WHERE Cust_Name = "Ann Samuels");

#