SELECT p.name AS person_name,
        m.pizza_name AS pizza_name,
        pz.name AS pizzeria_name
FROM person_order po JOIN person p ON p.id = po.person_id
JOIN menu m ON m.id = po.menu_id
JOIN pizzeria pz ON m.pizzeria_id = pz.id
ORDER BY 1,2,3
