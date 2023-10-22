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
# Write your query here. Lab 5 - Query 6.
#
SELECT * FROM customer WHERE Cust_No in (
SELECT cust_No FROM order_inx WHERE Ord_No IN (
SELECT Ord_No FROM order_inx WHERE Ord_date IN (
SELECT Ord_Date FROM Order_inx WHERE Cust_No IN (
SELECT Cust_No FROM Customer WHERE Cust_Name = "Sally Adams"))))
GROUP BY Cust_No
HAVING Cust_No != "124";
#