-- queries
#a query that involves an inner join
SELECT food, state FROM Food INNER JOIN Place ON Food.idPlace = Place.idPlace WHERE Place.region = "East";

#a query that involves an outer join (left, right or full)
SELECT f.name FROM Food f LEFT JOIN Ing_food i_f ON f.name = i_f.name LEFT JOIN Ingredients i ON i_f.idIngredients = i.idIngredients;

#a query that involves an inner join and an aggregate function
SELECT f.name, p.region, COUNT(p.state) AS tot_states FROM Food f INNER JOIN Place p ON f.idPlace = p.idPlace GROUP BY p.region;