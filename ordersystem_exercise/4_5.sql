SELECT C.CUSTOMER_ID, C.CUSTOMER_NAME, C2.ORDERING_COUNT 
FROM CUSTOMER C
JOIN (
	SELECT CUSTOMER_ID, COUNT(*) AS ORDERING_COUNT FROM ORDERT
	GROUP BY CUSTOMER_ID
) AS C2 
ON C.CUSTOMER_ID = C2.CUSTOMER_ID
ORDER BY ORDERING_COUNT DESC;
