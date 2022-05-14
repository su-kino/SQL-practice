-- 売れた数が多い上位5商品のIDと名前、個数を取得してください
SELECT items.id, items.name, COUNT(*)
FROM items
JOIN sales_records
ON items.id = sales_records.item_id
GROUP BY item_id, items.name
ORDER BY COUNT(*) DESC
LIMIT 5;