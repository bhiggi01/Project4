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
# Write your query here. Lab 5 - Query 8.
#
SELECT * FROM part WHERE (CL, U_Price) IN (
SELECT CL, MAX(U_Price) FROM part GROUP BY CL)
ORDER BY Part_No;
#