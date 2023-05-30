SELECT * FROM supplier WHERE SUPP_ID IN (
SELECT supp_id FROM supplier_pricing GROUP BY SUPP_ID
HAVING count(SUPP_ID) > 1
)