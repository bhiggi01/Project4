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
# Write your query here. Lab 4 - Query 24.
#
SELECT CL, SUM(units_avail*U_price) AS Tot_Value
FROM part
GROUP BY CL
HAVING COUNT(CL)>2
ORDER BY CL DESC;
#