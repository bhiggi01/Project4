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
# Write your query here. Lab 5 - Query 9.
#
SELECT Ord_no
FROM customer AS c
LEFT JOIN order_inx AS o
ON c.Cust_No = o.Cust_No
WHERE Cust_Name = "Ann Samuels";

#