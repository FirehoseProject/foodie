-- psql postgres
-- CREATE DATABASE foodie;
-- CTRL + D

CREATE TABLE restaurants (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(255),
	description VARCHAR,
	user_id INT,
	cost INT,
	vegetarian_friendly BOOLEAN
);

CREATE INDEX restuants_user_id  ON restaurants (user_id);

CREATE TABLE users (
	id SERIAL PRIMARY KEY NOT NULL,
	email VARCHAR(255)
);

CREATE INDEX users_email  ON users (email);

CREATE TABLE ratings (
	id SERIAL PRIMARY KEY NOT NULL,
	stars INT,
	user_id INT,
	restaurant_id INT
);

CREATE INDEX ratings_user_id_restaurant_id  ON ratings (user_id, restaurant_id);
CREATE INDEX ratings_restaurant_id  ON ratings (restaurant_id);


CREATE TABLE menu_items (
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(255),
	description VARCHAR,
	cost DECIMAL,
	restaurant_id INT
);

CREATE INDEX menu_items_restaurant_id  ON menu_items (restaurant_id);