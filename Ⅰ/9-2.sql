-- 「サンダル」を購入したユーザーのidと名前を重複無く取得してください
SELECT users.id, users.name
FROM sales_records
JOIN users
ON sales_records.user_id = users.id
WHERE sales_records.item_id = (
  SELECT id
  FROM items
  WHERE name = "サンダル"
)
GROUP BY users.id