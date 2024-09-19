SELECT order_date, CONCAT(name, ' (age:', age, ')') AS person_information
FROM(
    SELECT order_date, name, age 
    FROM person_order po JOIN person ON po.person_id = person.id)
ORDER BY 1, 2
