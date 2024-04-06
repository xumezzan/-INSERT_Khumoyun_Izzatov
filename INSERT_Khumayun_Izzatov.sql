
INSERT INTO actor (actor_id, first_name, last_name)
VALUES
(1, 'Actor1FirstName', 'Actor1LastName'),
(2, 'Actor2FirstName', 'Actor2LastName'),
(3, 'Actor3FirstName', 'Actor3LastName');

INSERT INTO film_actor (actor_id, film_id)
VALUES
(1, (SELECT film_id FROM film WHERE title = 'Your Favorite Film')),
(2, (SELECT film_id FROM film WHERE title = 'Your Favorite Film')),
(3, (SELECT film_id FROM film WHERE title = 'Your Favorite Film'));

INSERT INTO inventory (film_id, store_id)
VALUES ((SELECT film_id FROM film WHERE title = 'Your Favorite Film'), 1);
