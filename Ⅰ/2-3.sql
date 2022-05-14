-- ユーザーの年齢ごとの人数と、その年齢を取得してください
SELECT age, COUNT(age)
FROM users
GROUP BY age;