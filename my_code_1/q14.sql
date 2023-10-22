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
# Write your query here. Lab 5 - Query 7.
#
SELECT sub.rep_no AS Rep_No, sub.rep_name AS Rep_Name, sub.rep_addr AS Rep_Addr, sub.tot_comm AS Tot_Comm, sub.Comm_rate AS Comm_Rate
 FROM (
SELECT max(QTY_ord*Q_price), s.rep_no AS rep_no, s.rep_name AS rep_name, s.rep_addr AS rep_addr, s.tot_comm AS Tot_comm, s.comm_rate AS Comm_rate
FROM order_inx as oi, order_line as ol, customer, slsrep as s) as sub;
#