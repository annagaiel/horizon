DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS customers CASCADE;
DROP TABLE IF EXISTS products CASCADE;
DROP TABLE IF EXISTS sales CASCADE;

CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE customers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100),
  account_no VARCHAR(100)
);

CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100)
);

CREATE TABLE sales (
  id SERIAL PRIMARY KEY,
  employees_id INT REFERENCES employees(id),
  customers_id INT REFERENCES customers(id),
  products_id INT REFERENCES products(id),
  sale_date date,
  sale_amount money,
  units_sold INTEGER,
  invoice_no INTEGER,
  invoice_freq VARCHAR(100)
);
