# Write your MySQL query statement below
DELETE p1
FROM Person p1, Person p2
WHERE p1.email = p2.email
  AND p1.id > p2.id;


--🧠 Idea behind the query
-- DELETE p1
-- FROM Person p1, Person p2
-- WHERE p1.email = p2.email
--  AND p1.id > p2.id;

-- Think of it like this:

-- 👉 We compare every row (p1) with every other row (p2)
-- 👉 If two rows have the same email, we decide which one is “bad”

-- 🔍 Key rule used
-- p1.id > p2.id

-- This means:

-- 👉 “Delete the row that has a bigger id”

-- So:

DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email=p2.email
AND p1.id>p2.id; -- smaller id = winner (keep)
-- bigger id = loser (delete)
