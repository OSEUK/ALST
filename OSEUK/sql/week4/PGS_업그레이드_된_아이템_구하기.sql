-- 업그레이드 된 아이템 구하기
SELECT ITEM_ID, ITEM_NAME, RARITY
FROM ITEM_INFO
NATURAL JOIN ITEM_TREE
WHERE PARENT_ITEM_ID IN 
(
    SELECT ITEM_ID 
    FROM ITEM_INFO 
    WHERE RARITY = "RARE"
)
ORDER BY ITEM_ID desc