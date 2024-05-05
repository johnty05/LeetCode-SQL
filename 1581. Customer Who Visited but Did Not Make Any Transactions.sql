select customer_id, count(v.visit_id) as Count_no_trans from
Visits v left join Transactions tr on v.Visit_id = tr.Visit_id where
Transaction_id is null group by Customer_id
