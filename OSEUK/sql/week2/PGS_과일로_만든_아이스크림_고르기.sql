-- 과일로 만든 아이스크림 고르기
SELECT FLAVOR
FROM FIRST_HALF
NATURAL JOIN ICECREAM_INFO
WHERE TOTAL_ORDER > 3000
AND INGREDIENT_TYPE LIKE "fruit%"
ORDER BY TOTAL_ORDER DESC