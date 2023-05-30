SELECT C.CAT_ID, C.CAT_NAME, 
Min(SP_P.MinPrice) AS 'MinPrice'
 FROM Category C INNER JOIN (
	SELECT P.*, SP.MinPrice  FROM product P INNER JOIN (
		SELECT pro_id, min(SUPP_PRICE) AS MinPrice FROM supplier_pricing 
		GROUP BY  pro_id
	) AS SP
	ON P.pro_id = SP.PRO_ID
) AS SP_P
ON C.CAT_ID = SP_P.CAT_ID
GROUP BY SP_P.CAT_ID