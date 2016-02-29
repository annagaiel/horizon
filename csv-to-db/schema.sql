DROP TABLE IF EXISTS ingredients;

CREATE TABLE ingredients (
  id SERIAL PRIMARY KEY,
  quantity INTEGER,
  item VARCHAR(255)
);
