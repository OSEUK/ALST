SELECT A.PRODUCT_CODE, (A.PRICE * SUM(B.SALES_AMOUNT)) AS SALES
FROM PRODUCT AS A
JOIN OFFLINE_SALE AS B
ON A.PRODUCT_ID=B.PRODUCT_ID
GROUP BY A.PRODUCT_CODE
ORDER BY SALES DESC, A.PRODUCT_CODE ASC;

# PRODUCT_ID가 같은 경우만 JOIN한다
# PRODUCT_CODE별로 그룹화하여 PRODUCT_CODE가 같은 SALES_AMOUNT의 합을 구한다