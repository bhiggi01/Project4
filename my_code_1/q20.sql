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
# Write your query here. Lab 5 - Query 15
#
SELECT DISTINCT c.Cust_No, Cust_Name, COUNT(Ord_No) AS NOrders
FROM customer AS c
LEFT JOIN order_inx AS oi
ON c.Cust_No = oi.Cust_No
GROUP BY Cust_No;
#