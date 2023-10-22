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
# Write your query here. Lab 5 - Query 13
#
# DONE
SELECT Ord_No, COUNT(Qty_Ord) AS NLineItems, SUM(Qty_ord*Q_Price) AS Tot_Value FROM order_line WHERE Ord_no IN(
SELECT ord_no FROM order_inx WHERE cust_No IN (
SELECT Cust_No
FROM Customer AS c
LEFT JOIN slsrep AS s
ON c.rep_no = s.rep_no
WHERE Rep_Name = "Sam Brown"))
GROUP BY ord_no
ORDER BY Ord_no;
#