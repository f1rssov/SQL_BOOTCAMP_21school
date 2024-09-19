SELECT order_date, CONCAT(name, ' (age:', age, ')') AS person_information
FROM(
    SELECT *
    FROM person_order NATURAL JOIN (
        SELECT id AS  person_id, name, age FROM person))
ORDER BY 1, 2
