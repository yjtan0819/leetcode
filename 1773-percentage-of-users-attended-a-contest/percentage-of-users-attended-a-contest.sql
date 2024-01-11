# Write your MySQL query statement below
select r.contest_id, round(count(u.user_id) / (select count(user_id) from Users) * 100, 2) as percentage
FROM Register r
JOIN Users u
ON r.user_id = u.user_id
GROUP BY r.contest_id
ORDER BY percentage DESC, r.contest_id