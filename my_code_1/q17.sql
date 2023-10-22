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
# Write your query here. Lab 5 - Query 11.
#
SELECT Cust_No, Cust_Name, Cust_Addr, Curr_Bal, Credit, s.Rep_No
FROM Customer AS c
LEFT JOIN slsrep AS s
ON c.rep_no = s.rep_no
WHERE Rep_Addr LIKE "%Grant%";
#