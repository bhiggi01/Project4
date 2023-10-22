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
# Write your query here. Lab 5 - Query 14
#
SELECT c.Cust_No, Cust_Name, Cust_Addr, Curr_Bal, Credit, Rep_No FROM customer AS c
LEFT JOIN order_inx AS oi
ON c.cust_no = oi.cust_no
WHERE ord_date IN (
	SELECT ord_date FROM order_inx WHERE cust_no IN (
	SELECT cust_no FROM customer WHERE Cust_Name = "Sally Adams"))
AND cust_name != "Sally Adams"
GROUP BY Cust_name;
#