-- WHEREにcharacter_nameがにんじゃわんこであるデータを指定し、
-- グループ化してください

SELECT SUM(price), purchased_at
FROM purchases
WHERE character_name = "にんじゃわんこ"
GROUP BY purchased_at
;