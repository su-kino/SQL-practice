-- 売上額が上位5位の商品の指定されたデータを取得してください
SELECT items.id, items.name, SUM(items.price) AS "売上額"
FROM items
JOIN sales_records
ON items.id = sales_records.item_id
GROUP BY items.id
ORDER BY SUM(items.price) DESC
LIMIT 5