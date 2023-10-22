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
# Write your query here. Lab 5 - Query 3.
#
SELECT * 
FROM Customer
WHERE Rep_No IN ( SELECT Rep_No FROM Slsrep WHERE Rep_Addr LIKE "%Grant%")
ORDER BY Credit, Curr_Bal DESC;
#