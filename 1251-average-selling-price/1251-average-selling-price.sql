SELECT 
    p.product_id,
    round(ifnull(sum(u.units*p.price)/sum(u.units),0),2) as average_price
FROM Prices AS p
left JOIN UnitsSold AS u
    ON p.product_id = u.product_id
    AND u.purchase_date BETWEEN p.start_date AND p.end_date 
GROUP BY p.product_id;