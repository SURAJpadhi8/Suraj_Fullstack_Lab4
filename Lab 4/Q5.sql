SELECT p.pro_name AS 'ProductName', o.* FROM `order` o
INNER JOIN supplier_pricing sp
ON o.PRICING_ID = sp.PRICING_ID
INNER JOIN product p
ON p.PRO_ID = sp.pro_id
WHERE o.CUS_ID = 2;