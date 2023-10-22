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
# Write your query here. Lab 4 - Query 21.
#
SELECT Rep_No, COUNT(cust_No) AS NCust, SUM(Curr_Bal) AS Tot_Curr_Bal
FROM customer
WHERE cust_name NOT LIKE "__\ %"
GROUP BY Rep_No;
#