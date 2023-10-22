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
# Write your query here. Lab 4 - Query 25.
#
SELECT Ord_No, AVG(Q_Price*Qty_ord) AS Avg_Value, MAX(Q_Price*Qty_ord) AS Max_Value, MIN(Q_Price*Qty_ord) AS Min_Value
FROM order_line
GROUP BY Ord_No
HAVING COUNT(Ord_No) > 1;
#