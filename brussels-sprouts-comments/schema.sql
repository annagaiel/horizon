DROP TABLE IF EXISTS recipes;
DROP TABLE IF EXISTS comments;

CREATE TABLE recipes(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  ingredients VARCHAR(255),
  instruction VARCHAR(255)
);

CREATE TABLE comments(
  id SERIAL PRIMARY KEY,
  message VARCHAR(255),
  recipe_id INTEGER REFERENCES recipes(id)
);
