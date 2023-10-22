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
# Write your query here. Lab 5 - Query 5.
#
SELECT Ord_No, COUNT(Ord_no) AS NLineItems, SUM(Q_Price*Qty_Ord) AS Tot_Value  FROM order_line WHERE Ord_No IN (
SELECT Ord_No FROM order_inx WHERE Cust_No IN (
SELECT Cust_No FROM Customer WHERE Rep_No IN (
SELECT Rep_No FROM slsrep WHERE Rep_Name = "Sam Brown")))
GROUP BY Ord_No;
#