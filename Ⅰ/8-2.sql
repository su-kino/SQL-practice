-- 日ごとの売上額とその日付を取得してください
SELECT purchased_at, SUM(items.price) As "売上額"
FROM sales_records
JOIN items
ON sales_records.item_id = items.id
GROUP BY purchased_at;