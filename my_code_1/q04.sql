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
# Write your query here. Lab 4 - Query 22.
#
SELECT Cust_No, COUNT(Ord_No) AS Norders
FROM order_inx
GROUP BY Cust_No
HAVING Norders >1
ORDER BY Cust_No;
#