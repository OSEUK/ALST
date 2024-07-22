-- 물고기 종류 별 대어 찾기
SELECT ID, FISH_NAME, LENGTH
FROM FISH_INFO AS FI
LEFT JOIN FISH_NAME_INFO AS FNI
ON FI.FISH_TYPE = FNI.FISH_TYPE
WHERE (FI.FISH_TYPE, LENGTH) 
IN (
    SELECT FISH_TYPE, MAX(LENGTH) 
    FROM FISH_INFO 
    GROUP BY FISH_TYPE
)
ORDER BY ID