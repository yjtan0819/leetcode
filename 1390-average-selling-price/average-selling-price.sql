# Write your MySQL query statement below
select Prices.product_id, ifnull(round(sum(Prices.price * unitssold.units) / sum(unitssold.units),2),0) as average_price
FROM Prices
left JOIN UnitsSold ON Prices.product_id = UnitsSold.product_id
and unitssold.purchase_date between prices.start_date and prices.end_date
GROUP BY product_id
