SELECT c.name, COUNT(r.rental_id)
FROM film_category fc
     JOIN category c
     ON c.category_id = fc.category_id
     JOIN film f
     ON f.film_id = fc.film_id
     JOIN inventory i
     ON i.film_id = f.film_id
     JOIN rental r
     ON r.inventory_id = i.inventory_id
WHERE c.name IN ('Animation', 'Children', 'Classics', 'Comedy', 'Family', 'Music')
GROUP BY 1
ORDER BY 2, 1
