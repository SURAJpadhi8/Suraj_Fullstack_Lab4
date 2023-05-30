SELECT p.PRO_ID, p.PRO_NAME, o.ORD_DATE FROM product p
INNER JOIN supplier_pricing sp
ON p.PRO_ID = sp.pro_ID
INNER JOIN `order` o
ON sp.PRICING_ID = o.PRICING_ID
WHERE o.ORD_DATE > "2021-10-05"; 