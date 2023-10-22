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
# Write your query here. Lab 4 - 19.
#
SELECT Ord_No, COUNT(Ord_No) AS NlineItems, sum(Qty_ord*Q_price) AS Tot_Value
FROM order_line
GROUP BY Ord_no;
#