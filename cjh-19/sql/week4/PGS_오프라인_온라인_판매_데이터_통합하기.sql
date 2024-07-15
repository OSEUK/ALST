SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, USER_ID, SALES_AMOUNT
FROM ONLINE_SALE
WHERE SALES_DATE LIKE '2022-03%'

UNION ALL

SELECT DATE_FORMAT(SALES_DATE, '%Y-%m-%d') AS SALES_DATE, PRODUCT_ID, NULL AS USER_ID, SALES_AMOUNT
FROM OFFLINE_SALE
WHERE SALES_DATE LIKE '2022-03%'

ORDER BY SALES_DATE ASC, PRODUCT_ID ASC, USER_ID ASC;

# JOIN이 아닌 UNION을 사용하는 문제
# UNION ALL : 각 테이블을 합치고 중복을 제거하지 않음
# UNION : 중복된 ROW는 제거 - UNION ALL보다 오래 걸림