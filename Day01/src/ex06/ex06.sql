-- My first attmept
-- SELECT order_date AS action_date, (
--     SELECT name FROM person
--     WHERE id=po.person_id
-- )
-- FROM person_order po
-- INTERSECT ALL
-- SELECT visit_date, (
--     SELECT name FROM person
--     WHERE id=pv.person_id
-- )
-- FROM person_visits pv
-- ORDER BY 1, 2 DESC;


-- Right way
SELECT action_date, person.name
FROM(
	SELECT order_date AS action_date, person_id
	FROM person_order
	INTERSECT ALL
	SELECT visit_date, person_id
	FROM person_visits) AS t1
INNER JOIN person ON t1.person_id = person.id
ORDER BY 1, 2 DESC
