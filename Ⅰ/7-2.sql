-- このサイトの総売上と総利益を取得してください
SELECT SUM(items.price) AS "総売上", SUM(items.price - items.cost) AS "総利益"
FROM items
JOIN sales_records
ON items.id = sales_records.item_id;