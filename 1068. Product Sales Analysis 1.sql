#optimized
select product_name, year, price from Sales inner join Product using(product_id)

#slower 
select product_name, year, price from Sales join Product using(product_id)
