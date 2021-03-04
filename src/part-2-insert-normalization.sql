-- insert
INSERT INTO Food
(name, diet, prep_time, cook_time, flavour_profile, course, idPlace)
VALUES
(Balu shahi, vegetarian, 45, 25, sweet,	dessert, 1),
(Obbattu holige, vegetarian,	180, 60, sweet,	main course, 2);

INSERT INTO Ingredients
(idIngredients, Ingredient)
VALUES
(1, Maida),
(1, Flour),
(1, Sugar);

INSERT INTO Place
(idPlace, state, region)
VALUES
(1, West Bengal, East),
(2, Rajasthan, West),
(3, Punjab, North);
