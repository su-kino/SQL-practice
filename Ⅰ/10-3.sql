-- グレーパーカーより売上額が高い商品の指定されたデータを取得してください
SELECT items.id, items.name, SUM(items.price) AS "売上額"
FROM sales_records
JOIN items
ON items.id = sales_records.item_id
GROUP BY items.id
HAVING SUM(items.price) > (
  SELECT SUM(items.price)
  FROM sales_records
  JOIN items
  ON items.id = sales_records.item_id
  WHERE items.name = "グレーパーカー"
);