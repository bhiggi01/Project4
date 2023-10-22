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
# Write your query here. Lab 4 - Query 20.
#
SELECT Whouse, CL, COUNT(part_no) AS NPartNo, AVG(u_price) AS Avg_UPrice
FROM part
GROUP BY Whouse, CL
ORDER BY Whouse;
